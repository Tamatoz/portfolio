import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/domain/application_entity.dart';
import 'package:portfolio/features/common/ui/bw_button_widget.dart';
import 'package:portfolio/features/common/ui/images.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class JobListItem extends StatelessWidget {
  final String title;
  final String companyName;
  final String years;
  final String techStack;
  final List<ApplicationEntity>? applications;

  const JobListItem(
      {super.key,
      required this.title,
      required this.companyName,
      required this.years,
      required this.techStack,
      this.applications});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 700) {
        return _buildWebContent(context);
      } else {
        return _buildMobileContent(context);
      }
    });
  }

  Widget _buildWebContent(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(48),
        alignment: Alignment.center,
        child: Row(children: [
          Expanded(child: _buildSummary(context)),
          const SizedBox(
            width: 16,
          ),
          if (applications != null) _buildApps(CrossAxisAlignment.end)
        ]));
  }

  Widget _buildMobileContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center,
      child: Column(children: [
        _buildSummary(context),
        const SizedBox(
          height: 16,
        ),
        if (applications != null)
          Align(
            alignment: Alignment.centerLeft,
            child: BwButtonWidget(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.black87,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                  ),
                  builder: (BuildContext context) {
                    return Wrap(children: [
                      Padding(
                          padding: const EdgeInsets.all(24),
                          child: _buildApps(CrossAxisAlignment.start))
                    ]);
                  },
                );
              },
              child: (states) => Text(
                S.of(context).apps,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          )
      ]),
    );
  }

  Widget _buildSummary(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Align(
        alignment: Alignment.centerLeft,
        child: AutoSizeText(
          title,
          maxLines: 1,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
      Align(
          alignment: Alignment.centerLeft,
          child: Text(companyName,
              style:
                  Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w100))),
      Align(
          alignment: Alignment.centerLeft,
          child: Text(years, style: Theme.of(context).textTheme.headlineSmall)),
      const SizedBox(
        height: 32,
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: S.of(context).crucialTechnologies,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w300)),
              TextSpan(text: techStack, style: Theme.of(context).textTheme.headlineSmall),
            ],
          ),
        ),
      )
    ]);
  }

  Widget _buildApps(CrossAxisAlignment crossAxisAlignment) {
    return Column(crossAxisAlignment: crossAxisAlignment, children: [
      ...applications!.map(
        (app) => ApplicationWidget(
          applicationEntity: app,
          crossAxisAlignment: crossAxisAlignment,
        ),
      )
    ]);
  }
}

class ApplicationWidget extends StatelessWidget {
  final ApplicationEntity applicationEntity;
  final CrossAxisAlignment crossAxisAlignment;

  const ApplicationWidget(
      {super.key,
      required this.applicationEntity,
      this.crossAxisAlignment = CrossAxisAlignment.end});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: crossAxisAlignment, children: [
      Text(
        applicationEntity.appName,
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w300),
      ),
      const SizedBox(
        height: 8,
      ),
      Row(
        children: [
          if (applicationEntity.appStoreUrl != null)
            InkWell(
              child: SvgPicture.asset(AppImages.imgAppStore),
              onTap: () {
                launchUrl(Uri.parse(applicationEntity.appStoreUrl!));
              },
            ),
          if (applicationEntity.appStoreUrl != null && applicationEntity.googlePlayUrl != null)
            const SizedBox(
              width: 24,
            ),
          if (applicationEntity.googlePlayUrl != null)
            InkWell(
              child: SvgPicture.asset(AppImages.imgGooglePlay),
              onTap: () {
                launchUrl(Uri.parse(applicationEntity.googlePlayUrl!));
              },
            ),
        ],
      ),
      const SizedBox(
        height: 24,
      )
    ]);
  }
}
