class LoginResponse {
  LoginResponse({
    required this.userInfo,
    required this.defaultCompany,
    required this.tokenInfo,
    this.errorCode,
  });
  late final UserInfo userInfo;
  late final DefaultCompany defaultCompany;
  late final String tokenInfo;
  late final String? errorCode;

  LoginResponse.fromJson(Map<String, dynamic> json) {
    userInfo = UserInfo.fromJson(json['userInfo']);
    errorCode = json['errorCode'];
    defaultCompany = DefaultCompany.fromJson(json['defaultCompany']);
    tokenInfo = json['tokenInfo'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['userInfo'] = userInfo.toJson();
    _data['defaultCompany'] = defaultCompany.toJson();
    _data['tokenInfo'] = tokenInfo;
    return _data;
  }
}

class UserInfo {
  UserInfo({
    required this.userId,
    required this.version,
    required this.relationshipId,
    required this.locationId,
    required this.subscriptionId,
    required this.email,
    required this.password,
    this.newPassword,
    required this.toRevoke,
    this.homeCountry,
    required this.notifyUser,
    required this.status,
    required this.statusColor,
    this.lastLoginDate,
    required this.dateCreated,
    this.dateUpdated,
    required this.createdByUserId,
    required this.updatedByUserId,
    required this.userType,
    required this.isFromEmailVerified,
    required this.isAccountHolder,
    this.salutation,
    required this.firstName,
    this.middleName,
    required this.lastName,
    this.workPhone,
    this.cellPhone,
    this.faxNumber,
    required this.relationshipEmployeeId,
    required this.isB2CCustomer,
    required this.customerId,
    required this.boUserPermissionList,
  });
  late final int userId;
  late final int version;
  late final int relationshipId;
  late final int locationId;
  late final int subscriptionId;
  late final String email;
  late final String password;
  late final Null newPassword;
  late final bool toRevoke;
  late final Null homeCountry;
  late final int notifyUser;
  late final String status;
  late final String statusColor;
  late final Null lastLoginDate;
  late final String dateCreated;
  late final Null dateUpdated;
  late final int createdByUserId;
  late final int updatedByUserId;
  late final String userType;
  late final int isFromEmailVerified;
  late final String isAccountHolder;
  late final Null salutation;
  late final String firstName;
  late final Null middleName;
  late final String lastName;
  late final Null workPhone;
  late final Null cellPhone;
  late final Null faxNumber;
  late final int relationshipEmployeeId;
  late final int isB2CCustomer;
  late final int customerId;
  late final List<BoUserPermissionList> boUserPermissionList;

