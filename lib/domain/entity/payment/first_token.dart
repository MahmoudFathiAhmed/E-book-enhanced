// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class FirstToken extends Equatable {
  const FirstToken({
    required this.token,
    required this.profile,
  });

  final String token;
  final Profile profile;

  Map<String, dynamic> toJson() => {
        "token": token,
        "profile": profile.toJson(),
      };

  @override
  List<Object> get props => [token, profile];
}

class Profile extends Equatable {
  const Profile({
    required this.id,
    required this.user,
    required this.createdAt,
    required this.active,
    required this.profileType,
    required this.phones,
    required this.companyEmails,
    required this.companyName,
    required this.state,
    required this.country,
    required this.city,
    required this.postalCode,
    required this.street,
    required this.emailNotification,
    this.orderRetrievalEndpoint,
    this.deliveryUpdateEndpoint,
    this.logoUrl,
    required this.isMobadra,
    required this.sector,
    required this.activationMethod,
    required this.signedUpThrough,
    required this.failedAttempts,
    required this.customExportColumns,
    required this.serverIp,
    this.username,
    required this.primaryPhoneNumber,
    required this.primaryPhoneVerified,
    required this.isTempPassword,
    required this.otpSentAt,
    required this.otpSentTo,
    required this.otpValidatedAt,
    this.awbBanner,
    this.emailBanner,
    this.identificationNumber,
    required this.deliveryStatusCallback,
    this.merchantExternalLink,
    required this.merchantStatus,
    required this.deactivatedByBank,
    this.bankDeactivationReason,
    required this.bankMerchantStatus,
    this.nationalId,
    this.superAgent,
    this.walletLimitProfile,
    this.address,
    this.commercialRegistration,
    this.commercialRegistrationArea,
    this.distributorCode,
    this.distributorBranchCode,
    required this.allowTerminalOrderId,
    required this.allowEncryptionBypass,
    this.walletPhoneNumber,
    required this.suspicious,
    this.latitude,
    this.longitude,
    required this.bankStaffs,
    this.bankRejectionReason,
    required this.bankReceivedDocuments,
    required this.bankMerchantDigitalStatus,
    this.bankDigitalRejectionReason,
    required this.filledBusinessData,
    required this.dayStartTime,
    this.dayEndTime,
    required this.withholdTransfers,
    required this.smsSenderName,
    this.withholdTransfersReason,
    this.withholdTransfersNotes,
    required this.canBillDepositWithCard,
    required this.canTopupMerchants,
    this.topupTransferId,
    required this.referralEligible,
    required this.paymobAppMerchant,
    this.settlementFrequency,
    this.dayOfTheWeek,
    this.dayOfTheMonth,
    required this.allowTransactionNotifications,
    required this.allowTransferNotifications,
    required this.sallefnyAmountWhole,
    required this.sallefnyFeesWhole,
    this.paymobAppFirstLogin,
    this.paymobAppLastActivity,
    this.acqPartner,
    required this.salesOwner,
    this.dom,
    this.bankRelated,
    required this.permissions,
  });

