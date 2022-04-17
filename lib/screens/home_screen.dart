import 'package:fluent_ui/fluent_ui.dart';

import '../components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 25.0,
          horizontal: 50.0,
        ),
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          border: TableBorder.all(color: Colors.grey),
          columnWidths: const {
            0: FractionColumnWidth(0.10),
            1: FractionColumnWidth(0.38),
            2: FractionColumnWidth(0.12),
            3: FractionColumnWidth(0.12),
            4: FractionColumnWidth(0.14),
            5: FractionColumnWidth(0.14),
          },
          children: [
            buildRow(
              [
                'Activity ID',
                'Activity Description',
                'Start Date',
                'End Date',
                'Available Count',
                'Main Count'
              ],
            ),
            buildRow(['1', 'عمرة', '3/2/2020', '4/2/2020', '100', '100']),
            buildRow(['2', 'حج', '3/2/2020', '4/2/2020', '100', '100']),
            buildRow(
                ['3', 'تذاكر ترفيهية', '3/2/2020', '4/2/2020', '100', '100']),
            buildRow(['4', 'شاليهات', '3/2/2020', '4/2/2020', '100', '100']),
            buildRow([
              '5',
              'عمرة رمضانية 2022',
              '3/2/2020',
              '4/2/2020',
              '100',
              '100'
            ]),
            buildRow(
                ['6', 'عمرة شعبان', '3/2/2020', '4/2/2020', '1000', '1000']),
            buildRow(['7', 'حج', '3/2/2020', '4/2/2020', '100', '100']),
            buildRow(['8', 'عمرة', '3/2/2020', '4/2/2020', '100', '100']),
            buildRow(['9', 'حج', '3/2/2020', '4/2/2020', '100', '100']),
            buildRow(['10', 'عمرة', '3/2/2020', '4/2/2020', '100', '100']),
          ],
        ),
      ),
    );
  }
}
