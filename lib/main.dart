import 'package:flutter/material.dart';

void main() async {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String val1 = "1";
  String val2 = "1";
  String val3 = "1";
  // const HomePage({Key? key}) : super(key: key);
  final List<String> one = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
  ];
  final List<String> two = ['1', '2', '3', '4', '5', '6', '7', '8'];
  final List<String> three = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 234, 232, 232),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 234, 232, 232),
            elevation: 0,
            title: Text("Home"),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ListView.separated(
                    itemCount: one.length,
                    controller: ScrollController(),
                    separatorBuilder: (_, __) => const SizedBox(height: 10),
                    itemBuilder: ((context, index) => Container(
                          height: 50,
                          color: Colors.white,
                          child: Row(
                          children: [
                            Radio(
                              groupValue:val1,
                              value: one[index],
                              onChanged: (value) {
                                setState(() {
                                  val1 = value.toString();
                                });
                              },
                            ),
                            Text('${three[index]}'),
                          ],
                        ),
                        )),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ListView.separated(
                    controller: ScrollController(),
                    itemCount: two.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 10),
                    itemBuilder: ((context, index) => Container(
                          height: 50,
                          color: Colors.white,
                          child: Row(
                          children: [
                            Radio(
                              groupValue:val2,
                              value: two[index],
                              onChanged: (value) {
                                setState(() {
                                  val2 = value.toString();
                                });
                              },
                            ),
                            Text('${two[index]}'),
                          ],
                        )
                        )),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ListView.separated(
                    controller: ScrollController(),
                    itemCount: three.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 10),
                    itemBuilder: ((context, index) => Container(
                        height: 50,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Radio(
                              groupValue:val3,
                              value: three[index],
                              onChanged: (value) {
                                setState(() {
                                  val3 = value.toString();
                                });
                              },
                            ),
                            Text('${three[index]}'),
                          ],
                        ))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
