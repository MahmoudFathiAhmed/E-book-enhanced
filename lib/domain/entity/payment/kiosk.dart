// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Kiosk extends Equatable {
  const Kiosk({
    required this.id,
    required this.pending,
    required this.amountCents,
    required this.success,
    required this.isAuth,
    required this.isCapture,
    required this.isStandalonePayment,
    required this.isVoided,
    required this.isRefunded,
    required this.is3DSecure,
    required this.integrationId,
    required this.profileId,
    required this.hasParentTransaction,
    required this.order,
    required this.createdAt,
    required this.transactionProcessedCallbackResponses,
    required this.currency,
    required this.sourceData,
    required this.apiSource,
    this.terminalId,
    required this.merchantCommission,
    this.installment,
    required this.discountDetails,
    required this.isVoid,
    required this.isRefund,
    required this.data,
    required this.isHidden,
    required this.paymentKeyClaims,
    required this.errorOccured,
    required this.isLive,
    this.otherEndpointReference,
    required this.refundedAmountCents,
    required this.sourceId,
    required this.isCaptured,
    required this.capturedAmount,
    this.merchantStaffTag,
    required this.updatedAt,
    required this.owner,
    this.parentTransaction,
  });

  final int id;
  final bool pending;
  final int amountCents;
  final bool success;
  final bool isAuth;
  final bool isCapture;
  final bool isStandalonePayment;
  final bool isVoided;
  final bool isRefunded;
  final bool is3DSecure;
  final int integrationId;
  final int profileId;
  final bool hasParentTransaction;
  final Order order;
  final DateTime createdAt;
  final List<dynamic> transactionProcessedCallbackResponses;
  final String currency;
  final SourceData sourceData;
  final String apiSource;
  final dynamic terminalId;
  final int merchantCommission;
  final dynamic installment;
  final List<dynamic> discountDetails;
  final bool isVoid;
  final bool isRefund;
  final KioskData data;
  final bool isHidden;
  final PaymentKeyClaims paymentKeyClaims;
  final bool errorOccured;
  final bool isLive;
  final dynamic otherEndpointReference;
  final int refundedAmountCents;
  final int sourceId;
  final bool isCaptured;
  final int capturedAmount;
  final dynamic merchantStaffTag;
  final DateTime updatedAt;
  final int owner;
  final dynamic parentTransaction;

  Map<String, dynamic> toJson() => {
        "id": id,
        "pending": pending,
        "amount_cents": amountCents,
        "success": success,
        "is_auth": isAuth,
        "is_capture": isCapture,
        "is_standalone_payment": isStandalonePayment,
        "is_voided": isVoided,
        "is_refunded": isRefunded,
        "is_3d_secure": is3DSecure,
        "integration_id": integrationId,
        "profile_id": profileId,
        "has_parent_transaction": hasParentTransaction,
        "order": order.toJson(),
        "created_at": createdAt.toIso8601String(),
        "transaction_processed_callback_responses": List<dynamic>.from(
            transactionProcessedCallbackResponses.map((x) => x)),
        "currency": currency,
        "source_data": sourceData.toJson(),
        "api_source": apiSource,
        "terminal_id": terminalId,
        "merchant_commission": merchantCommission,
        "installment": installment,
        "discount_details": List<dynamic>.from(discountDetails.map((x) => x)),
        "is_void": isVoid,
        "is_refund": isRefund,
        "data": data.toJson(),
        "is_hidden": isHidden,
        "payment_key_claims": paymentKeyClaims.toJson(),
        "error_occured": errorOccured,
        "is_live": isLive,
        "other_endpoint_reference": otherEndpointReference,
        "refunded_amount_cents": refundedAmountCents,
        "source_id": sourceId,
        "is_captured": isCaptured,
        "captured_amount": capturedAmount,
        "merchant_staff_tag": merchantStaffTag,
        "updated_at": updatedAt.toIso8601String(),
        "owner": owner,
        "parent_transaction": parentTransaction,
      };

  @override
  List<Object> get props {
    return [
      id,
      pending,
      amountCents,
      success,
      isAuth,
      isCapture,
      isStandalonePayment,
      isVoided,
      isRefunded,
      is3DSecure,
      integrationId,
      profileId,
      hasParentTransaction,
      order,
      createdAt,
      transactionProcessedCallbackResponses,
      currency,
      sourceData,
      apiSource,
      terminalId,
      merchantCommission,
      installment,
      discountDetails,
      isVoid,
      isRefund,
      data,
      isHidden,
      paymentKeyClaims,
      errorOccured,
      isLive,
      otherEndpointReference,
      refundedAmountCents,
      sourceId,
      isCaptured,
      capturedAmount,
      merchantStaffTag,
      updatedAt,
      owner,
      parentTransaction,
    ];
  }
}

class KioskData extends Equatable {
  const KioskData({
    required this.gatewayIntegrationPk,
    this.biller,
    this.ref,
    required this.txnResponseCode,
    this.fromUser,
    this.rrn,
    required this.paidThrough,
    this.aggTerminal,
    required this.message,
    this.amount,
    required this.otp,
    required this.dueAmount,
    this.cashoutAmount,
    required this.klass,
    required this.billReference,
  });

