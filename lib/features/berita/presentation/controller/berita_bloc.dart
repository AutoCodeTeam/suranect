import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/app/network/base/safe_call_extension.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/berita/domain/entities/berita.dart';
import 'package:suranect/features/berita/domain/use_cases/get_berita_use_case.dart';

part 'berita_event.dart';

part 'berita_state.dart';

part 'berita_bloc.freezed.dart';

class BeritaBloc extends Bloc<BeritaEvent, BeritaState> {
  final GetBeritaUseCase getBeritaUseCase;

  BeritaBloc({
    required this.getBeritaUseCase,
  }) : super(const BeritaState.initial()) {
    on<BeritaEvent>((event, emit) async {
      await event.map(
        started: (value) async {
          await loadDataAndEmit(emit);
        },
        changeCategory: (value) async {
          await loadDataAndEmit(emit, category: value.category);
        },
      );
    });
  }

  Future<void> loadDataAndEmit(Emitter<BeritaState> emit,
      {String category = "Semua"}) async {
    emit(const BeritaState.loading());
    try {
      final response = await getBeritaUseCase.call();

      response.fold(
        (l) {
          final error =
              l.asOrNull<ApiFailure>()?.error ?? "Something went wrong";
          return emit(
            BeritaState.failure(error: error),
          );
        },
        (r) {
          List<Berita> beritas = r.data;

          DateTime now = DateTime.now();
          DateTime startOfWeek =
              DateTime(now.year, now.month, now.day - now.weekday);
          DateTime endOfWeek = startOfWeek.add(const Duration(days: 7));
          List<Berita> lastestNews = beritas.where((berita) {
            DateTime createdAt = DateTime.parse(berita.createdAt!);
            return createdAt.isAfter(startOfWeek) &&
                createdAt.isBefore(endOfWeek);
          }).toList();

          if (category == "Terbaru") {
            return emit(BeritaState.loaded(
                beritas: lastestNews,
                category: category,
                latestNews: lastestNews));
          }

          if (category != "Semua") {
            lastestNews = lastestNews
                .where((element) => element.category == category)
                .toList();

            beritas = beritas
                .where((element) => element.category == category)
                .toList();
          }

          emit(BeritaState.loaded(
              beritas: beritas, category: category, latestNews: lastestNews));
        },
      );
    } on ConnectionException catch (e) {
      emit(BeritaState.failure(error: e.toString()));
    }
  }
}