  UserInfo.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    version = json['version'];
    relationshipId = json['relationshipId'];
    locationId = json['locationId'];
    subscriptionId = json['subscriptionId'];
    email = json['email'];
    password = json['password'];
    newPassword = null;
    toRevoke = json['toRevoke'];
    homeCountry = null;
    notifyUser = json['notifyUser'];
    status = json['status'];
    statusColor = json['statusColor'];
    lastLoginDate = null;
    dateCreated = json['dateCreated'];
    dateUpdated = null;
    createdByUserId = json['createdByUserId'];
    updatedByUserId = json['updatedByUserId'];
    userType = json['userType'];
    isFromEmailVerified = json['isFromEmailVerified'];
    isAccountHolder = json['isAccountHolder'];
    salutation = null;
    firstName = json['firstName'];
    middleName = null;
    lastName = json['lastName'];
    workPhone = null;
    cellPhone = null;
    faxNumber = null;
    relationshipEmployeeId = json['relationshipEmployeeId'];
    isB2CCustomer = json['isB2CCustomer'];
    customerId = json['customerId'];
    boUserPermissionList = List.from(json['boUserPermissionList'])
        .map((e) => BoUserPermissionList.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['userId'] = userId;
    _data['version'] = version;
    _data['relationshipId'] = relationshipId;
    _data['locationId'] = locationId;
    _data['subscriptionId'] = subscriptionId;
    _data['email'] = email;
    _data['password'] = password;
    _data['newPassword'] = newPassword;
    _data['toRevoke'] = toRevoke;
    _data['homeCountry'] = homeCountry;
    _data['notifyUser'] = notifyUser;
    _data['status'] = status;
    _data['statusColor'] = statusColor;
    _data['lastLoginDate'] = lastLoginDate;
    _data['dateCreated'] = dateCreated;
    _data['dateUpdated'] = dateUpdated;
    _data['createdByUserId'] = createdByUserId;
    _data['updatedByUserId'] = updatedByUserId;
    _data['userType'] = userType;
    _data['isFromEmailVerified'] = isFromEmailVerified;
    _data['isAccountHolder'] = isAccountHolder;
    _data['salutation'] = salutation;
    _data['firstName'] = firstName;
    _data['middleName'] = middleName;
    _data['lastName'] = lastName;
    _data['workPhone'] = workPhone;
    _data['cellPhone'] = cellPhone;
    _data['faxNumber'] = faxNumber;
    _data['relationshipEmployeeId'] = relationshipEmployeeId;
    _data['isB2CCustomer'] = isB2CCustomer;
    _data['customerId'] = customerId;
    _data['boUserPermissionList'] =
        boUserPermissionList.map((e) => e.toJson()).toList();
    return _data;
  }
}

class BoUserPermissionList {
  BoUserPermissionList({
    required this.userPermissionId,
    required this.version,
    this.secondoryPermissionJson,
    this.permissionJson,
    required this.clientUserAccountId,
    required this.relationshipId,
    this.dateCreated,
    required this.createdByUserId,
    this.dateUpdated,
    required this.updatedByUserId,
    required this.boUserPrimaryPermission,
    required this.alpideUserPlanPermission,
  });
  late final int userPermissionId;
  late final int version;
  late final Null secondoryPermissionJson;
  late final Null permissionJson;
  late final int clientUserAccountId;
  late final int relationshipId;
  late final Null dateCreated;
  late final int createdByUserId;
  late final Null dateUpdated;
  late final int updatedByUserId;
  late final List<BoUserPrimaryPermission> boUserPrimaryPermission;
  late final List<AlpideUserPlanPermission> alpideUserPlanPermission;

  BoUserPermissionList.fromJson(Map<String, dynamic> json) {
    userPermissionId = json['userPermissionId'];
    version = json['version'];
    secondoryPermissionJson = null;
    permissionJson = null;
    clientUserAccountId = json['clientUserAccountId'];
    relationshipId = json['relationshipId'];
    dateCreated = null;
    createdByUserId = json['createdByUserId'];
    dateUpdated = null;
    updatedByUserId = json['updatedByUserId'];
    boUserPrimaryPermission = List.from(json['boUserPrimaryPermission'])
        .map((e) => BoUserPrimaryPermission.fromJson(e))
        .toList();
    alpideUserPlanPermission = List.from(json['alpideUserPlanPermission'])
        .map((e) => AlpideUserPlanPermission.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['userPermissionId'] = userPermissionId;
    _data['version'] = version;
    _data['secondoryPermissionJson'] = secondoryPermissionJson;
    _data['permissionJson'] = permissionJson;
    _data['clientUserAccountId'] = clientUserAccountId;
    _data['relationshipId'] = relationshipId;
    _data['dateCreated'] = dateCreated;
    _data['createdByUserId'] = createdByUserId;
    _data['dateUpdated'] = dateUpdated;
    _data['updatedByUserId'] = updatedByUserId;
    _data['boUserPrimaryPermission'] =
        boUserPrimaryPermission.map((e) => e.toJson()).toList();
    _data['alpideUserPlanPermission'] =
        alpideUserPlanPermission.map((e) => e.toJson()).toList();
    return _data;
  }
}

class BoUserPrimaryPermission {
  BoUserPrimaryPermission({
    required this.userPrimaryPermissionId,
    required this.relationshipId,
    required this.version,
    required this.moduleCode,
    required this.permisssionValue,
    required this.dateCreated,
    this.isDelete,
    this.isCreate,
    this.isUpdate,
    this.isRead,
  });
  late final int userPrimaryPermissionId;
  late final int relationshipId;
  late final int version;
  late final String moduleCode;
  late final int permisssionValue;
  late final String dateCreated;
  late final Null isDelete;
  late final Null isCreate;
  late final Null isUpdate;
  late final Null isRead;

