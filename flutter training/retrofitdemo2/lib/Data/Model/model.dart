// To parse this JSON data, do
//
//     final responses = responsesFromJson(jsonString);

import 'dart:convert';

Responses responsesFromJson(String str) => Responses.fromJson(json.decode(str));

String responsesToJson(Responses data) => json.encode(data.toJson());

class Responses {
  Responses({
    this.response,
  });

  Response? response;

  factory Responses.fromJson(Map<String, dynamic> json) => Responses(
        response: Response.fromJson(json["response"]),
      );

  Map<String, dynamic> toJson() => {
        "response": response!.toJson(),
      };
}

class Response {
  Response({
    this.status,
    this.message,
    required this.data,
  });

  bool? status;
  String? message;
  late List<Datum> data;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.yearbookId,
    this.userYearbookId,
    this.yearbookName,
    this.yearbookType,
    this.settings,
    this.createdDate,
    this.lastModifiedDate,
    this.productId,
    this.status,
    this.productWidth,
    this.productHeight,
    this.orderId,
    this.ordersDate,
    this.bookType,
    this.yearbookDescription,
    this.yearbookSortOrder,
    this.partnerBook,
    required this.pages,
    this.voucherCode,
    this.expiryDate,
    this.orderLink,
    required this.arrayImages,
    this.orderStatus,
    this.noPages,
    this.formable,
    this.flexible,
    this.coverPage,
    this.frontPageName,
    this.backPageName,
    required this.imageData,
    this.imgHttpThumb,
    this.imgHttpLarge,
    this.yearbookThumbnail,
    this.imgHttpLargeFancybox,
    this.thumbPageNameFancybox,
    this.thumbPageName,
    this.config,
  });

  int? yearbookId;
  int? userYearbookId;
  String? yearbookName;
  YearbookType? yearbookType;
  Settings? settings;
  DateTime? createdDate;
  DateTime? lastModifiedDate;
  int? productId;
  int? status;
  double? productWidth;
  double? productHeight;
  int? orderId;
  DateTime? ordersDate;
  int? bookType;
  YearbookDescription? yearbookDescription;
  int? yearbookSortOrder;
  int? partnerBook;
  late List<Page> pages;
  dynamic voucherCode;
  dynamic expiryDate;
  String? orderLink;
  late List<ArrayImage> arrayImages;
  int? orderStatus;
  int? noPages;
  int? formable;
  int? flexible;
  String? coverPage;
  BackPageName? frontPageName;
  BackPageName? backPageName;
  late List<ImageDatum> imageData;
  String? imgHttpThumb;
  String? imgHttpLarge;
  bool? yearbookThumbnail;
  String? imgHttpLargeFancybox;
  BackPageName? thumbPageNameFancybox;
  BackPageName? thumbPageName;
  Config? config;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        yearbookId: json["yearbook_id"],
        userYearbookId: json["user_yearbook_id"],
        yearbookName: json["yearbook_name"] ?? "",
        yearbookType: yearbookTypeValues.map[json["yearbook_type"]],
        settings: Settings.fromJson(json["settings"]),
        createdDate: json["created_date"] == null
            ? null
            : DateTime.parse(json["created_date"]),
        lastModifiedDate: json["last_modified_date"] == null
            ? null
            : DateTime.parse(json["last_modified_date"]),
        productId: json["product_id"],
        status: json["status"] == null ? null : json["status"],
        productWidth: json["product_width"].toDouble(),
        productHeight: json["product_height"].toDouble(),
        orderId: json["order_id"] == null ? null : json["order_id"],
        ordersDate: json["orders_date"] == null
            ? null
            : DateTime.parse(json["orders_date"]),
        bookType: json["book_type"],
        yearbookDescription: json["yearbook_description"] == null
            ? YearbookDescription(price: "", desc: "")
            : YearbookDescription.fromJson(json["yearbook_description"]),
        yearbookSortOrder: json["yearbook_sort_order"],
        partnerBook: json["partner_book"],
        pages: List<Page>.from(json["pages"].map((x) => Page.fromJson(x))),
        voucherCode: json["voucher_code"],
        expiryDate: json["expiry_date"],
        orderLink: json["order_link"] == null ? null : json["order_link"],
        arrayImages: List<ArrayImage>.from(
            json["array_images"].map((x) => ArrayImage.fromJson(x))),
        orderStatus: json["order_status"],
        noPages: json["no_pages"],
        formable: json["formable"],
        flexible: json["flexible"],
        coverPage: json["cover_page"],
        frontPageName: backPageNameValues.map[json["front_page_name"]],
        backPageName: backPageNameValues.map[json["back_page_name"]],
        imageData: List<ImageDatum>.from(
            json["image_data"].map((x) => ImageDatum.fromJson(x))),
        imgHttpThumb: json["img_http_thumb"],
        imgHttpLarge: json["img_http_large"],
        yearbookThumbnail: json["yearbook_thumbnail"],
        imgHttpLargeFancybox: json["img_http_large_fancybox"] == null
            ? null
            : json["img_http_large_fancybox"],
        thumbPageNameFancybox: json["thumb_page_name_fancybox"] == null
            ? null
            : backPageNameValues.map[json["thumb_page_name_fancybox"]],
        thumbPageName: json["thumb_page_name"] == null
            ? null
            : backPageNameValues.map[json["thumb_page_name"]],
        config: Config.fromJson(json["config"]),
      );

  Map<String, dynamic> toJson() => {
        "yearbook_id": yearbookId,
        "user_yearbook_id": userYearbookId,
        "yearbook_name": yearbookName,
        "yearbook_type": yearbookTypeValues.reverse[yearbookType],
        "settings": settings!.toJson(),
        "created_date":
            createdDate == null ? null : createdDate!.toIso8601String(),
        "last_modified_date": lastModifiedDate == null
            ? null
            : lastModifiedDate!.toIso8601String(),
        "product_id": productId,
        "status": status == null ? null : status,
        "product_width": productWidth,
        "product_height": productHeight,
        "order_id": orderId == null ? null : orderId,
        "orders_date":
            ordersDate == null ? null : ordersDate!.toIso8601String(),
        "book_type": bookType,
        "yearbook_description":
            yearbookDescription == null ? null : yearbookDescription!.toJson(),
        "yearbook_sort_order": yearbookSortOrder,
        "partner_book": partnerBook,
        "pages": List<dynamic>.from(pages.map((x) => x.toJson())),
        "voucher_code": voucherCode,
        "expiry_date": expiryDate,
        "order_link": orderLink == null ? null : orderLink,
        "array_images": List<dynamic>.from(arrayImages.map((x) => x.toJson())),
        "order_status": orderStatus,
        "no_pages": noPages,
        "formable": formable,
        "flexible": flexible,
        "cover_page": coverPage,
        "front_page_name": backPageNameValues.reverse[frontPageName],
        "back_page_name": backPageNameValues.reverse[backPageName],
        "image_data": List<dynamic>.from(imageData.map((x) => x.toJson())),
        "img_http_thumb": imgHttpThumb,
        "img_http_large": imgHttpLarge,
        "yearbook_thumbnail": yearbookThumbnail,
        "img_http_large_fancybox":
            imgHttpLargeFancybox == null ? null : imgHttpLargeFancybox,
        "thumb_page_name_fancybox": thumbPageNameFancybox == null
            ? null
            : backPageNameValues.reverse[thumbPageNameFancybox],
        "thumb_page_name": thumbPageName == null
            ? null
            : backPageNameValues.reverse[thumbPageName],
        "config": config!.toJson(),
      };
}

