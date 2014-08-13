.class public Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;
.super Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;
.source "CallLogQueryHandlerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;,
        Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$CatchingWorkerHandler;
    }
.end annotation


# static fields
.field public static final CALL_TYPE_ALL:I = -0x1

.field private static final DELETE_CALLS_TOKEN:I = 0x3b

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final NEW_SECTION_TIME_WINDOW:J

.field private static final NUM_LOGS_TO_DISPLAY:I = 0x3e8

.field private static final QUERY_ALL_CALLS_JOIN_DATA_VIEW_TOKEN:I = 0x3e

.field private static final QUERY_ALL_CALLS_TOKEN:I = 0x3c

.field private static final QUERY_NEW_CALLS_TOKEN:I = 0x35

.field private static final QUERY_OLD_CALLS_TOKEN:I = 0x36

.field private static final QUERY_SEARCH_TOKEN:I = 0x3d

.field private static final QUERY_VOICEMAIL_STATUS_TOKEN:I = 0x3a

.field private static final TAG:Ljava/lang/String; = "CallLogQueryHandler"

.field private static final UPDATE_MARK_AS_OLD_TOKEN:I = 0x37

.field private static final UPDATE_MARK_MISSED_CALL_AS_READ_TOKEN:I = 0x39

.field private static final UPDATE_MARK_VOICEMAILS_AS_OLD_TOKEN:I = 0x38


# instance fields
.field private mCallsRequestId:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogLimit:I

.field private mNewCallsCursor:Landroid/database/Cursor;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mOldCallsCursor:Landroid/database/Cursor;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 93
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->NEW_SECTION_TIME_WINDOW:J

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "listener"    # Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;

    .prologue
    .line 153
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;-><init>(Landroid/content/ContentResolver;Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;I)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "listener"    # Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;
    .param p3, "limit"    # I

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 158
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->mListener:Ljava/lang/ref/WeakReference;

    .line 160
    iput p3, p0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->mLogLimit:I

    .line 161
    return-void
.end method

.method private cancelFetch()V
    .locals 1

    .prologue
    .line 247
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->cancelOperation(I)V

    .line 248
    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->cancelOperation(I)V

    .line 249
    return-void
.end method

