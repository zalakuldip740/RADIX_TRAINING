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
    this.recordcount,
    this.totalRecords,
  });

  bool? status;
  String? message;
  late List<Datum> data;
  int? recordcount;
  int? totalRecords;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        recordcount: json["recordcount"],
        totalRecords: json["total_records"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "recordcount": recordcount,
        "total_records": totalRecords,
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
    this.productWidth,
    this.productHeight,
    this.ordersDate,
    this.orderId,
    this.bookType,
    this.yearbookDescription,
    required this.sizesAvailable,
    this.yearbookSortOrder,
    required this.yearbookCategorySortOrder,
    this.partnerId,
    this.partnerName,
    this.partnerBook,
    this.expiryDate,
    this.voucherCode,
    required this.pages,
    this.editableImageCount,
    this.orderLink,
    this.orderStatus,
    this.noPages,
    this.visiblePages,
    this.formable,
    this.flexible,
    this.coverPage,
    this.frontPageName,
    this.backPageName,
    required this.imageData,
    this.imgHttpThumb,
    this.imgHttpLarge,
    this.previewThumb,
    this.previewLarge,
    this.yearbookThumbnail,
    this.imgHttpLargeFancybox,
    this.thumbPageNameFancybox,
    this.thumbPageName,
    this.category,
    this.yearbookBanner,
    this.appPreviewDescription,
    this.seoUrl,
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
  double? productWidth;
  double? productHeight;

  // ignore: unnecessary_question_mark
  dynamic? ordersDate;

  // ignore: unnecessary_question_mark
  dynamic? orderId;
  int? bookType;
  YearbookDescription? yearbookDescription;
  late List<int> sizesAvailable;
  int? yearbookSortOrder;
  late Map<String, int> yearbookCategorySortOrder;
  int? partnerId;

  // ignore: unnecessary_question_mark
  dynamic? partnerName;
  int? partnerBook;

  // ignore: unnecessary_question_mark
  dynamic? expiryDate;

  // ignore: unnecessary_question_mark
  dynamic? voucherCode;
  late List<Pages> pages;
  int? editableImageCount;

  // ignore: unnecessary_question_mark
  dynamic? orderLink;
  int? orderStatus;
  int? noPages;
  int? visiblePages;
  int? formable;
  int? flexible;
  String? coverPage;
  String? frontPageName;
  String? backPageName;
  late List<ImageDatum> imageData;
  String? imgHttpThumb;
  String? imgHttpLarge;
  String? previewThumb;
  String? previewLarge;
  bool? yearbookThumbnail;
  String? imgHttpLargeFancybox;
  String? thumbPageNameFancybox;
  String? thumbPageName;
  String? category;
  String? yearbookBanner;
  String? appPreviewDescription;
  String? seoUrl;
  Config? config;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        yearbookId: json["yearbook_id"],
        userYearbookId: json["user_yearbook_id"],
        yearbookName: json["yearbook_name"] ?? "",
        yearbookType: yearbookTypeValues.map[json["yearbook_type"]],
        settings: Settings.fromJson(json["settings"]),
        createdDate: DateTime.parse(json["created_date"]),
        lastModifiedDate: DateTime.parse(json["last_modified_date"]),
        productId: json["product_id"],
        productWidth: json["product_width"].toDouble(),
        productHeight: json["product_height"].toDouble(),
        ordersDate: json["orders_date"],
        orderId: json["order_id"],
        bookType: json["book_type"],
        yearbookDescription: json["yearbook_description"] == null
            ? YearbookDescription(price: "", desc: "")
            : YearbookDescription.fromJson(json["yearbook_description"]),
        sizesAvailable: List<int>.from(json["sizes_available"].map((x) => x)),
        yearbookSortOrder: json["yearbook_sort_order"],
        // yearbookCategorySortOrder: json["yearbook_category_sort_order"] == null
        //     ? null
        //     : Map.from(json["yearbook_category_sort_order"])
        //         .map((k, v) => MapEntry<String, int>(k, v)),
        partnerId: json["partner_id"],
        partnerName: json["partner_name"],
        partnerBook: json["partner_book"],
        expiryDate: json["expiry_date"],
        voucherCode: json["voucher_code"],
        pages: List<Pages>.from(json["pages"].map((x) => Pages.fromJson(x))),
        editableImageCount: json["editable_image_count"],
        orderLink: json["order_link"],
        orderStatus: json["order_status"],
        noPages: json["no_pages"],
        visiblePages: json["visible_pages"],
        formable: json["formable"],
        flexible: json["flexible"],
        coverPage: json["cover_page"],
        frontPageName: json["front_page_name"],
        backPageName: json["back_page_name"],
        imageData: List<ImageDatum>.from(
            json["image_data"].map((x) => ImageDatum.fromJson(x))),
        imgHttpThumb: json["img_http_thumb"] ?? "",
        imgHttpLarge: json["img_http_large"],
        previewThumb: json["preview_thumb"],
        previewLarge: json["preview_large"],
        yearbookThumbnail: json["yearbook_thumbnail"],
        imgHttpLargeFancybox: json["img_http_large_fancybox"],
        thumbPageNameFancybox: json["thumb_page_name_fancybox"],
        thumbPageName: json["thumb_page_name"],
        category: json["category"],
        yearbookBanner:
            json["yearbook_banner"] == "" ? null : json["yearbook_banner"],
        appPreviewDescription: json["app_preview_description"] == null
            ? ""
            : json["app_preview_description"],
        seoUrl: json["seo_url"],
        config: Config.fromJson(json["config"]),
        yearbookCategorySortOrder: {},
      );

  Map<String, dynamic> toJson() => {
        "yearbook_id": yearbookId,
        "user_yearbook_id": userYearbookId,
        "yearbook_name": yearbookName,
        "yearbook_type": yearbookTypeValues.reverse[yearbookType],
        "settings": settings!.toJson(),
        "created_date": createdDate!.toIso8601String(),
        "last_modified_date": lastModifiedDate!.toIso8601String(),
        "product_id": productId,
        "product_width": productWidth,
        "product_height": productHeight,
        "orders_date": ordersDate,
        "order_id": orderId,
        "book_type": bookType,
        "yearbook_description":
            yearbookDescription == null ? null : yearbookDescription!.toJson(),
        "sizes_available": List<dynamic>.from(sizesAvailable.map((x) => x)),
        "yearbook_sort_order": yearbookSortOrder,
        // ignore: unnecessary_null_comparison
        "yearbook_category_sort_order": yearbookCategorySortOrder == null
            ? null
            : Map.from(yearbookCategorySortOrder)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "partner_id": partnerId,
        "partner_name": partnerName,
        "partner_book": partnerBook,
        "expiry_date": expiryDate,
        "voucher_code": voucherCode,
        "pages": List<dynamic>.from(pages.map((x) => x.toJson())),
        "editable_image_count": editableImageCount,
        "order_link": orderLink,
        "order_status": orderStatus,
        "no_pages": noPages,
        "visible_pages": visiblePages,
        "formable": formable,
        "flexible": flexible,
        "cover_page": coverPage,
        "front_page_name": this.frontPageName,
        "back_page_name": backPageName,
        "image_data": List<dynamic>.from(imageData.map((x) => x.toJson())),
        "img_http_thumb": imgHttpThumb,
        "img_http_large": imgHttpLarge,
        "preview_thumb": previewThumb,
        "preview_large": previewLarge,
        "yearbook_thumbnail": yearbookThumbnail,
        "img_http_large_fancybox": imgHttpLargeFancybox,
        "thumb_page_name_fancybox": thumbPageNameFancybox,
        "thumb_page_name": thumbPageName,
        "category": category,
        "yearbook_banner": yearbookBanner == null ? null : yearbookBanner,
        "app_preview_description":
            appPreviewDescription == null ? null : appPreviewDescription,
        "seo_url": seoUrl,
        "config": config!.toJson(),
      };
}

