/// @context : "/contexts/Message"
/// @id : "/messages"
/// @type : "hydra:Collection"
/// hydra:member : [{"@id":"/messages/6307a555ec350c190c748494","@type":"Message","id":"6307a555ec350c190c748494","accountId":"/accounts/6307a4f852b6a825890e2bf7","msgid":"<CABeg9FNAmcrFqW7gj_hmehahisDp6JhdxRK84fjvLtjpGoEnWw@mail.gmail.com>","from":{"address":"sajibsaha4647@gmail.com","name":"Sajib Chandra Saha"},"to":[{"address":"sajibs@arxxwalls.com","name":""}],"subject":"gddfgdfgdfg","intro":"<http://themeskeeper.com/> Sajib Chandra Saha Front-End Developer • BDTASK mobile: +8801753033421 email:…","seen":false,"isDeleted":false,"hasAttachments":false,"size":8368,"downloadUrl":"/messages/6307a555ec350c190c748494/download","createdAt":"2022-08-25T16:37:18+00:00","updatedAt":"2022-08-25T16:37:41+00:00"}]
/// hydra:totalItems : 1

class MessagesModel {
  MessagesModel({
      String context, 
      String id, 
      String type, 
      List<Hydra:member> hydramember, 
      int hydratotalItems,}){
    _context = context;
    _id = id;
    _type = type;
    _hydramember = hydramember;
    _hydratotalItems = hydratotalItems;
}

  MessagesModel.fromJson(dynamic json) {
    _context = json['@context'];
    _id = json['@id'];
    _type = json['@type'];
    if (json['hydra:member'] != null) {
      _hydramember = [];
      json['hydra:member'].forEach((v) {
        _hydramember.add(Hydra:member.fromJson(v));
      });
    }
    _hydratotalItems = json['hydra:totalItems'];
  }
  String _context;
  String _id;
  String _type;
  List<Hydra:member> _hydramember;
  int _hydratotalItems;
MessagesModel copyWith({  String context,
  String id,
  String type,
  List<Hydra:member> hydramember,
  int hydratotalItems,
}) => MessagesModel(  context: context ?? _context,
  id: id ?? _id,
  type: type ?? _type,
  hydramember: hydramember ?? _hydramember,
  hydratotalItems: hydratotalItems ?? _hydratotalItems,
);
  String get context => _context;
  String get id => _id;
  String get type => _type;
  List<Hydra:member> get hydramember => _hydramember;
  int get hydratotalItems => _hydratotalItems;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['@context'] = _context;
    map['@id'] = _id;
    map['@type'] = _type;
    if (_hydramember != null) {
      map['hydra:member'] = _hydramember.map((v) => v.toJson()).toList();
    }
    map['hydra:totalItems'] = _hydratotalItems;
    return map;
  }

}

/// @id : "/messages/6307a555ec350c190c748494"
/// @type : "Message"
/// id : "6307a555ec350c190c748494"
/// accountId : "/accounts/6307a4f852b6a825890e2bf7"
/// msgid : "<CABeg9FNAmcrFqW7gj_hmehahisDp6JhdxRK84fjvLtjpGoEnWw@mail.gmail.com>"
/// from : {"address":"sajibsaha4647@gmail.com","name":"Sajib Chandra Saha"}
/// to : [{"address":"sajibs@arxxwalls.com","name":""}]
/// subject : "gddfgdfgdfg"
/// intro : "<http://themeskeeper.com/> Sajib Chandra Saha Front-End Developer • BDTASK mobile: +8801753033421 email:…"
/// seen : false
/// isDeleted : false
/// hasAttachments : false
/// size : 8368
/// downloadUrl : "/messages/6307a555ec350c190c748494/download"
/// createdAt : "2022-08-25T16:37:18+00:00"
/// updatedAt : "2022-08-25T16:37:41+00:00"

