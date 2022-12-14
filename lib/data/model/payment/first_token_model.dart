import 'package:my_e_book/domain/entity/payment/first_token.dart';

class FirstTokenModel extends FirstToken {
  const FirstTokenModel({required super.token, required super.profile});
   factory FirstTokenModel.fromJson(Map<String, dynamic> json) => FirstTokenModel(
        token: json["token"],
        profile: ProfileModel.fromJson(json["profile"]),
      );
}

class ProfileModel extends Profile {
  const ProfileModel({
    required super.id,
    required super.user,
    required super.createdAt,
    required super.active,
    required super.profileType,
    required super.phones,
    required super.companyEmails,
    required super.companyName,
    required super.state,
    required super.country,
    required super.city,
    required super.postalCode,
    required super.street,
    required super.emailNotification,
    required super.isMobadra,
    required super.sector,
    required super.activationMethod,
    required super.signedUpThrough,
    required super.failedAttempts,
    required super.customExportColumns,
    required super.serverIp,
    required super.primaryPhoneNumber,
    required super.primaryPhoneVerified,
    required super.isTempPassword,
    required super.otpSentAt,
    required super.otpSentTo,
    required super.otpValidatedAt,
    required super.deliveryStatusCallback,
    required super.merchantStatus,
    required super.deactivatedByBank,
    required super.bankMerchantStatus,
    required super.allowTerminalOrderId,
    required super.allowEncryptionBypass,
    required super.suspicious,
    required super.bankStaffs,
    required super.bankReceivedDocuments,
    required super.bankMerchantDigitalStatus,
    required super.filledBusinessData,
    required super.dayStartTime,
    required super.withholdTransfers,
    required super.smsSenderName,
    required super.canBillDepositWithCard,
    required super.canTopupMerchants,
    required super.referralEligible,
    required super.paymobAppMerchant,
    required super.allowTransactionNotifications,
    required super.allowTransferNotifications,
    required super.sallefnyAmountWhole,
    required super.sallefnyFeesWhole,
    required super.salesOwner,
    required super.permissions,
    super.orderRetrievalEndpoint,
    super.deliveryUpdateEndpoint,
    super.logoUrl,
    super.username,
    super.awbBanner,
    super.emailBanner,
    super.identificationNumber,
    super.merchantExternalLink,
    super.nationalId,
    super.superAgent,
    super.walletLimitProfile,
    super.address,
    super.commercialRegistration,
    super.commercialRegistrationArea,
    super.distributorCode,
    super.distributorBranchCode,
    super.walletPhoneNumber,
    super.latitude,
    super.longitude,
    super.bankRejectionReason,
    super.bankDigitalRejectionReason,
    super.dayEndTime,
    super.withholdTransfersReason,
    super.withholdTransfersNotes,
    super.topupTransferId,
    super.settlementFrequency,
    super.dayOfTheWeek,
    super.dayOfTheMonth,
    super.paymobAppFirstLogin,
    super.paymobAppLastActivity,
    super.acqPartner,
    super.dom,
    super.bankRelated,
    super.bankDeactivationReason,
  });
  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        id: json["id"],
        user: UserModel.fromJson(json["user"]),
        createdAt: DateTime.parse(json["created_at"]),
        active: json["active"],
        profileType: json["profile_type"],
        phones: List<String>.from(json["phones"].map((x) => x)),
        companyEmails: List<String>.from(json["company_emails"].map((x) => x)),
        companyName: json["company_name"],
        state: json["state"],
        country: json["country"],
        city: json["city"],
        postalCode: json["postal_code"],
        street: json["street"],
        emailNotification: json["email_notification"],
        orderRetrievalEndpoint: json["order_retrieval_endpoint"],
        deliveryUpdateEndpoint: json["delivery_update_endpoint"],
        logoUrl: json["logo_url"],
        isMobadra: json["is_mobadra"],
        sector: json["sector"],
        activationMethod: json["activation_method"],
        signedUpThrough: json["signed_up_through"],
        failedAttempts: json["failed_attempts"],
        customExportColumns:
            List<dynamic>.from(json["custom_export_columns"].map((x) => x)),
        serverIp: List<dynamic>.from(json["server_IP"].map((x) => x)),
        username: json["username"],
        primaryPhoneNumber: json["primary_phone_number"],
        primaryPhoneVerified: json["primary_phone_verified"],
        isTempPassword: json["is_temp_password"],
        otpSentAt: DateTime.parse(json["otp_sent_at"]),
        otpSentTo: json["otp_sent_to"],
        otpValidatedAt: DateTime.parse(json["otp_validated_at"]),
        awbBanner: json["awb_banner"],
        emailBanner: json["email_banner"],
        identificationNumber: json["identification_number"],
        deliveryStatusCallback: json["delivery_status_callback"],
        merchantExternalLink: json["merchant_external_link"],
        merchantStatus: json["merchant_status"],
        deactivatedByBank: json["deactivated_by_bank"],
        bankDeactivationReason: json["bank_deactivation_reason"],
        bankMerchantStatus: json["bank_merchant_status"],
        nationalId: json["national_id"],
        superAgent: json["super_agent"],
        walletLimitProfile: json["wallet_limit_profile"],
        address: json["address"],
        commercialRegistration: json["commercial_registration"],
        commercialRegistrationArea: json["commercial_registration_area"],
        distributorCode: json["distributor_code"],
        distributorBranchCode: json["distributor_branch_code"],
        allowTerminalOrderId: json["allow_terminal_order_id"],
        allowEncryptionBypass: json["allow_encryption_bypass"],
        walletPhoneNumber: json["wallet_phone_number"],
        suspicious: json["suspicious"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        bankStaffs: BankStaffsModel.fromJson(json["bank_staffs"]),
        bankRejectionReason: json["bank_rejection_reason"],
        bankReceivedDocuments: json["bank_received_documents"],
        bankMerchantDigitalStatus: json["bank_merchant_digital_status"],
        bankDigitalRejectionReason: json["bank_digital_rejection_reason"],
        filledBusinessData: json["filled_business_data"],
        dayStartTime: json["day_start_time"],
        dayEndTime: json["day_end_time"],
        withholdTransfers: json["withhold_transfers"],
        smsSenderName: json["sms_sender_name"],
        withholdTransfersReason: json["withhold_transfers_reason"],
        withholdTransfersNotes: json["withhold_transfers_notes"],
        canBillDepositWithCard: json["can_bill_deposit_with_card"],
        canTopupMerchants: json["can_topup_merchants"],
        topupTransferId: json["topup_transfer_id"],
        referralEligible: json["referral_eligible"],
        paymobAppMerchant: json["paymob_app_merchant"],
        settlementFrequency: json["settlement_frequency"],
        dayOfTheWeek: json["day_of_the_week"],
        dayOfTheMonth: json["day_of_the_month"],
        allowTransactionNotifications: json["allow_transaction_notifications"],
        allowTransferNotifications: json["allow_transfer_notifications"],
        sallefnyAmountWhole: json["sallefny_amount_whole"],
        sallefnyFeesWhole: json["sallefny_fees_whole"],
        paymobAppFirstLogin: json["paymob_app_first_login"],
        paymobAppLastActivity: json["paymob_app_last_activity"],
        acqPartner: json["acq_partner"],
        salesOwner: json["sales_owner"],
        dom: json["dom"],
        bankRelated: json["bank_related"],
        permissions: List<dynamic>.from(json["permissions"].map((x) => x)),
      );
}

class BankStaffsModel extends BankStaffs {
  BankStaffsModel();
  factory BankStaffsModel.fromJson(Map<String, dynamic> json) =>
      BankStaffsModel();
}

class UserModel extends User {
  const UserModel(
      {required super.id,
      required super.username,
      required super.firstName,
      required super.lastName,
      required super.dateJoined,
      required super.email,
      required super.isActive,
      required super.isStaff,
      required super.isSuperuser,
      required super.groups,
      required super.userPermissions,
      super.lastLogin});
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        username: json["username"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        dateJoined: DateTime.parse(json["date_joined"]),
        email: json["email"],
        isActive: json["is_active"],
        isStaff: json["is_staff"],
        isSuperuser: json["is_superuser"],
        lastLogin: json["last_login"],
        groups: List<dynamic>.from(json["groups"].map((x) => x)),
        userPermissions: List<int>.from(json["user_permissions"].map((x) => x)),
      );
}
