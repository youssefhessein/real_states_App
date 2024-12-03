import 'package:flutter/material.dart';

import 'package:real_states_app/constants.dart';
import 'package:real_states_app/models/projects.dart';
import 'package:real_states_app/responsive.dart';
import 'package:real_states_app/widgets/main/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Responsive(
          desktop: buildGridView(
              itemcount: demoProjects.length,
              crossAxsitcount: 3,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCard(
                    project: demoProjects[index],
                  )),
          mobile: buildGridView(
              itemcount: demoProjects.length,
              crossAxsitcount: 1,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCard(
                    project: demoProjects[index],
                  )),
          mobilelarge: buildGridView(
              itemcount: demoProjects.length,
              crossAxsitcount: 2,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCard(
                    project: demoProjects[index],
                  )),
          tablet: buildGridView(
              itemcount: demoProjects.length,
              crossAxsitcount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCard(
                    project: demoProjects[index],
                  )),
        )
      ],
    );
  }

  GridView buildGridView({
    required int itemcount,
    required int crossAxsitcount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: itemcount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxsitcount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
      ),
      itemBuilder: itemBuilder,
    );
  }
}






















































/*import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/models/projects.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoProjects.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.3,
              crossAxisSpacing: kDefaultPadding,
              mainAxisSpacing: kDefaultPadding),
          itemBuilder: (context, index) => Container(
            
            padding: const EdgeInsets.all(kDefaultPadding),
            color: kSecondaryColor,
            child: Column(
              children: [
                Image.asset(
                  demoProjects[0].image!,
                  fit: BoxFit.cover,
                ),
                Text(
                  demoProjects[0].title!,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.titleSmall,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}*/
