import 'dart:ui';

import 'package:daily_tasks/5-11-24/widget/custom_textformfield.dart';
import 'package:flutter/material.dart';


class TabBarCtr extends StatefulWidget {
  const TabBarCtr({super.key});

  @override
  State<TabBarCtr> createState() => _TabBarCtrState();
}

class _TabBarCtrState extends State<TabBarCtr> {
  int index = 0;


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      animationDuration: const Duration(seconds: 2),
      initialIndex: index,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Implicit Animations',
            ),
            Tab(
              text: 'Explicit Animations',
            ),
          ]),
        ),
        body: const TabBarView(children: [
            ImplicitAnimation(),
            ExplicitAnimations(),
          ]),
        ),
      
    );
  }
}

class ImplicitAnimation extends StatefulWidget {
  const ImplicitAnimation({super.key});

  @override
  State<ImplicitAnimation> createState() => _ImplicitAnimationState();
}

class _ImplicitAnimationState extends State<ImplicitAnimation> {
  bool trigger = true;
  double blurValue = 0.11;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _animatedContainer(),
              tweenAnimatedBuilder(),
            ],
          ),
        ),
      ),
    );
  }

  // implicit animations

  Widget _animatedContainer() {
    return Column(
      children: [
        AnimatedContainer(
          width: trigger ? 100 : 300,
          height: trigger ? 100 : 300,
          decoration: BoxDecoration(color: trigger ? Colors.red : Colors.amber),
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOutCubicEmphasized, //curves,
          child: const Image(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg'),
          ),
        ),
        MaterialButton(
          color: trigger ? Colors.purple : Colors.amber,
          onPressed: () {
            setState(() {
              trigger = !trigger;
            });
          },
          child: const Text("Trigger"),
        )
      ],
    );
  }

  Widget tweenAnimatedBuilder() {
    return SizedBox(
      width: 200,
      child: Column(
        children: [
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0.01, end: blurValue),
              duration: const Duration(microseconds: 200),
              builder: (BuildContext context, double? value, Widget? child) {
                return SizedBox(
                  height: 200,
                  width: 200,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: value ?? 0.1 * .41,
                      sigmaY: value ?? 0.1 * .41,
                    ),
                    child: const Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://th.bing.com/th/id/OIP.6sGzTDDwHo4-Z0hq6jOZdgHaEP?w=262&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                    ),
                  ),
                );
              }),
          Slider(
            //to adjust the blur min,max,value
              min: 0.011,
              max: 10.0,
              value: blurValue,
              onChanged: (v) {
                setState(() {
                  blurValue = v;
                });
              })
        ],
      ),
    );
  }

  //explicit animations
}

class ExplicitAnimations extends StatefulWidget {
  const ExplicitAnimations({super.key});

  @override
  State<ExplicitAnimations> createState() => _ExplicitAnimationsState();
}

class _ExplicitAnimationsState extends State<ExplicitAnimations>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  late AnimationController _animationBuilderController;
  late Animation<double> _blurAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //animation durations
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
          
    //scale animation
    _scaleAnimation = Tween<double>(begin: 0, end: 5).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.easeInBack));

    _animationBuilderController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))..repeat(reverse: true);


// bluranimation duration timing
    _blurAnimation = Tween<double>(begin: 1, end: 10).animate(CurvedAnimation(
        parent: _animationBuilderController, curve: Curves.linear));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
    _animationBuilderController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _animatedContainer(),
          _animatedBuilders(),
        ],
      ),
    );
  }

  Widget _animatedContainer() {
    return SizedBox(
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg'))),
            ),
          ),
    //button functions
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _animationController.forward();
                  },
                  child: const Text('Forword')),
              ElevatedButton(
                  onPressed: () {
                    _animationController.reverse();
                  },
                  child: const Text('Reverse')),
              ElevatedButton(
                  onPressed: () {
                    _animationController.stop();
                  },
                  child: const Text('Stop')),
              ElevatedButton(
                  onPressed: () {
                    _animationController.reset();
                  },
                  child: const Text('Reset')),
            ],
          ),
          //CustomButtonEx(text:  'heyy',onpress:  (){}),
        ],
      ),
    );
  }

// blur animation propertys
  Widget _animatedBuilders() {
    return AnimatedBuilder(
      animation: _blurAnimation,
      builder: (context, child) {
        return SizedBox(
          height: 200,
          width: 200,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: _blurAnimation.value ,
              sigmaY: _blurAnimation.value ,
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://th.bing.com/th/id/OIP.60nlpatndA3ytb7Y3bFT3gHaEK?rs=1&pid=ImgDetMain'),
            ),
          ),
        );
      },
    );
  }
}