class Hydra:member {
  Hydra:member({
      String id, 
      String type, 
      String id, 
      String accountId, 
      String msgid, 
      From from, 
      List<To> to, 
      String subject, 
      String intro, 
      bool seen, 
      bool isDeleted, 
      bool hasAttachments, 
      int size, 
      String downloadUrl, 
      String createdAt, 
      String updatedAt,}){
    _id = id;
    _type = type;
    _id = id;
    _accountId = accountId;
    _msgid = msgid;
    _from = from;
    _to = to;
    _subject = subject;
    _intro = intro;
    _seen = seen;
    _isDeleted = isDeleted;
    _hasAttachments = hasAttachments;
    _size = size;
    _downloadUrl = downloadUrl;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Hydra:member.fromJson(dynamic json) {
    _id = json['@id'];
    _type = json['@type'];
    _id = json['id'];
    _accountId = json['accountId'];
    _msgid = json['msgid'];
    _from = json['from'] != null ? From.fromJson(json['from']) : null;
    if (json['to'] != null) {
      _to = [];
      json['to'].forEach((v) {
        _to.add(To.fromJson(v));
      });
    }
    _subject = json['subject'];
    _intro = json['intro'];
    _seen = json['seen'];
    _isDeleted = json['isDeleted'];
    _hasAttachments = json['hasAttachments'];
    _size = json['size'];
    _downloadUrl = json['downloadUrl'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  String _id;
  String _type;
  String _id;
  String _accountId;
  String _msgid;
  From _from;
  List<To> _to;
  String _subject;
  String _intro;
  bool _seen;
  bool _isDeleted;
  bool _hasAttachments;
  int _size;
  String _downloadUrl;
  String _createdAt;
  String _updatedAt;
Hydra:member copyWith({  String id,
  String type,
  String id,
  String accountId,
  String msgid,
  From from,
  List<To> to,
  String subject,
  String intro,
  bool seen,
  bool isDeleted,
  bool hasAttachments,
  int size,
  String downloadUrl,
  String createdAt,
  String updatedAt,
}) => Hydra:member(  id: id ?? _id,
  type: type ?? _type,
  id: id ?? _id,
  accountId: accountId ?? _accountId,
  msgid: msgid ?? _msgid,
  from: from ?? _from,
  to: to ?? _to,
  subject: subject ?? _subject,
  intro: intro ?? _intro,
  seen: seen ?? _seen,
  isDeleted: isDeleted ?? _isDeleted,
  hasAttachments: hasAttachments ?? _hasAttachments,
  size: size ?? _size,
  downloadUrl: downloadUrl ?? _downloadUrl,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String get id => _id;
  String get type => _type;
  String get id => _id;
  String get accountId => _accountId;
  String get msgid => _msgid;
  From get from => _from;
  List<To> get to => _to;
  String get subject => _subject;
  String get intro => _intro;
  bool get seen => _seen;
  bool get isDeleted => _isDeleted;
  bool get hasAttachments => _hasAttachments;
  int get size => _size;
  String get downloadUrl => _downloadUrl;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['@id'] = _id;
    map['@type'] = _type;
    map['id'] = _id;
    map['accountId'] = _accountId;
    map['msgid'] = _msgid;
    if (_from != null) {
      map['from'] = _from.toJson();
    }
    if (_to != null) {
      map['to'] = _to.map((v) => v.toJson()).toList();
    }
    map['subject'] = _subject;
    map['intro'] = _intro;
    map['seen'] = _seen;
    map['isDeleted'] = _isDeleted;
    map['hasAttachments'] = _hasAttachments;
    map['size'] = _size;
    map['downloadUrl'] = _downloadUrl;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// address : "sajibs@arxxwalls.com"
/// name : ""

class To {
  To({
      String address, 
      String name,}){
    _address = address;
    _name = name;
}

  To.fromJson(dynamic json) {
    _address = json['address'];
    _name = json['name'];
  }
  String _address;
  String _name;
To copyWith({  String address,
  String name,
}) => To(  address: address ?? _address,
  name: name ?? _name,
);
  String get address => _address;
  String get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address'] = _address;
    map['name'] = _name;
    return map;
  }

}

/// address : "sajibsaha4647@gmail.com"
/// name : "Sajib Chandra Saha"

class From {
  From({
      String address, 
      String name,}){
    _address = address;
    _name = name;
}

  From.fromJson(dynamic json) {
    _address = json['address'];
    _name = json['name'];
  }
  String _address;
  String _name;
From copyWith({  String address,
  String name,
}) => From(  address: address ?? _address,
  name: name ?? _name,
);
  String get address => _address;
  String get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address'] = _address;
    map['name'] = _name;
    return map;
  }

}