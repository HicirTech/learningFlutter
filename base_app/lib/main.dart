class HelloWorld {
  int current;

  HelloWorld(int current) {
    this.current = current;
  }
  String getHelloWorld() {
    String hello = 'hello';
    String world = 'world';
    return '$hello $world';
  }

  @override
  String toString() {
    // TODO: implement toString
    return '$current ${getHelloWorld()}';
  }
}

void main() {
  int target = 10;
  for (int i = 0; i != target; i++) {
    print(new HelloWorld(i + 1));
  }
}
