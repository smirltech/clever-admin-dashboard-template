import 'package:flutter/material.dart';

import 'sub_components/section_alpha.dart';
import 'sub_components/section_beta.dart';
import 'sub_components/tab_header_1.dart';

class BodyTabber extends StatelessWidget {
  const BodyTabber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: const [
            TabHeader1(),
            Divider(),
            SectionAlpha(),
            SizedBox(height: 10,),
            SectionBeta(),
          ],
        ),
      ),
    );
  }
}
