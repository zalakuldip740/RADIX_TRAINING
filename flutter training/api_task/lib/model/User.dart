import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.response,
  });

  Response response;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        response: Response.fromJson(json["response"]),
      );

  Map<String, dynamic> toJson() => {
        "response": response.toJson(),
      };
}

class Response {
  Response({
    required this.status,
    required this.message,
    required this.data,
  });

  bool status;
  String message;
  List<Datum> data;

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
    required this.yearbookId,
    required this.userYearbookId,
    required this.yearbookName,
    required this.yearbookType,
    required this.settings,
    required this.createdDate,
    required this.lastModifiedDate,
    required this.productId,
    required this.status,
    required this.productWidth,
    required this.productHeight,
    required this.orderId,
    required this.ordersDate,
    required this.bookType,
    required this.yearbookDescription,
    required this.yearbookSortOrder,
    required this.partnerBook,
    required this.pages,
    this.voucherCode,
    this.expiryDate,
    required this.orderLink,
    required this.arrayImages,
    required this.orderStatus,
    required this.noPages,
    required this.formable,
    required this.flexible,
    required this.coverPage,
    required this.frontPageName,
    required this.backPageName,
    required this.imageData,
    required this.imgHttpThumb,
    required this.imgHttpLarge,
    required this.yearbookThumbnail,
    required this.imgHttpLargeFancybox,
    required this.thumbPageNameFancybox,
    required this.thumbPageName,
    required this.config,
  });

  int yearbookId;
  int userYearbookId;
  String yearbookName;
  var yearbookType;
  var settings;
  var createdDate;
  var lastModifiedDate;
  int productId;
  int status;
  double productWidth;
  double productHeight;
  int orderId;
  var ordersDate;
  int bookType;
  var yearbookDescription;
  int yearbookSortOrder;
  int partnerBook;
  List<Page> pages;
  dynamic voucherCode;
  dynamic expiryDate;
  String orderLink;
  List<ArrayImage> arrayImages;
  int orderStatus;
  int noPages;
  int formable;
  int flexible;
  String coverPage;
  var frontPageName;
  var backPageName;
  List<ImageDatum> imageData;
  String imgHttpThumb;
  String imgHttpLarge;
  bool yearbookThumbnail;
  String imgHttpLargeFancybox;
  var thumbPageNameFancybox;
  var thumbPageName;
  Config config;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        yearbookId: json["yearbook_id"],
        userYearbookId: json["user_yearbook_id"],
        yearbookName: json["yearbook_name"],
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
            ? null
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
        "settings": settings.toJson(),
        "created_date":
            createdDate == null ? null : createdDate.toIso8601String(),
        "last_modified_date": lastModifiedDate == null
            ? null
            : lastModifiedDate.toIso8601String(),
        "product_id": productId,
        "status": status == null ? null : status,
        "product_width": productWidth,
        "product_height": productHeight,
        "order_id": orderId == null ? null : orderId,
        "orders_date": ordersDate == null ? null : ordersDate.toIso8601String(),
        "book_type": bookType,
        "yearbook_description":
            yearbookDescription == null ? null : yearbookDescription.toJson(),
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
        "config": config.toJson(),
      };
}

class ArrayImage {
  ArrayImage({
    required this.thumb,
    required this.large,
    required this.pageName,
  });

  String thumb;
  String large;
  var pageName;

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
    required this.imageQuality,
  });

  ImageQuality imageQuality;

  factory Config.fromJson(Map<String, dynamic> json) => Config(
        imageQuality: ImageQuality.fromJson(json["imageQuality"]),
      );

  Map<String, dynamic> toJson() => {
        "imageQuality": imageQuality.toJson(),
      };
}

class ImageQuality {
  ImageQuality({
    required this.enabled,
    required this.minDpi,
    required this.maxDpi,
  });

  bool enabled;
  String minDpi;
  String maxDpi;

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
    required this.pageId,
    required this.thumb,
    required this.large,
  });

  var pageId;
  String thumb;
  String large;

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
    required this.yearbookPageId,
    required this.masterYearbookPageId,
    required this.pageIndex,
    required this.pageEditable,
    required this.userTemplateId,
    required this.masterTemplateId,
    required this.status,
    required this.approvalStatus,
    required this.createdDate,
    required this.lastModifiedDate,
    required this.templateDetails,
    required this.studioMode,
    required this.pageName,
    //required this.imageData,
  });

  int yearbookPageId;
  int masterYearbookPageId;
  int pageIndex;
  int pageEditable;
  int userTemplateId;
  int masterTemplateId;
  int status;
  int approvalStatus;
  var createdDate;
  var lastModifiedDate;
  dynamic templateDetails;
  String studioMode;
  var pageName;
  //List<ImageData> imageData;

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
        // imageData: [],
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
        "created_date": createdDate.toIso8601String(),
        "last_modified_date": lastModifiedDate.toIso8601String(),
        "template_details": templateDetails,
        "studio_mode": studioMode == null ? null : studioMode,
        "page_name": backPageNameValues.reverse[pageName],
        // ignore: unnecessary_null_comparison
      };
}

class Settings {
  Settings({
    required this.calendarLayout,
  });

  String calendarLayout;

  factory Settings.fromJson(Map<String, dynamic> json) => Settings(
        calendarLayout: json["calendar_layout"],
      );

  Map<String, dynamic> toJson() => {
        "calendar_layout": calendarLayout,
      };
}

class YearbookDescription {
  YearbookDescription({
    required this.desc,
    required this.size,
    required this.price,
    required this.sInfo,
  });

  String desc;
  var size;
  var price;
  String sInfo;

  factory YearbookDescription.fromJson(Map<String, dynamic> json) =>
      YearbookDescription(
        desc: json["Desc"],
        size: sizeValues.map[json["Size"]],
        price: priceValues.map[json["Price"]],
        sInfo: json["sInfo"],
      );

  Map<String, dynamic> toJson() => {
        "Desc": desc,
        "Size": sizeValues.reverse[size],
        "Price": priceValues.reverse[price],
        "sInfo": sInfo,
      };
}

enum Price { FROM_800 }

final priceValues = EnumValues({"From ₹ 800": Price.FROM_800});

enum Size { THE_24_PAGES_28_X21_CM_20_X15_CM }

final sizeValues = EnumValues(
    {"24 pages, 28x21 cm, 20x15 cm": Size.THE_24_PAGES_28_X21_CM_20_X15_CM});

enum YearbookType { U, M }

final yearbookTypeValues =
    EnumValues({"M": YearbookType.M, "U": YearbookType.U});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap = {};

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
