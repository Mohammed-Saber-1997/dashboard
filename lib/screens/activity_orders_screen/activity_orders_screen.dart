import 'package:fluent_ui/fluent_ui.dart';
import 'activity_order_dialog.dart';
import '../../components.dart';
import '../../cubit/app_cubit.dart';

class ActivityOrders extends StatelessWidget {
  const ActivityOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 25.0,
          horizontal: 50.0,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  const Text(
                    'طلبات التسجيل بالانشطة',
                    style: TextStyle(fontSize: 25),
                  ),
                  const Spacer(),
                  Button(
                    style: ButtonStyle(
                      backgroundColor: ButtonState.resolveWith((states) {
                        return ButtonThemeData.buttonColor(
                            AppCubit.get(context).isDark
                                ? Brightness.light
                                : Brightness.dark,
                            states);
                      }),
                    ),
                    child: Text(
                      'تسجيل طلب',
                      style: TextStyle(
                          color: AppCubit.get(context).isDark
                              ? Colors.black
                              : Colors.white),
                    ),
                    onPressed: () => OrderDialog().showOrderDialog(context),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15.0),
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              border: TableBorder.all(color: Colors.grey),
              // defaultColumnWidth: const FlexColumnWidth(),
              columnWidths: const {
                0: FractionColumnWidth(0.06),
                1: FractionColumnWidth(0.06),
                2: FractionColumnWidth(0.07),
                3: FractionColumnWidth(0.06),
                4: FractionColumnWidth(0.09),
                5: FractionColumnWidth(0.09),
                6: FractionColumnWidth(0.06),
                7: FractionColumnWidth(0.06),
                8: FractionColumnWidth(0.06),
                9: FractionColumnWidth(0.06),
                10: FractionColumnWidth(0.06),
                11: FractionColumnWidth(0.14),
                12: FractionColumnWidth(0.13),
              },
              children: [
                buildRow(
                  [
                    'حالة الطلب',
                    'مغلق',
                    'الكمية المستخدمة',
                    'السنة المالية',
                    'تاريخ بداية النشاط',
                    'تاريخ انتهاء النشاط',
                    'نوع النشاط',
                    'وصف النشاط',
                    'ميزانية النشاط',
                    'رقم العضوية',
                    'لقب المساهم',
                    'اسم المساهم',
                    'الرقم المدني'
                  ],
                ),
                buildRow(
                  [
                    '1',
                    'False',
                    '1',
                    '1',
                    '2/3/2020',
                    '2/4/2020',
                    'ديني',
                    'عمرة',
                    '300',
                    '2',
                    'السيد',
                    'مهلي عماش رباح الحربي',
                    '251100200655'
                  ],
                ),
                buildRow(
                  [
                    '1',
                    'False',
                    '1',
                    '1',
                    '2/3/2020',
                    '2/4/2020',
                    'ديني',
                    'حج',
                    '600',
                    '3',
                    'السيد',
                    'راشد حامد راشد خليفة',
                    '296022100307'
                  ],
                ),
                buildRow(
                  [
                    '2',
                    'true',
                    '1',
                    '1',
                    '16/3/2020',
                    '16/4/2020',
                    'ترفيهي',
                    'اكوابارك',
                    '0',
                    '6',
                    'السيد',
                    'فيصل خيران ابراهيم الزامل',
                    '254020103058'
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
