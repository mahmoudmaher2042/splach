void main() async {
  /*print('hi in new learning ');
  await Future.delayed(
          Duration(seconds: 5),
          () => print(
              'this after waiting ')) // because of await it freeze the app until it is done
                                      // without await it will continue the program until the future function is done then print it
      .then((value) => value)
      .catchError((e) {
    print('wake up there an error');
  });
  print('object');
  print('object');
  print('object');
  print('object');
*/
  var s=Stream.periodic(Duration(seconds: 1), (x) => x).listen((_) {
  });
  s.onData((data) {if (data ==5)
  s.cancel();
  else
  print(data);
  });
}
