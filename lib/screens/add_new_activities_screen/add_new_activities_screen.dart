import 'package:fluent_ui/fluent_ui.dart';
import 'add_new_activity_dialog.dart';
import '../../components.dart';
import '../../cubit/app_cubit.dart';

class AddNewActivities extends StatelessWidget {
  const AddNewActivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var activityTypeController = TextEditingController();
    var activityBudgetController = TextEditingController();
    var registrationEndDateController = TextEditingController();
    var totalNumberController = TextEditingController();
    var beneficiariesController = TextEditingController();
    var notesController = TextEditingController();
    var activityStartDateController = TextEditingController();
    var availableNumberForUserController = TextEditingController();
    var activityDescriptionController = TextEditingController();
    var registrationStartDateController = TextEditingController();
    var activityEndDateController = TextEditingController();
    var orderValidityPeriodController = TextEditingController();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 25.0,
          horizontal: 50.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'انشاء نشاط جديد',
                  style: TextStyle(fontSize: 25),
                ),
                const Spacer(),
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
                  child: Text(
                    'انشاء نوع نشاط جديد',
                    style: TextStyle(
                        color: AppCubit.get(context).isDark
                            ? Colors.black
                            : Colors.white),
                  ),
                  onPressed: () =>
                      AddNewActivityDialog().showAddNewActivityDialog(context),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 15),
              child: myDivider(),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      fluentItem(
                        text: 'نوع النشاط',
                        controller: activityTypeController,
                        keyboardType: TextInputType.text,
                      ),
                      fluentItem(
                        text: 'الميزانية المخصصة للنشاط',
                        controller: activityBudgetController,
                        keyboardType: TextInputType.text,
                      ),
                      fluentItem(
                        text: 'تاريخ انتهاء التسجيل',
                        controller: registrationEndDateController,
                        keyboardType: TextInputType.datetime,
                      ),
                      fluentItem(
                        text: 'العدد الكلي',
                        controller: totalNumberController,
                        keyboardType: TextInputType.text,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      fluentItem(
                        text: 'المستفيدين',
                        controller: beneficiariesController,
                        keyboardType: TextInputType.text,
                      ),
                      fluentItem(
                        text: 'ملاحظات',
                        controller: notesController,
                        keyboardType: TextInputType.text,
                      ),
                      fluentItem(
                        text: 'تاريخ بداية النشاط',
                        controller: activityStartDateController,
                        keyboardType: TextInputType.text,
                      ),
                      fluentItem(
                        text: 'العدد المتاح لكل مستخدم',
                        controller: availableNumberForUserController,
                        keyboardType: TextInputType.text,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      fluentItem(
                        text: 'وصف النشاط',
                        controller: activityDescriptionController,
                        keyboardType: TextInputType.text,
                      ),
                      fluentItem(
                        text: 'تاريخ بداية التسجيل',
                        controller: registrationStartDateController,
                        keyboardType: TextInputType.text,
                      ),
                      fluentItem(
                        text: 'تاريخ انتهاء النشاط',
                        controller: activityEndDateController,
                        keyboardType: TextInputType.text,
                      ),
                      fluentItem(
                        text: 'مدة صلاحية الطلب',
                        controller: orderValidityPeriodController,
                        keyboardType: TextInputType.text,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 10.0,
              ),
              child: Row(
                children: const [
                  Text('الموافقة التلقائية'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 10.0,
              ),
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
                onPressed: () => print('انشاء'),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 5.0,
                start: 10.0,
              ),
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
                  'الرجوع للقائمة الرئيسية',
                  style: TextStyle(
                      color: AppCubit.get(context).isDark
                          ? Colors.black
                          : Colors.white),
                ),
                onPressed: () => print('الرجوع للقائمة الرئيسية'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
