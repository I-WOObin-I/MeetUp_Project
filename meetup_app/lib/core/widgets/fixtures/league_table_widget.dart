import 'package:flutter/material.dart';

class LeagueTableWidget extends StatelessWidget {
  List<List<String>> leagueTable;

  LeagueTableWidget({required this.leagueTable});

  List<List<String>> leagueTableSample = [
    ['Team 1', '12', '87'],
    ['Team 2', '5', '42'],
    ['Team 3', '18', '105'],
    ['Team 4', '9', '63'],
    ['Team 5', '20', '120'],
    ['Team 6', '14', '92'],
    ['Team 7', '3', '20'],
    ['Team 8', '23', '145'],
    ['Team 9', '7', '51'],
    ['Team 10', '16', '98'],
    ['Team 11', '11', '72'],
    ['Team 12', '25', '150'],
    ['Team 13', '2', '15'],
    ['Team 14', '19', '112'],
    ['Team 15', '8', '55'],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        border: TableBorder.all(),
        children: [
          const TableRow(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              children: [
                Text('Team'),
                Text('Matches'),
                Text('Points'),
              ]),
          ...leagueTableSample.map((row) {
            return TableRow(children: [
              Text(row[0]),
              Text(row[1]),
              Text(row[2]),
            ]);
          }).toList(),
        ],
      ),
    );
  }
}
