import 'package:flutter/material.dart';
import 'package:mini_project/domain/constants/constants.dart';
import 'package:mini_project/domain/routes/routes.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return SafeArea(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                'TRACKER',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                'Track your Bus',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: constraints.maxHeight * bHeight,
                width: constraints.maxWidth * bWidth,
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return SizedBox(
                              height: constraints.maxHeight * 0.5,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Select your Role',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    height: constraints.maxHeight * bHeight,
                                    width: constraints.maxWidth * bWidth,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed(studentLoginPage);
                                        },
                                        child: const Text(
                                          'Student',
                                          style: TextStyle(color: Colors.black),
                                        )),
                                  ),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    height: constraints.maxHeight * bHeight,
                                    width: constraints.maxWidth * bWidth,
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        Navigator.of(context)
                                            .pushNamed(staffLoginPage);
                                      },
                                      child: const Text(
                                        'Staff',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: const Text(
                      'Welcome',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ]),
          ),
        );
      }),
    );
  }
}
