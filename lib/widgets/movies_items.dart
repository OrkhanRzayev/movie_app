import 'package:flutter/material.dart';

class MovieListItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String information;
  final GlobalKey bgImageKey = GlobalKey();

  MovieListItem(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.information});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Stack(children: [
            Flow(
              delegate: _ParallaxDelegate(
                  scrollable: Scrollable.of(context)!,
                  listItemContex: context,
                  bgImageKey: bgImageKey),
              children: [
                Image.network(
                  imageUrl,
                  width: double.infinity,
                  key: bgImageKey,
                  fit: BoxFit.cover,
                )
              ],
            ),
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.6, 0.95]),
                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 20,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    information,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class _ParallaxDelegate extends FlowDelegate {
  final ScrollableState scrollable;
  final BuildContext listItemContex;
  final GlobalKey bgImageKey;

  _ParallaxDelegate({
    required this.scrollable,
    required this.listItemContex,
    required this.bgImageKey,
  }) : super(repaint: scrollable.position);

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(width: constraints.maxWidth);
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final listItemBox = listItemContex.findRenderObject() as RenderBox;
    final listItemOffset = listItemBox.localToGlobal(
      listItemBox.size.centerLeft(Offset.zero),
      ancestor: scrollableBox,
    );

    final viewportDimension = scrollable.position.viewportDimension;
    final scrollFraction =
        (listItemOffset.dy / viewportDimension).clamp(0.0, 1.0);

    final verticalAligment = Alignment(0.0, scrollFraction * 2 - 1);
    final backgroundSize =
        (bgImageKey.currentContext!.findRenderObject() as RenderBox).size;

    final listItemSize = context.size;
    final childRect =
        verticalAligment.inscribe(backgroundSize, Offset.zero & listItemSize);

    context.paintChild(
      0,
      transform:
          Transform.translate(offset: Offset(0.0, childRect.top)).transform,
    );
  }

  @override
  bool shouldRepaint(covariant _ParallaxDelegate oldDelegate) {
    return scrollable != oldDelegate.scrollable ||
        listItemContex != oldDelegate.listItemContex ||
        bgImageKey != oldDelegate.bgImageKey;
  }
}
