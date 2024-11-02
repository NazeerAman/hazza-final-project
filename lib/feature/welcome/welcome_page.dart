import 'package:flutter/material.dart';
import 'package:jojo/core/extension/context.dart';
import 'package:jojo/feature/home/widgets/background_curves_painter.dart';
import 'package:jojo/feature/welcome/widgets/api_key_bottom_sheet.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Stack(
            children: [
              Positioned(
                left: -300,
                top: -00,
                child: Container(
                  height: 500,
                  width: 600,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(0.3),
                        Theme.of(context)
                            .colorScheme
                            .background
                            .withOpacity(0.5),
                      ],
                    ),
                  ),
                ),
              ),
              CustomPaint(
                painter: BackgroundCurvesPainter(),
                size: Size.infinite,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                      ),
                    ),
                    Container(
                      height: 350,
                      width: 200,
                      child: Image.asset(
                        "assets/animations/jojo.webp",
                      ),
                    ),
                    Text(
                      'Text Thief!',
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        final TextEditingController apiKeyController =
                            TextEditingController();

                        showModalBottomSheet<void>(
                          context: context,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                          ),
                          builder: (context) {
                            return APIKeyBottomSheet(
                              apiKeyController: apiKeyController,
                              isCalledFromHomePage: false,
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 14, 40, 187),
                        minimumSize: const Size(double.infinity, 56),
                      ),
                      child: Text(
                        'Get Started',
                        style: context.textTheme.labelLarge!.copyWith(
                          color: Color.fromARGB(255, 252, 253, 255),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
