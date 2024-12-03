import 'package:flutter/material.dart';
import 'package:real_states_app/constants.dart' ;
import 'package:real_states_app/responsive.dart' ;

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context)? 1 :1.7 ,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: kDarkColor.withOpacity(0.10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Build a greate future \n for all of US!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)
                      : Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                ElevatedButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 2,
                          vertical: kDefaultPadding),
                      backgroundColor: kPrimaryColor,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'CONTACT US',
                      style: TextStyle(color: kDarkColor),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

