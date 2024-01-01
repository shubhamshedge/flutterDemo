import 'dart:io';

void main(){
stdout.writeln("object");
var input = stdin.readLineSync();
stdout.writeln(input);

var list  = [];
list.add("value 1");
list.add("value 2");
stdout.writeln(list);

var map = {"key1":"value1","key2":"value2"};
stdout.writeln(map);
stdout.writeln(map["key1"]);
}