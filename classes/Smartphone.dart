class Smartphone {
  String _modelName;
  String _color;
  String _storage;
  String _ram;

  Smartphone(this._modelName,
      [this._color = 'Black', this._ram = '8GB', this._storage = '128GB']);

  void printPhoneInfo() {
    print('모델명: $_modelName');
    print('색상: $_color');
    print('RAM: $_ram');
    print('저장공간: $_storage');
  }
}
