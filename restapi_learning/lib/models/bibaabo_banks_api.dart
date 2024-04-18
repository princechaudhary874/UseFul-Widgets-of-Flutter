class BibaaboBankModels {
  List<Data>? data;

  BibaaboBankModels({this.data});

  BibaaboBankModels.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? title;
  String? slug;
  String? routingNo;
  String? logo;
  String? banner;
  String? phone;
  String? mobile;
  String? legal;
  int? order;
  int? active;
  int? display;
  int? featured;
  String? rating;
  String? type;
  String? lat;
  String? long;
  String? address;
  String? secondaryAddress;
  String? introduction;
  Null? createdBy;
  Null? updatedBy;
  String? createdAt;
  String? updatedAt;
  Scheme? scheme;
  List<BankAccountTypes>? bankAccountTypes;

  Data(
      {this.id,
      this.title,
      this.slug,
      this.routingNo,
      this.logo,
      this.banner,
      this.phone,
      this.mobile,
      this.legal,
      this.order,
      this.active,
      this.display,
      this.featured,
      this.rating,
      this.type,
      this.lat,
      this.long,
      this.address,
      this.secondaryAddress,
      this.introduction,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt,
      this.scheme,
      this.bankAccountTypes});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    routingNo = json['routing_no'];
    logo = json['logo'];
    banner = json['banner'];
    phone = json['phone'];
    mobile = json['mobile'];
    legal = json['legal'];
    order = json['order'];
    active = json['active'];
    display = json['display'];
    featured = json['featured'];
    rating = json['rating'];
    type = json['type'];
    lat = json['lat'];
    long = json['long'];
    address = json['address'];
    secondaryAddress = json['secondary_address'];
    introduction = json['introduction'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    scheme =
        json['scheme'] != null ? new Scheme.fromJson(json['scheme']) : null;
    if (json['bank_account_types'] != null) {
      bankAccountTypes = <BankAccountTypes>[];
      json['bank_account_types'].forEach((v) {
        bankAccountTypes!.add(new BankAccountTypes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['routing_no'] = this.routingNo;
    data['logo'] = this.logo;
    data['banner'] = this.banner;
    data['phone'] = this.phone;
    data['mobile'] = this.mobile;
    data['legal'] = this.legal;
    data['order'] = this.order;
    data['active'] = this.active;
    data['display'] = this.display;
    data['featured'] = this.featured;
    data['rating'] = this.rating;
    data['type'] = this.type;
    data['lat'] = this.lat;
    data['long'] = this.long;
    data['address'] = this.address;
    data['secondary_address'] = this.secondaryAddress;
    data['introduction'] = this.introduction;
    data['created_by'] = this.createdBy;
    data['updated_by'] = this.updatedBy;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.scheme != null) {
      data['scheme'] = this.scheme!.toJson();
    }
    if (this.bankAccountTypes != null) {
      data['bank_account_types'] =
          this.bankAccountTypes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Scheme {
  int? id;
  String? type;
  int? parentId;
  String? title;
  String? createdAt;
  String? updatedAt;

  Scheme(
      {this.id,
      this.type,
      this.parentId,
      this.title,
      this.createdAt,
      this.updatedAt});

  Scheme.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    parentId = json['parent_id'];
    title = json['title'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['parent_id'] = this.parentId;
    data['title'] = this.title;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class BankAccountTypes {
  int? id;
  String? title;
  String? slug;
  String? icon;
  String? image;
  int? order;
  Null? active;
  int? display;
  int? extraService;
  String? introduction;
  Null? createdBy;
  Null? updatedBy;
  String? createdAt;
  String? updatedAt;
  Pivot? pivot;
  List<Banks>? banks;
  List<RequiredDocs>? requiredDocs;
  List<Faqs>? faqs;

  BankAccountTypes(
      {this.id,
      this.title,
      this.slug,
      this.icon,
      this.image,
      this.order,
      this.active,
      this.display,
      this.extraService,
      this.introduction,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt,
      this.pivot,
      this.banks,
      this.requiredDocs,
      this.faqs});

  BankAccountTypes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    icon = json['icon'];
    image = json['image'];
    order = json['order'];
    active = json['active'];
    display = json['display'];
    extraService = json['extra_service'];
    introduction = json['introduction'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
    if (json['banks'] != null) {
      banks = <Banks>[];
      json['banks'].forEach((v) {
        banks!.add(new Banks.fromJson(v));
      });
    }
    if (json['required_docs'] != null) {
      requiredDocs = <RequiredDocs>[];
      json['required_docs'].forEach((v) {
        requiredDocs!.add(new RequiredDocs.fromJson(v));
      });
    }
    if (json['faqs'] != null) {
      faqs = <Faqs>[];
      json['faqs'].forEach((v) {
        faqs!.add(new Faqs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['icon'] = this.icon;
    data['image'] = this.image;
    data['order'] = this.order;
    data['active'] = this.active;
    data['display'] = this.display;
    data['extra_service'] = this.extraService;
    data['introduction'] = this.introduction;
    data['created_by'] = this.createdBy;
    data['updated_by'] = this.updatedBy;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    if (this.banks != null) {
      data['banks'] = this.banks!.map((v) => v.toJson()).toList();
    }
    if (this.requiredDocs != null) {
      data['required_docs'] =
          this.requiredDocs!.map((v) => v.toJson()).toList();
    }
    if (this.faqs != null) {
      data['faqs'] = this.faqs!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pivot {
  int? bankId;
  int? bankAccountTypeId;

  Pivot({this.bankId, this.bankAccountTypeId});

  Pivot.fromJson(Map<String, dynamic> json) {
    bankId = json['bank_id'];
    bankAccountTypeId = json['bank_account_type_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bank_id'] = this.bankId;
    data['bank_account_type_id'] = this.bankAccountTypeId;
    return data;
  }
}

class Banks {
  int? id;
  String? title;
  String? slug;
  String? routingNo;
  String? logo;
  String? banner;
  String? phone;
  String? mobile;
  Null? legal;
  int? order;
  int? active;
  int? display;
  int? featured;
  String? rating;
  String? type;
  String? lat;
  String? long;
  String? address;
  String? secondaryAddress;
  String? introduction;
  Null? createdBy;
  Null? updatedBy;
  String? createdAt;
  String? updatedAt;
  Pivot? pivot;
  List<BankAccountAttributes>? bankAccountAttributes;

  Banks(
      {this.id,
      this.title,
      this.slug,
      this.routingNo,
      this.logo,
      this.banner,
      this.phone,
      this.mobile,
      this.legal,
      this.order,
      this.active,
      this.display,
      this.featured,
      this.rating,
      this.type,
      this.lat,
      this.long,
      this.address,
      this.secondaryAddress,
      this.introduction,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt,
      this.pivot,
      this.bankAccountAttributes});

  Banks.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    routingNo = json['routing_no'];
    logo = json['logo'];
    banner = json['banner'];
    phone = json['phone'];
    mobile = json['mobile'];
    legal = json['legal'];
    order = json['order'];
    active = json['active'];
    display = json['display'];
    featured = json['featured'];
    rating = json['rating'];
    type = json['type'];
    lat = json['lat'];
    long = json['long'];
    address = json['address'];
    secondaryAddress = json['secondary_address'];
    introduction = json['introduction'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
    if (json['bank_account_attributes'] != null) {
      bankAccountAttributes = <BankAccountAttributes>[];
      json['bank_account_attributes'].forEach((v) {
        bankAccountAttributes!.add(new BankAccountAttributes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['routing_no'] = this.routingNo;
    data['logo'] = this.logo;
    data['banner'] = this.banner;
    data['phone'] = this.phone;
    data['mobile'] = this.mobile;
    data['legal'] = this.legal;
    data['order'] = this.order;
    data['active'] = this.active;
    data['display'] = this.display;
    data['featured'] = this.featured;
    data['rating'] = this.rating;
    data['type'] = this.type;
    data['lat'] = this.lat;
    data['long'] = this.long;
    data['address'] = this.address;
    data['secondary_address'] = this.secondaryAddress;
    data['introduction'] = this.introduction;
    data['created_by'] = this.createdBy;
    data['updated_by'] = this.updatedBy;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    if (this.bankAccountAttributes != null) {
      data['bank_account_attributes'] =
          this.bankAccountAttributes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BankAccountAttributes {
  int? id;
  int? attributeId;
  int? bankAccountTypeId;
  int? bankId;
  Null? schemeTypeId;
  String? value;
  String? createdAt;
  String? updatedAt;
  Attribute? attribute;

  BankAccountAttributes(
      {this.id,
      this.attributeId,
      this.bankAccountTypeId,
      this.bankId,
      this.schemeTypeId,
      this.value,
      this.createdAt,
      this.updatedAt,
      this.attribute});

  BankAccountAttributes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributeId = json['attribute_id'];
    bankAccountTypeId = json['bank_account_type_id'];
    bankId = json['bank_id'];
    schemeTypeId = json['scheme_type_id'];
    value = json['value'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    attribute = json['attribute'] != null
        ? new Attribute.fromJson(json['attribute'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['attribute_id'] = this.attributeId;
    data['bank_account_type_id'] = this.bankAccountTypeId;
    data['bank_id'] = this.bankId;
    data['scheme_type_id'] = this.schemeTypeId;
    data['value'] = this.value;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.attribute != null) {
      data['attribute'] = this.attribute!.toJson();
    }
    return data;
  }
}

class Attribute {
  int? id;
  String? title;
  int? type;
  String? valueType;
  String? createdAt;
  String? updatedAt;

  Attribute(
      {this.id,
      this.title,
      this.type,
      this.valueType,
      this.createdAt,
      this.updatedAt});

  Attribute.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    type = json['type'];
    valueType = json['value_type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['type'] = this.type;
    data['value_type'] = this.valueType;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class RequiredDocs {
  int? id;
  int? parentId;
  String? type;
  String? text;
  String? createdAt;
  String? updatedAt;

  RequiredDocs(
      {this.id,
      this.parentId,
      this.type,
      this.text,
      this.createdAt,
      this.updatedAt});

  RequiredDocs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    parentId = json['parent_id'];
    type = json['type'];
    text = json['text'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['parent_id'] = this.parentId;
    data['type'] = this.type;
    data['text'] = this.text;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Faqs {
  int? id;
  int? parentId;
  String? type;
  String? question;
  String? answer;
  String? createdAt;
  String? updatedAt;

  Faqs(
      {this.id,
      this.parentId,
      this.type,
      this.question,
      this.answer,
      this.createdAt,
      this.updatedAt});

  Faqs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    parentId = json['parent_id'];
    type = json['type'];
    question = json['question'];
    answer = json['answer'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['parent_id'] = this.parentId;
    data['type'] = this.type;
    data['question'] = this.question;
    data['answer'] = this.answer;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
