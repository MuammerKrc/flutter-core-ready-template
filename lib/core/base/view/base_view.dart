import 'package:flutter/material.dart';

class BaseView<T extends ChangeNotifier> extends StatefulWidget {
  const BaseView({
    Key? key,
    required this.viewModel,
    required this.onPageBuilder,
    required this.onModelReady,
    this.onDispose,
  }) : super(key: key);
  final Widget Function(BuildContext context, T value) onPageBuilder;
  final T viewModel;
  final void Function(T model) onModelReady;
  final VoidCallback? onDispose;

  @override
  _BaseViewState createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  // late T model;
  @override
  void initState() {
    widget.onModelReady(widget.viewModel);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.onDispose != null) widget.onDispose?.call();
  }

  @override
  Widget build(BuildContext context) {
    return widget.onPageBuilder(context, widget.viewModel);
  }
}
