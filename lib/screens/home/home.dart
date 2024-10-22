import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_state_management_demo/screens/home/home_viewmodel.dart';
import 'package:stacked_state_management_demo/screens/profile/profile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
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
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      viewModel.addValue();
                    },
                    child: Text("Add")),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfileView()));
                      viewModel.rebuildUi();
                    },
                    child: Text("Go to Profile Screen")),
              ],
            ),
          ),
        );
      },
    );
  }
}
