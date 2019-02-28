class Animal {
  String name;
  String image;

  Animal({this.name, this.image});

  @override
  String toString() {
    return 'Animal { name: $name, image: $image }';
  }
}
