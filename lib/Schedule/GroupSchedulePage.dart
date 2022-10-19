import 'package:flutter/material.dart';

class GroupSchedulePage extends StatefulWidget {
  final String group;

  const GroupSchedulePage({Key? key, required this.group}) : super(key: key);

  @override
  State<GroupSchedulePage> createState() => _GroupSchedulePageState();
}

class _GroupSchedulePageState extends State<GroupSchedulePage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    final List<DayScheduleModel> weekSchedule = [
      DayScheduleModel(
          widget.group,
          'Ⅰ',
          'Системи автентифікації і управління доступом',
          'laboratory',
          'Хвостенко',
          'https://us04web.zoom.us/j/72732350771?pwd=WVQ2bHBpMGFaUFh2dmZMaFdib0hTUT09#success'),
      DayScheduleModel(
          widget.group,
          'Ⅱ',
          'Програмні технології мобільних обчислень',
          'practical',
          'Корчак Б.О.',
          'https://us04web.zoom.us/j/72732350771?pwd=WVQ2bHBpMGFaUFh2dmZMaFdib0hTUT09#success'),
      DayScheduleModel(
          widget.group,
          'Ⅲ',
          'Контрольно-вимірювальна апаратура інформаційної безпеки',
          'lecture',
          'Юзевич В.М.',
          'https://us04web.zoom.us/j/72732350771?pwd=WVQ2bHBpMGFaUFh2dmZMaFdib0hTUT09#success'),
      DayScheduleModel(
          widget.group,
          'Ⅳ',
          'Організаційне забезпечення технічного захисту інформації',
          'practical',
          'Яструбецький О.В.',
          'https://us04web.zoom.us/j/72732350771?pwd=WVQ2bHBpMGFaUFh2dmZMaFdib0hTUT09#success'),
      DayScheduleModel(
          widget.group,
          'Ⅴ',
          'Технології розслідування інцидентів інформаційної безпеки',
          'laboratory',
          'Пакош В.С',
          'https://us04web.zoom.us/j/72732350771?pwd=WVQ2bHBpMGFaUFh2dmZMaFdib0hTUT09#success')
    ];

    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text(widget.group),
          backgroundColor: Colors.pink,
        ),
        backgroundColor: const Color(0xFFffffff),
        body: Scaffold(
          body: ListView.builder(
            itemCount: weekSchedule.length,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.pinkAccent,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(12),
                child: ListBody(
                  children: [
                    Text(
                      weekSchedule[index].day,
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      weekSchedule[index].subjectType,
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      weekSchedule[index].subjectName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Text(weekSchedule[index].url,
                        style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                            decoration: TextDecoration.underline)),
                  ],
                ),
              );
            },
          ),
        ));
  }
}

class DayScheduleModel {
  String group;
  String day;
  String subjectName;
  String subjectType;
  String lector;
  String url;

  DayScheduleModel(this.group, this.day, this.subjectName, this.subjectType,
      this.lector, this.url);
}