  final int id;
  final User user;
  final DateTime createdAt;
  final bool active;
  final String profileType;
  final List<String> phones;
  final List<String> companyEmails;
  final String companyName;
  final String state;
  final String country;
  final String city;
  final String postalCode;
  final String street;
  final bool emailNotification;
  final dynamic orderRetrievalEndpoint;
  final dynamic deliveryUpdateEndpoint;
  final dynamic logoUrl;
  final bool isMobadra;
  final String sector;
  final int activationMethod;
  final int signedUpThrough;
  final int failedAttempts;
  final List<dynamic> customExportColumns;
  final List<dynamic> serverIp;
  final dynamic username;
  final String primaryPhoneNumber;
  final bool primaryPhoneVerified;
  final bool isTempPassword;
  final DateTime otpSentAt;
  final String otpSentTo;
  final DateTime otpValidatedAt;
  final dynamic awbBanner;
  final dynamic emailBanner;
  final dynamic identificationNumber;
  final String deliveryStatusCallback;
  final dynamic merchantExternalLink;
  final int merchantStatus;
  final bool deactivatedByBank;
  final dynamic bankDeactivationReason;
  final int bankMerchantStatus;
  final dynamic nationalId;
  final dynamic superAgent;
  final dynamic walletLimitProfile;
  final dynamic address;
  final dynamic commercialRegistration;
  final dynamic commercialRegistrationArea;
  final dynamic distributorCode;
  final dynamic distributorBranchCode;
  final bool allowTerminalOrderId;
  final bool allowEncryptionBypass;
  final dynamic walletPhoneNumber;
  final int suspicious;
  final dynamic latitude;
  final dynamic longitude;
  final BankStaffs bankStaffs;
  final dynamic bankRejectionReason;
  final bool bankReceivedDocuments;
  final int bankMerchantDigitalStatus;
  final dynamic bankDigitalRejectionReason;
  final bool filledBusinessData;
  final String dayStartTime;
  final dynamic dayEndTime;
  final bool withholdTransfers;
  final String smsSenderName;
  final dynamic withholdTransfersReason;
  final dynamic withholdTransfersNotes;
  final bool canBillDepositWithCard;
  final bool canTopupMerchants;
  final dynamic topupTransferId;
  final bool referralEligible;
  final bool paymobAppMerchant;
  final dynamic settlementFrequency;
  final dynamic dayOfTheWeek;
  final dynamic dayOfTheMonth;
  final bool allowTransactionNotifications;
  final bool allowTransferNotifications;
  final double sallefnyAmountWhole;
  final double sallefnyFeesWhole;
  final dynamic paymobAppFirstLogin;
  final dynamic paymobAppLastActivity;
  final dynamic acqPartner;
  final String salesOwner;
  final dynamic dom;
  final dynamic bankRelated;
  final List<dynamic> permissions;

  Map<String, dynamic> toJson() => {
        "id": id,
        "user": user.toJson(),
        "created_at": createdAt.toIso8601String(),
        "active": active,
        "profile_type": profileType,
        "phones": List<dynamic>.from(phones.map((x) => x)),
        "company_emails": List<dynamic>.from(companyEmails.map((x) => x)),
        "company_name": companyName,
        "state": state,
        "country": country,
        "city": city,
        "postal_code": postalCode,
        "street": street,
        "email_notification": emailNotification,
        "order_retrieval_endpoint": orderRetrievalEndpoint,
        "delivery_update_endpoint": deliveryUpdateEndpoint,
        "logo_url": logoUrl,
        "is_mobadra": isMobadra,
        "sector": sector,
        "activation_method": activationMethod,
        "signed_up_through": signedUpThrough,
        "failed_attempts": failedAttempts,
        "custom_export_columns":
            List<dynamic>.from(customExportColumns.map((x) => x)),
        "server_IP": List<dynamic>.from(serverIp.map((x) => x)),
        "username": username,
        "primary_phone_number": primaryPhoneNumber,
        "primary_phone_verified": primaryPhoneVerified,
        "is_temp_password": isTempPassword,
        "otp_sent_at": otpSentAt.toIso8601String(),
        "otp_sent_to": otpSentTo,
        "otp_validated_at": otpValidatedAt.toIso8601String(),
        "awb_banner": awbBanner,
        "email_banner": emailBanner,
        "identification_number": identificationNumber,
        "delivery_status_callback": deliveryStatusCallback,
        "merchant_external_link": merchantExternalLink,
        "merchant_status": merchantStatus,
        "deactivated_by_bank": deactivatedByBank,
        "bank_deactivation_reason": bankDeactivationReason,
        "bank_merchant_status": bankMerchantStatus,
        "national_id": nationalId,
        "super_agent": superAgent,
        "wallet_limit_profile": walletLimitProfile,
        "address": address,
        "commercial_registration": commercialRegistration,
        "commercial_registration_area": commercialRegistrationArea,
        "distributor_code": distributorCode,
        "distributor_branch_code": distributorBranchCode,
        "allow_terminal_order_id": allowTerminalOrderId,
        "allow_encryption_bypass": allowEncryptionBypass,
        "wallet_phone_number": walletPhoneNumber,
        "suspicious": suspicious,
        "latitude": latitude,
        "longitude": longitude,
        "bank_staffs": bankStaffs.toJson(),
        "bank_rejection_reason": bankRejectionReason,
        "bank_received_documents": bankReceivedDocuments,
        "bank_merchant_digital_status": bankMerchantDigitalStatus,
        "bank_digital_rejection_reason": bankDigitalRejectionReason,
        "filled_business_data": filledBusinessData,
        "day_start_time": dayStartTime,
        "day_end_time": dayEndTime,
        "withhold_transfers": withholdTransfers,
        "sms_sender_name": smsSenderName,
        "withhold_transfers_reason": withholdTransfersReason,
        "withhold_transfers_notes": withholdTransfersNotes,
        "can_bill_deposit_with_card": canBillDepositWithCard,
        "can_topup_merchants": canTopupMerchants,
        "topup_transfer_id": topupTransferId,
        "referral_eligible": referralEligible,
        "paymob_app_merchant": paymobAppMerchant,
        "settlement_frequency": settlementFrequency,
        "day_of_the_week": dayOfTheWeek,
        "day_of_the_month": dayOfTheMonth,
        "allow_transaction_notifications": allowTransactionNotifications,
        "allow_transfer_notifications": allowTransferNotifications,
        "sallefny_amount_whole": sallefnyAmountWhole,
        "sallefny_fees_whole": sallefnyFeesWhole,
        "paymob_app_first_login": paymobAppFirstLogin,
        "paymob_app_last_activity": paymobAppLastActivity,
        "acq_partner": acqPartner,
        "sales_owner": salesOwner,
        "dom": dom,
        "bank_related": bankRelated,
        "permissions": List<dynamic>.from(permissions.map((x) => x)),
      };

