// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class OrderId extends Equatable {
  const OrderId({
    required this.id,
    required this.createdAt,
    required this.deliveryNeeded,
    required this.merchant,
    this.collector,
    required this.amountCents,
    this.shippingData,
    required this.currency,
    required this.isPaymentLocked,
    required this.isReturn,
    required this.isCancel,
    required this.isReturned,
    required this.isCanceled,
    this.merchantOrderId,
    this.walletNotification,
    required this.paidAmountCents,
    required this.notifyUserWithEmail,
    required this.items,
    required this.orderUrl,
    required this.commissionFees,
    required this.deliveryFeesCents,
    required this.deliveryVatCents,
    required this.paymentMethod,
    this.merchantStaffTag,
    required this.apiSource,
    required this.data,
    required this.token,
    required this.url,
  });

  final int id;
  final DateTime createdAt;
  final bool deliveryNeeded;
  final Merchant merchant;
  final dynamic collector;
  final int amountCents;
  final dynamic shippingData;
  // final ShippingData? shippingData;
  final String currency;
  final bool isPaymentLocked;
  final bool isReturn;
  final bool isCancel;
  final bool isReturned;
  final bool isCanceled;
  final dynamic merchantOrderId;
  final dynamic walletNotification;
  final int paidAmountCents;
  final bool notifyUserWithEmail;
  final List<Item> items;
  final String orderUrl;
  final int commissionFees;
  final int deliveryFeesCents;
  final int deliveryVatCents;
  final String paymentMethod;
  final dynamic merchantStaffTag;
  final String apiSource;
  final Data data;
  final String token;
  final String url;

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "delivery_needed": deliveryNeeded,
        "merchant": merchant.toJson(),
        "collector": collector,
        "amount_cents": amountCents,
        "shipping_data": shippingData,
        "currency": currency,
        "is_payment_locked": isPaymentLocked,
        "is_return": isReturn,
        "is_cancel": isCancel,
        "is_returned": isReturned,
        "is_canceled": isCanceled,
        "merchant_order_id": merchantOrderId,
        "wallet_notification": walletNotification,
        "paid_amount_cents": paidAmountCents,
        "notify_user_with_email": notifyUserWithEmail,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "order_url": orderUrl,
        "commission_fees": commissionFees,
        "delivery_fees_cents": deliveryFeesCents,
        "delivery_vat_cents": deliveryVatCents,
        "payment_method": paymentMethod,
        "merchant_staff_tag": merchantStaffTag,
        "api_source": apiSource,
        "data": data.toJson(),
        "token": token,
        "url": url,
      };

  @override
  List<Object> get props {
    return [
      id,
      createdAt,
      deliveryNeeded,
      merchant,
      collector,
      amountCents,
      shippingData,
      currency,
      isPaymentLocked,
      isReturn,
      isCancel,
      isReturned,
      isCanceled,
      merchantOrderId,
      walletNotification,
      paidAmountCents,
      notifyUserWithEmail,
      items,
      orderUrl,
      commissionFees,
      deliveryFeesCents,
      deliveryVatCents,
      paymentMethod,
      merchantStaffTag,
      apiSource,
      data,
      token,
      url,
    ];
  }
}

class Data extends Equatable {
  const Data();

  Map<String, dynamic> toJson() => {};

  @override
  List<Object?> get props => [];
}

class Item extends Equatable {
  const Item({
    required this.name,
    required this.description,
    required this.amountCents,
    required this.quantity,
  });

  final String name;
  final String description;
  final int amountCents;
  final int quantity;

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "amount_cents": amountCents,
        "quantity": quantity,
      };

  @override
  List<Object> get props => [name, description, amountCents, quantity];
}

class Merchant extends Equatable {
  const Merchant({
    required this.id,
    required this.createdAt,
    required this.phones,
    required this.companyEmails,
    required this.companyName,
    required this.state,
    required this.country,
    required this.city,
    required this.postalCode,
    required this.street,
  });

  final int id;
  final DateTime createdAt;
  final List<String> phones;
  final List<String> companyEmails;
  final String companyName;
  final String state;
  final String country;
  final String city;
  final String postalCode;
  final String street;

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "phones": List<dynamic>.from(phones.map((x) => x)),
        "company_emails": List<dynamic>.from(companyEmails.map((x) => x)),
        "company_name": companyName,
        "state": state,
        "country": country,
        "city": city,
        "postal_code": postalCode,
        "street": street,
      };

  @override
  List<Object> get props {
    return [
      id,
      createdAt,
      phones,
      companyEmails,
      companyName,
      state,
      country,
      city,
      postalCode,
      street,
    ];
  }
}

// class ShippingData extends Equatable {
//   const ShippingData({
//     required this.id,
//     required this.firstName,
//     required this.lastName,
//     required this.street,
//     required this.building,
//     required this.floor,
//     required this.apartment,
//     required this.city,
//     required this.state,
//     required this.country,
//     required this.email,
//     required this.phoneNumber,
//     required this.postalCode,
//     required this.extraDescription,
//     required this.shippingMethod,
//     required this.orderId,
//     required this.order,
//   });

//   final int id;
//   final String firstName;
//   final String lastName;
//   final String street;
//   final String building;
//   final String floor;
//   final String apartment;
//   final String city;
//   final String state;
//   final String country;
//   final String email;
//   final String phoneNumber;
//   final String postalCode;
//   final String extraDescription;
//   final String shippingMethod;
//   final int orderId;
//   final int order;

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "first_name": firstName,
//         "last_name": lastName,
//         "street": street,
//         "building": building,
//         "floor": floor,
//         "apartment": apartment,
//         "city": city,
//         "state": state,
//         "country": country,
//         "email": email,
//         "phone_number": phoneNumber,
//         "postal_code": postalCode,
//         "extra_description": extraDescription,
//         "shipping_method": shippingMethod,
//         "order_id": orderId,
//         "order": order,
//       };

//   @override
//   List<Object> get props {
//     return [
//       id,
//       firstName,
//       lastName,
//       street,
//       building,
//       floor,
//       apartment,
//       city,
//       state,
//       country,
//       email,
//       phoneNumber,
//       postalCode,
//       extraDescription,
//       shippingMethod,
//       orderId,
//       order,
//     ];
//   }
// }
