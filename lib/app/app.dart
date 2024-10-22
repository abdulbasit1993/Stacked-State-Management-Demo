import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_state_management_demo/services/counter_service.dart';

@StackedApp(
  routes: [],
  dependencies: [
    Singleton(classType: CounterService),
  ],
)
class App {}
