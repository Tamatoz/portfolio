import 'package:flutter/material.dart';

const _minHeightRatioForParallax = 1.1;

@immutable
class ParallaxListItem extends StatelessWidget {
  ParallaxListItem({super.key, required this.bgImagePath, required this.child});

  final GlobalKey _backgroundImageKey = GlobalKey();

  final String bgImagePath;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Stack(
        children: [
          Positioned(
              top: 0, bottom: 0, left: 0, right: 0, child: _buildParallaxBackground(context)),
          Positioned.fill(
              child: Container(
            color: Colors.black.withOpacity(0.7),
          )),
          child
        ],
      )
    ]);
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowDelegate(
        scrollable: Scrollable.of(context),
        listItemContext: context,
        backgroundImageKey: _backgroundImageKey,
      ),
      children: [
        Image.asset(
          bgImagePath,
          key: _backgroundImageKey,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}

class ParallaxFlowDelegate extends FlowDelegate {
  ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.backgroundImageKey,
  }) : super(repaint: scrollable?.position);

  final ScrollableState? scrollable;
  final BuildContext listItemContext;
  final GlobalKey backgroundImageKey;

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(
      width: constraints.maxWidth,
    );
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    final scrollableBox = scrollable?.context.findRenderObject() as RenderBox;
    final listItemBox = listItemContext.findRenderObject() as RenderBox;
    final listItemOffset = listItemBox.localToGlobal(listItemBox.size.centerLeft(Offset.zero),
        ancestor: scrollableBox);

    final viewportDimension = scrollable?.position.viewportDimension ?? 0;
    final scrollFraction = (listItemOffset.dy / viewportDimension).clamp(0.0, 1.0);

    final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);

    final backgroundSize =
        (backgroundImageKey.currentContext!.findRenderObject() as RenderBox).size;
    final listItemSize = context.size;

    double ratio = 1;
    //When background image become smaller than list item height multiplied by [_minHeightRatioForParallax]
    //(to save parallax effect) we should scale it. It is vital for mobile screens.
    if (backgroundSize.height < listItemSize.height * _minHeightRatioForParallax) {
      ratio = (listItemSize.height * _minHeightRatioForParallax) / backgroundSize.height;
    }

    final childRect = verticalAlignment.inscribe(
        Size(backgroundSize.width, backgroundSize.height * ratio), Offset.zero & listItemSize);

    context.paintChild(
      0,
      transform: Transform.translate(
              offset:
                  Offset((backgroundSize.width - backgroundSize.width * ratio) / 2, childRect.top))
          .transform
          .scaled(ratio),
    );
  }

  @override
  bool shouldRepaint(ParallaxFlowDelegate oldDelegate) {
    return scrollable != oldDelegate.scrollable ||
        listItemContext != oldDelegate.listItemContext ||
        backgroundImageKey != oldDelegate.backgroundImageKey;
  }
}