// enum BackPageName {
//   BACK,
//   BACK_COVER,
//   //BACK_PAGE_NAME_BACK_COVER,
//   PURPLE_BACK_COVER,
//   FRONT,
//   PAGE_1,
//   PAGE_2,
//   PAGE_3,
//   PAGE_4,
//   PAGE_5,
//   PAGE_6,
//   PAGE_7,
//   PAGE_8,
//   PAGE_9,
//   PAGE_10,
//   PAGE_11,
//   PAGE_12,
//   PAGE_13,
//   PAGE_14,
//   PAGE_15,
//   PAGE_16,
//   PAGE_17,
//   PAGE_18,
//   PAGE_19,
//   PAGE_20,
//   FRONT_COVER,
//   BACK_PAGE_NAME_PAGE_1,
//   //BACK_PAGE_NAME_FRONT_COVER,
//   PURPLE_FRONT_COVER
// }
//
// final backPageNameValues = EnumValues({
//   "Back": BackPageName.BACK,
//   "Back Cover ": BackPageName.BACK_COVER,
//   //"Back Cover": BackPageName.BACK_PAGE_NAME_BACK_COVER,
//   //"Front Cover": BackPageName.BACK_PAGE_NAME_FRONT_COVER,
//   "Page-1": BackPageName.BACK_PAGE_NAME_PAGE_1,
//   "Front": BackPageName.FRONT,
//   "Front Cover ": BackPageName.FRONT_COVER,
//   "Page - 1": BackPageName.PAGE_1,
//   "Page-10": BackPageName.PAGE_10,
//   "Page-11": BackPageName.PAGE_11,
//   "Page-12": BackPageName.PAGE_12,
//   "Page-13": BackPageName.PAGE_13,
//   "Page-14": BackPageName.PAGE_14,
//   "Page-15": BackPageName.PAGE_15,
//   "Page-16": BackPageName.PAGE_16,
//   "Page-17": BackPageName.PAGE_17,
//   "Page-18": BackPageName.PAGE_18,
//   "Page-19": BackPageName.PAGE_19,
//   "Page-2": BackPageName.PAGE_2,
//   "Page-20": BackPageName.PAGE_20,
//   "Page-3": BackPageName.PAGE_3,
//   "Page-4": BackPageName.PAGE_4,
//   "Page-5": BackPageName.PAGE_5,
//   "Page-6": BackPageName.PAGE_6,
//   "Page-7": BackPageName.PAGE_7,
//   "Page-8": BackPageName.PAGE_8,
//   "Page-9": BackPageName.PAGE_9,
//   "Back cover": BackPageName.PURPLE_BACK_COVER,
//   "Front cover": BackPageName.PURPLE_FRONT_COVER
// });

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

  String? pageId;
  String? thumb;
  String? large;

  factory ImageDatum.fromJson(Map<String, dynamic> json) => ImageDatum(
        pageId: json["page_id"],
        thumb: json["thumb"] ?? "",
        large: json["large"],
      );

  Map<String, dynamic> toJson() => {
        "page_id": pageId,
        "thumb": thumb,
        "large": large,
      };
}

