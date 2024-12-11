import 'package:flutter/material.dart';
import 'package:uber_clone/models/past_trip_items.dart';
import 'package:uber_clone/widgets/styles.dart';
import 'package:uber_clone/widgets/trip_card.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1, left: 10, bottom: 1, right: 10),
      child: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Upcoming',
              style: sectionTextStyle,
            ),
            const SizedBox(height: 20),
            buildUpcomingTripsCard(),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Past',
                  style: sectionTextStyle,
                ),
                Icon(Icons.tune)
              ],
            ),
            const SizedBox(height: 20),
            buildPastTripsCard(),
            const SizedBox(height: 10),
            buildTripHistoryCard(),
          ],
        ),
      ),
    );
  }

  Widget buildUpcomingTripsCard() {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: const Color.fromARGB(255, 200, 198, 198),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You have no upcoming trips',
                  style: sectionTextStyle,
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reserve your trip',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 147, 146, 146),
                      ),
                    ),
                    Icon(Icons.arrow_forward,
                        color: Color.fromARGB(255, 147, 146, 146)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Image.asset(
            'assets/images/trip.png',
            width: 80,
            height: 80,
          ),
        ],
      ),
    );
  }

  Widget buildPastTripsCard() {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: const Color.fromARGB(255, 200, 198, 198),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '9',
                style: sectionTextStyle,
              ),
              const Text(
                '12 Nov 08:00 am',
                style: TextStyle(
                  color: Color.fromARGB(
                    255,
                    147,
                    146,
                    146,
                  ),
                ),
              ),
              const Text(
                '\u{20B9}230.00',
                style: TextStyle(
                  color: Color.fromARGB(
                    255,
                    147,
                    146,
                    146,
                  ),
                ),
              ),
              Row(
                children: [
                  Card(
                    color: Colors.grey[200],
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Row(
                        children: [
                          Icon(Icons.star),
                          SizedBox(width: 5),
                          Text('Rate'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.grey[200],
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Row(
                        children: [
                          Icon(Icons.refresh_outlined),
                          SizedBox(width: 5),
                          Text('Rebook'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildTripHistoryCard() {
    // return Text('Hello');
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: pastTripItems.length,
      itemBuilder: (context, index) {
        return TripCard(
          data: pastTripItems[index],
        );
      },
    );
  }
}