.method private fetchCalls(IIIIJ)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "requestId"    # I
    .param p3, "simFilter"    # I
    .param p4, "typeFilter"    # I
    .param p5, "newerThan"    # J

    .prologue
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchCalls(), token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " simFilter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " typeFilter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->log(Ljava/lang/String;)V

    .line 473
    invoke-direct {p0, p3, p4}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->getSelection(II)Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, "selection":Ljava/lang/String;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 476
    .local v3, "queryUri":Landroid/net/Uri;
    sget-object v4, Lcom/mediatek/dialer/calllogex/CallLogQueryEx;->_PROJECTION:[Ljava/lang/String;

    .line 478
    .local v4, "queryProjection":[Ljava/lang/String;
    const/16 v0, 0x3e

    if-ne v0, p1, :cond_0

    .line 479
    const-string v0, "content://call_log/callsjoindataview"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 480
    sget-object v4, Lcom/mediatek/dialer/calllogex/CallLogQueryEx;->PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String;

    .line 484
    :cond_0
    invoke-static {}, Lcom/mediatek/dialer/util/VvmUtils;->isVvmEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    invoke-static {v3}, Lcom/mediatek/dialer/util/VvmUtils;->buildVvmAllowedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 489
    :cond_1
    const/4 v6, 0x0

    .line 490
    .local v6, "selectionArgs":[Ljava/lang/String;
    iget v0, p0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->mLogLimit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 491
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    iget v2, p0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->mLogLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 492
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_3

    .line 493
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .local v8, "builder":Ljava/lang/StringBuilder;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 495
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_2
    const-string v0, "(%s > ?)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v7, "date"

    aput-object v7, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 500
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .end local v6    # "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 503
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchCalls() queryUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->log(Ljava/lang/String;)V

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchCalls(),selection ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "selectionArgs ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->log(Ljava/lang/String;)V

    .line 505
    invoke-static {}, Lcom/mediatek/dialer/calllog/CallLogDateFormatHelper;->refreshData()V

    .line 506
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method private getSelection(II)Ljava/lang/String;
    .locals 11
    .param p1, "simFilter"    # I
    .param p2, "typeFilter"    # I

    .prologue
    .line 538
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .local v7, "builder":Ljava/lang/StringBuilder;
    const/16 v0, 0x4e24

    if-ne v0, p1, :cond_3

    .line 542
    const-string v0, "simid=-2"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :cond_0
    :goto_0
    const/16 v0, 0x4e2b

    if-eq p2, v0, :cond_5

    .line 549
    sparse-switch p2, :sswitch_data_0

    .line 563
    const/16 v10, 0x4e2c

    .line 567
    .local v10, "t":I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 568
    const-string v0, " and "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_1
    invoke-static {}, Lcom/mediatek/dialer/util/VvmUtils;->isVvmEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    if-ne v10, v0, :cond_4

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type in (4, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .end local v10    # "t":I
    :cond_2
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 598
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    :goto_3
    return-object v0

    .line 543
    :cond_3
    const/16 v0, 0x4e20

    if-ge p1, v0, :cond_0

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 551
    :sswitch_0
    const/4 v10, 0x1

    .line 552
    .restart local v10    # "t":I
    goto :goto_1

    .line 554
    .end local v10    # "t":I
    :sswitch_1
    const/4 v10, 0x3

    .line 555
    .restart local v10    # "t":I
    goto :goto_1

    .line 557
    .end local v10    # "t":I
    :sswitch_2
    const/4 v10, 0x2

    .line 558
    .restart local v10    # "t":I
    goto :goto_1

    .line 560
    .end local v10    # "t":I
    :sswitch_3
    const/4 v10, 0x5

    .line 561
    .restart local v10    # "t":I
    goto :goto_1

    .line 575
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 581
    .end local v10    # "t":I
    :cond_5
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/mediatek/contacts/ext/CallDetailExtension;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x1

    :goto_4
    const-string v2, " and "

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "ExtensionForOP01"

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/contacts/ext/CallDetailExtension;->setChar(ZLjava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 584
    .local v9, "str":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 585
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :cond_6
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/mediatek/contacts/ext/CallDetailExtension;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "type"

    const/4 v4, 0x5

    const/4 v5, 0x1

    const-string v6, "ExtensionForOP01"

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/contacts/ext/CallDetailExtension;->setChar(ZLjava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 591
    .local v8, "callsType":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 592
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 581
    .end local v8    # "callsType":Ljava/lang/String;
    .end local v9    # "str":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .line 600
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 549
    :sswitch_data_0
    .sparse-switch
        0x4e2c -> :sswitch_0
        0x4e2d -> :sswitch_1
        0x4e2e -> :sswitch_2
        0x4e35 -> :sswitch_3
    .end sparse-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 604
    const-string v0, "CallLogQueryHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return-void
.end method

.method private declared-synchronized newCallsRequest()I
    .locals 1

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->mNewCallsCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 307
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->mOldCallsCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->mNewCallsCursor:Landroid/database/Cursor;

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->mOldCallsCursor:Landroid/database/Cursor;

    .line 310
    iget v0, p0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->mCallsRequestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->mCallsRequestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateAdapterData(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "combinedCursor"    # Landroid/database/Cursor;

    .prologue
    .line 402
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;

    .line 403
    .local v0, "listener":Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;
    if-eqz v0, :cond_0

    .line 404
    invoke-interface {v0, p1}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;->onCallsFetched(Landroid/database/Cursor;)V

    .line 411
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 147
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$CatchingWorkerHandler;-><init>(Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;Landroid/os/Looper;)V

    return-object v0
.end method

.method public deleteSpecifiedCalls(Ljava/lang/String;)V
    .locals 6
    .param p1, "deleteFilter"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3b

    const/4 v2, 0x0

    .line 529
    invoke-static {}, Lcom/mediatek/dialer/util/VvmUtils;->isVvmEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    sget-object v3, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 533
    :cond_0
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method public fetchCallsJionDataView(II)V
    .locals 7
    .param p1, "simFilter"    # I
    .param p2, "typeFilter"    # I

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchCallsJionDataView(), simFilter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " typeFilter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->log(Ljava/lang/String;)V

    .line 465
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->cancelFetch()V

    .line 466
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->newCallsRequest()I

    move-result v2

    .line 467
    .local v2, "requestId":I
    const/16 v1, 0x3e

    const-wide/16 v5, -0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->fetchCalls(IIIIJ)V

    .line 468
    return-void
.end method

.method public fetchCallsJionDataView(IIJ)V
    .locals 7
    .param p1, "simFilter"    # I
    .param p2, "typeFilter"    # I
    .param p3, "newerThan"    # J

    .prologue
    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchCallsJionDataView() for phone favorite, simFilter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " typeFilter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "newerThan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->log(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->cancelFetch()V

    .line 459
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->newCallsRequest()I

    move-result v2

    .line 460
    .local v2, "requestId":I
    const/16 v1, 0x3e

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->fetchCalls(IIIIJ)V

    .line 461
    return-void
.end method

.method public fetchSearchCalls(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 511
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->cancelFetch()V

    .line 512
    const-string v0, "fetchSearchCalls(uri )"

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->log(Ljava/lang/String;)V

    .line 513
    invoke-static {}, Lcom/mediatek/dialer/calllog/CallLogDateFormatHelper;->refreshData()V

    .line 514
    const/16 v1, 0x3d

    sget-object v4, Lcom/mediatek/dialer/calllogex/CallLogQueryEx;->PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v0, p0

    move-object v3, p1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public markMissedCallsAsRead()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v7, "where":Ljava/lang/StringBuilder;
    const-string v0, "is_read"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v0, "type"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 293
    .local v4, "values":Landroid/content/ContentValues;
    const-string v0, "is_read"

    const-string v1, "1"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/16 v1, 0x39

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public markNewCallsAsOld()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v7, "where":Ljava/lang/StringBuilder;
    const-string v0, "new"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v0, " = 1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 259
    .local v4, "values":Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/16 v1, 0x37

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public markNewVoicemailsAsOld()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 270
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v7, "where":Ljava/lang/StringBuilder;
    const-string v0, "new"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v0, " = 1 AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v0, "type"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v0, " = ?"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 277
    .local v4, "values":Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/16 v1, 0x38

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 520
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;

    .line 521
    .local v0, "listener":Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;
    if-eqz v0, :cond_0

    .line 522
    invoke-interface {v0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;->onCallsDeleted()V

    .line 524
    :cond_0
    return-void
.end method

.method protected onNotNullableQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 347
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_0

    .line 348
    invoke-direct {p0, p3}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->updateAdapterData(Landroid/database/Cursor;)V

    .line 363
    :goto_0
    return-void

    .line 351
    :cond_0
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_1

    .line 352
    invoke-direct {p0, p3}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->updateAdapterData(Landroid/database/Cursor;)V

    goto :goto_0

    .line 355
    :cond_1
    const-string v0, "CallLogQueryHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown query completed: ignoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
