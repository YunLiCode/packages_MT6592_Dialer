.class public Lcom/android/dialer/list/RegularSearchListAdapter;
.super Lcom/android/dialer/list/DialerPhoneNumberListAdapter;
.source "RegularSearchListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegularSeachListAdapter"


# instance fields
.field private final PHONE_DATA_ID_INDEX:I

.field private final PHONE_NUMBER_INDEX:I

.field private mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 133
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/dialer/list/RegularSearchListAdapter;->PHONE_NUMBER_INDEX:I

    .line 134
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/dialer/list/RegularSearchListAdapter;->PHONE_DATA_ID_INDEX:I

    .line 50
    return-void
.end method


# virtual methods
.method public configureLoader(Lcom/mediatek/dialer/DialerSearchCursorLoader;)V
    .locals 5
    .param p1, "loader"    # Lcom/mediatek/dialer/DialerSearchCursorLoader;

    .prologue
    const/4 v4, 0x0

    .line 108
    const-string v1, "RegularSeachListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configure Loader with query"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/mediatek/dialer/util/DialerUtils;->isDialerSearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "dialerSearchLoader":Lcom/mediatek/dialer/DialerSearchCursorLoader;
    instance-of v1, p1, Lcom/mediatek/dialer/DialerSearchCursorLoader;

    if-eqz v1, :cond_0

    .line 114
    move-object v0, p1

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 120
    const-string v1, ""

    invoke-virtual {p1, v1, v4}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->configureQuery(Ljava/lang/String;Z)V

    .line 128
    .end local v0    # "dialerSearchLoader":Lcom/mediatek/dialer/DialerSearchCursorLoader;
    :goto_1
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchListAdapter;->notifyDataSetChanged()V

    .line 129
    return-void

    .line 116
    .restart local v0    # "dialerSearchLoader":Lcom/mediatek/dialer/DialerSearchCursorLoader;
    :cond_0
    const-string v1, "RegularSeachListAdapter"

    const-string v2, "MTK-DiaerSearch, Not DialerSearchCursorLoader"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->configureQuery(Ljava/lang/String;Z)V

    goto :goto_1

    .line 125
    .end local v0    # "dialerSearchLoader":Lcom/mediatek/dialer/DialerSearchCursorLoader;
    :cond_2
    const-string v1, "RegularSeachListAdapter"

    const-string v2, "Not support MTK-DialerSearch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getContactInfo(Lcom/android/dialer/service/CachedNumberLookupService;I)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    .locals 10
    .param p1, "lookupService"    # Lcom/android/dialer/service/CachedNumberLookupService;
    .param p2, "position"    # I

    .prologue
    .line 54
    new-instance v3, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v3}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    .line 55
    .local v3, "info":Lcom/android/dialer/calllog/ContactInfo;
    invoke-interface {p1, v3}, Lcom/android/dialer/service/CachedNumberLookupService;->buildCachedContactInfo(Lcom/android/dialer/calllog/ContactInfo;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;

    move-result-object v0

    .line 56
    .local v0, "cacheInfo":Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    invoke-virtual {p0, p2}, Lcom/android/dialer/list/RegularSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    .line 57
    .local v4, "item":Landroid/database/Cursor;
    if-eqz v4, :cond_0

    .line 58
    const/4 v9, 0x7

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 59
    const/4 v9, 0x1

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    .line 60
    const/4 v9, 0x2

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 61
    const/4 v9, 0x3

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 62
    const/16 v9, 0x8

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "photoUriStr":Ljava/lang/String;
    if-nez v7, :cond_1

    const/4 v9, 0x0

    :goto_0
    iput-object v9, v3, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 65
    const/4 v9, 0x5

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->setLookupKey(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/android/dialer/list/RegularSearchListAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 68
    .local v6, "partitionIndex":I
    invoke-virtual {p0, v6}, Lcom/android/dialer/list/RegularSearchListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 70
    .local v5, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v5}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    .line 71
    .local v1, "directoryId":J
    invoke-virtual {v5}, Lcom/android/contacts/common/list/DirectoryPartition;->getLabel()Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "sourceName":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/dialer/list/RegularSearchListAdapter;->isExtendedDirectory(J)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 73
    invoke-interface {v0, v8, v1, v2}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->setExtendedSource(Ljava/lang/String;J)V

    .line 78
    .end local v1    # "directoryId":J
    .end local v5    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    .end local v6    # "partitionIndex":I
    .end local v7    # "photoUriStr":Ljava/lang/String;
    .end local v8    # "sourceName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 63
    .restart local v7    # "photoUriStr":Ljava/lang/String;
    :cond_1
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_0

    .line 75
    .restart local v1    # "directoryId":J
    .restart local v5    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    .restart local v6    # "partitionIndex":I
    .restart local v8    # "sourceName":Ljava/lang/String;
    :cond_2
    invoke-interface {v0, v8, v1, v2}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->setDirectorySource(Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/RegularSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 139
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 140
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 141
    .local v1, "id":J
    const-string v4, "RegularSeachListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RegularSearchListAdatper: DataId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 150
    .end local v1    # "id":J
    :goto_0
    return-object v3

    .line 146
    .restart local v1    # "id":J
    :cond_0
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 149
    .end local v1    # "id":J
    :cond_1
    const-string v4, "RegularSeachListAdapter"

    const-string v5, "Cursor was null in getDataUri() call. Returning null instead."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPhoneNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/RegularSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 157
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 158
    const/16 v2, 0xe

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "phoneNumber":Ljava/lang/String;
    const-string v2, "RegularSeachListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RegularSearchListAdatper: phoneNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 163
    :cond_0
    const-string v2, "RegularSeachListAdapter"

    const-string v3, "Cursor was null in getPhoneNumber() call. Returning null instead."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 4
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-super {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 87
    .local v0, "showNumberShortcuts":Z
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/dialer/list/RegularSearchListAdapter;->setShortcutEnabled(IZ)V

    .line 91
    invoke-virtual {p0, v1, v0}, Lcom/android/dialer/list/RegularSearchListAdapter;->setShortcutEnabled(IZ)V

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchListAdapter;->notifyDataSetChanged()V

    .line 97
    :cond_0
    return-void

    .end local v0    # "showNumberShortcuts":Z
    :cond_1
    move v0, v2

    .line 86
    goto :goto_0
.end method