// enum PageId { PAGE1 }
//
// final pageIdValues = EnumValues({"Page1": PageId.PAGE1});

class Pages {
  Pages({
    this.masterYearbookPageId,
    this.pageIndex,
    this.pageEditable,
    this.masterTemplateId,
    this.createdDate,
    this.lastModifiedDate,
    required this.imageData,
    this.width,
    this.height,
    this.pageName,
  });

  int? masterYearbookPageId;
  int? pageIndex;
  int? pageEditable;
  int? masterTemplateId;
  DateTime? createdDate;
  DateTime? lastModifiedDate;
  List<ImageDatum> imageData;
  int? width;
  int? height;
  String? pageName;

  factory Pages.fromJson(Map<String, dynamic> json) => Pages(
        masterYearbookPageId: json["master_yearbook_page_id"],
        pageIndex: json["page_index"],
        pageEditable: json["page_editable"],
        masterTemplateId: json["master_template_id"],
        createdDate: DateTime.parse(json["created_date"]),
        lastModifiedDate: DateTime.parse(json["last_modified_date"]),
        imageData: List<ImageDatum>.from(
            json["image_data"].map((x) => ImageDatum.fromJson(x))),
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        pageName: json["page_name"],
      );

  Map<String, dynamic> toJson() => {
        "master_yearbook_page_id": masterYearbookPageId,
        "page_index": pageIndex,
        "page_editable": pageEditable,
        "master_template_id": masterTemplateId,
        "created_date": createdDate!.toIso8601String(),
        "last_modified_date": lastModifiedDate!.toIso8601String(),
        "image_data": List<dynamic>.from(imageData.map((x) => x.toJson())),
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "page_name": pageName ?? "",
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
        desc: json["Desc"] ?? '',
        size: sizeValues.map[json["Size"]],
        price: json["Price"] ?? '',
        sInfo: json["sInfo"],
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

enum YearbookType { M }

final yearbookTypeValues = EnumValues({"M": YearbookType.M});

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
