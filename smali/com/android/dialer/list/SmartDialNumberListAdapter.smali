.class public Lcom/android/dialer/list/SmartDialNumberListAdapter;
.super Lcom/android/dialer/list/DialerPhoneNumberListAdapter;
.source "SmartDialNumberListAdapter.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final PHONE_DATA_ID_INDEX:I

.field private final PHONE_NUMBER_INDEX:I

.field private mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 190
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->PHONE_NUMBER_INDEX:I

    .line 191
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->PHONE_DATA_ID_INDEX:I

    .line 57
    return-void
.end method


# virtual methods
.method public configureLoader(Landroid/content/Loader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v5, 0x1

    .line 70
    sget-object v2, Lcom/android/dialer/list/SmartDialNumberListAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK-DialerSearch, configureLoader, getQueryString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/mediatek/dialer/util/DialerUtils;->isDialerSearchEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "dialerSearchLoader":Lcom/mediatek/dialer/DialerSearchCursorLoader;
    instance-of v2, p1, Lcom/mediatek/dialer/DialerSearchCursorLoader;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 80
    check-cast v0, Lcom/mediatek/dialer/DialerSearchCursorLoader;

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 86
    const-string v2, ""

    invoke-virtual {v0, v2, v5}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->configureQuery(Ljava/lang/String;Z)V

    .line 109
    .end local v0    # "dialerSearchLoader":Lcom/mediatek/dialer/DialerSearchCursorLoader;
    :goto_1
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->notifyDataSetChanged()V

    .line 111
    return-void

    .line 82
    .restart local v0    # "dialerSearchLoader":Lcom/mediatek/dialer/DialerSearchCursorLoader;
    :cond_0
    sget-object v2, Lcom/android/dialer/list/SmartDialNumberListAdapter;->TAG:Ljava/lang/String;

    const-string v3, "MTK-DiaerSearch, Not DialerSearchCursorLoader"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->configureQuery(Ljava/lang/String;Z)V

    goto :goto_1

    .line 91
    .end local v0    # "dialerSearchLoader":Lcom/mediatek/dialer/DialerSearchCursorLoader;
    :cond_2
    const/4 v1, 0x0

    .line 93
    .local v1, "smartDialCursorLoader":Lcom/android/dialer/dialpad/SmartDialCursorLoader;
    instance-of v2, p1, Lcom/mediatek/dialer/DialerSearchCursorLoader;

    if-eqz v2, :cond_3

    move-object v1, p1

    .line 94
    check-cast v1, Lcom/android/dialer/dialpad/SmartDialCursorLoader;

    .line 99
    :goto_2
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 100
    new-instance v2, Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    const-string v3, ""

    invoke-static {}, Lcom/android/dialer/dialpad/SmartDialPrefix;->getMap()Lcom/android/dialer/dialpad/SmartDialMap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;-><init>(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)V

    iput-object v2, p0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    .line 101
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->configureQuery(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_3
    sget-object v2, Lcom/android/dialer/list/SmartDialNumberListAdapter;->TAG:Ljava/lang/String;

    const-string v3, "MTK-DiaerSearch, Not SmartDialCursorLoader"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 103
    :cond_4
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->configureQuery(Ljava/lang/String;)V

    .line 104
    new-instance v2, Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/dialer/dialpad/SmartDialPrefix;->getMap()Lcom/android/dialer/dialpad/SmartDialMap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;-><init>(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)V

    iput-object v2, p0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    goto :goto_1
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 166
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 172
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 173
    .local v1, "id":J
    sget-object v4, Lcom/android/dialer/list/SmartDialNumberListAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartDialNumberListAdatper: DataId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 183
    .end local v1    # "id":J
    :goto_0
    return-object v3

    .line 178
    .restart local v1    # "id":J
    :cond_0
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 182
    .end local v1    # "id":J
    :cond_1
    sget-object v4, Lcom/android/dialer/list/SmartDialNumberListAdapter;->TAG:Ljava/lang/String;

    const-string v5, "Cursor was null in getDataUri() call. Returning null instead."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPhoneNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 195
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 196
    const/16 v2, 0xe

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "phoneNumber":Ljava/lang/String;
    sget-object v2, Lcom/android/dialer/list/SmartDialNumberListAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartDialNumberListAdatper: phoneNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 201
    :cond_0
    sget-object v2, Lcom/android/dialer/list/SmartDialNumberListAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Cursor was null in getPhoneNumber() call. Returning null instead."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, 0x0

    goto :goto_0
.end method
