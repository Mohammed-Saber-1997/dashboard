import 'package:fluent_ui/fluent_ui.dart';
import '../../components.dart';
import '../../cubit/app_cubit.dart';

class OrderDialog {
  void showOrderDialog(BuildContext context) {
    var civilNumberController = TextEditingController();
    var activityController = TextEditingController();
    var requiredNumberController = TextEditingController();

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => ContentDialog(
        constraints: const BoxConstraints(maxWidth: 400, maxHeight: 350),
        title: Container(
          height: 50,
          color: Colors.blue,
          child: const Center(
            child: Text(
              'تسجيل طلب',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
        content: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          fluentItem(
                            text: 'الرقم المدني',
                            controller: civilNumberController,
                            keyboardType: TextInputType.number,
                          ),
                          fluentItem(
                            text: 'ادخل العدد المطلوب',
                            controller: requiredNumberController,
                            keyboardType: TextInputType.number,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          fluentItem(
                            text: 'اختر النشاط',
                            controller: activityController,
                            keyboardType: TextInputType.text,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
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
              'تسجيل',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              if (civilNumberController.text.length >= 2) {
                Navigator.of(context).pop();
              }
            },
          ),
        ],
      ),
    );
  }
}

///
// import 'package:flutter/material.dart';
// import 'components.dart';
//
// class OrderDialog {
//   void showOrderDialog(BuildContext context) {
//     var civilNumberController = TextEditingController();
//     var activityController = TextEditingController();
//     var requiredNumberController = TextEditingController();
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
//             height: 250,
//             width: 400,
//             child: Column(
//               children: [
//                 Container(
//                   height: 50,
//                   color: Colors.blue,
//                   child: const Center(
//                     child: Text(
//                       'تسجيل طلب',
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
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Row(
//                                 children: [
//                                   myItem(
//                                     width: 170,
//                                     text: 'الرقم المدني',
//                                     keyboardType: TextInputType.number,
//                                     controller: civilNumberController,
//                                   ),
//                                   const SizedBox(width: 15),
//                                   myItem(
//                                     width: 170,
//                                     text: 'اختر النشاط',
//                                     keyboardType: TextInputType.text,
//                                     controller: activityController,
//                                   ),
//                                 ],
//                               ),
//                               const SizedBox(height: 10),
//                               myItem(
//                                 width: 170,
//                                 text: 'ادخل العدد المطلوب',
//                                 keyboardType: TextInputType.number,
//                                 controller: requiredNumberController,
//                               ),
//                             ],
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             MaterialButton(
//                               color: Colors.red,
//                               minWidth: 60,
//                               child: const Text(
//                                 'الغاء',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               },
//                             ),
//                             const SizedBox(
//                               width: 15,
//                             ),
//                             MaterialButton(
//                               color: Colors.blue,
//                               minWidth: 80,
//                               child: const Text(
//                                 'تسجيل',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                               onPressed: () {
//                                 if (civilNumberController.text.length >= 2) {
//                                   // print(civilNumberController.text);
//                                   Navigator.of(context).pop();
//                                 }
//                               },
//                             ),
//                           ],
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