  @override
  List<Object> get props {
    return [
      id,
      user,
      createdAt,
      active,
      profileType,
      phones,
      companyEmails,
      companyName,
      state,
      country,
      city,
      postalCode,
      street,
      emailNotification,
      orderRetrievalEndpoint,
      deliveryUpdateEndpoint,
      logoUrl,
      isMobadra,
      sector,
      activationMethod,
      signedUpThrough,
      failedAttempts,
      customExportColumns,
      serverIp,
      username,
      primaryPhoneNumber,
      primaryPhoneVerified,
      isTempPassword,
      otpSentAt,
      otpSentTo,
      otpValidatedAt,
      awbBanner,
      emailBanner,
      identificationNumber,
      deliveryStatusCallback,
      merchantExternalLink,
      merchantStatus,
      deactivatedByBank,
      bankDeactivationReason,
      bankMerchantStatus,
      nationalId,
      superAgent,
      walletLimitProfile,
      address,
      commercialRegistration,
      commercialRegistrationArea,
      distributorCode,
      distributorBranchCode,
      allowTerminalOrderId,
      allowEncryptionBypass,
      walletPhoneNumber,
      suspicious,
      latitude,
      longitude,
      bankStaffs,
      bankRejectionReason,
      bankReceivedDocuments,
      bankMerchantDigitalStatus,
      bankDigitalRejectionReason,
      filledBusinessData,
      dayStartTime,
      dayEndTime,
      withholdTransfers,
      smsSenderName,
      withholdTransfersReason,
      withholdTransfersNotes,
      canBillDepositWithCard,
      canTopupMerchants,
      topupTransferId,
      referralEligible,
      paymobAppMerchant,
      settlementFrequency,
      dayOfTheWeek,
      dayOfTheMonth,
      allowTransactionNotifications,
      allowTransferNotifications,
      sallefnyAmountWhole,
      sallefnyFeesWhole,
      paymobAppFirstLogin,
      paymobAppLastActivity,
      acqPartner,
      salesOwner,
      dom,
      bankRelated,
      permissions,
    ];
  }
}

class BankStaffs {
  BankStaffs();

  Map<String, dynamic> toJson() => {};
}

class User extends Equatable {
  const User({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.dateJoined,
    required this.email,
    required this.isActive,
    required this.isStaff,
    required this.isSuperuser,
    this.lastLogin,
    required this.groups,
    required this.userPermissions,
  });

  final int id;
  final String username;
  final String firstName;
  final String lastName;
  final DateTime dateJoined;
  final String email;
  final bool isActive;
  final bool isStaff;
  final bool isSuperuser;
  final dynamic lastLogin;
  final List<dynamic> groups;
  final List<int> userPermissions;

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "first_name": firstName,
        "last_name": lastName,
        "date_joined": dateJoined.toIso8601String(),
        "email": email,
        "is_active": isActive,
        "is_staff": isStaff,
        "is_superuser": isSuperuser,
        "last_login": lastLogin,
        "groups": List<dynamic>.from(groups.map((x) => x)),
        "user_permissions": List<dynamic>.from(userPermissions.map((x) => x)),
      };

  @override
  List<Object?> get props => [
        id,
        username,
        firstName,
        lastName,
        dateJoined,
        email,
        isActive,
        isStaff,
        isSuperuser,
        lastLogin,
        groups,
        userPermissions,
      ];
}
