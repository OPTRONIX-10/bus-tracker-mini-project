import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
              Text(
                'TRACKER',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Track your Bus',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: constraints.maxHeight * bHeight,
                width: constraints.maxWidth * bWidth,
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: constraints.maxHeight * 0.5,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Select your Role',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 20),
                                  SizedBox(
                                    height: constraints.maxHeight * bHeight,
                                    width: constraints.maxWidth * bWidth,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed(studentLoginPage);
                                        },
                                        child: Text(
                                          'Student',
                                          style: TextStyle(color: Colors.black),
                                        )),
                                  ),
                                  SizedBox(height: 20),
                                  SizedBox(
                                    height: constraints.maxHeight * bHeight,
                                    width: constraints.maxWidth * bWidth,
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        Navigator.of(context)
                                            .pushNamed(staffLoginPage);
                                      },
                                      child: Text(
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
                    child: Text(
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
