import 'package:get/get.dart';

import 'package:sharedpreference/app/modules/home/bindings/home_binding.dart';
import 'package:sharedpreference/app/modules/home/views/home_view.dart';
import 'package:sharedpreference/app/modules/notes/bindings/notes_binding.dart';
import 'package:sharedpreference/app/modules/notes/views/notes_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NOTES,
      page: () => NotesView(),
      binding: NotesBinding(),
    ),
  ];
}
