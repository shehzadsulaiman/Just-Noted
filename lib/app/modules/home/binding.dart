import 'package:get/get.dart';
import 'package:just_noted/app/data/provider/task/provider.dart';
import 'package:just_noted/app/data/services/storage/repository.dart';
import 'package:just_noted/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
