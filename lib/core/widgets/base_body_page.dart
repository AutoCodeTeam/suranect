import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:suranect/core/utils/debouncer.dart';

class BaseBodyPage extends StatefulWidget {
  final List<Widget> children;
  final ScrollController? scrollController;
  final VoidCallback? onLoadNextPage;
  final RefreshCallback? onRefresh;

  const BaseBodyPage({
    super.key,
    required this.children,
    this.scrollController,
    this.onLoadNextPage,
    this.onRefresh,
  });

  @override
  State<BaseBodyPage> createState() => _BaseBodyPageState();
}

class _BaseBodyPageState extends State<BaseBodyPage> {
  final _debouncer = Debouncer(milliseconds: 500);

  late final controller = widget.scrollController ?? ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: NotificationListener(
        onNotification: (ScrollNotification scrollInfo) {
          if (widget.scrollController != null &&
              widget.onLoadNextPage != null) {
            var triggerFetchMoreSize =
                0.75 * widget.scrollController!.position.maxScrollExtent;

            if (widget.scrollController!.position.pixels >=
                    triggerFetchMoreSize &&
                (widget.scrollController!.position.userScrollDirection ==
                    ScrollDirection.reverse)) {
              _debouncer.run(() {
                widget.onLoadNextPage!();
              });
            }
          }

          return true;
        },
        child: widget.onRefresh == null
            ? _getScrollableView()
            : RefreshIndicator(
                child: _getScrollableView(),
                onRefresh: widget.onRefresh!,
              ),
      ),
    );
  }

  _getScrollableView() {
    return Scaffold(
        body: CustomScrollView(
      controller: widget.scrollController,
      slivers: widget.children,
    ));
  }
}
