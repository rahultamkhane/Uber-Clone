import 'package:flutter/material.dart';
import 'package:uber_clone/widgets/styles.dart';

class TripCard extends StatefulWidget {
  final dynamic data;
  const TripCard({super.key, required this.data});

  @override
  State<TripCard> createState() => _TripCardState();
}

class _TripCardState extends State<TripCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 248, 244, 244),
              image: DecorationImage(
                image: AssetImage('assets/images/car.png'),
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            padding: const EdgeInsets.all(10.0),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data['location']!,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  widget.data['date']!,
                  style: const TextStyle(
                    color: Color.fromARGB(
                      255,
                      147,
                      146,
                      146,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '\u{20B9}${widget.data['fare']!}',
                      style: const TextStyle(
                        color: Color.fromARGB(
                          255,
                          147,
                          146,
                          146,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Visibility(
                      visible: widget.data['status']! == 0,
                      child: const Text(
                        'Cancelled',
                        style: TextStyle(
                          color: Color.fromARGB(
                            255,
                            147,
                            146,
                            146,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 40),
          SizedBox(
            width: 110,
            child: Card(
              color: Colors.grey[200],
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  children: [
                    Icon(Icons.refresh_outlined),
                    SizedBox(width: 5),
                    Text('Rebook'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
