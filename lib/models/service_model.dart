

class Service {
  String name;

  Service(this.name);

  Service.fromJson(Map<String, dynamic> json) :
        name = json['name'];
}