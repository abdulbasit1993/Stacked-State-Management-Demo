import 'package:stacked/stacked.dart';
import 'package:stacked_state_management_demo/app/app.locator.dart';
import 'package:stacked_state_management_demo/services/counter_service.dart';

class ProfileViewModel extends BaseViewModel {
  CounterService counterService = locator<CounterService>();

  int get counter => counterService.counter;

  addValue() {
    counterService.addCounterValue();
    rebuildUi();
  }
}