  BoUserPrimaryPermission.fromJson(Map<String, dynamic> json) {
    userPrimaryPermissionId = json['userPrimaryPermissionId'];
    relationshipId = json['relationshipId'];
    version = json['version'];
    moduleCode = json['moduleCode'];
    permisssionValue = json['permisssionValue'];
    dateCreated = json['dateCreated'];
    isDelete = null;
    isCreate = null;
    isUpdate = null;
    isRead = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['userPrimaryPermissionId'] = userPrimaryPermissionId;
    _data['relationshipId'] = relationshipId;
    _data['version'] = version;
    _data['moduleCode'] = moduleCode;
    _data['permisssionValue'] = permisssionValue;
    _data['dateCreated'] = dateCreated;
    _data['isDelete'] = isDelete;
    _data['isCreate'] = isCreate;
    _data['isUpdate'] = isUpdate;
    _data['isRead'] = isRead;
    return _data;
  }
}

class AlpideUserPlanPermission {
  AlpideUserPlanPermission({
    required this.alpideUserPlanPermissionId,
    this.planId,
    required this.relationshipId,
    required this.moduleCode,
    required this.permisssionValue,
    required this.version,
    this.isDelete,
    this.isCreate,
    this.isUpdate,
    this.isRead,
  });
  late final int alpideUserPlanPermissionId;
  late final Null planId;
  late final int relationshipId;
  late final String moduleCode;
  late final int permisssionValue;
  late final int version;
  late final Null isDelete;
  late final Null isCreate;
  late final Null isUpdate;
  late final Null isRead;

