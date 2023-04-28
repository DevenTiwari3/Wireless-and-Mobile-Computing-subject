class sideEffectModel {
  final String lv;
  final String name;
  final String time;
  //List<List<int>> total_numbers


  sideEffectModel(this.lv, this.name, this.time);

  sideEffectModel.fromJson(Map<String, dynamic> json)
      : lv = json['lv'],
        name = json['name'],
        time = json['time'];


  Map<String, dynamic> toJson() => {
    'PainScore': lv,
    'SideEffect' : name,
    'TimeRecord' : time,


  };
}