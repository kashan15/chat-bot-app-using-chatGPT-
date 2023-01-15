import 'package:chat_bot_app/viewmodels/main_viewmodel.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String? environment}) async{
  g.registerLazySingleton<MainViewModel>(() => MainViewModel());

}

Future<void> $initGetItAppLanguage(GetIt g, {String? environment}) async{

}