import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(48),
        alignment: Alignment.center,
        child: Column(children: [
          Align(
            alignment: Alignment.topLeft,
            child: AutoSizeText.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: S.of(context).hiMyNameIs,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w100)),
                  TextSpan(
                      text: S.of(context).ruslan,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w800)),
                ],
              ),
              minFontSize: 14,
              style: Theme.of(context).textTheme.displaySmall,
              maxLines: 1,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.center,
            child: AutoSizeText.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: S.of(context).iAmA,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w100)),
                  TextSpan(
                      text: S.of(context).mobileDeveloper,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w800)),
                ],
              ),
              minFontSize: 14,
              style: Theme.of(context).textTheme.displaySmall,
              maxLines: 1,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: AutoSizeText.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: S.current.andThisIsMyDigital,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w100)),
                  TextSpan(
                      text: S.current.portfolio,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w800)),
                ],
              ),
              minFontSize: 14,
              style: Theme.of(context).textTheme.displaySmall,
              maxLines: 1,
            ),
          )
        ]));
  }
}
