


import 'package:flutter/semantics.dart';

Future sleep(Duration time) async{
  await Future.delayed(time);
}

void main() {
  var list = ['apples', 'bananas', 'oranges'];
  
  list.forEach((String item) {
    print('${list.indexOf(item)}: $item');
  });

  print(list.runtimeType);


  // Generic types:
  List<String> stringValues = ['donald', 'cao'];
  // stringValues.add(30);


/*
  querySelector('#confirm')
  ..text = 'Confirm'
  ..classes.add('important')
  ..onClick.listem((e) => window.alert('Confirmed!'));
*/


  print(5/2);
  print(5~/2);
  print(5%2);
  // print(Colors.values);
}

enum Color { red, green, blue}

var gifts = const {
  'first': 'partridge',
  'second': 'turtledoves',
  'third': 'golden rings'
};

class Point {
  // static final Point origin = const Point.constConstructor(0, 0);

  num x, y;

  Point(this.x, this.y);

  Point.fromJson(Map<String, num> json) : x = json['x'], y = json['y'] {
    print('In Point.fromJson(): ($x, $y)');
  }

  // named constructor
  Point.origin() {
    x = 0;
    y = 0;
  }

  // Redirecting constructors
  Point.alongXAxis(num x): this(x, 0);

  // Constant constructors
  // const Point.constConstructor(this.x, this.y);

  // Factory constructors
}

class Logger {
  final String name;
  bool mute = false;

  // _cachd is library-private, thanks to 
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    if(_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  // Instance method.
  void log(String msg) {
    if(!mute) print(msg);
  }
}

class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // getters and setters
  num get right => left + width;
  set right(num value) => left = value - width;

  num get bottom => top + height;
  set bottom(num value) => top = value - height;

}

// Abstract class and abstract method
abstract class Doer {

  void doSomething();
}
class EffectiveDoer extends Doer {
  void doSomething(){

  }
}

class A {
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: ' +
    '${invocation.memberName}');
  }


}

abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

// 领导力
// Social方面
// 性格
// 很多人专注于自身成长，却忘了善用比你优秀的人，
// 才是领导者的核心竞争力。也就是说，你得学会让别人替你完成任务，
// 给他们机会找到工作上的满足感。

/* 有个著名的奥格尔维定律：每个人都雇用比我们自己更强的人，
   我们就能成为巨人公司，如果你所用的人都比你差，那么他们就只能做出比你更差的事情。

一是“处事”（What you do），包含能力（Competencies）和经历（Experiences）；
二是“为人”（Who you are），包含特质（Traits）和动机（Drivers）。

领导力的理解.  // 能量  随和性  责任心  情绪稳定性 开放性
https://www.zhihu.com/question/23834470


领导力
前端
算法
深度学习

*/



class Foo<T extends Cache> {
  Future checkVersion() async => '1.0.0';

  Iterable<int> naturalsTo(int n) sync* {
    int k =0;
    while(k < n){
      yield k++;
    }
  }

  Stream<int> asynchronousNaturalsTo(int n) async* {
    int k = 0;
    while ( k < n) {
      yield k++;
    }
  }
}









