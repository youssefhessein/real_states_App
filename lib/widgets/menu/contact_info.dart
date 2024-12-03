import 'package:flutter/material.dart';
import 'package:real_states_app/constants.dart';

class contactinfo extends StatelessWidget {
  const contactinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(title: 'Address', text: 'Station Street 5'),
        buildContactInfo(title: 'Country', text: 'Egypt'),
        buildContactInfo(title: 'Email', text: 'email@website.com'),
        buildContactInfo(title: 'Mobile', text: '01056588954'),
        buildContactInfo(title: 'Website', text: 'My@website.com'),
      ],
    );
  }

  Padding buildContactInfo({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title',
            style: const TextStyle(color: Colors.white),
          ),
          Text(text)
        ],
      ),
    );
  }
}