  AlpideUserPlanPermission.fromJson(Map<String, dynamic> json) {
    alpideUserPlanPermissionId = json['alpideUserPlanPermissionId'];
    planId = null;
    relationshipId = json['relationshipId'];
    moduleCode = json['moduleCode'];
    permisssionValue = json['permisssionValue'];
    version = json['version'];
    isDelete = null;
    isCreate = null;
    isUpdate = null;
    isRead = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['alpideUserPlanPermissionId'] = alpideUserPlanPermissionId;
    _data['planId'] = planId;
    _data['relationshipId'] = relationshipId;
    _data['moduleCode'] = moduleCode;
    _data['permisssionValue'] = permisssionValue;
    _data['version'] = version;
    _data['isDelete'] = isDelete;
    _data['isCreate'] = isCreate;
    _data['isUpdate'] = isUpdate;
    _data['isRead'] = isRead;
    return _data;
  }
}

class DefaultCompany {
  DefaultCompany({
    required this.relationshipId,
    required this.version,
    this.email,
    required this.defaultPaymentGatewayId,
    this.defaultPaymentGatewayName,
    required this.accountActivationToken,
    required this.storeName,
    this.onlineThemes,
    required this.logoAwsObjectKey,
    required this.isUpdateInventoryOnSalesInvoice,
    required this.isUpdateInventoryOnPurchaseInvoice,
    required this.currencyCode,
    required this.currencyIcon,
    required this.countryName,
    required this.countryId,
    this.ebayRefreshToken,
    required this.isEbayPermission,
    required this.fyStartDate,
    required this.fyEndDate,
    this.gstNumber,
    this.panNumber,
    this.vatNumber,
    this.phoneNumber,
    required this.timezone,
    this.faxNumber,
    this.website,
    required this.decimalDigitsLenth,
    required this.isActive,
    required this.industryId,
    required this.isToShowFlag,
    this.isSubscriptionValid,
    required this.isCompanySetupRequired,
    this.howDidYouHear,
    this.accoutingtype,
    this.financialyear,
    this.companySize,
    this.avgMonthlySOorInvoices,
    this.approxInventoryItems,
    required this.accountingType,
    required this.hasAccountActivated,
    required this.dateCreated,
    required this.accountActivationDate,
    this.dateUpdated,
    required this.createdByUserId,
    required this.updatedByUserId,
    required this.paymentTermId,
    required this.isFreeTrial,
    required this.freeDays,
    required this.planModule,
    required this.planId,
    required this.countryCallingCode,
    this.costCenter,
    this.messageForUI,
    this.isDesktop,
    required this.boLocationList,
    required this.costCenterList,
    required this.defaultCoaLedgerAccountsList,
    required this.bankDetails,
    required this.relationshipEmployees,
    required this.relationshipEmployeesList,
  });
  late final int relationshipId;
  late final int version;
  late final Null email;
  late final int defaultPaymentGatewayId;
  late final Null defaultPaymentGatewayName;
  late final String accountActivationToken;
  late final String storeName;
  late final Null onlineThemes;
  late final String logoAwsObjectKey;
  late final int isUpdateInventoryOnSalesInvoice;
  late final int isUpdateInventoryOnPurchaseInvoice;
  late final String currencyCode;
  late final String currencyIcon;
  late final String countryName;
  late final int countryId;
  late final Null ebayRefreshToken;
  late final int isEbayPermission;
  late final String fyStartDate;
  late final String fyEndDate;
  late final Null gstNumber;
  late final Null panNumber;
  late final Null vatNumber;
  late final Null phoneNumber;
  late final String timezone;
  late final Null faxNumber;
  late final Null website;
  late final int decimalDigitsLenth;
  late final int isActive;
  late final int industryId;
  late final int isToShowFlag;
  late final Null isSubscriptionValid;
  late final int isCompanySetupRequired;
  late final Null howDidYouHear;
  late final Null accoutingtype;
  late final Null financialyear;
  late final Null companySize;
  late final Null avgMonthlySOorInvoices;
  late final Null approxInventoryItems;
  late final String accountingType;
  late final int hasAccountActivated;
  late final String dateCreated;
  late final String accountActivationDate;
  late final Null dateUpdated;
  late final int createdByUserId;
  late final int updatedByUserId;
  late final int paymentTermId;
  late final int isFreeTrial;
  late final int freeDays;
  late final String planModule;
  late final int planId;
  late final int countryCallingCode;
  late final Null costCenter;
  late final Null messageForUI;
  late final Null isDesktop;
  late final List<BoLocationList> boLocationList;
  late final List<dynamic> costCenterList;
  late final List<DefaultCoaLedgerAccountsList> defaultCoaLedgerAccountsList;
  late final List<dynamic> bankDetails;
  late final RelationshipEmployees relationshipEmployees;
  late final List<dynamic> relationshipEmployeesList;

