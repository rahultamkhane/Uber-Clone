import 'package:flutter/material.dart';
import 'package:uber_clone/constants/constants.dart';
import 'package:uber_clone/models/banner_commute_items.dart';
import 'package:uber_clone/models/banner_ride_items.dart';
import 'package:uber_clone/models/ride_items.dart';
import 'package:uber_clone/widgets/banner_card.dart';
import 'package:uber_clone/widgets/ride_card.dart';
import 'package:uber_clone/widgets/styles.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
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
      child: Column(
        children: [
          buildSearchWidget(),
          buildSuggestionRow(),
          buildSuggestionItems(),
          buildCommuteRow(),
          buildCommuteItems(),
          buildRideRow(),
          buildRideItems(),
        ],
      ),
    );
  }

  Widget buildSearchWidget() {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 229, 226, 226),
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.black),
          const SizedBox(width: 20),
          const Expanded(
            child: Text(
              Constants.labelWhereTo,
              style: TextStyle(
                color: Color.fromARGB(137, 0, 0, 0),
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Container(width: 5, color: Colors.white),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.watch_later,
                  color: Colors.black,
                ),
                SizedBox(width: 5),
                Text('Now'),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSuggestionRow() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            Constants.labelSectionSuggestions,
            style: sectionTextStyle,
          ),
          Text(
            Constants.labelSeeAll,
            style: boldText,
          ),
        ],
      ),
    );
  }

  Widget buildSuggestionItems() {
    return SizedBox(
      height: 130,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: ListView.builder(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          shrinkWrap: false,
          itemCount: rideItems.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                RideCard(
                  name: rideItems[index]['name'],
                  image: rideItems[index]['image'],
                  hint: rideItems[index]['hint'],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget buildCommuteRow() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            Constants.labelSectionCommute,
            style: sectionTextStyle,
          ),
        ],
      ),
    );
  }

  Widget buildCommuteItems() {
    return SizedBox(
      height: 240,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: ListView.builder(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          shrinkWrap: false,
          itemCount: commuteBannerItems.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                BannerCard(
                  title: commuteBannerItems[index]['title'],
                  description: commuteBannerItems[index]['description'],
                  image: commuteBannerItems[index]['image'],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget buildRideRow() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            Constants.labelSectionRide,
            style: sectionTextStyle,
          ),
        ],
      ),
    );
  }

  Widget buildRideItems() {
    return SizedBox(
      height: 240,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: ListView.builder(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          shrinkWrap: false,
          itemCount: rideBannerItems.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                BannerCard(
                  title: rideBannerItems[index]['title'],
                  description: rideBannerItems[index]['description'],
                  image: rideBannerItems[index]['image'],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