class ArrayImage {
  ArrayImage({
    this.thumb,
    this.large,
    this.pageName,
  });

  String? thumb;
  String? large;
  BackPageName? pageName;

  factory ArrayImage.fromJson(Map<String, dynamic> json) => ArrayImage(
        thumb: json["thumb"] == null ? null : json["thumb"],
        large: json["large"] == null ? null : json["large"],
        pageName: backPageNameValues.map[json["page_name"]],
      );

  Map<String, dynamic> toJson() => {
        "thumb": thumb == null ? null : thumb,
        "large": large == null ? null : large,
        "page_name": backPageNameValues.reverse[pageName],
      };
}

enum BackPageName {
  FRONT_COVER,
  PAGE_1,
  PAGE_2,
  PAGE_3,
  PAGE_4,
  PAGE_5,
  PAGE_6,
  PAGE_7,
  PAGE_8,
  PAGE_9,
  PAGE_10,
  PAGE_11,
  PAGE_12,
  PAGE_13,
  PAGE_14,
  PAGE_15,
  PAGE_16,
  PAGE_17,
  PAGE_18,
  PAGE_19,
  PAGE_20,
  BACK_COVER,
  FRONT,
  BACK_PAGE_NAME_PAGE_1,
  BACK,
  BACK_PAGE_NAME_FRONT_COVER,
  BACK_PAGE_NAME_BACK_COVER,
  PURPLE_FRONT_COVER,
  PURPLE_BACK_COVER
}

