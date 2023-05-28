import 'package:flutter/material.dart';


///Black and white Outlined Button
class BwButtonWidget extends StatefulWidget {
  ///To control child according Button's state
  final Widget Function(Set<MaterialState>) child;

  final VoidCallback onTap;
  final Size? size;

  const BwButtonWidget({super.key, required this.child, required this.onTap, this.size});

  @override
  State<StatefulWidget> createState() {
    return _BwButtonWidgetState();
  }
}

class _BwButtonWidgetState extends State<BwButtonWidget> {
  final MaterialStatesController _statesController = MaterialStatesController();

  @override
  void initState() {
    _statesController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: widget.onTap,
      statesController: _statesController,
      style: ButtonStyle(
          fixedSize: widget.size == null ? null : MaterialStateProperty.all(widget.size),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.white;
            }
            return null;
          }),
          side: MaterialStateProperty.resolveWith((states) {
            return const BorderSide(color: Colors.white, width: 1);
          }),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
            return RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));
          }),
          foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.black;
            }
            return Colors.white;
          }),
          padding: MaterialStateProperty.all(const EdgeInsets.all(16))),
      child: widget.child(_statesController.value),
    );
  }
}