  DefaultCompany.fromJson(Map<String, dynamic> json) {
    relationshipId = json['relationshipId'];
    version = json['version'];
    email = null;
    defaultPaymentGatewayId = json['defaultPaymentGatewayId'];
    defaultPaymentGatewayName = null;
    accountActivationToken = json['accountActivationToken'];
    storeName = json['storeName'];
    onlineThemes = null;
    logoAwsObjectKey = json['logoAwsObjectKey'];
    isUpdateInventoryOnSalesInvoice = json['isUpdateInventoryOnSalesInvoice'];
    isUpdateInventoryOnPurchaseInvoice =
        json['isUpdateInventoryOnPurchaseInvoice'];
    currencyCode = json['currencyCode'];
    currencyIcon = json['currencyIcon'];
    countryName = json['countryName'];
    countryId = json['countryId'];
    ebayRefreshToken = null;
    isEbayPermission = json['isEbayPermission'];
    fyStartDate = json['fyStartDate'];
    fyEndDate = json['fyEndDate'];
    gstNumber = null;
    panNumber = null;
    vatNumber = null;
    phoneNumber = null;
    timezone = json['timezone'];
    faxNumber = null;
    website = null;
    decimalDigitsLenth = json['decimalDigitsLenth'];
    isActive = json['isActive'];
    industryId = json['industryId'];
    isToShowFlag = json['isToShowFlag'];
    isSubscriptionValid = null;
    isCompanySetupRequired = json['isCompanySetupRequired'];
    howDidYouHear = null;
    accoutingtype = null;
    financialyear = null;
    companySize = null;
    avgMonthlySOorInvoices = null;
    approxInventoryItems = null;
    accountingType = json['accountingType'];
    hasAccountActivated = json['hasAccountActivated'];
    dateCreated = json['dateCreated'];
    accountActivationDate = json['accountActivationDate'];
    dateUpdated = null;
    createdByUserId = json['createdByUserId'];
    updatedByUserId = json['updatedByUserId'];
    paymentTermId = json['paymentTermId'];
    isFreeTrial = json['isFreeTrial'];
    freeDays = json['freeDays'];
    planModule = json['planModule'];
    planId = json['planId'];
    countryCallingCode = json['countryCallingCode'];
    costCenter = null;
    messageForUI = null;
    isDesktop = null;
    boLocationList = List.from(json['boLocationList'])
        .map((e) => BoLocationList.fromJson(e))
        .toList();
    costCenterList = List.castFrom<dynamic, dynamic>(json['costCenterList']);
    defaultCoaLedgerAccountsList =
        List.from(json['defaultCoaLedgerAccountsList'])
            .map((e) => DefaultCoaLedgerAccountsList.fromJson(e))
            .toList();
    bankDetails = List.castFrom<dynamic, dynamic>(json['bankDetails']);
    relationshipEmployees =
        RelationshipEmployees.fromJson(json['relationshipEmployees']);
    relationshipEmployeesList =
        List.castFrom<dynamic, dynamic>(json['relationshipEmployeesList']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['relationshipId'] = relationshipId;
    _data['version'] = version;
    _data['email'] = email;
    _data['defaultPaymentGatewayId'] = defaultPaymentGatewayId;
    _data['defaultPaymentGatewayName'] = defaultPaymentGatewayName;
    _data['accountActivationToken'] = accountActivationToken;
    _data['storeName'] = storeName;
    _data['onlineThemes'] = onlineThemes;
    _data['logoAwsObjectKey'] = logoAwsObjectKey;
    _data['isUpdateInventoryOnSalesInvoice'] = isUpdateInventoryOnSalesInvoice;
    _data['isUpdateInventoryOnPurchaseInvoice'] =
        isUpdateInventoryOnPurchaseInvoice;
    _data['currencyCode'] = currencyCode;
    _data['currencyIcon'] = currencyIcon;
    _data['countryName'] = countryName;
    _data['countryId'] = countryId;
    _data['ebayRefreshToken'] = ebayRefreshToken;
    _data['isEbayPermission'] = isEbayPermission;
    _data['fyStartDate'] = fyStartDate;
    _data['fyEndDate'] = fyEndDate;
    _data['gstNumber'] = gstNumber;
    _data['panNumber'] = panNumber;
    _data['vatNumber'] = vatNumber;
    _data['phoneNumber'] = phoneNumber;
    _data['timezone'] = timezone;
    _data['faxNumber'] = faxNumber;
    _data['website'] = website;
    _data['decimalDigitsLenth'] = decimalDigitsLenth;
    _data['isActive'] = isActive;
    _data['industryId'] = industryId;
    _data['isToShowFlag'] = isToShowFlag;
    _data['isSubscriptionValid'] = isSubscriptionValid;
    _data['isCompanySetupRequired'] = isCompanySetupRequired;
    _data['howDidYouHear'] = howDidYouHear;
    _data['accoutingtype'] = accoutingtype;
    _data['financialyear'] = financialyear;
    _data['companySize'] = companySize;
    _data['avgMonthlySOorInvoices'] = avgMonthlySOorInvoices;
    _data['approxInventoryItems'] = approxInventoryItems;
    _data['accountingType'] = accountingType;
    _data['hasAccountActivated'] = hasAccountActivated;
    _data['dateCreated'] = dateCreated;
    _data['accountActivationDate'] = accountActivationDate;
    _data['dateUpdated'] = dateUpdated;
    _data['createdByUserId'] = createdByUserId;
    _data['updatedByUserId'] = updatedByUserId;
    _data['paymentTermId'] = paymentTermId;
    _data['isFreeTrial'] = isFreeTrial;
    _data['freeDays'] = freeDays;
    _data['planModule'] = planModule;
    _data['planId'] = planId;
    _data['countryCallingCode'] = countryCallingCode;
    _data['costCenter'] = costCenter;
    _data['messageForUI'] = messageForUI;
    _data['isDesktop'] = isDesktop;
    _data['boLocationList'] = boLocationList.map((e) => e.toJson()).toList();
    _data['costCenterList'] = costCenterList;
    _data['defaultCoaLedgerAccountsList'] =
        defaultCoaLedgerAccountsList.map((e) => e.toJson()).toList();
    _data['bankDetails'] = bankDetails;
    _data['relationshipEmployees'] = relationshipEmployees.toJson();
    _data['relationshipEmployeesList'] = relationshipEmployeesList;
    return _data;
  }
}

class BoLocationList {
  BoLocationList({
    required this.locationId,
    required this.version,
    this.locationName,
    required this.cityName,
    required this.streetAddress1,
    required this.streetAddress2,
    required this.stateName,
    required this.customerId,
    required this.supplierId,
    required this.crmTargetId,
    required this.crmLeadId,
    required this.zipCode,
    required this.countryId,
    required this.warehouseMasterId,
    required this.countryName,
    required this.relationshipId,
    required this.isDefault,
    required this.dateCreated,
    this.dateUpdated,
    this.createdBy,
    this.updatedBy,
    required this.locationType,
    this.gstStateCode,
    required this.dateCreatedForUI,
    this.dateUpdatedForUI,
  });
  late final int locationId;
  late final int version;
  late final Null locationName;
  late final String cityName;
  late final String streetAddress1;
  late final String streetAddress2;
  late final String stateName;
  late final int customerId;
  late final int supplierId;
  late final int crmTargetId;
  late final int crmLeadId;
  late final String zipCode;
  late final int countryId;
  late final int warehouseMasterId;
  late final String countryName;
  late final int relationshipId;
  late final int isDefault;
  late final String dateCreated;
  late final Null dateUpdated;
  late final Null createdBy;
  late final Null updatedBy;
  late final String locationType;
  late final Null gstStateCode;
  late final int dateCreatedForUI;
  late final Null dateUpdatedForUI;

