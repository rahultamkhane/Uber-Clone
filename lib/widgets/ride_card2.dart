import 'package:flutter/material.dart';

class RideCard2 extends StatefulWidget {
  final String name;
  final String image;
  final String hint;
  final double space;

  const RideCard2(
      {super.key,
      required this.name,
      required this.image,
      this.hint = '',
      required this.space});

  @override
  State<RideCard2> createState() => _RideCard2State();
}

class _RideCard2State extends State<RideCard2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.only(top: 10.0, right: 20.0),
          width: MediaQuery.of(context).size.width / widget.space - 38,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ClipRRect(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Image.asset(
                  widget.image,
                  width: 40,
                  height: 40,
                ),
                const SizedBox(height: 10),
                Text(
                  widget.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        Visibility(
          visible: widget.hint != '',
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 66, 142, 68),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  widget.hint,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
