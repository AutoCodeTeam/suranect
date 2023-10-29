import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/features/event/domain/entities/event.dart';

part 'event_response.g.dart';

part 'event_response.freezed.dart';

@freezed
class EventResponse with _$EventResponse {
const factory EventResponse({
  @JsonKey(name: 'Message') required String message,
  @JsonKey(name: 'Status') required String status,
  @JsonKey(name: 'Data') required List<Event> data,
}) = _EventResponse;

  factory EventResponse.fromJson(Map<String, dynamic> json) =>
      _$EventResponseFromJson(json);
}
