import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_state_management_demo/screens/profile/profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      viewModelBuilder: () => ProfileViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Profile'),
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Colors.white,
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  viewModel.counter.toString(),
                  style: TextStyle(fontSize: 50),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      viewModel.addValue();
                    },
                    child: Text("Add"))
              ],
            ),
          ),
        );
      },
    );
  }
}
