import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

class EducationWidget extends StatefulWidget {
  const EducationWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return EducationWidgetState();
  }
}

class EducationWidgetState extends State<EducationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(48),
      alignment: Alignment.topLeft,
      child: Column(children: [
        Align(
          alignment: Alignment.centerLeft,
          child: AutoSizeText(
            S.of(context).mastersDegree,
            maxLines: 1,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: AutoSizeText(S.of(context).mastersMajor,
                maxLines: 1,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontWeight: FontWeight.w100))),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(S.of(context).mastersYears,
                style: Theme.of(context).textTheme.headlineSmall)),
        const SizedBox(
          height: 50,
        ),
        Align(
            alignment: Alignment.centerRight,
            child: AutoSizeText(S.of(context).bachelorsDegree,
                maxLines: 1, style: Theme.of(context).textTheme.displaySmall)),
        Align(
            alignment: Alignment.centerRight,
            child: AutoSizeText(S.of(context).bachelorsMajor,
                maxLines: 1,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontWeight: FontWeight.w100))),
        Align(
            alignment: Alignment.centerRight,
            child: Text(S.of(context).bachelorsYears,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontWeight: FontWeight.w100))),
      ]),
    );
  }
}
