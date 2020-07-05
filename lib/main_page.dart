import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sy_expedition_travel/leopard_page.dart';
import 'package:sy_expedition_travel/styles.dart';
import 'package:sy_expedition_travel/vulture_page.dart';

class PageOffsetNotifier with ChangeNotifier {
  double _leopardOffset = 0;
  double _vultureOffset = 0;
  double _pageOffset = 0;
  double _page = 0;

  PageOffsetNotifier(PageController pageController) {
    pageController.addListener(() {
      // pageController.offset hold the value of how much pixels the pageview move
      _leopardOffset = pageController.offset; 
      _vultureOffset = pageController.offset;
      _pageOffset = pageController.offset;
      _page = pageController.page;  // value -> between 0 and 1
      notifyListeners();
    });
  }

  double get leopardOffset => _leopardOffset;
  double get vultureOffset => _vultureOffset;
  double get pageOffset => _pageOffset;
  double get page => _page;
}

class MainPage extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PageOffsetNotifier(_pageController),
      child: Scaffold(
        body: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            PageView(
              physics: ClampingScrollPhysics(), // Remove boucing effect on iOS
              controller: _pageController,
              children: <Widget>[
                Container(),
                Container(),
              ]
            ),
            AppBar(),
            VultureCircle(), 
            LeopardPage(),
            LeopardImage(),
            VulturePage(),
            VultureImage(),
            ArrowIcon(),
            PageIndicator(),
            ShareButton(),
          ],
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            Text(
              'SY', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Icon(Icons.menu)
          ],
        ),
      ),
    );
  }
}

class ArrowIcon extends StatelessWidget {
  const ArrowIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top : MediaQuery.of(context).size.height * 0.715,
      right: MediaQuery.of(context).size.width * 0.05,
      child: Icon(
        Icons.keyboard_arrow_up,
        color: Colors.grey[350],
      )
    );
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, _) {
        return Positioned(
          width: MediaQuery.of(context).size.width,
          bottom: MediaQuery.of(context).size.height * 0.042,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: notifier.page.round() == 0 ? white : lightGrey,
                ),
                height: 6,
                width: 6,
              ),
              SizedBox(width: 8),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: notifier.page.round() == 1 ? white : lightGrey,
                ),
                height: 6,
                width: 6,
              ),
            ],
          ),
        );
      }
    );
  }
}

class ShareButton extends StatelessWidget {
  const ShareButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: MediaQuery.of(context).size.width * 0.05,
      bottom: MediaQuery.of(context).size.height * 0.03,
      child: Icon(Icons.share),
    );
  }
}