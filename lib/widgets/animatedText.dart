import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          AnimatedTextKit(
            animatedTexts: [
              FadeAnimatedText(
                'Fade First',
                textStyle:
                    TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              ),
              ScaleAnimatedText(
                'Then Scale',
                textStyle: TextStyle(fontSize: 70.0, fontFamily: 'Canterbury'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
