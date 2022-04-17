import 'package:fluent_ui/fluent_ui.dart';

TableRow buildRow(List<String> cells) => TableRow(
      children: cells.map((cell) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          // child: Text(cell, textAlign: TextAlign.start),
          child: Text(cell, textAlign: TextAlign.center),
        );
      }).toList(),
    );

Widget fluentItem({
  required String text,
  required TextInputType keyboardType,
  required TextEditingController controller,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 10.0,
      ),
      child: TextBox(
        controller: controller,
        keyboardType: keyboardType,
        header: text,
        headerStyle: const TextStyle(
          fontSize: 13,
        ),
      ),
    );

Widget barTextButton({
  required String text,
  required Function function,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: TextButton(
        onPressed: () => function,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14.0,
          ),
        ),
      ),
    );

Widget myDivider() => Container(
      width: double.infinity,
      height: 1.0,
      color: Colors.grey,
    );

// Widget myItem({
//   double width = 170,
//   required String text,
//   required TextInputType keyboardType,
//   required TextEditingController controller,
//   // String? Function(String?)? validate,
// }) =>
//     SizedBox(
//       width: width,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(text),
//           Container(
//             padding: const EdgeInsets.only(top: 2),
//             height: 30,
//             child: TextFormField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//               keyboardType: keyboardType,
//               controller: controller,
//               // validator: validate,
//             ),
//           ),
//         ],
//       ),
//     );
///
// Widget defaultTextFormField({
//   required String text,
//   IconData? prefixIcon,
//   required TextInputType keyboardType,
//   required TextEditingController controller,
//   required String? Function(String?)? validate,
//   bool isPassword = false,
// }) =>
//     TextFormField(
//       decoration: InputDecoration(
//         border: OutlineInputBorder(),
//         labelText: text,
//         prefixIcon: Icon(prefixIcon),
//       ),
//       keyboardType: keyboardType,
//       controller: controller,
//       validator: validate,
//       obscureText: isPassword,
//     );
//
