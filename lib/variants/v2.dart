import 'package:flutter/material.dart';

class V2 extends StatefulWidget {
  const V2({super.key});

  @override
  State<V2> createState() => _V2State();
}

class _V2State extends State<V2> {
  double _topLeft = 0.0;
  double _topRight = 0.0;
  double _bottomLeft = 0.0;
  double _bottomRight = 0.0;

  _onChangeTopLeft(double value) {
    setState(() {
      _topLeft = value;
    });
  }

  _onChangeTopRight(double value) {
    setState(() {
      _topRight = value;
    });
  }

  _onChangeBottomLeft(double value) {
    setState(() {
      _bottomLeft = value;
    });
  }

  _onChangeBottomRight(double value) {
    setState(() {
      _bottomRight = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Top Left: "),
            Text(_topLeft.toStringAsFixed(2),
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Slider(value: _topLeft, min: 0, max: 100, onChanged: _onChangeTopLeft),

        Row(
          children: [
            const Text("Top Right: "),
            Text(_topRight.toStringAsFixed(2),
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Slider(value: _topRight, min: 0, max: 100, onChanged: _onChangeTopRight),

        Row(
          children: [
            const Text("Bottom Left: "),
            Text(_bottomLeft.toStringAsFixed(2),
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Slider(value: _bottomLeft, min: 0, max: 100, onChanged: _onChangeBottomLeft),

        Row(
          children: [
            const Text("Bottom Right: "),
            Text(_bottomRight.toStringAsFixed(2),
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Slider(value: _bottomRight, min: 0, max: 100, onChanged: _onChangeBottomRight),

        const SizedBox(height: 20),

        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(_topLeft),
              topRight: Radius.circular(_topRight),
              bottomLeft: Radius.circular(_bottomLeft),
              bottomRight: Radius.circular(_bottomRight),
            ),
          ),
        ),
      ],
    );
  }
}
