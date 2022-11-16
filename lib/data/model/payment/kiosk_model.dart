import 'package:my_e_book/domain/entity/payment/kiosk.dart';

class KioskModel extends Kiosk {
  const KioskModel({
    required super.id,
    required super.pending,
    required super.amountCents,
    required super.success,
    required super.isAuth,
    required super.isCapture,
    required super.isStandalonePayment,
    required super.isVoided,
    required super.isRefunded,
    required super.is3DSecure,
    required super.integrationId,
    required super.profileId,
    required super.hasParentTransaction,
    required super.order,
    required super.createdAt,
    required super.transactionProcessedCallbackResponses,
    required super.currency,
    required super.sourceData,
    required super.apiSource,
    required super.merchantCommission,
    required super.discountDetails,
    required super.isVoid,
    required super.isRefund,
    required super.data,
    required super.isHidden,
    required super.paymentKeyClaims,
    required super.errorOccured,
    required super.isLive,
    required super.refundedAmountCents,
    required super.sourceId,
    required super.isCaptured,
    required super.capturedAmount,
    required super.updatedAt,
    required super.owner,
    super.terminalId,
    super.installment,
    super.otherEndpointReference,
    super.merchantStaffTag,
    super.parentTransaction,
  });
  factory KioskModel.fromJson(Map<String, dynamic> json) => KioskModel(
        id: json["id"],
        pending: json["pending"],
        amountCents: json["amount_cents"],
        success: json["success"],
        isAuth: json["is_auth"],
        isCapture: json["is_capture"],
        isStandalonePayment: json["is_standalone_payment"],
        isVoided: json["is_voided"],
        isRefunded: json["is_refunded"],
        is3DSecure: json["is_3d_secure"],
        integrationId: json["integration_id"],
        profileId: json["profile_id"],
        hasParentTransaction: json["has_parent_transaction"],
        order: OrderModel.fromJson(json["order"]),
        createdAt: DateTime.parse(json["created_at"]),
        transactionProcessedCallbackResponses: List<dynamic>.from(
            json["transaction_processed_callback_responses"].map((x) => x)),
        currency: json["currency"],
        sourceData: SourceDataModel.fromJson(json["source_data"]),
        apiSource: json["api_source"],
        terminalId: json["terminal_id"],
        merchantCommission: json["merchant_commission"],
        installment: json["installment"],
        discountDetails:
            List<dynamic>.from(json["discount_details"].map((x) => x)),
        isVoid: json["is_void"],
        isRefund: json["is_refund"],
        data: KioskDataModel.fromJson(json["data"]),
        isHidden: json["is_hidden"],
        paymentKeyClaims:
            PaymentKeyClaimsModel.fromJson(json["payment_key_claims"]),
        errorOccured: json["error_occured"],
        isLive: json["is_live"],
        otherEndpointReference: json["other_endpoint_reference"],
        refundedAmountCents: json["refunded_amount_cents"],
        sourceId: json["source_id"],
        isCaptured: json["is_captured"],
        capturedAmount: json["captured_amount"],
        merchantStaffTag: json["merchant_staff_tag"],
        updatedAt: DateTime.parse(json["updated_at"]),
        owner: json["owner"],
        parentTransaction: json["parent_transaction"],
      );
}

class KioskDataModel extends KioskData {
  const KioskDataModel({
    required super.gatewayIntegrationPk,
    required super.txnResponseCode,
    required super.paidThrough,
    required super.message,
    required super.otp,
    required super.dueAmount,
    required super.klass,
    required super.billReference,
    super.biller,
    super.ref,
    super.fromUser,
    super.rrn,
    super.aggTerminal,
    super.amount,
    super.cashoutAmount,
  });

  factory KioskDataModel.fromJson(Map<String, dynamic> json) => KioskDataModel(
        gatewayIntegrationPk: json["gateway_integration_pk"],
        biller: json["biller"],
        ref: json["ref"],
        txnResponseCode: json["txn_response_code"],
        fromUser: json["from_user"],
        rrn: json["rrn"],
        paidThrough: json["paid_through"],
        aggTerminal: json["agg_terminal"],
        message: json["message"],
        amount: json["amount"],
        otp: json["otp"],
        dueAmount: json["due_amount"],
        cashoutAmount: json["cashout_amount"],
        klass: json["klass"],
        billReference: json["bill_reference"],
      );
}