final backPageNameValues = EnumValues({
  "Back": BackPageName.BACK,
  "Back Cover": BackPageName.BACK_COVER,
  "Back Cover ": BackPageName.BACK_PAGE_NAME_BACK_COVER,
  "Front Cover ": BackPageName.BACK_PAGE_NAME_FRONT_COVER,
  "Page - 1": BackPageName.BACK_PAGE_NAME_PAGE_1,
  "Front": BackPageName.FRONT,
  "Front Cover": BackPageName.FRONT_COVER,
  "Page-1": BackPageName.PAGE_1,
  "Page-10": BackPageName.PAGE_10,
  "Page-11": BackPageName.PAGE_11,
  "Page-12": BackPageName.PAGE_12,
  "Page-13": BackPageName.PAGE_13,
  "Page-14": BackPageName.PAGE_14,
  "Page-15": BackPageName.PAGE_15,
  "Page-16": BackPageName.PAGE_16,
  "Page-17": BackPageName.PAGE_17,
  "Page-18": BackPageName.PAGE_18,
  "Page-19": BackPageName.PAGE_19,
  "Page-2": BackPageName.PAGE_2,
  "Page-20": BackPageName.PAGE_20,
  "Page-3": BackPageName.PAGE_3,
  "Page-4": BackPageName.PAGE_4,
  "Page-5": BackPageName.PAGE_5,
  "Page-6": BackPageName.PAGE_6,
  "Page-7": BackPageName.PAGE_7,
  "Page-8": BackPageName.PAGE_8,
  "Page-9": BackPageName.PAGE_9,
  "Back cover": BackPageName.PURPLE_BACK_COVER,
  "Front cover": BackPageName.PURPLE_FRONT_COVER
});

class Config {
  Config({
    this.imageQuality,
  });

  ImageQuality? imageQuality;

  factory Config.fromJson(Map<String, dynamic> json) => Config(
        imageQuality: ImageQuality.fromJson(json["imageQuality"]),
      );

  Map<String, dynamic> toJson() => {
        "imageQuality": imageQuality!.toJson(),
      };
}

class ImageQuality {
  ImageQuality({
    this.enabled,
    this.minDpi,
    this.maxDpi,
  });

  bool? enabled;
  String? minDpi;
  String? maxDpi;

  factory ImageQuality.fromJson(Map<String, dynamic> json) => ImageQuality(
        enabled: json["enabled"],
        minDpi: json["minDpi"],
        maxDpi: json["maxDpi"],
      );

  Map<String, dynamic> toJson() => {
        "enabled": enabled,
        "minDpi": minDpi,
        "maxDpi": maxDpi,
      };
}

class ImageDatum {
  ImageDatum({
    this.pageId,
    this.thumb,
    this.large,
  });

  PageId? pageId;
  String? thumb;
  String? large;

  factory ImageDatum.fromJson(Map<String, dynamic> json) => ImageDatum(
        pageId: pageIdValues.map[json["page_id"]],
        thumb: json["thumb"],
        large: json["large"],
      );

  Map<String, dynamic> toJson() => {
        "page_id": pageIdValues.reverse[pageId],
        "thumb": thumb,
        "large": large,
      };
}

enum PageId { PAGE1, P1 }

final pageIdValues = EnumValues({"P1": PageId.P1, "Page1": PageId.PAGE1});

