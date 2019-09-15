import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

/// Manages the state and boiler-plate-code which is common in most of the widgets



class BaseWidget<T extends ChangeNotifier> extends StatefulWidget {
  final T model;
  final Widget child;
  final Widget Function(BuildContext context, T model, Widget child) builder;
  final Function(T) onModelReady;

  BaseWidget({Key key, this.builder, this.model, this.child, this.onModelReady}) : super(key: key);

  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState<T extends ChangeNotifier> extends State<BaseWidget<T>> {
  T model;

  @override
  void initState() {
    model = widget.model;
    if(widget.onModelReady != null){
      widget.onModelReady(model);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>.value(
        value: model,
        child: Consumer<T>(
          child: widget.child,
          builder: widget.builder,
        ));
  }
}