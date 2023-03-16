class Camera {
  String name;
  String color;
  int megapixel;

  Camera({
    required this.name,
    required this.color,
    required this.megapixel,
  });

  void display() {
    print("Name: $name , Color: $color , Megapixel: $megapixel");
  }
}
