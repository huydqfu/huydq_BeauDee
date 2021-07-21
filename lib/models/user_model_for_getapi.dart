
class UserForGet{
  String id;
  final String uid;
  final String name;
  final String email;
  final String phone;
  final String address;
  final int minValue;
  final String dayOfBirth;
  final String role;
  final String image;
  List<String> service;
  String token;

  UserForGet(this.id, this.uid, this.name, this.email, this.phone, this.address,
      this.minValue, this.dayOfBirth, this.role, this.image,this.service, this.token);

  UserForGet.fromJson(Map<String, dynamic> json) :
        id = json["id"],
        uid = json["uid"],
        name = json["name"],
        email = json["email"],
        phone = json["phone"],
        address = json["address"],
        minValue = json["minValue"],
        dayOfBirth = json["dayOfBirth"],
        role = json["role"],
        image = json["image"],
        service = json["service"].cast<String>(),
        token = json["token"];

}
