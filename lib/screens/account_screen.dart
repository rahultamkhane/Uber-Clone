import 'package:flutter/material.dart';
import 'package:uber_clone/constants/constants.dart';
import 'package:uber_clone/widgets/styles.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Divider(
            height: 20,
            color: Color.fromARGB(255, 214, 215, 215),
          ),
          buildRowItem('Settings', Icons.settings),
          buildRowItem('Messages', Icons.email),
          buildRowItem('Send  a gift', Icons.card_giftcard_outlined),
          buildRowItem('Earn by driving or delivering', Icons.reviews),
          buildRowItem('Saved groups', Icons.group),
          buildRowItem('Set up your business profile', Icons.business_center),
          buildRowItem('Refer friends, unlock deals', Icons.group),
          buildRowItem('Manage Uber account', Icons.person),
          buildRowItem('Legal', Icons.info),
        ],
      ),
    );
  }

  Widget buildRowItem(String text, IconData icon) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 20),
            Text(
              text,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
