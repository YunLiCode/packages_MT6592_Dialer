.class public Lcom/mediatek/dialer/DialerSearchHelper;
.super Ljava/lang/Object;
.source "DialerSearchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dialer/DialerSearchHelper$DialerSearchContentChangeListener;,
        Lcom/mediatek/dialer/DialerSearchHelper$ContactsObserver;,
        Lcom/mediatek/dialer/DialerSearchHelper$DialerSearchQuery;,
        Lcom/mediatek/dialer/DialerSearchHelper$PhoneQuery;
    }
.end annotation


# static fields
.field private static final DATA_READY_FLAG:Ljava/lang/String; = "isDataReady"

.field private static final DIALER_SEARCH_UPDATE_INTERVAL:I = 0x1388

.field private static final MESSAGE_DIALER_SEARCH_UPDATE_INTERVAL_TIMEOUT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DialerSearchHelper"

.field private static sSingleton:Lcom/mediatek/dialer/DialerSearchHelper;


# instance fields
.field private final mContactsObserver:Landroid/database/ContentObserver;

.field private mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private final mContext:Landroid/content/Context;

.field private mDataIsReady:Z

.field private final mHander:Landroid/os/Handler;

.field private mHasOnGoingUpdateRequest:Z

.field private mHasPendingUpdateRequest:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/dialer/DialerSearchHelper$DialerSearchContentChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/dialer/DialerSearchHelper;->sSingleton:Lcom/mediatek/dialer/DialerSearchHelper;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v3, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mDataIsReady:Z

    .line 49
    new-instance v0, Lcom/mediatek/dialer/DialerSearchHelper$ContactsObserver;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/DialerSearchHelper$ContactsObserver;-><init>(Lcom/mediatek/dialer/DialerSearchHelper;)V

    iput-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mContactsObserver:Landroid/database/ContentObserver;

    .line 50
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mListeners:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Lcom/mediatek/dialer/DialerSearchHelper$1;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/DialerSearchHelper$1;-><init>(Lcom/mediatek/dialer/DialerSearchHelper;)V

    iput-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mHander:Landroid/os/Handler;

    .line 79
    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-direct {v0, p1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 81
    iput-boolean v3, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mDataIsReady:Z

    .line 83
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/dialer/DialerSearchHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/DialerSearchHelper;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mHasOnGoingUpdateRequest:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/dialer/DialerSearchHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/DialerSearchHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mHasOnGoingUpdateRequest:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/dialer/DialerSearchHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/DialerSearchHelper;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mHasPendingUpdateRequest:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/dialer/DialerSearchHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/DialerSearchHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mHasPendingUpdateRequest:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/dialer/DialerSearchHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/DialerSearchHelper;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mediatek/dialer/DialerSearchHelper;->dialerSearchInit()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/dialer/DialerSearchHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/DialerSearchHelper;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mediatek/dialer/DialerSearchHelper;->notifyContentChange()V

    return-void
.end method

.method private buildCursor([[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 6
    .param p1, "cursorValues"    # [[Ljava/lang/Object;

    .prologue
    .line 323
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/mediatek/dialer/DialerSearchHelper$DialerSearchQuery;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 324
    .local v1, "c":Landroid/database/MatrixCursor;
    if-eqz p1, :cond_0

    .line 325
    move-object v0, p1

    .local v0, "arr$":[[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 326
    .local v4, "record":[Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 332
    .end local v0    # "arr$":[[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "record":[Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 329
    .restart local v0    # "arr$":[[Ljava/lang/Object;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "record":[Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private buildCursorRecord(JJJLjava/lang/String;JILjava/lang/String;IIIIJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # J
    .param p3, "contactId"    # J
    .param p5, "dataId"    # J
    .param p7, "callData"    # Ljava/lang/String;
    .param p8, "callLogId"    # J
    .param p10, "callType"    # I
    .param p11, "geo"    # Ljava/lang/String;
    .param p12, "callSimId"    # I
    .param p13, "isVtCall"    # I
    .param p14, "simIndicator"    # I
    .param p15, "starred"    # I
    .param p16, "photoId"    # J
    .param p18, "phoneType"    # I
    .param p19, "name"    # Ljava/lang/String;
    .param p20, "number"    # Ljava/lang/String;
    .param p21, "lookup"    # Ljava/lang/String;
    .param p22, "isSdn"    # I
    .param p23, "isRegularSearch"    # Ljava/lang/String;
    .param p24, "nameOffset"    # Ljava/lang/String;

    .prologue
    .line 313
    const/16 v1, 0x13

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p7, v0, v1

    const/4 v1, 0x4

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object p11, v0, v1

    const/4 v1, 0x7

    invoke-static {p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    aput-object p19, v0, v1

    const/16 v1, 0xe

    aput-object p20, v0, v1

    const/16 v1, 0xf

    aput-object p21, v0, v1

    const/16 v1, 0x10

    invoke-static/range {p22 .. p22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    aput-object p23, v0, v1

    const/16 v1, 0x12

    aput-object p24, v0, v1

    .line 319
    .local v0, "record":[Ljava/lang/Object;
    return-object v0
.end method

.method private dialerSearchInit()V
    .locals 11

    .prologue
    .line 118
    const-string v2, "DialerSearchHelper"

    const-string v3, "MTK-DialerSearch, dialerSearchInit"

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 121
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 123
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v8

    .line 124
    .local v8, "displayOrder":I
    iget-object v2, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v10

    .line 125
    .local v10, "sortOrder":I
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "dialer_search_init"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 127
    .local v6, "baseUri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "android.contacts.DISPLAY_ORDER"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "android.contacts.SORT_ORDER"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 132
    .local v1, "dialerSearchUri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 133
    if-eqz v7, :cond_0

    .line 134
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    const/4 v7, 0x0

    .line 145
    .end local v1    # "dialerSearchUri":Landroid/net/Uri;
    .end local v6    # "baseUri":Landroid/net/Uri;
    .end local v8    # "displayOrder":I
    .end local v10    # "sortOrder":I
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v9

    .line 139
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_1

    .line 140
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 141
    const/4 v7, 0x0

    .line 143
    :cond_1
    const-string v2, "DialerSearchHelper"

    const-string v3, "Exception thrown during handling MTK-DialerSearch, getDialerSearchResults"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mediatek/dialer/DialerSearchHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const-class v1, Lcom/mediatek/dialer/DialerSearchHelper;

    monitor-enter v1

    :try_start_0
    const-string v0, "DialerSearchHelper"

    const-string v2, "Getting Instance"

    invoke-static {v0, v2}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/mediatek/dialer/DialerSearchHelper;->sSingleton:Lcom/mediatek/dialer/DialerSearchHelper;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/mediatek/dialer/DialerSearchHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mediatek/dialer/DialerSearchHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/dialer/DialerSearchHelper;->sSingleton:Lcom/mediatek/dialer/DialerSearchHelper;

    .line 101
    :cond_0
    sget-object v0, Lcom/mediatek/dialer/DialerSearchHelper;->sSingleton:Lcom/mediatek/dialer/DialerSearchHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyContentChange()V
    .locals 4

    .prologue
    .line 402
    const-string v2, "DialerSearchHelper"

    const-string v3, "notify content change~~"

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v2, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/dialer/DialerSearchHelper$DialerSearchContentChangeListener;

    .line 404
    .local v1, "listener":Lcom/mediatek/dialer/DialerSearchHelper$DialerSearchContentChangeListener;
    invoke-interface {v1}, Lcom/mediatek/dialer/DialerSearchHelper$DialerSearchContentChangeListener;->onDialerSeachContentChange()V

    goto :goto_0

    .line 406
    .end local v1    # "listener":Lcom/mediatek/dialer/DialerSearchHelper$DialerSearchContentChangeListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public dialerSearchUpdateAsync()V
    .locals 4

    .prologue
    .line 105
    const-string v0, "DialerSearchHelper"

    const-string v1, "MTK-DialerSearch, dialerSearchUpdateAsync~~"

    invoke-static {v0, v1}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/dialer/DialerSearchHelper$2;

    invoke-direct {v1, p0}, Lcom/mediatek/dialer/DialerSearchHelper$2;-><init>(Lcom/mediatek/dialer/DialerSearchHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mHasOnGoingUpdateRequest:Z

    .line 114
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mHander:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 115
    return-void
.end method

.method public getDialerSearchResults(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 153
    const-string v2, "DialerSearchHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK-DialerSearch, getDialerSearchResults: queryFilter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 158
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v9

    .line 159
    .local v9, "displayOrder":I
    iget-object v2, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v11

    .line 160
    .local v11, "sortOrder":I
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "dialer_search"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 161
    .local v6, "baseUri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 162
    .local v8, "dialerSearchUri":Landroid/net/Uri;
    const-string v2, "DialerSearchHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK-DialerSearch, DataReady: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mDataIsReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,displayOrder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,sortOrder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "isDataReady"

    iget-boolean v4, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mDataIsReady:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "android.contacts.DISPLAY_ORDER"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "android.contacts.SORT_ORDER"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 171
    .local v1, "dialerSearchParamUri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 173
    const-string v2, "DialerSearchHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK-DialerSearch, cursor.getCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mDataIsReady:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v7

    .line 184
    .end local v1    # "dialerSearchParamUri":Landroid/net/Uri;
    .end local v6    # "baseUri":Landroid/net/Uri;
    .end local v8    # "dialerSearchUri":Landroid/net/Uri;
    .end local v9    # "displayOrder":I
    .end local v11    # "sortOrder":I
    :goto_0
    return-object v2

    .line 177
    :catch_0
    move-exception v10

    .line 178
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "DialerSearchHelper"

    const-string v3, "Exception thrown during handling MTK-DialerSearch, getDialerSearchResults"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    if-eqz v7, :cond_0

    .line 181
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 182
    const/4 v7, 0x0

    :cond_0
    move-object v2, v12

    .line 184
    goto :goto_0
.end method

.method public getRegularDialerSearchResults(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 43
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "useCallableUri"    # Z

    .prologue
    .line 203
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/dialer/DialerSearchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 204
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/16 v36, 0x0

    .line 205
    .local v36, "cursor":Landroid/database/Cursor;
    const/16 v42, 0x0

    .line 208
    .local v42, "result":Landroid/database/Cursor;
    if-eqz p2, :cond_0

    .line 209
    :try_start_0
    sget-object v33, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 214
    .local v33, "baseUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v34

    .line 215
    .local v34, "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 216
    const-string v5, "remove_duplicate_entries"

    const-string v6, "true"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 218
    invoke-virtual/range {v34 .. v34}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 222
    .local v3, "regularDialerSearchUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/dialer/DialerSearchHelper;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v5}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 223
    sget-object v4, Lcom/mediatek/dialer/DialerSearchHelper$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    .line 228
    .local v4, "projection":[Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/dialer/DialerSearchHelper;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v5}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 229
    const-string v7, "sort_key"

    .line 233
    .local v7, "sortOrder":Ljava/lang/String;
    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 235
    const/16 v37, 0x0

    .line 236
    .local v37, "cursorPos":I
    const/16 v35, 0x0

    .line 237
    .local v35, "count":I
    if-eqz v36, :cond_4

    .line 238
    const-string v5, "DialerSearchHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MTK-DialerSearch, regularDialerSearch,cursor.getCount: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v35

    .line 241
    move/from16 v0, v35

    new-array v0, v0, [[Ljava/lang/Object;

    move-object/from16 v41, v0

    .local v41, "objectMap":[[Ljava/lang/Object;
    move/from16 v38, v37

    .line 243
    .end local v37    # "cursorPos":I
    .local v38, "cursorPos":I
    :goto_3
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 244
    const-string v5, "contact_id"

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 245
    .local v11, "contactId":J
    const-string v5, "_id"

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 246
    .local v13, "dataId":J
    const-string v5, "photo_id"

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 247
    .local v24, "photoId":J
    const-string v5, "data2"

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 248
    .local v26, "type":I
    const-string v5, "data3"

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 249
    .local v40, "numberLabel":I
    const-string v5, "display_name"

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 250
    .local v27, "displayName":Ljava/lang/String;
    const-string v5, "data1"

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 251
    .local v28, "number":Ljava/lang/String;
    const-string v5, "lookup"

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 252
    .local v29, "lookup":Ljava/lang/String;
    const-string v5, "indicate_phone_or_sim_contact"

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 254
    .local v22, "simIndicate":I
    add-int/lit8 v37, v38, 0x1

    .end local v38    # "cursorPos":I
    .restart local v37    # "cursorPos":I
    const-wide/16 v9, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v30, 0x0

    const-string v31, "true"

    move-object/from16 v8, p0

    move-object/from16 v32, p1

    invoke-direct/range {v8 .. v32}, Lcom/mediatek/dialer/DialerSearchHelper;->buildCursorRecord(JJJLjava/lang/String;JILjava/lang/String;IIIIJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v41, v38

    move/from16 v38, v37

    .line 257
    .end local v37    # "cursorPos":I
    .restart local v38    # "cursorPos":I
    goto/16 :goto_3

    .line 211
    .end local v3    # "regularDialerSearchUri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v7    # "sortOrder":Ljava/lang/String;
    .end local v11    # "contactId":J
    .end local v13    # "dataId":J
    .end local v22    # "simIndicate":I
    .end local v24    # "photoId":J
    .end local v26    # "type":I
    .end local v27    # "displayName":Ljava/lang/String;
    .end local v28    # "number":Ljava/lang/String;
    .end local v29    # "lookup":Ljava/lang/String;
    .end local v33    # "baseUri":Landroid/net/Uri;
    .end local v34    # "builder":Landroid/net/Uri$Builder;
    .end local v35    # "count":I
    .end local v38    # "cursorPos":I
    .end local v40    # "numberLabel":I
    .end local v41    # "objectMap":[[Ljava/lang/Object;
    :cond_0
    sget-object v33, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .restart local v33    # "baseUri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 225
    .restart local v3    # "regularDialerSearchUri":Landroid/net/Uri;
    .restart local v34    # "builder":Landroid/net/Uri$Builder;
    :cond_1
    sget-object v4, Lcom/mediatek/dialer/DialerSearchHelper$PhoneQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    .restart local v4    # "projection":[Ljava/lang/String;
    goto/16 :goto_1

    .line 231
    :cond_2
    const-string v7, "sort_key_alt"

    .restart local v7    # "sortOrder":Ljava/lang/String;
    goto/16 :goto_2

    .line 258
    .restart local v35    # "count":I
    .restart local v38    # "cursorPos":I
    .restart local v41    # "objectMap":[[Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/mediatek/dialer/DialerSearchHelper;->buildCursor([[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v42

    move/from16 v37, v38

    .line 260
    .end local v38    # "cursorPos":I
    .end local v41    # "objectMap":[[Ljava/lang/Object;
    .restart local v37    # "cursorPos":I
    :cond_4
    if-eqz v36, :cond_5

    .line 261
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    const/16 v36, 0x0

    :cond_5
    move-object/from16 v5, v42

    .line 277
    .end local v3    # "regularDialerSearchUri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v7    # "sortOrder":Ljava/lang/String;
    .end local v33    # "baseUri":Landroid/net/Uri;
    .end local v34    # "builder":Landroid/net/Uri$Builder;
    .end local v35    # "count":I
    .end local v37    # "cursorPos":I
    :goto_4
    return-object v5

    .line 265
    :catch_0
    move-exception v39

    .line 266
    .local v39, "e":Ljava/lang/Exception;
    const-string v5, "DialerSearchHelper"

    const-string v6, "Exception thrown during handling MTK-DialerSearch, getDialerSearchResults"

    move-object/from16 v0, v39

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    if-eqz v36, :cond_6

    .line 269
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 270
    const/16 v36, 0x0

    .line 273
    :cond_6
    if-eqz v42, :cond_7

    .line 274
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->close()V

    .line 275
    const/16 v42, 0x0

    .line 277
    :cond_7
    const/4 v5, 0x0

    goto :goto_4
.end method

.method public registerForContentChange(Lcom/mediatek/dialer/DialerSearchHelper$DialerSearchContentChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/dialer/DialerSearchHelper$DialerSearchContentChangeListener;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_0
    return-void
.end method

.method public setDatasforDialersearch()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mDataIsReady:Z

    .line 193
    return-void
.end method

.method public unRegisterForContentChange(Lcom/mediatek/dialer/DialerSearchHelper$DialerSearchContentChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/dialer/DialerSearchHelper$DialerSearchContentChangeListener;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 399
    :cond_0
    return-void
.end method
