import 'package:flutter/material.dart';
import 'package:flutter_animation/implicit_animations/animated_align_widget.dart';
import 'package:flutter_animation/implicit_animations/animated_container_widget.dart';
import 'package:flutter_animation/implicit_animations/animated_cross_fade_widgets/animated_cross_fade_widget.dart';
import 'package:flutter_animation/implicit_animations/animated_list_widget.dart';
import 'package:flutter_animation/implicit_animations/animated_opacity_widget.dart';
import 'package:flutter_animation/implicit_animations/animated_padding_widget.dart';
import 'package:flutter_animation/implicit_animations/animated_physical_model_widget.dart';
import 'package:flutter_animation/implicit_animations/animated_postioned_directional.widget.dart';
import 'package:flutter_animation/implicit_animations/animated_postioned_widget.dart';
import 'package:flutter_animation/implicit_animations/animated_switcher_widget.dart';
import 'package:flutter_animation/implicit_animations/animated_text_style_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orangeAccent,
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Animations'),
      ),

      // ToDo (List of Widgets and Strings) and make Listview to Listview.builder //
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AnimatedAlignWidget()));
            },
            child: const Text('Animated Align Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AnimatedContainrWidget()));
            },
            child: const Text('Animated Container Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AnimatedTextStyleWidget()));
            },
            child: const Text('Animated TextStyle Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AnimatedOpacityWidget()));
            },
            child: const Text('Animated Opacity Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AnimatedPaddingWidget()));
            },
            child: const Text('Animated Padding Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const AnimatedPhysicalModelWidget()));
            },
            child: const Text('Animated Physical Model Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AnimatedPostionedWidget()));
            },
            child: const Text('Animated Postioned Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const AnimatedPostionedDirectionalWidget()));
            },
            child: const Text('Animated Postioned Directional Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AnimatedCrossFadeWidget()));
            },
            child: const Text('Animated Cross Fade Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AnimatedSwitcherWidget()));
            },
            child: const Text('Animated Switcher Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AnimatedListWidget()));
            },
            child: const Text('Animated List Widget'),
          ),
        ],
      ),
    );
  }
}