class OrderModel extends Order {
  const OrderModel({
    required super.id,
    required super.createdAt,
    required super.deliveryNeeded,
    required super.merchant,
    required super.amountCents,
    required super.shippingData,
    required super.currency,
    required super.isPaymentLocked,
    required super.isReturn,
    required super.isCancel,
    required super.isReturned,
    required super.isCanceled,
    required super.paidAmountCents,
    required super.notifyUserWithEmail,
    required super.items,
    required super.orderUrl,
    required super.commissionFees,
    required super.deliveryFeesCents,
    required super.deliveryVatCents,
    required super.paymentMethod,
    required super.apiSource,
    required super.data,
    super.collector,
    super.merchantOrderId,
    super.walletNotification,
    super.merchantStaffTag,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        deliveryNeeded: json["delivery_needed"],
        merchant: MerchantModel.fromJson(json["merchant"]),
        collector: json["collector"],
        amountCents: json["amount_cents"],
        shippingData: IngDataModel.fromJson(json["shipping_data"]),
        currency: json["currency"],
        isPaymentLocked: json["is_payment_locked"],
        isReturn: json["is_return"],
        isCancel: json["is_cancel"],
        isReturned: json["is_returned"],
        isCanceled: json["is_canceled"],
        merchantOrderId: json["merchant_order_id"],
        walletNotification: json["wallet_notification"],
        paidAmountCents: json["paid_amount_cents"],
        notifyUserWithEmail: json["notify_user_with_email"],
        items: List<ItemModel>.from(
            json["items"].map((x) => ItemModel.fromJson(x))),
        orderUrl: json["order_url"],
        commissionFees: json["commission_fees"],
        deliveryFeesCents: json["delivery_fees_cents"],
        deliveryVatCents: json["delivery_vat_cents"],
        paymentMethod: json["payment_method"],
        merchantStaffTag: json["merchant_staff_tag"],
        apiSource: json["api_source"],
        data: ExtraClassModel.fromJson(json["data"]),
      );
}

class ExtraClassModel extends ExtraClass {
  const ExtraClassModel();
  factory ExtraClassModel.fromJson(Map<String, dynamic> json) =>
      const ExtraClassModel();
}

class ItemModel extends Item {
  const ItemModel(
      {required super.name,
      required super.description,
      required super.amountCents,
      required super.quantity});

  factory ItemModel.fromJson(Map<String, dynamic> json) => ItemModel(
        name: json["name"],
        description: json["description"],
        amountCents: json["amount_cents"],
        quantity: json["quantity"],
      );
}

class MerchantModel extends Merchant {
  const MerchantModel(
      {required super.id,
      required super.createdAt,
      required super.phones,
      required super.companyEmails,
      required super.companyName,
      required super.state,
      required super.country,
      required super.city,
      required super.postalCode,
      required super.street});

  factory MerchantModel.fromJson(Map<String, dynamic> json) => MerchantModel(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        phones: List<String>.from(json["phones"].map((x) => x)),
        companyEmails: List<String>.from(json["company_emails"].map((x) => x)),
        companyName: json["company_name"],
        state: json["state"],
        country: json["country"],
        city: json["city"],
        postalCode: json["postal_code"],
        street: json["street"],
      );
}

class IngDataModel extends IngData {
  const IngDataModel(
      {required super.id,
      required super.firstName,
      required super.lastName,
      required super.street,
      required super.building,
      required super.floor,
      required super.apartment,
      required super.city,
      required super.state,
      required super.country,
      required super.email,
      required super.phoneNumber,
      required super.postalCode,
      required super.extraDescription,
      required super.shippingMethod,
      required super.orderId,
      required super.order});

  factory IngDataModel.fromJson(Map<String, dynamic> json) => IngDataModel(
        id: json["id"] ?? 0,
        firstName: json["first_name"],
        lastName: json["last_name"],
        street: json["street"],
        building: json["building"],
        floor: json["floor"],
        apartment: json["apartment"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        postalCode: json["postal_code"],
        extraDescription: json["extra_description"],
        shippingMethod:
            json["shipping_method"]??'',
        orderId: json["order_id"]??0,
        order: json["order"]??0,
      );
}

class PaymentKeyClaimsModel extends PaymentKeyClaims {
  const PaymentKeyClaimsModel(
      {required super.currency,
      required super.integrationId,
      required super.lockOrderWhenPaid,
      required super.pmkIp,
      required super.singlePaymentAttempt,
      required super.extra,
      required super.userId,
      required super.orderId,
      required super.exp,
      required super.amountCents,
      required super.billingData});

  factory PaymentKeyClaimsModel.fromJson(Map<String, dynamic> json) =>
      PaymentKeyClaimsModel(
        currency: json["currency"],
        integrationId: json["integration_id"],
        lockOrderWhenPaid: json["lock_order_when_paid"],
        pmkIp: json["pmk_ip"],
        singlePaymentAttempt: json["single_payment_attempt"],
        extra: ExtraClassModel.fromJson(json["extra"]),
        userId: json["user_id"],
        orderId: json["order_id"],
        exp: json["exp"],
        amountCents: json["amount_cents"],
        billingData: IngDataModel.fromJson(json["billing_data"]),
      );
}

class SourceDataModel extends SourceData {
  const SourceDataModel(
      {required super.pan, required super.subType, required super.type});

  factory SourceDataModel.fromJson(Map<String, dynamic> json) =>
      SourceDataModel(
        pan: json["pan"],
        subType: json["sub_type"],
        type: json["type"],
      );
}
