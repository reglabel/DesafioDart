class Cliente {
  late String fullName;

  Cliente(this.fullName);

  String get getClientFullName => fullName;

  setClientFullName(String name) {
    fullName = name;
  }

  @override
  String toString() {
    String myText = "Nome: $fullName";
    return myText;
  }
}
