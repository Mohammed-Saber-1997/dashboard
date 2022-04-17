import 'package:dashboard/screens/activity_orders_screen/activity_orders_screen.dart';
import 'package:dashboard/screens/add_new_activities_screen/add_new_activities_screen.dart';
import 'package:fluent_ui/fluent_ui.dart';
import '../cubit/app_cubit.dart';
import 'home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ScaffoldPage(
        padding: const EdgeInsets.all(0),
        header: Container(
          height: 50.0,
          color: Colors.blue,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextButton(
                  onPressed: () => print('لوحة تحكم'),
                  child: const Text(
                    'لوحة تحكم',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: TextButton(
                  onPressed: () => print('اضافة نشاط'),
                  child: const Text(
                    'اضافة نشاط',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: TextButton(
                  onPressed: () => print('الطلبات'),
                  child: const Text(
                    'الطلبات',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: TextButton(
                  onPressed: () => print('احصائيات'),
                  child: const Text(
                    'احصائيات',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: TextButton(
                  onPressed: () => AppCubit.get(context).changeAppMode(),
                  child: Text(
                    AppCubit.get(context).isDark ? 'Light' : 'Dark',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextButton(
                  onPressed: () => print('Logout'),
                  child: const Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        content: const HomeScreen(),
      ),
    );
  }
}
