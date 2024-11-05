import 'dart:convert';

class ModNote {
  int? userId;
  int?id;
  String?title;
  String?body;

  ModNote({this.userId,this.id,this.title,this.body});

  static ModNote fromJson(Map<String,dynamic>json){
  return ModNote(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"]
  );
  }
  Map<String,dynamic>toJson(){
    return{
     "userId":userId,
     "id":id,
     "title":title,
     "body":body
    };

  }
}
