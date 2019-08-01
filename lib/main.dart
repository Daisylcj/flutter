// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title='Welcome to Flutter';
    var src = 'http://pic41.nipic.com/20140524/9643307_104442624152_2.jpg';
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body:new Stack(
          children: <Widget>[
            new Center(child: new CircularProgressIndicator()),
            new Center(
              child: new FadeInImage.memoryNetwork(
                placeholder:kTransparentImage,
                image:src
              ),
            )
          ],
        )
        //body:new Image.network(src)
        // body: new Center(
        //   //child: new Text('Hello World,i am lcj,lll'),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       CustomTextContainer(),
        //     ],
        //   )
        // ),
      ),
    );
  }
}
//函数
String hello(name)
{
 return 'Hello $name!';
}
//hello(name) => 'Hello $name!';
//var hello = (name) => 'hello $name';
//函数别名 不懂
// typedef int Add(int a, int b);
// int Subtract(int a, int b) => a - b;
//函数闭包
Function makeSubstract(num n)
{
  return (num i) => n - i;
}
class CustomTextContainer extends StatelessWidget{
  @override
  num a = 5;//数字
  bool flag = false;  //布尔
  String str = 'hello world';//字符串
  StringBuffer sb = new StringBuffer();//高效字符串
  var arr = new List();//列表 forEach、for in、
  var obj = new Map();//键值对  new Map<int, String>();
  Widget build(BuildContext context) {
    if(flag){
      return Text('''00
      33${a}''');
    }else{
      sb.write("hello StringBuffer ");
      sb ..write('nihao')..write('linghit');
      // return Text("999${str}${sb.toString()}");
      arr = ['1','2','3'];
      arr.add('4');
      arr.addAll(['5','6']);
      obj={
        'one':1,
        "two":2,
        "three":3
      };
      //return Text("${arr},${obj['one']}");
      //return Text(hello('123'));
      var x = makeSubstract(5);
      return Text('${x(2)}');
  }
}
// class  extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Text('data');
//   }
// }
}