  final int gatewayIntegrationPk;
  final dynamic biller;
  final dynamic ref;
  final String txnResponseCode;
  final dynamic fromUser;
  final dynamic rrn;
  final String paidThrough;
  final dynamic aggTerminal;
  final String message;
  final dynamic amount;
  final String otp;
  final int dueAmount;
  final dynamic cashoutAmount;
  final String klass;
  final int billReference;


  Map<String, dynamic> toJson() => {
        "gateway_integration_pk": gatewayIntegrationPk,
        "biller": biller,
        "ref": ref,
        "txn_response_code": txnResponseCode,
        "from_user": fromUser,
        "rrn": rrn,
        "paid_through": paidThrough,
        "agg_terminal": aggTerminal,
        "message": message,
        "amount": amount,
        "otp": otp,
        "due_amount": dueAmount,
        "cashout_amount": cashoutAmount,
        "klass": klass,
        "bill_reference": billReference,
      };

  @override
  List<Object> get props {
    return [
      gatewayIntegrationPk,
      biller,
      ref,
      txnResponseCode,
      fromUser,
      rrn,
      paidThrough,
      aggTerminal,
      message,
      amount,
      otp,
      dueAmount,
      cashoutAmount,
      klass,
      billReference,
    ];
  }
}

class Order extends Equatable {
  const Order({
    required this.id,
    required this.createdAt,
    required this.deliveryNeeded,
    required this.merchant,
    this.collector,
    required this.amountCents,
    required this.shippingData,
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
  });

  final int id;
  final DateTime createdAt;
  final bool deliveryNeeded;
  final Merchant merchant;
  final dynamic collector;
  final int amountCents;
  final IngData shippingData;
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
  final ExtraClass data;

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "delivery_needed": deliveryNeeded,
        "merchant": merchant.toJson(),
        "collector": collector,
        "amount_cents": amountCents,
        "shipping_data": shippingData.toJson(),
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
    ];
  }
}

class ExtraClass extends Equatable {
  const ExtraClass();

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

class IngData extends Equatable {
  const IngData({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.street,
    required this.building,
    required this.floor,
    required this.apartment,
    required this.city,
    required this.state,
    required this.country,
    required this.email,
    required this.phoneNumber,
    required this.postalCode,
    required this.extraDescription,
    required this.shippingMethod,
    required this.orderId,
    required this.order,
  });

  final int id;
  final String firstName;
  final String lastName;
  final String street;
  final String building;
  final String floor;
  final String apartment;
  final String city;
  final String state;
  final String country;
  final String email;
  final String phoneNumber;
  final String postalCode;
  final String extraDescription;
  final String shippingMethod;
  final int orderId;
  final int order;

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "first_name": firstName,
        "last_name": lastName,
        "street": street,
        "building": building,
        "floor": floor,
        "apartment": apartment,
        "city": city,
        "state": state,
        "country": country,
        "email": email,
        "phone_number": phoneNumber,
        "postal_code": postalCode,
        "extra_description": extraDescription,
        "shipping_method": shippingMethod == null ? null : shippingMethod,
        "order_id": orderId == null ? null : orderId,
        "order": order == null ? null : order,
      };

  @override
  List<Object> get props {
    return [
      id,
      firstName,
      lastName,
      street,
      building,
      floor,
      apartment,
      city,
      state,
      country,
      email,
      phoneNumber,
      postalCode,
      extraDescription,
      shippingMethod,
      orderId,
      order,
    ];
  }
}

class PaymentKeyClaims extends Equatable {
  const PaymentKeyClaims({
    required this.currency,
    required this.integrationId,
    required this.lockOrderWhenPaid,
    required this.pmkIp,
    required this.singlePaymentAttempt,
    required this.extra,
    required this.userId,
    required this.orderId,
    required this.exp,
    required this.amountCents,
    required this.billingData,
  });

  final String currency;
  final int integrationId;
  final bool lockOrderWhenPaid;
  final String pmkIp;
  final bool singlePaymentAttempt;
  final ExtraClass extra;
  final int userId;
  final int orderId;
  final int exp;
  final int amountCents;
  final IngData billingData;

  Map<String, dynamic> toJson() => {
        "currency": currency,
        "integration_id": integrationId,
        "lock_order_when_paid": lockOrderWhenPaid,
        "pmk_ip": pmkIp,
        "single_payment_attempt": singlePaymentAttempt,
        "extra": extra.toJson(),
        "user_id": userId,
        "order_id": orderId,
        "exp": exp,
        "amount_cents": amountCents,
        "billing_data": billingData.toJson(),
      };

  @override
  List<Object> get props {
    return [
      currency,
      integrationId,
      lockOrderWhenPaid,
      pmkIp,
      singlePaymentAttempt,
      extra,
      userId,
      orderId,
      exp,
      amountCents,
      billingData,
    ];
  }
}

class SourceData extends Equatable {
  const SourceData({
    required this.pan,
    required this.subType,
    required this.type,
  });

  final String pan;
  final String subType;
  final String type;

  Map<String, dynamic> toJson() => {
        "pan": pan,
        "sub_type": subType,
        "type": type,
      };

  @override
  List<Object> get props => [pan, subType, type];
}
