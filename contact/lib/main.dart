import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
} // runApp 앱을 시작해주세요

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  List<String> names = ['모모', '치치', '심상익'];
  List<int> likes = [0, 0, 0];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 구글 스타일, 커스터마이징  : MaterialApp, 아이폰 스타일 : Cupertino
      home: SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Text(a.toString()),
            onPressed: () {
              setState(() {
                a++;
              });
              print(a);
            },
          ),
          appBar: AppBar(
            title: Text('TEST'),
            backgroundColor: Colors.blue,
          ),
          body: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, i) {
                return ListTile(
                  leading: Text(likes[i].toString()),
                  title: Text(names[i]),
                  trailing: ElevatedButton(
                    child: Text('likes'),
                    onPressed: (){
                      setState(() {
                        likes[i]++;
                      });
                    },
                  ),
                );
              }),
        ),
      ),
    );
  }
}
