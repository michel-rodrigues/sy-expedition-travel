import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sy_expedition_travel/main_page.dart';
import 'package:sy_expedition_travel/styles.dart';

class VultureImage extends StatelessWidget {
  const VultureImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, child) {
        return Positioned(
          left: -0.85 * notifier.vultureOffset + MediaQuery.of(context).size.width * 1.21,
          height: MediaQuery.of(context).size.height / 3,
          child: child,
        );
      },
      child: IgnorePointer(
        child: Image.asset('assets/vulture.png'),
      ),
    );
  }
}

class VulturePage extends StatelessWidget {
  const VulturePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        TravelDetailsLabel(),
        StartCampLabel(),
        StartTimeLabel(),
        BaseCampLabel(),
        BaseTimeLabel(),
        DistanceLabel(),
        TravelDots(),
        MapButton(),
      ],
    );
  }
}

class VultureCircle extends StatelessWidget {
  const VultureCircle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, child) {
        return Center(
          child: Opacity(
            opacity: math.max(0, 4 * notifier.page - 3),
            child: IgnorePointer(
              child: Container(
                margin: const EdgeInsets.only(bottom: 200),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: lightGrey,
                ),
                height: MediaQuery.of(context).size.width * 0.5 * math.max(0, 4 * notifier.page - 3),
                width: MediaQuery.of(context).size.width * 0.5 * math.max(0, 4 * notifier.page - 3),
              ),
            ),
          ),
        );
      },
    );
  }
}

class TravelDetailsLabel extends StatelessWidget {
  const TravelDetailsLabel({Key key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, child) {
        return Positioned(
            top: 490,
            left: MediaQuery.of(context).size.width * 0.89 - notifier.pageOffset,
            child: Opacity(
              opacity: math.max(0, 4 * notifier.page - 3),
              child: child,
            )
          );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 85.0),
        child: Text(
          'Travel details',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class StartCampLabel extends StatelessWidget {
  const StartCampLabel({Key key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, child) {
        return Positioned(
            top: 530,
            left: notifier.pageOffset - MediaQuery.of(context).size.width - 28,
            child: Opacity(
              opacity: math.max(0, 13 * notifier.page - 12),
              child: child,
            )
          );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 85.0),
        child: Text(
          'Start camp',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300
          ),
        ),
      ),
    );
  }
}

class StartTimeLabel extends StatelessWidget {
  const StartTimeLabel({Key key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, child) {
        return Positioned(
            top: 560,
            left: notifier.pageOffset - MediaQuery.of(context).size.width - 15,
            child: Opacity(
              opacity: math.max(0, 13 * notifier.page - 12),
              child: child,
            )
          );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 85.0),
        child: Text(
          '02:40pm',
          style: TextStyle(
            color: lightGrey,
            fontSize: 14,
            fontWeight: FontWeight.w300
          ),
        ),
      ),
    );
  }
}

class BaseCampLabel extends StatelessWidget {
  const BaseCampLabel({Key key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, child) {
        return Positioned(
            top: 530,
            right: notifier.pageOffset - MediaQuery.of(context).size.width + 68,
            child: Opacity(
              opacity: math.max(0, 13 * notifier.page - 12),
              child: child,
            )
          );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 85.0),
        child: Text(
          'Base camp',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300
          ),
        ),
      ),
    );
  }
}

class BaseTimeLabel extends StatelessWidget {
  const BaseTimeLabel({Key key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, child) {
        return Positioned(
            top: 560,
            right: notifier.pageOffset - MediaQuery.of(context).size.width + 81,
            child: Opacity(
              opacity: math.max(0, 13 * notifier.page - 12),
              child: child,
            )
          );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 85.0),
        child: Text(
          '02:40pm',
          style: TextStyle(
            color: lightGrey,
            fontSize: 14,
            fontWeight: FontWeight.w300
          ),
        ),
      ),
    );
  }
}

class DistanceLabel extends StatelessWidget {
  const DistanceLabel({Key key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, child) {
        return Positioned(
            top: 560,
            width: MediaQuery.of(context).size.width, 
            child: Opacity(
              opacity: math.max(0, 13 * notifier.page - 12),
              child: child,
            )
          );
      },
      child: Center(
        child: Text(
            '72 km.',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),
          ),
      ),
    );
  }
}

class TravelDots extends StatelessWidget {
  const TravelDots({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, child) {
        return Positioned(
          top: 535,
          left: 0,
          right: 0,
          child: Center(
            child: Opacity(
              opacity: math.max(0, 13 * notifier.page - 12),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: math.max(0, 13 * notifier.page - 12) * 45.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: white,
                    ),
                    height: 8,
                    width: 8,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: math.max(0, 13 * notifier.page - 12) * 15.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: lightGrey,
                    ),
                    height: 4,
                    width: 4,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: math.max(0, 13 * notifier.page - 12) * 15.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: lightGrey,
                    ),
                    height: 4,
                    width: 4,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: math.max(0, 13 * notifier.page - 12) * 45.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white),
                    ),
                    height: 8,
                    width: 8,
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}

class MapButton extends StatelessWidget {
  const MapButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, child) {
        return Positioned(
          left: 4,
          bottom: 10,
          child: Opacity(
            opacity: math.max(0, 13 * notifier.page - 12),
            child: FlatButton(
              child: Text(
                'ON MAP',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              onPressed: () => print('open map'),
            ),
          ),
        );
      }
    );
  }
}