  BoLocationList.fromJson(Map<String, dynamic> json) {
    locationId = json['locationId'];
    version = json['version'];
    locationName = null;
    cityName = json['cityName'];
    streetAddress1 = json['streetAddress1'];
    streetAddress2 = json['streetAddress2'];
    stateName = json['stateName'];
    customerId = json['customerId'];
    supplierId = json['supplierId'];
    crmTargetId = json['crmTargetId'];
    crmLeadId = json['crmLeadId'];
    zipCode = json['zipCode'];
    countryId = json['countryId'];
    warehouseMasterId = json['warehouseMasterId'];
    countryName = json['countryName'];
    relationshipId = json['relationshipId'];
    isDefault = json['isDefault'];
    dateCreated = json['dateCreated'];
    dateUpdated = null;
    createdBy = null;
    updatedBy = null;
    locationType = json['locationType'];
    gstStateCode = null;
    dateCreatedForUI = json['dateCreatedForUI'];
    dateUpdatedForUI = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['locationId'] = locationId;
    _data['version'] = version;
    _data['locationName'] = locationName;
    _data['cityName'] = cityName;
    _data['streetAddress1'] = streetAddress1;
    _data['streetAddress2'] = streetAddress2;
    _data['stateName'] = stateName;
    _data['customerId'] = customerId;
    _data['supplierId'] = supplierId;
    _data['crmTargetId'] = crmTargetId;
    _data['crmLeadId'] = crmLeadId;
    _data['zipCode'] = zipCode;
    _data['countryId'] = countryId;
    _data['warehouseMasterId'] = warehouseMasterId;
    _data['countryName'] = countryName;
    _data['relationshipId'] = relationshipId;
    _data['isDefault'] = isDefault;
    _data['dateCreated'] = dateCreated;
    _data['dateUpdated'] = dateUpdated;
    _data['createdBy'] = createdBy;
    _data['updatedBy'] = updatedBy;
    _data['locationType'] = locationType;
    _data['gstStateCode'] = gstStateCode;
    _data['dateCreatedForUI'] = dateCreatedForUI;
    _data['dateUpdatedForUI'] = dateUpdatedForUI;
    return _data;
  }
}

class DefaultCoaLedgerAccountsList {
  DefaultCoaLedgerAccountsList({
    required this.clientDefaultCoaLedgerAccountId,
    required this.version,
    required this.txType,
    required this.ledgerAccountId,
    required this.ledgerAccountGroupId,
    required this.coaCategoryId,
    required this.coaCategoryGroupId,
    required this.relationshipId,
    this.dateCreated,
    this.dateUpdated,
    required this.createdByUserId,
    required this.updatedByUserId,
  });
  late final int clientDefaultCoaLedgerAccountId;
  late final int version;
  late final String txType;
  late final int ledgerAccountId;
  late final int ledgerAccountGroupId;
  late final int coaCategoryId;
  late final int coaCategoryGroupId;
  late final int relationshipId;
  late final Null dateCreated;
  late final Null dateUpdated;
  late final int createdByUserId;
  late final int updatedByUserId;

