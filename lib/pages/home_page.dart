import 'package:animated_icon_testing/components/a_animated_icon.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List of animated icons
  final _animatedIcons = [
    AnimatedIcons.list_view,
    AnimatedIcons.view_list,
    AnimatedIcons.add_event,
    AnimatedIcons.event_add,
    AnimatedIcons.menu_close,
    AnimatedIcons.close_menu,
    AnimatedIcons.ellipsis_search,
    AnimatedIcons.search_ellipsis,
    AnimatedIcons.home_menu,
    AnimatedIcons.menu_home,
    AnimatedIcons.menu_arrow,
    AnimatedIcons.arrow_menu,
    AnimatedIcons.pause_play,
    AnimatedIcons.play_pause,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Icons Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 20.0,
          runSpacing: 20.0,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: List<Widget>.generate(
            _animatedIcons.length,
            (i) => AAnimatedIcon(
              animatedIcon: _animatedIcons[i],
              size: 75.0,
              color: Colors.primaries[i % Colors.primaries.length],
              onClick: (value) {
                if (kDebugMode) print(value);
              },
            ),
          ),
        ),
      ),
    );
  }
}
