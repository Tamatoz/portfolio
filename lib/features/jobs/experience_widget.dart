import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ExperienceWidget extends StatefulWidget {
  const ExperienceWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return ExperienceWidgetState();
  }
}

class ExperienceWidgetState extends State<ExperienceWidget> {
  int years = 0;
  int androidYears = 0;
  int flutterYears = 0;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('stats'),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        if (visiblePercentage > 0) {
          setState(() {
            years = 8;
            androidYears = 5;
            flutterYears = 3;
          });
        } else {
          setState(() {
            years = 0;
            androidYears = 0;
            flutterYears = 0;
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 700) {
            return _buildWebContent();
          } else {
            return _buildMobileContent();
          }
        }),
      ),
    );
  }

  Widget _buildWebContent() {
    return Row(children: _buildItemsList());
  }

  Widget _buildMobileContent() {
    return Column(children: _buildItemsList());
  }

  List<Widget> _buildItemsList() {
    return [
      Expanded(
        child: ExperienceItem(
          years: years,
          title: S.of(context).allYearsExperience,
        ),
      ),
      Expanded(
        child: ExperienceItem(
          years: androidYears,
          title: S.of(context).androidYearsExperience,
        ),
      ),
      Expanded(
        child: ExperienceItem(
          years: flutterYears,
          title: S.of(context).flutterYearsExperience,
        ),
      )
    ];
  }
}

class ExperienceItem extends StatelessWidget {
  final int years;
  final String title;

  const ExperienceItem({super.key, required this.years, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(children: [
        AnimatedFlipCounter(
          duration: Duration(milliseconds: years == 0 ? 0 : 500),
          value: years,
          suffix: "+",
          textStyle: Theme.of(context).textTheme.displayLarge,
        ),
        AutoSizeText(
          title,
          maxLines: 2,
          style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w300),
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
