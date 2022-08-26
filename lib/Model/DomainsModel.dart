class DomainsModel {
  String? id;
  String? domain;
  bool? isActive;
  bool? isPrivate;
  String? createdAt;
  String? updatedAt;

  DomainsModel(
      {this.id,
        this.domain,
        this.isActive,
        this.isPrivate,
        this.createdAt,
        this.updatedAt});

  DomainsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    domain = json['domain'];
    isActive = json['isActive'];
    isPrivate = json['isPrivate'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['domain'] = this.domain;
    data['isActive'] = this.isActive;
    data['isPrivate'] = this.isPrivate;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}