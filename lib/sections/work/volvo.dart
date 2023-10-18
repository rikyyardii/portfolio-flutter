import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/data/text.dart';
import 'package:personal_website/data/url.dart';
import 'package:personal_website/utils/theme.dart';
import 'package:personal_website/widgets/date_range.dart';
import 'package:personal_website/widgets/work_point.dart';
import 'package:personal_website/widgets/work_title.dart';

class Volvo extends StatelessWidget {
  final AutoSizeGroup pointGroup;
  final AutoSizeGroup titleGroup;

  const Volvo({
    super.key,
    required this.pointGroup,
    required this.titleGroup,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        WorkTitle(
          title: "${WorkData.softwareEngineer}",
          company: WorkData.volvo,
          url: Url.volvo,
          group: titleGroup,
        ),
        const DateRange(start: VolvoData.startDate, end: VolvoData.endDate),
        const SizedBox(height: 8.0),
        _point1(),
      ],
    );
  }

  Widget _point1() {
    return WorkPoint(
      data: AutoSizeText.rich(
        TextSpan(
          style: TextStyles.point,
          children: <TextSpan>[
            const TextSpan(text: VolvoData.point1Part1),
          ],
        ),
        maxLines: 5,
        group: pointGroup,
      ),
    );
  }
}
