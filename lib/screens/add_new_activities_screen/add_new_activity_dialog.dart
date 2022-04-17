import 'package:fluent_ui/fluent_ui.dart';
import '../../components.dart';
import '../../cubit/app_cubit.dart';

class AddNewActivityDialog {
  void showAddNewActivityDialog(BuildContext context) {
    var controller1 = TextEditingController();
    var controller2 = TextEditingController();
    var controller3 = TextEditingController();
    var controller4 = TextEditingController();
    var controller5 = TextEditingController();
    var controller6 = TextEditingController();

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => ContentDialog(
        constraints: const BoxConstraints(maxWidth: 700, maxHeight: 420),
        title: Container(
          height: 50,
          color: Colors.blue,
          child: const Center(
            child: Text(
              'انشاء نوع نشاط جديد',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
        content: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                fluentItem(
                                  text: 'النشاط',
                                  controller: controller1,
                                  keyboardType: TextInputType.text,
                                ),
                                fluentItem(
                                  text: 'النشاط',
                                  controller: controller2,
                                  keyboardType: TextInputType.text,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                fluentItem(
                                  text: 'النشاط',
                                  controller: controller3,
                                  keyboardType: TextInputType.text,
                                ),
                                fluentItem(
                                  text: 'النشاط',
                                  controller: controller4,
                                  keyboardType: TextInputType.text,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                fluentItem(
                                  text: 'النشاط',
                                  controller: controller5,
                                  keyboardType: TextInputType.text,
                                ),
                                fluentItem(
                                  text: 'النشاط',
                                  controller: controller6,
                                  keyboardType: TextInputType.text,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 10.0,
                        ),
                        child: Row(
                          children: const [
                            Text('الموافقة التلقائية'),

                            //   bool _checked = true;
                            //   Checkbox(
                            //   checked: _checked,
                            //   onChanged: (value) => setState(() => _checked = value),
                            // )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Button(
                          style: ButtonStyle(
                            backgroundColor: ButtonState.resolveWith(
                              (states) {
                                return ButtonThemeData.buttonColor(
                                    AppCubit.get(context).isDark
                                        ? Brightness.light
                                        : Brightness.dark,
                                    states);
                              },
                            ),
                          ),
                          child: Text(
                            'انشاء',
                            style: TextStyle(
                                color: AppCubit.get(context).isDark
                                    ? Colors.black
                                    : Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Button(
            style: ButtonStyle(
              backgroundColor: ButtonState.resolveWith(
                (states) {
                  return ButtonThemeData.buttonColor(
                      AppCubit.get(context).isDark
                          ? Brightness.light
                          : Brightness.dark,
                      states);
                },
              ),
            ),
            child: const Text(
              'الغاء',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}

///
// import 'package:flutter/material.dart';
// import 'add_new_activities_screen.dart';
// import 'components.dart';
//
// class AddNewActivityDialog {
//   void showAddNewActivityDialog(BuildContext context) {
//     var civilNumberController = TextEditingController();
//
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (BuildContext context) => Dialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(3),
//         ),
//         clipBehavior: Clip.antiAlias,
//         child: Directionality(
//           textDirection: TextDirection.rtl,
//           child: SizedBox(
//             height: 400,
//             width: 800,
//             child: Column(
//               children: [
//                 Container(
//                   height: 50,
//                   color: Colors.blue,
//                   child: const Center(
//                     child: Text(
//                       'انشاء نوع نشاط جديد',
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     color: Colors.white,
//                     padding: const EdgeInsets.all(20),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Expanded(
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Expanded(
//                                 child: Column(
//                                   children: [
//                                     fluentItem(
//                                       text: 'النشاط',
//                                       controller: civilNumberController,
//                                       keyboardType: TextInputType.text,
//                                     ),
//                                     fluentItem(
//                                       text: 'النشاط',
//                                       controller: civilNumberController,
//                                       keyboardType: TextInputType.text,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   children: [
//                                     fluentItem(
//                                       text: 'النشاط',
//                                       controller: civilNumberController,
//                                       keyboardType: TextInputType.text,
//                                     ),
//                                     fluentItem(
//                                       text: 'النشاط',
//                                       controller: civilNumberController,
//                                       keyboardType: TextInputType.text,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   children: [
//                                     fluentItem(
//                                       text: 'النشاط',
//                                       controller: civilNumberController,
//                                       keyboardType: TextInputType.text,
//                                     ),
//                                     fluentItem(
//                                       text: 'النشاط',
//                                       controller: civilNumberController,
//                                       keyboardType: TextInputType.text,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                             vertical: 20.0,
//                             horizontal: 10.0,
//                           ),
//                           child: Row(
//                             children: const [
//                               Text('الموافقة التلقائية'),
//                             ],
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment.center,
//                           child: MaterialButton(
//                             color: Colors.blue,
//                             minWidth: 80,
//                             child: const Text(
//                               'انشاء',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                             onPressed: () {
//                               if (civilNumberController.text.length >= 2) {
//                                 // print(civilNumberController.text);
//                                 Navigator.of(context).pop();
//                               }
//                             },
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         MaterialButton(
//                           color: Colors.red,
//                           minWidth: 60,
//                           child: const Text(
//                             'الغاء',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                           onPressed: () {
//                             Navigator.of(context).pop();
//                           },
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
