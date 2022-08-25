class RegistrationModel {
  String? context;
  String? id;
  String? type;
  String? secondid;
  String? address;
  int? quota;
  int? used;
  bool? isDisabled;
  bool? isDeleted;
  String? createdAt;
  String? updatedAt;

  RegistrationModel(
      {this.context,
        this.id,
        this.type,
        this.secondid,
        this.address,
        this.quota,
        this.used,
        this.isDisabled,
        this.isDeleted,
        this.createdAt,
        this.updatedAt});

  RegistrationModel.fromJson(Map<String, dynamic> json) {
    context = json['@context'];
    id = json['@id'];
    type = json['@type'];
    secondid = json['id'];
    address = json['address'];
    quota = json['quota'];
    used = json['used'];
    isDisabled = json['isDisabled'];
    isDeleted = json['isDeleted'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['@context'] = this.context;
    data['@id'] = this.id;
    data['@type'] = this.type;
    data['id'] = this.secondid;
    data['address'] = this.address;
    data['quota'] = this.quota;
    data['used'] = this.used;
    data['isDisabled'] = this.isDisabled;
    data['isDeleted'] = this.isDeleted;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}