class Page {
  Page({
    this.yearbookPageId,
    this.masterYearbookPageId,
    this.pageIndex,
    this.pageEditable,
    this.userTemplateId,
    this.masterTemplateId,
    this.status,
    this.approvalStatus,
    this.createdDate,
    this.lastModifiedDate,
    this.templateDetails,
    this.studioMode,
    this.pageName,
    //required this.imageData,
  });

  int? yearbookPageId;
  int? masterYearbookPageId;
  int? pageIndex;
  int? pageEditable;
  int? userTemplateId;
  int? masterTemplateId;
  int? status;
  int? approvalStatus;
  DateTime? createdDate;
  DateTime? lastModifiedDate;
  dynamic templateDetails;
  String? studioMode;
  BackPageName? pageName;
  //late List<ImageDatum> imageData;

  factory Page.fromJson(Map<String, dynamic> json) => Page(
        yearbookPageId:
            json["yearbook_page_id"] == null ? null : json["yearbook_page_id"],
        masterYearbookPageId: json["master_yearbook_page_id"],
        pageIndex: json["page_index"],
        pageEditable: json["page_editable"],
        userTemplateId:
            json["user_template_id"] == null ? null : json["user_template_id"],
        masterTemplateId: json["master_template_id"],
        status: json["status"] == null ? null : json["status"],
        approvalStatus:
            json["approval_status"] == null ? null : json["approval_status"],
        createdDate: DateTime.parse(json["created_date"]),
        lastModifiedDate: DateTime.parse(json["last_modified_date"]),
        templateDetails: json["template_details"],
        studioMode: json["studio_mode"] == null ? null : json["studio_mode"],
        pageName: backPageNameValues.map[json["page_name"]],
        // imageData: json["image_data"] == null
        //     ? null
        //     : List<ImageDatum>.from(
        //         json["image_data"].map((x) => ImageDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "yearbook_page_id": yearbookPageId == null ? null : yearbookPageId,
        "master_yearbook_page_id": masterYearbookPageId,
        "page_index": pageIndex,
        "page_editable": pageEditable,
        "user_template_id": userTemplateId == null ? null : userTemplateId,
        "master_template_id": masterTemplateId,
        "status": status == null ? null : status,
        "approval_status": approvalStatus == null ? null : approvalStatus,
        "created_date": createdDate!.toIso8601String(),
        "last_modified_date": lastModifiedDate!.toIso8601String(),
        "template_details": templateDetails,
        "studio_mode": studioMode == null ? null : studioMode,
        "page_name": backPageNameValues.reverse[pageName],
        // "image_data": imageData == null
        //     ? null
        //     : List<dynamic>.from(imageData.map((x) => x.toJson())),
      };
}

class Settings {
  Settings({
    this.calendarLayout,
  });

  String? calendarLayout;

  factory Settings.fromJson(Map<String, dynamic> json) => Settings(
        calendarLayout: json["calendar_layout"],
      );

  Map<String, dynamic> toJson() => {
        "calendar_layout": calendarLayout,
      };
}

class YearbookDescription {
  YearbookDescription({
    this.desc,
    this.size,
    this.price,
    this.sInfo,
  });

  String? desc;
  Size? size;
  String? price;
  String? sInfo;

  factory YearbookDescription.fromJson(Map<String, dynamic> json) =>
      YearbookDescription(
        desc: json["Desc"] ?? "",
        size: sizeValues.map[json["Size"]],
        price: json["Price"] ?? "",
        sInfo: json["sInfo"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "Desc": desc,
        "Size": sizeValues.reverse[size],
        "Price": this.price,
        "sInfo": sInfo,
      };
}

//enum Price { FROM_800 }

//final priceValues = EnumValues({"From ₹ 800": Price.FROM_800});

enum Size { THE_24_PAGES_28_X21_CM_20_X15_CM }

final sizeValues = EnumValues(
    {"24 pages, 28x21 cm, 20x15 cm": Size.THE_24_PAGES_28_X21_CM_20_X15_CM});

enum YearbookType { U, M }

final yearbookTypeValues =
    EnumValues({"M": YearbookType.M, "U": YearbookType.U});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    // ignore: unnecessary_null_comparison
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
