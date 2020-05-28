import 'package:flutter/material.dart';

class GetStudentInfoPage extends StatefulWidget {
  String appBarTiltle;
  GetStudentInfoPage(this.appBarTiltle);
  @override
  State<StatefulWidget> createState() {
    return _GetStudentInfoPageState(appBarTiltle);
  }
}

class _GetStudentInfoPageState extends State<GetStudentInfoPage> {
  String appBarTiltle;
  _GetStudentInfoPageState(this.appBarTiltle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          appBarTiltle,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                //Still we need to specify the results in the table with screen
                //we called and show the information from the database
                //this will be nest video see you soon
                child: DataTable(columns: [
                  DataColumn(
                    label: Text('Student Id'),
                  ),
                  DataColumn(
                    label: Text('Student Name'),
                  ),
                  DataColumn(
                    label: Text('Student Age'),
                  ),
                  DataColumn(
                    label: Text('Student Class'),
                  ),
                  DataColumn(
                    label: Text('Student Email'),
                  ),
                  DataColumn(
                    label: Text('Student Address'),
                  ),
                ], rows: [
                  DataRow(cells: [
                    DataCell(Text('St1ID')),
                    DataCell(Text('St1Name')),
                    DataCell(Text('St1Age')),
                    DataCell(Text('St1Class')),
                    DataCell(Text('St1Email')),
                    DataCell(Text('St1Address')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('St2ID')),
                    DataCell(Text('St2Name')),
                    DataCell(Text('St2Age')),
                    DataCell(Text('St2Class')),
                    DataCell(Text('St2Email')),
                    DataCell(Text('St2Address')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('St3ID')),
                    DataCell(Text('St3Name')),
                    DataCell(Text('St3Age')),
                    DataCell(Text('St3Class')),
                    DataCell(Text('St3Email')),
                    DataCell(Text('St3Address')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('St4ID')),
                    DataCell(Text('St4Name')),
                    DataCell(Text('St4Age')),
                    DataCell(Text('St4Class')),
                    DataCell(Text('St4Email')),
                    DataCell(Text('St4Address')),
                  ]),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
