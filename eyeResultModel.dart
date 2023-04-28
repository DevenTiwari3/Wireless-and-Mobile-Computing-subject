class eyeResultModel {
  final String Answer;
  final String time;
  //List<List<int>> total_numbers


  eyeResultModel(this.Answer, this.time);

  eyeResultModel.fromJson(Map<String, dynamic> json)
      : Answer = json['Answer'],
       time = json['time'];


  Map<String, dynamic> toJson() => {
    '[Question, Answer]': Answer,
    'RecordTime' : time,


  };
}