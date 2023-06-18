create or replace view STAGING.STERLING.YFS_ORDER_HEADER_VW(
	A_CCID,
	A_ENTTYP,
	A_TIMSTAMP,
	ORDER_HEADER_KEY,
	ENTERPRISE_KEY,
	ORDER_NO,
	SOURCING_CLASSIFICATION,
	BUYER_ORGANIZATION_CODE,
	SELLER_ORGANIZATION_CODE,
	DOCUMENT_TYPE,
	BILL_TO_KEY,
	BILL_TO_ID,
	CUSTOMER_REWARDS_NO,
	VENDOR_ID,
	SHIP_TO_KEY,
	SHIP_TO_ID,
	SHIP_NODE,
	RECEIVING_NODE,
	BUYER_RECEIVING_NODE_ID,
	MARK_FOR_KEY,
	BUYER_MARK_FOR_NODE_ID,
	REQ_DELIVERY_DATE,
	REQ_CANCEL_DATE,
	REQ_SHIP_DATE,
	DEFAULT_TEMPLATE,
	DIVISION,
	ORDER_DATE,
	ORDER_TYPE,
	DRAFT_ORDER_FLAG,
	ORDER_PURPOSE,
	RETURN_OH_KEY_FOR_EXCHANGE,
	EXCHANGE_TYPE,
	PENDING_TRANSFER_IN,
	RETURN_BY_GIFT_RECIPIENT,
	ALLOCATION_RULE_ID,
	PRIORITY_CODE,
	PRIORITY_NUMBER,
	CONTACT_KEY,
	SCAC,
	CARRIER_SERVICE_CODE,
	CUSTCARRIER_ACCOUNT_NO,
	NOTIFY_AFTER_SHIPMENT_FLAG,
	CREATED_AT_NODE,
	HAS_DERIVED_CHILD,
	HAS_DERIVED_PARENT,
	NOTIFICATION_TYPE,
	NOTIFICATION_REFERENCE,
	ENTRY_TYPE,
	AUTHORIZED_CLIENT,
	ENTERED_BY,
	PERSONALIZE_CODE,
	HOLD_FLAG,
	HOLD_REASON_CODE,
	CUSTOMER_PO_NO,
	CUSTOMER_CUSTOMER_PO_NO,
	ORDER_NAME,
	PAYMENT_RULE_ID,
	TERMS_CODE,
	DELIVERY_CODE,
	CHARGE_ACTUAL_FREIGHT,
	TAX,
	TOTAL_AMOUNT,
	ORIGINAL_TOTAL_AMOUNT,
	ORIGINAL_TAX,
	CURRENCY,
	ENTERPRISE_CURRENCY,
	REPORTING_CONVERSION_RATE,
	REPORTING_CONVERSION_DATE,
	PAYMENT_STATUS,
	AUTHORIZATION_EXPIRATION_DATE,
	SEARCH_CRITERIA_1,
	SEARCH_CRITERIA_2,
	CUSTOMER_EMAILID,
	FOB,
	TOTAL_ADJUSTMENT_AMOUNT,
	OTHER_CHARGES,
	PRICE_PROGRAM_KEY,
	TAXPAYER_ID,
	TAX_JURISDICTION,
	TAX_EXEMPT_FLAG,
	TAX_EXEMPTION_CERTIFICATE,
	PURPOSE,
	INVOICE_COMPLETE,
	ORDER_CLOSED,
	NEXT_ALERT_TS,
	DO_NOT_CONSOLIDATE,
	CHAIN_TYPE,
	ADJUSTMENT_INVOICE_PENDING,
	AUTO_CANCEL_DATE,
	SALE_VOIDED,
	IS_SHIP_COMPLETE,
	IS_LINE_SHIP_COMPLETE,
	IS_SHIP_SINGLE_NODE,
	IS_LINE_SHIP_SINGLE_NODE,
	CANCEL_ORDER_ON_EXCP_FLAG,
	OPTIMIZATION_TYPE,
	PURGE_HISTORY_DATE,
	PRICING_CLASSIFICATION_CODE,
	SOURCE_TYPE,
	SOURCE_KEY,
	LINKED_SOURCE_KEY,
	ORIGINAL_CONTAINER_KEY,
	SOLD_TO_KEY,
	TEAM_CODE,
	LEVEL_OF_SERVICE,
	NEXT_ITER_SEQ_NO,
	NEXT_ITER_DATE,
	HRS_BEFORE_NEXT_ITER,
	CREATETS,
	MODIFYTS,
	CREATEUSERID,
	MODIFYUSERID,
	CREATEPROGID,
	MODIFYPROGID,
	LOCKID,
	DEPARTMENT_CODE,
	BUYER_USER_ID,
	RECREATE_AUTHORIZATIONS,
	CUSTOMER_CONTACT_ID,
	OPPORTUNITY_KEY,
	IS_EXPIRATION_DATE_OVERRIDDEN,
	EXPIRATION_DATE,
	APPROVAL_CYCLE,
	IN_STORE_PAYMENT_REQUIRED,
	IMMEDIATE_SETTLEMENT_VALUE,
	CUSTOMER_AGE,
	ALL_ADDRESSES_VERIFIED,
	COMPL_GIFT_BOX_QTY,
	NO_OF_AUTH_STRIKES,
	SOURCE_IP_ADDRESS,
	CUSTOMER_FIRST_NAME,
	CUSTOMER_LAST_NAME,
	CUSTOMER_PHONE_NO,
	CUSTOMER_ZIP_CODE,
	INDEX_VERSION,
	EXTN_ECI_PAYMENT_STATUS,
	EXTN_ECI_BUSINESS_LINE,
	EXTN_ECI_IS_GUEST_CHECKOUT,
	EXTN_ECI_DVD_COMPANY,
	EXTN_ECI_STORE_ID,
	EXTN_ECI_TRANSACTION_TYPE,
	EXTN_ECI_BAR_CODE,
	EXTN_ECI_IMEI,
	EXTN_ECI_CONTROL_CODE,
	EXTN_ECI_DELIVERY_SHIFTS,
	EXTN_ECI_SEVERAL_ADDRESSES,
	EXTN_ECI_GIFT_CARD,
	EXTN_ECI_GIFT_CARD_NAME,
	EXTN_ECI_GIFT_CARD_LAST_NAME1,
	EXTN_ECI_GIFT_CARD_LAST_NAME2,
	EXTN_ECI_GIFT_CARD_TITLE,
	EXTN_ECI_GIFT_CARD_COMPANY,
	EXTN_ECI_CUSTOMER_ORDER_NO,
	EXTN_ECI_PARENT_SALES_OPERATION,
	EXTN_ECI_URL_SOURCE,
	EXTN_ECI_SITE,
	EXTN_ECI_AFFILIATE_ID,
	EXTN_ECI_CUSTOMER_IP_ADDRESS,
	EXTN_ECI_TOTAL_AMOUNT_VAT1,
	EXTN_ECI_TOTAL_AMOUNT_VAT2,
	EXTN_ECI_TOTAL_AMOUNT_VAT3,
	EXTN_ECI_TOTAL_AMOUNT_VAT4,
	EXTN_ECI_STS_COMPANY,
	EXTN_ECI_STS_CENTER,
	EXTN_ECI_ISPU_NO,
	EXTN_ECI_NOTIFICATION_SYSTEM,
	EXTN_ECI_CHANNEL_DVD,
	EXTN_ECI_ISPU_ALLOWS_FRONT_MODIFICATION,
	EXTN_ECI_ISPU_STORE,
	EXTN_ECI_GESTION_EXPEDIENTES_CODE,
	EXTN_ECI_TOTAL_PENDING_AMOUNT,
	EXTN_ECI_PRINT_AMOUNT,
	EXTN_ECI_EXTERNAL_ORDER_NO,
	EXTN_ECI_PLATFORM,
	EXTN_ECI_EXCHANGE_ORDER_NO,
	EXTN_ECI_EMAIL_AUDIT,
	EXTN_ECI_SHIPPING_TYPE,
	EXTN_ECI_SENT_TO_WF,
	EXTN_ECI_REPROCESS_WF,
	EXTN_ECI_REPROCESS_GDE,
	EXTN_ECI_SALES_CENTER,
	EXTN_ECI_DELIVERY_METHOD,
	EXTN_ECI_CARRIER_ACCOUNT_DESC,
	EXTN_ECI_SCAC_DESC,
	EXTN_ECI_CONTINGENCY,
	EXTN_ECI_BUILDING,
	EXTN_ECI_FLOOR,
	EXTN_ECI_ZONE,
	EXTN_ECI_CODI_CLIE,
	EXTN_ECI_IS_DATE_MODIFIED,
	EXTN_ECI_IS_FIRST_SHIPMENT,
	EXTN_ECI_REQUIRES_INVOICE,
	EXTN_ECI_BO_CODI_PEDI,
	EXTN_ECI_BO_CAPTURE_NO,
	EXTN_ECI_BO_CUSTOMER_ORDER,
	EXTN_ECI_MIGRATION_DATE,
	EXTN_ECI_LANGUAGE,
	EXTN_ECI_NUM_RETRIES,
	EXTN_ECI_TOTAL_AMOUNT,
	EXTN_ECI_REPROCESS_CREATE_GDE,
	EXTN_ECI_SHIPPING_METHOD,
	EXTN_ECI_AUTHORIZATION_DATE,
	EXTN_ECI_PENDING_AUTH_ALERT,
	EXTN_ECI_TYPE_EMAIL,
	EXTN_ECI_SPECIAL_REQUIREMENTS,
	EXTN_ECI_EXTERNAL_MARKETPLACE,
	EXTN_ECI_COUNT_NUMBER_EMAIL,
	EXTN_ECI_HAPPY_SPLITTED,
	EXTN_ECI_IS_ORDER_URGENT,
	EXTN_ECI_IS_TRANSFER_ORDER_URGENT,
	EXTN_ECI_UATG,
	EXTN_ECI_BIRTHDATE,
	EXTN_ECI_SEND_EMAIL,
	EXTN_ECI_ITEMIDALERT,
	EXTN_ECI_RETURNWITHOUTCHARGE,
	EXTN_ECI_PARENT_SALES_ORDER,
	EXTN_ECI_SALES_MAN,
	EXTN_ECI_SALES_STS_CENTER,
	EXTN_ECI_SALES_STS_COMPANY,
	EXTN_ECI_CUSTOMERTYPE,
	EXTN_ECI_CUSTOMERTYPEALERT,
	EXTN_ECI_CUSTOMERTYPEACTION,
	EXTN_ECICUSTOMERTYPEDESCRIPTION,
	EXTN_ECI_ENTITY_SIBS,
	EXTN_ECI_AUTHORIZER,
	EXTN_ECI_MODIFY_AUTHORIZER,
	EXTN_ECI_ORIGIN_SYSTEM,
	EXTN_ECI_REFUND_RESPONSE,
	EXTN_ECI_VEP_ORDERNO,
	EXTN_ECI_RESERVATIONSLOT_ID,
	EXTN_ECI_TRANSFER_COMPLETES_ORDER,
	EXTN_ECI_TRANSFER_TO_STORE,
	EXTN_ECI_IS_GROUP_DISCOUNT_ECI_CARD,
	EXTN_ECI_IS_GROUP_DISCOUNT_ECI_CARD_NUMBER,
	EXTN_ECI_AGENCY,
	EXTN_ECI_DELIVERY_DATE_TS,
	EXTN_ECI_TOTAL_AMOUNT_VEP,
	EXTN_ECI_GROUP_DISC_CARD_SEL,
	EXTN_ECI_HAPPY_FLAG,
	EXTN_ECI_IS_TRANSFER_CANCEL,
	EXTN_ECI_SALE_COMPANY,
	CART_ID,
	ROLLOUT_VERSION,
	EXTN_ECI_RELATED_REFUND
) as SELECT
    record_content:"A_CCID"::int as "A_CCID",
    record_content:"A_ENTTYP"::string as "A_ENTTYP",
    record_content:"A_TIMSTAMP"::datetime "A_TIMSTAMP",
    record_content:"afterImage":ORDER_HEADER_KEY ::STRING  AS  ORDER_HEADER_KEY ,
    trim(record_content:"afterImage":ENTERPRISE_KEY ::STRING)  AS  ENTERPRISE_KEY ,
    record_content:"afterImage":ORDER_NO ::STRING  AS  ORDER_NO ,
    record_content:"afterImage":SOURCING_CLASSIFICATION ::STRING  AS  SOURCING_CLASSIFICATION ,
    record_content:"afterImage":BUYER_ORGANIZATION_CODE ::STRING  AS  BUYER_ORGANIZATION_CODE ,
    record_content:"afterImage":SELLER_ORGANIZATION_CODE ::STRING  AS  SELLER_ORGANIZATION_CODE ,
    record_content:"afterImage":DOCUMENT_TYPE ::STRING  AS  DOCUMENT_TYPE ,
    record_content:"afterImage":BILL_TO_KEY ::STRING  AS  BILL_TO_KEY ,
    record_content:"afterImage":BILL_TO_ID ::STRING  AS  BILL_TO_ID ,
    record_content:"afterImage":CUSTOMER_REWARDS_NO ::STRING  AS  CUSTOMER_REWARDS_NO ,
    record_content:"afterImage":VENDOR_ID ::STRING  AS  VENDOR_ID ,
    record_content:"afterImage":SHIP_TO_KEY ::STRING  AS  SHIP_TO_KEY ,
    record_content:"afterImage":SHIP_TO_ID ::STRING  AS  SHIP_TO_ID ,
    record_content:"afterImage":SHIP_NODE ::STRING  AS  SHIP_NODE ,
    record_content:"afterImage":RECEIVING_NODE ::STRING  AS  RECEIVING_NODE ,
    record_content:"afterImage":BUYER_RECEIVING_NODE_ID ::STRING  AS  BUYER_RECEIVING_NODE_ID ,
    record_content:"afterImage":MARK_FOR_KEY ::STRING  AS  MARK_FOR_KEY ,
    record_content:"afterImage":BUYER_MARK_FOR_NODE_ID ::STRING  AS  BUYER_MARK_FOR_NODE_ID ,
    record_content:"afterImage":REQ_DELIVERY_DATE ::TIMESTAMP  AS  REQ_DELIVERY_DATE ,
    record_content:"afterImage":REQ_CANCEL_DATE ::TIMESTAMP  AS  REQ_CANCEL_DATE ,
    record_content:"afterImage":REQ_SHIP_DATE ::TIMESTAMP  AS  REQ_SHIP_DATE ,
    record_content:"afterImage":DEFAULT_TEMPLATE ::STRING  AS  DEFAULT_TEMPLATE ,
    record_content:"afterImage":DIVISION ::STRING  AS  DIVISION ,
    record_content:"afterImage":ORDER_DATE ::TIMESTAMP  AS  ORDER_DATE ,
    record_content:"afterImage":ORDER_TYPE ::STRING  AS  ORDER_TYPE ,
    record_content:"afterImage":DRAFT_ORDER_FLAG ::STRING  AS  DRAFT_ORDER_FLAG ,
    record_content:"afterImage":ORDER_PURPOSE ::STRING  AS  ORDER_PURPOSE ,
    record_content:"afterImage":RETURN_OH_KEY_FOR_EXCHANGE ::STRING  AS  RETURN_OH_KEY_FOR_EXCHANGE ,
    record_content:"afterImage":EXCHANGE_TYPE ::STRING  AS  EXCHANGE_TYPE ,
    record_content:"afterImage":PENDING_TRANSFER_IN ::DOUBLE  AS  PENDING_TRANSFER_IN ,
    record_content:"afterImage":RETURN_BY_GIFT_RECIPIENT ::STRING  AS  RETURN_BY_GIFT_RECIPIENT ,
    record_content:"afterImage":ALLOCATION_RULE_ID ::STRING  AS  ALLOCATION_RULE_ID ,
    record_content:"afterImage":PRIORITY_CODE ::STRING  AS  PRIORITY_CODE ,
    record_content:"afterImage":PRIORITY_NUMBER ::DOUBLE  AS  PRIORITY_NUMBER ,
    record_content:"afterImage":CONTACT_KEY ::STRING  AS  CONTACT_KEY ,
    record_content:"afterImage":SCAC ::STRING  AS  SCAC ,
    record_content:"afterImage":CARRIER_SERVICE_CODE ::STRING  AS  CARRIER_SERVICE_CODE ,
    record_content:"afterImage":CUSTCARRIER_ACCOUNT_NO ::STRING  AS  CUSTCARRIER_ACCOUNT_NO ,
    record_content:"afterImage":NOTIFY_AFTER_SHIPMENT_FLAG ::STRING  AS  NOTIFY_AFTER_SHIPMENT_FLAG ,
    record_content:"afterImage":CREATED_AT_NODE ::STRING  AS  CREATED_AT_NODE ,
    record_content:"afterImage":HAS_DERIVED_CHILD ::STRING  AS  HAS_DERIVED_CHILD ,
    record_content:"afterImage":HAS_DERIVED_PARENT ::STRING  AS  HAS_DERIVED_PARENT ,
    record_content:"afterImage":NOTIFICATION_TYPE ::STRING  AS  NOTIFICATION_TYPE ,
    record_content:"afterImage":NOTIFICATION_REFERENCE ::STRING  AS  NOTIFICATION_REFERENCE ,
    record_content:"afterImage":ENTRY_TYPE ::STRING  AS  ENTRY_TYPE ,
    record_content:"afterImage":AUTHORIZED_CLIENT ::STRING  AS  AUTHORIZED_CLIENT ,
    record_content:"afterImage":ENTERED_BY ::STRING  AS  ENTERED_BY ,
    record_content:"afterImage":PERSONALIZE_CODE ::STRING  AS  PERSONALIZE_CODE ,
    record_content:"afterImage":HOLD_FLAG ::STRING  AS  HOLD_FLAG ,
    record_content:"afterImage":HOLD_REASON_CODE ::STRING  AS  HOLD_REASON_CODE ,
    record_content:"afterImage":CUSTOMER_PO_NO ::STRING  AS  CUSTOMER_PO_NO ,
    record_content:"afterImage":CUSTOMER_CUSTOMER_PO_NO ::STRING  AS  CUSTOMER_CUSTOMER_PO_NO ,
    record_content:"afterImage":ORDER_NAME ::STRING  AS  ORDER_NAME ,
    record_content:"afterImage":PAYMENT_RULE_ID ::STRING  AS  PAYMENT_RULE_ID ,
    record_content:"afterImage":TERMS_CODE ::STRING  AS  TERMS_CODE ,
    record_content:"afterImage":DELIVERY_CODE ::STRING  AS  DELIVERY_CODE ,
    record_content:"afterImage":CHARGE_ACTUAL_FREIGHT ::STRING  AS  CHARGE_ACTUAL_FREIGHT ,
    record_content:"afterImage":TAX ::DOUBLE  AS  TAX ,
    record_content:"afterImage":TOTAL_AMOUNT ::DOUBLE  AS  TOTAL_AMOUNT ,
    record_content:"afterImage":ORIGINAL_TOTAL_AMOUNT ::DOUBLE  AS  ORIGINAL_TOTAL_AMOUNT ,
    record_content:"afterImage":ORIGINAL_TAX ::DOUBLE  AS  ORIGINAL_TAX ,
    record_content:"afterImage":CURRENCY ::STRING  AS  CURRENCY ,
    record_content:"afterImage":ENTERPRISE_CURRENCY ::STRING  AS  ENTERPRISE_CURRENCY ,
    record_content:"afterImage":REPORTING_CONVERSION_RATE ::DOUBLE  AS  REPORTING_CONVERSION_RATE ,
    record_content:"afterImage":REPORTING_CONVERSION_DATE ::TIMESTAMP  AS  REPORTING_CONVERSION_DATE ,
    record_content:"afterImage":PAYMENT_STATUS ::STRING  AS  PAYMENT_STATUS ,
    record_content:"afterImage":AUTHORIZATION_EXPIRATION_DATE ::TIMESTAMP  AS  AUTHORIZATION_EXPIRATION_DATE ,
    record_content:"afterImage":SEARCH_CRITERIA_1 ::STRING  AS  SEARCH_CRITERIA_1 ,
    record_content:"afterImage":SEARCH_CRITERIA_2 ::STRING  AS  SEARCH_CRITERIA_2 ,
    record_content:"afterImage":CUSTOMER_EMAILID ::STRING  AS  CUSTOMER_EMAILID ,
    record_content:"afterImage":FOB ::STRING  AS  FOB ,
    record_content:"afterImage":TOTAL_ADJUSTMENT_AMOUNT ::DOUBLE  AS  TOTAL_ADJUSTMENT_AMOUNT ,
    record_content:"afterImage":OTHER_CHARGES ::DOUBLE  AS  OTHER_CHARGES ,
    record_content:"afterImage":PRICE_PROGRAM_KEY ::STRING  AS  PRICE_PROGRAM_KEY ,
    record_content:"afterImage":TAXPAYER_ID ::STRING  AS  TAXPAYER_ID ,
    record_content:"afterImage":TAX_JURISDICTION ::STRING  AS  TAX_JURISDICTION ,
    record_content:"afterImage":TAX_EXEMPT_FLAG ::STRING  AS  TAX_EXEMPT_FLAG ,
    record_content:"afterImage":TAX_EXEMPTION_CERTIFICATE ::STRING  AS  TAX_EXEMPTION_CERTIFICATE ,
    record_content:"afterImage":PURPOSE ::STRING  AS  PURPOSE ,
    record_content:"afterImage":INVOICE_COMPLETE ::STRING  AS  INVOICE_COMPLETE ,
    record_content:"afterImage":ORDER_CLOSED ::STRING  AS  ORDER_CLOSED ,
    record_content:"afterImage":NEXT_ALERT_TS ::TIMESTAMP  AS  NEXT_ALERT_TS ,
    record_content:"afterImage":DO_NOT_CONSOLIDATE ::STRING  AS  DO_NOT_CONSOLIDATE ,
    record_content:"afterImage":CHAIN_TYPE ::STRING  AS  CHAIN_TYPE ,
    record_content:"afterImage":ADJUSTMENT_INVOICE_PENDING ::STRING  AS  ADJUSTMENT_INVOICE_PENDING ,
    record_content:"afterImage":AUTO_CANCEL_DATE ::TIMESTAMP  AS  AUTO_CANCEL_DATE ,
    record_content:"afterImage":SALE_VOIDED ::STRING  AS  SALE_VOIDED ,
    record_content:"afterImage":IS_SHIP_COMPLETE ::STRING  AS  IS_SHIP_COMPLETE ,
    record_content:"afterImage":IS_LINE_SHIP_COMPLETE ::STRING  AS  IS_LINE_SHIP_COMPLETE ,
    record_content:"afterImage":IS_SHIP_SINGLE_NODE ::STRING  AS  IS_SHIP_SINGLE_NODE ,
    record_content:"afterImage":IS_LINE_SHIP_SINGLE_NODE ::STRING  AS  IS_LINE_SHIP_SINGLE_NODE ,
    record_content:"afterImage":CANCEL_ORDER_ON_EXCP_FLAG ::STRING  AS  CANCEL_ORDER_ON_EXCP_FLAG ,
    record_content:"afterImage":OPTIMIZATION_TYPE ::STRING  AS  OPTIMIZATION_TYPE ,
    record_content:"afterImage":PURGE_HISTORY_DATE ::TIMESTAMP  AS  PURGE_HISTORY_DATE ,
    record_content:"afterImage":PRICING_CLASSIFICATION_CODE ::DOUBLE  AS  PRICING_CLASSIFICATION_CODE ,
    record_content:"afterImage":SOURCE_TYPE ::STRING  AS  SOURCE_TYPE ,
    record_content:"afterImage":SOURCE_KEY ::DOUBLE  AS  SOURCE_KEY ,
    record_content:"afterImage":LINKED_SOURCE_KEY ::STRING  AS  LINKED_SOURCE_KEY ,
    record_content:"afterImage":ORIGINAL_CONTAINER_KEY ::DOUBLE  AS  ORIGINAL_CONTAINER_KEY ,
    record_content:"afterImage":SOLD_TO_KEY ::STRING  AS  SOLD_TO_KEY ,
    record_content:"afterImage":TEAM_CODE ::STRING  AS  TEAM_CODE ,
    record_content:"afterImage":LEVEL_OF_SERVICE ::STRING  AS  LEVEL_OF_SERVICE ,
    record_content:"afterImage":NEXT_ITER_SEQ_NO ::DOUBLE  AS  NEXT_ITER_SEQ_NO ,
    record_content:"afterImage":NEXT_ITER_DATE ::TIMESTAMP  AS  NEXT_ITER_DATE ,
    record_content:"afterImage":HRS_BEFORE_NEXT_ITER ::DOUBLE  AS  HRS_BEFORE_NEXT_ITER ,
    record_content:"afterImage":CREATETS ::TIMESTAMP  AS  CREATETS ,
    record_content:"afterImage":MODIFYTS ::TIMESTAMP  AS  MODIFYTS ,
    record_content:"afterImage":CREATEUSERID ::STRING  AS  CREATEUSERID ,
    record_content:"afterImage":MODIFYUSERID ::STRING  AS  MODIFYUSERID ,
    record_content:"afterImage":CREATEPROGID ::STRING  AS  CREATEPROGID ,
    record_content:"afterImage":MODIFYPROGID ::STRING  AS  MODIFYPROGID ,
    record_content:"afterImage":LOCKID ::DOUBLE  AS  LOCKID ,
    record_content:"afterImage":DEPARTMENT_CODE ::STRING  AS  DEPARTMENT_CODE ,
    record_content:"afterImage":BUYER_USER_ID ::STRING  AS  BUYER_USER_ID ,
    record_content:"afterImage":RECREATE_AUTHORIZATIONS ::STRING  AS  RECREATE_AUTHORIZATIONS ,
    record_content:"afterImage":CUSTOMER_CONTACT_ID ::STRING  AS  CUSTOMER_CONTACT_ID ,
    record_content:"afterImage":OPPORTUNITY_KEY ::STRING  AS  OPPORTUNITY_KEY ,
    record_content:"afterImage":IS_EXPIRATION_DATE_OVERRIDDEN ::STRING  AS  IS_EXPIRATION_DATE_OVERRIDDEN ,
    record_content:"afterImage":EXPIRATION_DATE ::TIMESTAMP  AS  EXPIRATION_DATE ,
    record_content:"afterImage":APPROVAL_CYCLE ::STRING  AS  APPROVAL_CYCLE ,
    record_content:"afterImage":IN_STORE_PAYMENT_REQUIRED ::STRING  AS  IN_STORE_PAYMENT_REQUIRED ,
    record_content:"afterImage":IMMEDIATE_SETTLEMENT_VALUE ::DOUBLE  AS  IMMEDIATE_SETTLEMENT_VALUE ,
    record_content:"afterImage":CUSTOMER_AGE ::DOUBLE  AS  CUSTOMER_AGE ,
    record_content:"afterImage":ALL_ADDRESSES_VERIFIED ::STRING  AS  ALL_ADDRESSES_VERIFIED ,
    record_content:"afterImage":COMPL_GIFT_BOX_QTY ::DOUBLE  AS  COMPL_GIFT_BOX_QTY ,
    record_content:"afterImage":NO_OF_AUTH_STRIKES ::DOUBLE  AS  NO_OF_AUTH_STRIKES ,
    record_content:"afterImage":SOURCE_IP_ADDRESS ::STRING  AS  SOURCE_IP_ADDRESS ,
    record_content:"afterImage":CUSTOMER_FIRST_NAME ::STRING  AS  CUSTOMER_FIRST_NAME ,
    record_content:"afterImage":CUSTOMER_LAST_NAME ::STRING  AS  CUSTOMER_LAST_NAME ,
    record_content:"afterImage":CUSTOMER_PHONE_NO ::STRING  AS  CUSTOMER_PHONE_NO ,
    record_content:"afterImage":CUSTOMER_ZIP_CODE ::STRING  AS  CUSTOMER_ZIP_CODE ,
    record_content:"afterImage":INDEX_VERSION ::DOUBLE  AS  INDEX_VERSION ,
    record_content:"afterImage":EXTN_ECI_PAYMENT_STATUS ::STRING  AS  EXTN_ECI_PAYMENT_STATUS ,
    record_content:"afterImage":EXTN_ECI_BUSINESS_LINE ::STRING  AS  EXTN_ECI_BUSINESS_LINE ,
    record_content:"afterImage":EXTN_ECI_IS_GUEST_CHECKOUT ::STRING  AS  EXTN_ECI_IS_GUEST_CHECKOUT ,
    record_content:"afterImage":EXTN_ECI_DVD_COMPANY ::STRING  AS  EXTN_ECI_DVD_COMPANY ,
    record_content:"afterImage":EXTN_ECI_STORE_ID ::STRING  AS  EXTN_ECI_STORE_ID ,
    record_content:"afterImage":EXTN_ECI_TRANSACTION_TYPE ::STRING  AS  EXTN_ECI_TRANSACTION_TYPE ,
    record_content:"afterImage":EXTN_ECI_BAR_CODE ::STRING  AS  EXTN_ECI_BAR_CODE ,
    record_content:"afterImage":EXTN_ECI_IMEI ::STRING  AS  EXTN_ECI_IMEI ,
    record_content:"afterImage":EXTN_ECI_CONTROL_CODE ::STRING  AS  EXTN_ECI_CONTROL_CODE ,
    record_content:"afterImage":EXTN_ECI_DELIVERY_SHIFTS ::STRING  AS  EXTN_ECI_DELIVERY_SHIFTS ,
    record_content:"afterImage":EXTN_ECI_SEVERAL_ADDRESSES ::STRING  AS  EXTN_ECI_SEVERAL_ADDRESSES ,
    record_content:"afterImage":EXTN_ECI_GIFT_CARD ::STRING  AS  EXTN_ECI_GIFT_CARD ,
    record_content:"afterImage":EXTN_ECI_GIFT_CARD_NAME ::STRING  AS  EXTN_ECI_GIFT_CARD_NAME ,
    record_content:"afterImage":EXTN_ECI_GIFT_CARD_LAST_NAME1 ::STRING  AS  EXTN_ECI_GIFT_CARD_LAST_NAME1 ,
    record_content:"afterImage":EXTN_ECI_GIFT_CARD_LAST_NAME2 ::STRING  AS  EXTN_ECI_GIFT_CARD_LAST_NAME2 ,
    record_content:"afterImage":EXTN_ECI_GIFT_CARD_TITLE ::STRING  AS  EXTN_ECI_GIFT_CARD_TITLE ,
    record_content:"afterImage":EXTN_ECI_GIFT_CARD_COMPANY ::STRING  AS  EXTN_ECI_GIFT_CARD_COMPANY ,
    record_content:"afterImage":EXTN_ECI_CUSTOMER_ORDER_NO ::STRING  AS  EXTN_ECI_CUSTOMER_ORDER_NO ,
    record_content:"afterImage":EXTN_ECI_PARENT_SALES_OPERATION ::STRING  AS  EXTN_ECI_PARENT_SALES_OPERATION ,
    record_content:"afterImage":EXTN_ECI_URL_SOURCE ::STRING  AS  EXTN_ECI_URL_SOURCE ,
    record_content:"afterImage":EXTN_ECI_SITE ::STRING  AS  EXTN_ECI_SITE ,
    record_content:"afterImage":EXTN_ECI_AFFILIATE_ID ::STRING  AS  EXTN_ECI_AFFILIATE_ID ,
    record_content:"afterImage":EXTN_ECI_CUSTOMER_IP_ADDRESS ::STRING  AS  EXTN_ECI_CUSTOMER_IP_ADDRESS ,
    record_content:"afterImage":EXTN_ECI_TOTAL_AMOUNT_VAT1 ::STRING  AS  EXTN_ECI_TOTAL_AMOUNT_VAT1 ,
    record_content:"afterImage":EXTN_ECI_TOTAL_AMOUNT_VAT2 ::STRING  AS  EXTN_ECI_TOTAL_AMOUNT_VAT2 ,
    record_content:"afterImage":EXTN_ECI_TOTAL_AMOUNT_VAT3 ::STRING  AS  EXTN_ECI_TOTAL_AMOUNT_VAT3 ,
    record_content:"afterImage":EXTN_ECI_TOTAL_AMOUNT_VAT4 ::STRING  AS  EXTN_ECI_TOTAL_AMOUNT_VAT4 ,
    record_content:"afterImage":EXTN_ECI_STS_COMPANY ::STRING  AS  EXTN_ECI_STS_COMPANY ,
    record_content:"afterImage":EXTN_ECI_STS_CENTER ::STRING  AS  EXTN_ECI_STS_CENTER ,
    record_content:"afterImage":EXTN_ECI_ISPU_NO ::STRING  AS  EXTN_ECI_ISPU_NO ,
    record_content:"afterImage":EXTN_ECI_NOTIFICATION_SYSTEM ::STRING  AS  EXTN_ECI_NOTIFICATION_SYSTEM ,
    record_content:"afterImage":EXTN_ECI_CHANNEL_DVD ::STRING  AS  EXTN_ECI_CHANNEL_DVD ,
    record_content:"afterImage":EXTN_ECI_ISPU_ALLOWS_FRONT_MODIFICATION ::STRING  AS  EXTN_ECI_ISPU_ALLOWS_FRONT_MODIFICATION ,
    record_content:"afterImage":EXTN_ECI_ISPU_STORE ::STRING  AS  EXTN_ECI_ISPU_STORE ,
    record_content:"afterImage":EXTN_ECI_GESTION_EXPEDIENTES_C ::STRING  AS  EXTN_ECI_GESTION_EXPEDIENTES_CODE ,
    record_content:"afterImage":EXTN_ECI_TOTAL_PENDING_AMOUNT ::STRING  AS  EXTN_ECI_TOTAL_PENDING_AMOUNT ,
    record_content:"afterImage":EXTN_ECI_PRINT_AMOUNT ::STRING  AS  EXTN_ECI_PRINT_AMOUNT ,
    record_content:"afterImage":EXTN_ECI_EXTERNAL_ORDER_NO ::STRING  AS  EXTN_ECI_EXTERNAL_ORDER_NO ,
    record_content:"afterImage":EXTN_ECI_PLATFORM ::STRING  AS  EXTN_ECI_PLATFORM ,
    record_content:"afterImage":EXTN_ECI_EXCHANGE_ORDER_NO ::STRING  AS  EXTN_ECI_EXCHANGE_ORDER_NO ,
    record_content:"afterImage":EXTN_ECI_EMAIL_AUDIT ::STRING  AS  EXTN_ECI_EMAIL_AUDIT ,
    record_content:"afterImage":EXTN_ECI_SHIPPING_TYPE ::STRING  AS  EXTN_ECI_SHIPPING_TYPE ,
    record_content:"afterImage":EXTN_ECI_SENT_TO_WF ::STRING  AS  EXTN_ECI_SENT_TO_WF ,
    record_content:"afterImage":EXTN_ECI_REPROCESS_WF ::STRING  AS  EXTN_ECI_REPROCESS_WF ,
    record_content:"afterImage":EXTN_ECI_REPROCESS_GDE ::STRING  AS  EXTN_ECI_REPROCESS_GDE ,
    record_content:"afterImage":EXTN_ECI_SALES_CENTER ::STRING  AS  EXTN_ECI_SALES_CENTER ,
    record_content:"afterImage":EXTN_ECI_DELIVERY_METHOD ::STRING  AS  EXTN_ECI_DELIVERY_METHOD ,
    record_content:"afterImage":EXTN_ECI_CARRIER_ACCOUNT_DESC ::STRING  AS  EXTN_ECI_CARRIER_ACCOUNT_DESC ,
    record_content:"afterImage":EXTN_ECI_SCAC_DESC ::STRING  AS  EXTN_ECI_SCAC_DESC ,
    record_content:"afterImage":EXTN_ECI_CONTINGENCY ::STRING  AS  EXTN_ECI_CONTINGENCY ,
    record_content:"afterImage":EXTN_ECI_BUILDING ::STRING  AS  EXTN_ECI_BUILDING ,
    record_content:"afterImage":EXTN_ECI_FLOOR ::STRING  AS  EXTN_ECI_FLOOR ,
    record_content:"afterImage":EXTN_ECI_ZONE ::STRING  AS  EXTN_ECI_ZONE ,
    record_content:"afterImage":EXTN_ECI_CODI_CLIE ::STRING  AS  EXTN_ECI_CODI_CLIE ,
    record_content:"afterImage":EXTN_ECI_IS_DATE_MODIFIED ::STRING  AS  EXTN_ECI_IS_DATE_MODIFIED ,
    record_content:"afterImage":EXTN_ECI_IS_FIRST_SHIPMENT ::STRING  AS  EXTN_ECI_IS_FIRST_SHIPMENT ,
    record_content:"afterImage":EXTN_ECI_REQUIRES_INVOICE ::STRING  AS  EXTN_ECI_REQUIRES_INVOICE ,
    record_content:"afterImage":EXTN_ECI_BO_CODI_PEDI ::STRING  AS  EXTN_ECI_BO_CODI_PEDI ,
    record_content:"afterImage":EXTN_ECI_BO_CAPTURE_NO ::STRING  AS  EXTN_ECI_BO_CAPTURE_NO ,
    record_content:"afterImage":EXTN_ECI_BO_CUSTOMER_ORDER ::STRING  AS  EXTN_ECI_BO_CUSTOMER_ORDER ,
    record_content:"afterImage":EXTN_ECI_MIGRATION_DATE ::STRING  AS  EXTN_ECI_MIGRATION_DATE ,
    record_content:"afterImage":EXTN_ECI_LANGUAGE ::STRING  AS  EXTN_ECI_LANGUAGE ,
    record_content:"afterImage":EXTN_ECI_NUM_RETRIES ::DOUBLE  AS  EXTN_ECI_NUM_RETRIES ,
    record_content:"afterImage":EXTN_ECI_TOTAL_AMOUNT ::DOUBLE  AS  EXTN_ECI_TOTAL_AMOUNT ,
    record_content:"afterImage":EXTN_ECI_REPROCESS_CREATE_GDE ::STRING  AS  EXTN_ECI_REPROCESS_CREATE_GDE ,
    record_content:"afterImage":EXTN_ECI_SHIPPING_METHOD ::STRING  AS  EXTN_ECI_SHIPPING_METHOD ,
    record_content:"afterImage":EXTN_ECI_AUTHORIZATION_DATE ::STRING  AS  EXTN_ECI_AUTHORIZATION_DATE ,
    record_content:"afterImage":EXTN_ECI_PENDING_AUTH_ALERT ::STRING  AS  EXTN_ECI_PENDING_AUTH_ALERT ,
    record_content:"afterImage":EXTN_ECI_TYPE_EMAIL ::STRING  AS  EXTN_ECI_TYPE_EMAIL ,
    record_content:"afterImage":EXTN_ECI_SPECIAL_REQUIREMENTS ::STRING  AS  EXTN_ECI_SPECIAL_REQUIREMENTS ,
    record_content:"afterImage":EXTN_ECI_EXTERNAL_MARKETPLACE ::STRING  AS  EXTN_ECI_EXTERNAL_MARKETPLACE ,
    record_content:"afterImage":EXTN_ECI_COUNT_NUMBER_EMAIL ::DOUBLE  AS  EXTN_ECI_COUNT_NUMBER_EMAIL ,
    record_content:"afterImage":EXTN_ECI_HAPPY_SPLITTED ::STRING  AS  EXTN_ECI_HAPPY_SPLITTED ,
    record_content:"afterImage":EXTN_ECI_IS_ORDER_URGENT ::STRING  AS  EXTN_ECI_IS_ORDER_URGENT ,
    record_content:"afterImage":EXTN_ECI_IS_TRANSFER_ORDER_URGENT ::STRING  AS  EXTN_ECI_IS_TRANSFER_ORDER_URGENT ,
    record_content:"afterImage":EXTN_ECI_UATG ::STRING  AS  EXTN_ECI_UATG ,
    record_content:"afterImage":EXTN_ECI_BIRTHDATE ::STRING  AS  EXTN_ECI_BIRTHDATE ,
    record_content:"afterImage":EXTN_ECI_SEND_EMAIL ::STRING  AS  EXTN_ECI_SEND_EMAIL ,
    record_content:"afterImage":EXTN_ECI_ITEMIDALERT ::STRING  AS  EXTN_ECI_ITEMIDALERT ,
    record_content:"afterImage":EXTN_ECI_RETURNWITHOUTCHARGE ::STRING  AS  EXTN_ECI_RETURNWITHOUTCHARGE ,
    record_content:"afterImage":EXTN_ECI_PARENT_SALES_ORDER ::STRING  AS  EXTN_ECI_PARENT_SALES_ORDER ,
    record_content:"afterImage":EXTN_ECI_SALES_MAN ::STRING  AS  EXTN_ECI_SALES_MAN ,
    record_content:"afterImage":EXTN_ECI_SALES_STS_CENTER ::STRING  AS  EXTN_ECI_SALES_STS_CENTER ,
    record_content:"afterImage":EXTN_ECI_SALES_STS_COMPANY ::STRING  AS  EXTN_ECI_SALES_STS_COMPANY ,
    record_content:"afterImage":EXTN_ECI_CUSTOMERTYPE ::STRING  AS  EXTN_ECI_CUSTOMERTYPE ,
    record_content:"afterImage":EXTN_ECI_CUSTOMERTYPEALERT ::STRING  AS  EXTN_ECI_CUSTOMERTYPEALERT ,
    record_content:"afterImage":EXTN_ECI_CUSTOMERTYPEACTION ::STRING  AS  EXTN_ECI_CUSTOMERTYPEACTION ,
    record_content:"afterImage":EXTN_ECICUSTOMERTYPEDESCRIPTION ::STRING  AS  EXTN_ECICUSTOMERTYPEDESCRIPTION ,
    record_content:"afterImage":EXTN_ECI_ENTITY_SIBS ::STRING  AS  EXTN_ECI_ENTITY_SIBS ,
    record_content:"afterImage":EXTN_ECI_AUTHORIZER ::STRING  AS  EXTN_ECI_AUTHORIZER ,
    record_content:"afterImage":EXTN_ECI_MODIFY_AUTHORIZER ::STRING  AS  EXTN_ECI_MODIFY_AUTHORIZER ,
    record_content:"afterImage":EXTN_ECI_ORIGIN_SYSTEM ::STRING  AS  EXTN_ECI_ORIGIN_SYSTEM ,
    record_content:"afterImage":EXTN_ECI_REFUND_RESPONSE ::STRING  AS  EXTN_ECI_REFUND_RESPONSE ,
    record_content:"afterImage":EXTN_ECI_VEP_ORDERNO ::STRING  AS  EXTN_ECI_VEP_ORDERNO ,
    record_content:"afterImage":EXTN_ECI_RESERVATIONSLOT_ID ::STRING  AS  EXTN_ECI_RESERVATIONSLOT_ID ,
    record_content:"afterImage":EXTN_ECI_TRANSFER_COMPLETES_ORDER ::STRING  AS  EXTN_ECI_TRANSFER_COMPLETES_ORDER ,
    record_content:"afterImage":EXTN_ECI_TRANSFER_TO_STORE ::STRING  AS  EXTN_ECI_TRANSFER_TO_STORE ,
    record_content:"afterImage":EXTN_ECI_IS_GROUP_DISCOUNT_ECI_CARD ::STRING  AS  EXTN_ECI_IS_GROUP_DISCOUNT_ECI_CARD ,
    record_content:"afterImage":EXTN_ECI_IS_GROUP_DISCOUNT_ECI_CARD_NUMBER ::STRING  AS  EXTN_ECI_IS_GROUP_DISCOUNT_ECI_CARD_NUMBER ,
    record_content:"afterImage":EXTN_ECI_AGENCY ::STRING  AS  EXTN_ECI_AGENCY ,
    record_content:"afterImage":EXTN_ECI_DELIVERY_DATE_TS ::STRING  AS  EXTN_ECI_DELIVERY_DATE_TS ,
    record_content:"afterImage":EXTN_ECI_TOTAL_AMOUNT_VEP ::DOUBLE  AS  EXTN_ECI_TOTAL_AMOUNT_VEP ,
    record_content:"afterImage":EXTN_ECI_GROUP_DISC_CARD_SEL ::STRING  AS  EXTN_ECI_GROUP_DISC_CARD_SEL ,
    record_content:"afterImage":EXTN_ECI_HAPPY_FLAG ::STRING  AS  EXTN_ECI_HAPPY_FLAG ,
    record_content:"afterImage":EXTN_ECI_IS_TRANSFER_CANCEL ::STRING  AS  EXTN_ECI_IS_TRANSFER_CANCEL ,
    record_content:"afterImage":EXTN_ECI_SALE_COMPANY ::STRING  AS  EXTN_ECI_SALE_COMPANY ,
    record_content:"afterImage":CART_ID ::STRING  AS  CART_ID ,
    record_content:"afterImage":ROLLOUT_VERSION ::DOUBLE  AS  ROLLOUT_VERSION ,
    record_content:"afterImage":EXTN_ECI_RELATED_REFUND ::STRING  AS  EXTN_ECI_RELATED_REFUND 
FROM STAGING.STERLING._0VD_000_SYSTEMS_WA2_REPLICATE_SNOWFLAKE_STERLING_INVENTORY_YFS_ORDER_HEADER_SOURCE_NGOB_TOP_721333965;