class AdditionalResultModel {
  final String usertext;
  final String time;
  //List<List<int>> total_numbers


  AdditionalResultModel(this.usertext, this.time);

  AdditionalResultModel.fromJson(Map<String, dynamic> json)
      : usertext = json['usertext'],
        time = json['time'];


  Map<String, dynamic> toJson() => {
    'UserTextInput': usertext,
    'RecordTime' : time,


  };
}