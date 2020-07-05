import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sy_expedition_travel/main_page.dart';
import 'package:sy_expedition_travel/styles.dart';


class LeopardImage extends StatelessWidget {
  const LeopardImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, child) {
        return Positioned(
          left: -0.85 * notifier.leopardOffset,
          width: MediaQuery.of(context).size.width * 1.57,
          child: child,
        );
      },
      child: IgnorePointer(
        child: Image.asset('assets/leopard.png'),
      ),
    );
  }
}

class LeopardPage extends StatelessWidget {
  const LeopardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Number72(),
          SizedBox(height: 32),
          TravelDescriptionLabel(),
          SizedBox(height: 15),
          LeopardDescription(),
        ],
      ),
    );
  }
}

class TravelDescriptionLabel extends StatelessWidget {
  const TravelDescriptionLabel({Key key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, child) {
        return Transform.translate(
            offset: Offset(-45 + -0.8 * notifier.pageOffset, 65),
            child: Opacity(
              opacity: math.max(0, 1 - 4 * notifier.page), 
              child: child,
            )
          );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 85.0),
        child: Text(
          'Travel description',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class LeopardDescription extends StatelessWidget {
  const LeopardDescription({Key key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, child) {
        return Transform.translate(
            offset: Offset(-45 + -0.8 * notifier.pageOffset, 65),
            child: Opacity(
              opacity: math.max(0, 1 - 4 * notifier.page), 
              child: child,
            )
          );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 85.0),
        child: Text(
          'The leopard is distinguished by its well-camouflaged fur, opportunistic hunting behaviour, broad diet and strength.',
          style: TextStyle(
            color: lightGrey,
          ),
        ),
      ),
    );
  }
}

class Number72 extends StatelessWidget {
  const Number72({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, child) {
        return Transform.translate(
            offset: Offset(-45 + -2 * notifier.pageOffset, 65),
            child: child,
          );
      },
      child: RotatedBox(
        quarterTurns: 1,
        child: Text(
          '72',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height / 2,
            fontWeight: FontWeight.bold,
          ),
        ),
      ), 
    );
  }

}