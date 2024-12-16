import 'package:flutter/material.dart';

class DataTableView extends StatelessWidget {
  const DataTableView({super.key});

  Widget displayDataTable() {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: DataTable(
        headingRowColor: WidgetStateColor.resolveWith(
          (states) => Colors.pinkAccent,
        ),
        border: TableBorder.all(color: Colors.black),
        columns: const [
          DataColumn(
            label: Expanded(
              child: Text(
                'Name',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Center(
                child: Text(
                  'Roll No',
                ),
              ),
            ),
          ),
        ],
        rows: const [
          DataRow(cells: [
            DataCell(Expanded(
                child: Center(
              child: Text(
                'Noone',
              ),
            ))),
            DataCell(Expanded(
                child: Center(
              child: Text(
                '123',
              ),
            ))),
          ]),
          DataRow(cells: [
            DataCell(Expanded(
                child: Center(
              child: Text(
                'Anjali',
              ),
            ))),
            DataCell(Expanded(
                child: Center(
              child: Text(
                '456',
              ),
            ))),
          ])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Table'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: displayDataTable(),
      ),
    );
  }
}
