class BookResponses {
  Response? response;

  BookResponses({this.response});

  BookResponses.fromJson(Map<String, dynamic> json) {
    response =
        json['response'] != null ? Response.fromJson(json['response']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.response != null) {
      data['response'] = this.response!.toJson();
    }
    return data;
  }
}

class Response {
  bool? status;
  String? message;
  late List<Datas> data;

  Response({this.status, this.message, required this.data});

  Response.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data.add(Datas.fromJson(v));
        // print(Datas.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['data'] = this.data.map((v) => v.toJson()).toList();
    return data;
  }
}

class Datas {
  // ignore: non_constant_identifier_names
  final String yearbook_name;
  // ignore: non_constant_identifier_names
  final YearbookDescription yearbook_description;
  // ignore: non_constant_identifier_names
  final String img_http_thumb;

  Datas(
      // ignore: non_constant_identifier_names
      {required this.yearbook_name,
      // ignore: non_constant_identifier_names
      required this.yearbook_description,
      // ignore: non_constant_identifier_names
      required this.img_http_thumb});

  factory Datas.fromJson(Map<String, dynamic> json) {
    if (json.isNotEmpty) {
      return Datas(
        yearbook_name: json["yearbook_name"] ?? "",
        yearbook_description: json["yearbook_description"] != null
            ? YearbookDescription.fromJson(json["yearbook_description"])
            : YearbookDescription(Desc: "", Price: ""),
        img_http_thumb: json["img_http_thumb"] ?? "",
      );
    } else {
      return Datas(
          yearbook_name: "",
          yearbook_description: YearbookDescription(Desc: "", Price: ""),
          img_http_thumb: "");
    }
  }

  Map<String, dynamic> toJson() => {
        "yearbook_name": yearbook_name,
        "yearbook_description":
            // ignore: unnecessary_null_comparison
            yearbook_description == null ? null : yearbook_description.toJson(),
        "img_http_thumb": img_http_thumb,
      };
}

class YearbookDescription {
  // ignore: non_constant_identifier_names
  final String Desc;
  // ignore: non_constant_identifier_names
  final String Price;

  // ignore: non_constant_identifier_names
  YearbookDescription({required this.Desc, required this.Price});

  factory YearbookDescription.fromJson(Map<String, dynamic> json) =>
      YearbookDescription(
        Desc: json["Desc"] ?? "",
        Price: json["Price"] ?? "",
      );
  Map<String, dynamic> toJson() => {
        "Desc": Desc,
        "Price": Price,
      };
}
