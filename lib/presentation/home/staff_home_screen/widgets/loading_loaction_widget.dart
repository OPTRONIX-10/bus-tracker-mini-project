import 'package:flutter/material.dart';

class LoadingLocationScreen extends StatelessWidget {
  const LoadingLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
              image:
                  AssetImage('assets/loading_loaction_image/map_loc_on.png')),
          Text(
            'Fetching your current location...',
            style: Theme.of(context).textTheme.titleLarge,
          )
        ],
      ),
    );
  }
}
