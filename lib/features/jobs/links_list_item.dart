import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/features/common/links.dart';
import 'package:portfolio/features/common/ui/bw_button_widget.dart';
import 'package:portfolio/features/common/ui/images.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _githubUrl = Uri.parse(Links.github);
final Uri _linkedInUrl = Uri.parse(Links.linkedIn);
final Uri _cvUrl = Uri.parse(Links.linkToCv);

class LinksListItem extends StatelessWidget {
  const LinksListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, children: _buildButtons(context));
      } else {
        return SizedBox(
            height: 280,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _buildButtons(context)));
      }
    });
  }

  List<Widget> _buildButtons(BuildContext context) {
    return [
      BwButtonWidget(
        child: (states) => Text(
          S.of(context).downloadCv,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        onTap: () => launchUrl(_cvUrl),
        size: const Size(250, 80),
      ),
      BwButtonWidget(
        child: (states) => SvgPicture.asset(
          AppImages.imgGithub,
          width: 180,
          height: 50,
          color: (states.contains(MaterialState.hovered)) ? Colors.black : Colors.white,
        ),
        onTap: () => launchUrl(_githubUrl),
        size: const Size(250, 80),
      ),
      BwButtonWidget(
        child: (states) => SvgPicture.asset(
          AppImages.imgLinkedin,
          width: 180,
          height: 50,
          color: (states.contains(MaterialState.hovered)) ? const Color(0xFF006699) : Colors.white,
        ),
        onTap: () => launchUrl(_linkedInUrl),
        size: const Size(250, 80),
      )
    ];
  }
}