  DefaultCoaLedgerAccountsList.fromJson(Map<String, dynamic> json) {
    clientDefaultCoaLedgerAccountId = json['clientDefaultCoaLedgerAccountId'];
    version = json['version'];
    txType = json['txType'];
    ledgerAccountId = json['ledgerAccountId'];
    ledgerAccountGroupId = json['ledgerAccountGroupId'];
    coaCategoryId = json['coaCategoryId'];
    coaCategoryGroupId = json['coaCategoryGroupId'];
    relationshipId = json['relationshipId'];
    dateCreated = null;
    dateUpdated = null;
    createdByUserId = json['createdByUserId'];
    updatedByUserId = json['updatedByUserId'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['clientDefaultCoaLedgerAccountId'] = clientDefaultCoaLedgerAccountId;
    _data['version'] = version;
    _data['txType'] = txType;
    _data['ledgerAccountId'] = ledgerAccountId;
    _data['ledgerAccountGroupId'] = ledgerAccountGroupId;
    _data['coaCategoryId'] = coaCategoryId;
    _data['coaCategoryGroupId'] = coaCategoryGroupId;
    _data['relationshipId'] = relationshipId;
    _data['dateCreated'] = dateCreated;
    _data['dateUpdated'] = dateUpdated;
    _data['createdByUserId'] = createdByUserId;
    _data['updatedByUserId'] = updatedByUserId;
    return _data;
  }
}

class RelationshipEmployees {
  RelationshipEmployees({
    required this.relationshipEmployeeId,
    required this.version,
    required this.firstName,
    this.middleName,
    required this.lastName,
    required this.jobTitleId,
    this.jobTitleName,
    required this.relationshipId,
    this.departmentName,
    required this.departmentId,
    this.managerName,
    required this.managerId,
    required this.hierarchyName,
    required this.hierarchyLevel,
    required this.hierarchyCode,
    required this.hierarchyId,
    required this.isAccountHolder,
    required this.hasSoftwareAccess,
    this.cellNumber,
    this.workPhone,
    this.salutationName,
    this.preferCallName,
    this.faxNumber,
    required this.emailAddress,
    this.cellPhone,
    this.dateCreated,
    required this.fullName,
  });
  late final int relationshipEmployeeId;
  late final int version;
  late final String firstName;
  late final Null middleName;
  late final String lastName;
  late final int jobTitleId;
  late final Null jobTitleName;
  late final int relationshipId;
  late final Null departmentName;
  late final int departmentId;
  late final Null managerName;
  late final int managerId;
  late final String hierarchyName;
  late final String hierarchyLevel;
  late final String hierarchyCode;
  late final int hierarchyId;
  late final int isAccountHolder;
  late final int hasSoftwareAccess;
  late final Null cellNumber;
  late final Null workPhone;
  late final Null salutationName;
  late final Null preferCallName;
  late final Null faxNumber;
  late final String emailAddress;
  late final Null cellPhone;
  late final Null dateCreated;
  late final String fullName;

