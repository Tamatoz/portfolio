// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/domain/application_entity.dart';
import 'package:portfolio/features/common/ui/images.dart';
import 'package:portfolio/features/common/links.dart';
import 'package:portfolio/features/common/utils.dart';
import 'package:portfolio/features/education/education_widget.dart';
import 'package:portfolio/features/education/introduction_widget.dart';
import 'package:portfolio/features/jobs/experience_widget.dart';
import 'package:portfolio/features/jobs/job_list_item.dart';
import 'package:portfolio/features/jobs/links_list_item.dart';
import 'package:portfolio/features/jobs/parallax_list_item.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

const int _fadeInAnimationMs = 700;

const _email = 'mailto:stackprod@gmail.com';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final Uri _emailUrl = Uri.parse(_email);

  bool isImagesPrecached = false;

  @override
  void initState() {
    super.initState();
    //Precache background images before display for a smoother UX
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Iterable<Future> imagesFutures = MediaQuery.of(context).size.width > 600
          ? AppImages.wideBackgrounds.map((e) => precacheImage(Image.asset(e).image, context))
          : AppImages.w1000Backgrounds.map((e) => precacheImage(Image.asset(e).image, context));
      Future.wait(imagesFutures).then((value) {
        //Send callback to js to remove splash loading
        Future.delayed(const Duration(milliseconds: _fadeInAnimationMs),
            () => js.context.callMethod("closeLoading"));
        setState(() {
          isImagesPrecached = true;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isImagesPrecached ? 1.0 : 0.0,
      duration: const Duration(milliseconds: _fadeInAnimationMs),
      child: LayoutBuilder(builder: (context, constraints) {
        final isWide = constraints.maxWidth > 600;
        return Scaffold(
          backgroundColor: Colors.black,
          //TODO: Make smooth scroll on step mouses after https://github.com/flutter/flutter/issues/32120
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  ParallaxListItem(
                      bgImagePath: isWide ? AppImages.bgMatrix : AppImages.bgMatrixW1000,
                      child: const IntroductionWidget()),
                  ParallaxListItem(
                      bgImagePath: isWide ? AppImages.bgKubsu : AppImages.bgKubsuW1000,
                      child: const EducationWidget()),
                  ParallaxListItem(
                      bgImagePath: isWide ? AppImages.bgFinam : AppImages.bgFinamW1000,
                      child: JobListItem(
                        title: S.of(context).finamAppName,
                        companyName: S.of(context).finamCompanyName,
                        years: S.of(context).finamYears,
                        techStack: S.of(context).finamTechStack,
                        applications: [
                          ApplicationEntity(
                              appName: S.of(context).finamAppName,
                              appStoreUrl: Links.finamAppStore,
                              googlePlayUrl: Links.finamGooglePlay)
                        ],
                      )),
                  ParallaxListItem(
                      bgImagePath: isWide ? AppImages.bg6Grain : AppImages.bg6GrainW1000,
                      child: JobListItem(
                        title: S.of(context).sixthGrainAppsName,
                        companyName: S.of(context).sixthGrainCompanyName,
                        years: S.of(context).sixthGrainYears,
                        techStack: S.of(context).sixthGrainTechStack,
                        applications: [
                          ApplicationEntity(
                              appName: S.of(context).fieldFocus,
                              appStoreUrl: Links.fieldFocusAppStore,
                              googlePlayUrl: Links.fieldFocusGooglePlay),
                          ApplicationEntity(
                              appName: S.of(context).agronomyPlatform,
                              appStoreUrl: Links.agronomyPlatformAppStore,
                              googlePlayUrl: Links.agronomyPlatformGooglePlay),
                          ApplicationEntity(
                              appName: S.of(context).flahti,
                              appStoreUrl: Links.flahtiAppStore,
                              googlePlayUrl: Links.flahtiGooglePlay)
                        ],
                      )),
                  ParallaxListItem(
                      bgImagePath: isWide ? AppImages.bgT2v : AppImages.bgT2vW1000,
                      child: JobListItem(
                        title: S.of(context).t2vAppName,
                        companyName: S.of(context).t2vCompanyName,
                        years: S.of(context).t2vYears,
                        techStack: S.of(context).t2vTechStack,
                        applications: [
                          ApplicationEntity(
                              appName: S.of(context).t2vAppName,
                              googlePlayUrl: Links.tap2VisitGooglePlay)
                        ],
                      )),
                  ParallaxListItem(
                      bgImagePath: isWide ? AppImages.bgPp : AppImages.bgPpW1000,
                      child: JobListItem(
                        title: S.of(context).paidParking,
                        companyName: S.of(context).russianRobotics,
                        years: S.of(context).paidParkingYears,
                        techStack: S.of(context).paidParkingTechStack,
                        applications: [
                          ApplicationEntity(
                              appName: S.of(context).cityParking,
                              googlePlayUrl: Links.paidParkingGooglePlay)
                        ],
                      )),
                  ParallaxListItem(
                      bgImagePath: isWide ? AppImages.bgMoneybox : AppImages.bgMoneyboxW1000,
                      child: JobListItem(
                        title: S.of(context).petProject,
                        companyName: S.of(context).myself,
                        years: S.of(context).smartMoneyboxYears,
                        techStack: S.of(context).smartMoneyboxTechStack,
                        applications: [
                          ApplicationEntity(
                              appName: S.of(context).smartMoneybox,
                              googlePlayUrl: Links.smartMoneyboxGooglePlay)
                        ],
                      )),
                  ParallaxListItem(
                      bgImagePath: isWide ? AppImages.bgPortfolio : AppImages.bgPortfolioW1000,
                      child: JobListItem(
                        title: S.of(context).andThisProduct(context.getCurrentProductString()),
                        companyName: S.of(context).myself,
                        years: S.of(context).thisProductYears,
                        techStack: S.of(context).thisProductTechStack,
                      )),
                  const ExperienceWidget(),
                  Container(
                    height: 1,
                    color: Colors.white,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: AutoSizeText(
                        S.of(context).needMoreInfo,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                  ),
                  const LinksListItem(),
                  const SizedBox(
                    height: 32,
                  )
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => launchUrl(_emailUrl),
            tooltip: S.of(context).sendMeEmail,
            child: const Icon(Icons.email),
          ),
        );
      }),
    );
  }
}
