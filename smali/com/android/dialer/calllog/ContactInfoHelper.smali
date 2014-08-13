.class public Lcom/android/dialer/calllog/ContactInfoHelper;
.super Ljava/lang/Object;
.source "ContactInfoHelper.java"


# static fields
.field private static final mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/android/dialerbind/ObjectFactory;->newCachedNumberLookupService()Lcom/android/dialer/service/CachedNumberLookupService;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentCountryIso"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private static createTemporaryContactUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 120
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "vnd.android.cursor.item/phone_v2"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "data1"

    invoke-virtual {v5, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "data2"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 125
    .local v0, "contactRows":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "display_name"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "display_name_source"

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/contact"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "jsonString":Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "encoded"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "directory"

    const-wide v5, 0x7fffffffffffffffL

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 138
    .end local v0    # "contactRows":Lorg/json/JSONObject;
    .end local v2    # "jsonString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Lorg/json/JSONException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "normalizedNumber"    # Ljava/lang/String;
    .param p3, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    const-string p1, ""

    .line 262
    .end local p1    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 256
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object p3, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 262
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private lookupContactFromUri(Landroid/net/Uri;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v0, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/dialer/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 157
    .local v10, "phonesCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 159
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v8, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v8}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    .line 161
    .local v8, "info":Lcom/android/dialer/calllog/ContactInfo;
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 162
    .local v6, "contactId":J
    const/4 v0, 0x7

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, "lookupKey":Ljava/lang/String;
    invoke-static {v6, v7, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 164
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 165
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/dialer/calllog/ContactInfo;->type:I

    .line 166
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 167
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 168
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 169
    const/4 v0, 0x6

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    .line 170
    const/16 v0, 0x8

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 172
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .end local v6    # "contactId":J
    .end local v9    # "lookupKey":Ljava/lang/String;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 183
    :goto_1
    return-object v8

    .line 174
    .end local v8    # "info":Lcom/android/dialer/calllog/ContactInfo;
    :cond_0
    :try_start_1
    sget-object v8, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v8    # "info":Lcom/android/dialer/calllog/ContactInfo;
    goto :goto_0

    .line 177
    .end local v8    # "info":Lcom/android/dialer/calllog/ContactInfo;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 181
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "info":Lcom/android/dialer/calllog/ContactInfo;
    goto :goto_1
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 8
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 215
    move-object v1, p1

    .line 216
    .local v1, "contactNumber":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 219
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "numberE164":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 222
    move-object v1, v3

    .line 227
    .end local v3    # "numberE164":Ljava/lang/String;
    :cond_0
    sget-object v6, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 228
    .local v4, "uri":Landroid/net/Uri;
    invoke-direct {p0, v4}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupContactFromUri(Landroid/net/Uri;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v2

    .line 229
    .local v2, "info":Lcom/android/dialer/calllog/ContactInfo;
    if-eqz v2, :cond_2

    sget-object v6, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-eq v2, v6, :cond_2

    .line 230
    invoke-direct {p0, p1, v5, p2}, Lcom/android/dialer/calllog/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 236
    :cond_1
    :goto_0
    return-object v2

    .line 231
    :cond_2
    sget-object v6, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    if-eqz v6, :cond_1

    .line 232
    sget-object v6, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    iget-object v7, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-interface {v6, v7, p1}, Lcom/android/dialer/service/CachedNumberLookupService;->lookupCachedContactFromNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;

    move-result-object v0

    .line 234
    .local v0, "cacheInfo":Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->getContactInfo()Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v2

    :goto_1
    goto :goto_0

    :cond_3
    move-object v2, v5

    goto :goto_1
.end method

.method private queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 3
    .param p1, "sipAddress"    # Ljava/lang/String;

    .prologue
    .line 199
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 200
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 201
    const-string v1, "sip"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 202
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupContactFromUri(Landroid/net/Uri;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 71
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/ContactInfoHelper;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v2

    .line 72
    .local v2, "sipInfo":Lcom/android/dialer/calllog/ContactInfo;
    if-eqz v2, :cond_0

    sget-object v5, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-ne v2, v5, :cond_1

    .line 75
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "username":Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    invoke-direct {p0, v4, p2}, Lcom/android/dialer/calllog/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v2

    .line 80
    .end local v4    # "username":Ljava/lang/String;
    :cond_1
    move-object v0, v2

    .line 93
    .end local v2    # "sipInfo":Lcom/android/dialer/calllog/ContactInfo;
    .local v0, "info":Lcom/android/dialer/calllog/ContactInfo;
    :goto_0
    if-nez v0, :cond_5

    .line 95
    const/4 v3, 0x0

    .line 108
    .local v3, "updatedInfo":Lcom/android/dialer/calllog/ContactInfo;
    :goto_1
    return-object v3

    .line 83
    .end local v0    # "info":Lcom/android/dialer/calllog/ContactInfo;
    .end local v3    # "updatedInfo":Lcom/android/dialer/calllog/ContactInfo;
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calllog/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    .line 85
    .local v1, "phoneInfo":Lcom/android/dialer/calllog/ContactInfo;
    if-eqz v1, :cond_3

    sget-object v5, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-ne v1, v5, :cond_4

    .line 87
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/ContactInfoHelper;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    .line 89
    :cond_4
    move-object v0, v1

    .restart local v0    # "info":Lcom/android/dialer/calllog/ContactInfo;
    goto :goto_0

    .line 98
    .end local v1    # "phoneInfo":Lcom/android/dialer/calllog/ContactInfo;
    :cond_5
    sget-object v5, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-ne v0, v5, :cond_6

    .line 100
    new-instance v3, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v3}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    .line 101
    .restart local v3    # "updatedInfo":Lcom/android/dialer/calllog/ContactInfo;
    iput-object p1, v3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 102
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5, p2}, Lcom/android/dialer/calllog/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 103
    invoke-static {p1}, Lcom/android/dialer/calllog/ContactInfoHelper;->createTemporaryContactUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    goto :goto_1

    .line 105
    .end local v3    # "updatedInfo":Lcom/android/dialer/calllog/ContactInfo;
    :cond_6
    move-object v3, v0

    .restart local v3    # "updatedInfo":Lcom/android/dialer/calllog/ContactInfo;
    goto :goto_1
.end method