  RelationshipEmployees.fromJson(Map<String, dynamic> json) {
    relationshipEmployeeId = json['relationshipEmployeeId'];
    version = json['version'];
    firstName = json['firstName'];
    middleName = null;
    lastName = json['lastName'];
    jobTitleId = json['jobTitleId'];
    jobTitleName = null;
    relationshipId = json['relationshipId'];
    departmentName = null;
    departmentId = json['departmentId'];
    managerName = null;
    managerId = json['managerId'];
    hierarchyName = json['hierarchyName'];
    hierarchyLevel = json['hierarchyLevel'];
    hierarchyCode = json['hierarchyCode'];
    hierarchyId = json['hierarchyId'];
    isAccountHolder = json['isAccountHolder'];
    hasSoftwareAccess = json['hasSoftwareAccess'];
    cellNumber = null;
    workPhone = null;
    salutationName = null;
    preferCallName = null;
    faxNumber = null;
    emailAddress = json['emailAddress'];
    cellPhone = null;
    dateCreated = null;
    fullName = json['fullName'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['relationshipEmployeeId'] = relationshipEmployeeId;
    _data['version'] = version;
    _data['firstName'] = firstName;
    _data['middleName'] = middleName;
    _data['lastName'] = lastName;
    _data['jobTitleId'] = jobTitleId;
    _data['jobTitleName'] = jobTitleName;
    _data['relationshipId'] = relationshipId;
    _data['departmentName'] = departmentName;
    _data['departmentId'] = departmentId;
    _data['managerName'] = managerName;
    _data['managerId'] = managerId;
    _data['hierarchyName'] = hierarchyName;
    _data['hierarchyLevel'] = hierarchyLevel;
    _data['hierarchyCode'] = hierarchyCode;
    _data['hierarchyId'] = hierarchyId;
    _data['isAccountHolder'] = isAccountHolder;
    _data['hasSoftwareAccess'] = hasSoftwareAccess;
    _data['cellNumber'] = cellNumber;
    _data['workPhone'] = workPhone;
    _data['salutationName'] = salutationName;
    _data['preferCallName'] = preferCallName;
    _data['faxNumber'] = faxNumber;
    _data['emailAddress'] = emailAddress;
    _data['cellPhone'] = cellPhone;
    _data['dateCreated'] = dateCreated;
    _data['fullName'] = fullName;
    return _data;
  }
}
