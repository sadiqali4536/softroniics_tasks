class Api_Model {
    int? id;
    String?firstName;
    String?maidenName;
    String?LastName;
    String?email;
    int?age;
    String?phone;
    String?gender;
    String?image;

 Api_Model({this.id,this.firstName,this.maidenName,this.LastName,this.email,this.age,this.phone,this.gender,this.image});
 static Api_Model fromJson (Map<String,dynamic>json){
    return Api_Model(
        id: json["id"],
        firstName: json["firstName"],
        maidenName: json["maideName"],
        LastName: json["LastName"],
        email: json["email"],
        age: json["age"],
        phone: json["phone"],
        gender: json["gender"],
        image:json["image"]
    );
}
Map<String,dynamic>tojson(){
    return{
"id":id,
"firstName":firstName,
"maidenName":maidenName,
"LastName":LastName,
"email":email,
"age":age,
"phone":phone,
"gender":gender,
"image":image
    };
}

}