import 'package:flutter/material.dart';
import 'package:uber_clone/models/ride_items.dart';
import 'package:uber_clone/widgets/ride_card2.dart';
import 'package:uber_clone/widgets/styles.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  ScrollController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = ScrollController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Go anywhere, get anything',
              style: sectionTextStyle,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: buildCardItems1(),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: buildCardItems2(),
            ),
            const SizedBox(height: 20),
            const Text(
              'Go anything done',
              style: sectionTextStyle,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: buildCardItems3(),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildCardItems1() {
    return [
      RideCard2(
        name: rideItems[0]['name'],
        image: rideItems[0]['image'],
        hint: 'Promo',
        space: 2,
      ),
      RideCard2(
        name: rideItems[1]['name'],
        image: rideItems[1]['image'],
        hint: 'Promo',
        space: 2,
      )
    ];
  }

  List<Widget> buildCardItems2() {
    return [
      RideCard2(
        name: rideItems[2]['name'],
        image: rideItems[2]['image'],
        space: 3.8,
      ),
      RideCard2(
        name: rideItems[3]['name'],
        image: rideItems[3]['image'],
        space: 3.8,
      ),
      RideCard2(
        name: rideItems[2]['name'],
        image: rideItems[2]['image'],
        space: 3.8,
      ),
      RideCard2(
        name: rideItems[3]['name'],
        image: rideItems[3]['image'],
        space: 3.8,
      )
    ];
  }

  List<Widget> buildCardItems3() {
    return [
      RideCard2(
        name: rideItems[3]['name'],
        image: rideItems[3]['image'],
        space: 2,
      ),
      RideCard2(
        name: 'Store pick-up',
        image: rideItems[3]['image'],
        space: 2,
      ),
    ];
  }
}
