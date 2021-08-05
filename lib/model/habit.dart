class Habit {
  int _id;
  String _name;
  int _count;

  // Class constructor
  Habit(this._id, this._name, this._count);

  //Getters
  int get id => _id;
  String get name => _name;
  int get count => _count;

  // Setters
  set count(int count) {
    if (count > 0) {
      _count = count;
    }
  }
}
