.class public Lcom/android/dialer/calllog/CallLogQueryHandler;
.super Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;
.source "CallLogQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;,
        Lcom/android/dialer/calllog/CallLogQueryHandler$CatchingWorkerHandler;
    }
.end annotation


# static fields
.field public static final CALL_TYPE_ALL:I = -0x1

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final NUM_LOGS_TO_DISPLAY:I = 0x3e8

.field private static final QUERY_CALLLOG_TOKEN:I = 0x36

.field private static final QUERY_VOICEMAIL_STATUS_TOKEN:I = 0x3a

.field private static final TAG:Ljava/lang/String; = "CallLogQueryHandler"

.field private static final UPDATE_MARK_AS_OLD_TOKEN:I = 0x37

.field private static final UPDATE_MARK_MISSED_CALL_AS_READ_TOKEN:I = 0x39

.field private static final UPDATE_MARK_VOICEMAILS_AS_OLD_TOKEN:I = 0x38


# instance fields
.field private mCallLogCursor:Landroid/database/Cursor;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

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
            "Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/dialer/calllog/CallLogQueryHandler;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "listener"    # Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;

    .prologue
    .line 126
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;I)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "listener"    # Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;
    .param p3, "limit"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 131
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 132
    iput p3, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mLogLimit:I

    .line 133
    return-void
.end method

.method private cancelFetch()V
    .locals 1

    .prologue
    .line 200
    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->cancelOperation(I)V

    .line 201
    return-void
.end method

.method private fetchCalls(IIIZJ)V
    .locals 11
    .param p1, "token"    # I
    .param p2, "requestId"    # I
    .param p3, "callType"    # I
    .param p4, "newOnly"    # Z
    .param p5, "newerThan"    # J

    .prologue
    .line 162
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v10, "where":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 165
    .local v9, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 166
    const-string v0, "new"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v0, " = 1"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_0
    const/4 v0, -0x1

    if-le p3, v0, :cond_2

    .line 171
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 172
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_1
    const-string v0, "(%s = ?)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "type"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_4

    .line 181
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 182
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_3
    const-string v0, "(%s > ?)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "date"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_4
    iget v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mLogLimit:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const/16 v8, 0x3e8

    .line 189
    .local v8, "limit":I
    :goto_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "selection":Ljava/lang/String;
    :goto_1
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 193
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/android/dialer/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    sget-object v0, Lcom/android/dialer/calllog/CallLogQueryHandler;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void

    .line 188
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v8    # "limit":I
    :cond_5
    iget v8, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mLogLimit:I

    goto :goto_0

    .line 189
    .restart local v8    # "limit":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private declared-synchronized newCallsRequest()I
    .locals 1

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mCallLogCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mCallLogCursor:Landroid/database/Cursor;

    .line 257
    iget v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mCallsRequestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mCallsRequestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateAdapterData(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "combinedCursor"    # Landroid/database/Cursor;

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;

    .line 299
    .local v0, "listener":Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;
    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v0, p1}, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;->onCallsFetched(Landroid/database/Cursor;)V

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private updateVoicemailStatus(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    .line 310
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;

    .line 311
    .local v0, "listener":Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;
    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0, p1}, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;->onVoicemailStatusFetched(Landroid/database/Cursor;)V

    .line 319
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 122
    new-instance v0, Lcom/android/dialer/calllog/CallLogQueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/calllog/CallLogQueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/dialer/calllog/CallLogQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public fetchCalls(I)V
    .locals 2
    .param p1, "callType"    # I

    .prologue
    .line 148
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(IJ)V

    .line 149
    return-void
.end method

.method public fetchCalls(IJ)V
    .locals 7
    .param p1, "callType"    # I
    .param p2, "newerThan"    # J

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->cancelFetch()V

    .line 143
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->newCallsRequest()I

    move-result v2

    .line 144
    .local v2, "requestId":I
    const/16 v1, 0x36

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(IIIZJ)V

    .line 145
    return-void
.end method

.method public fetchVoicemailStatus()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 152
    const/16 v1, 0x3a

    sget-object v3, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public markMissedCallsAsRead()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 236
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v7, "where":Ljava/lang/StringBuilder;
    const-string v0, "is_read"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v0, "type"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 242
    .local v4, "values":Landroid/content/ContentValues;
    const-string v0, "is_read"

    const-string v1, "1"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/16 v1, 0x39

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public markNewCallsAsOld()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 206
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v7, "where":Ljava/lang/StringBuilder;
    const-string v0, "new"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v0, " = 1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 211
    .local v4, "values":Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/16 v1, 0x37

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public markNewVoicemailsAsOld()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 220
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v7, "where":Ljava/lang/StringBuilder;
    const-string v0, "new"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v0, " = 1 AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v0, "type"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v0, " = ?"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 227
    .local v4, "values":Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
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

    invoke-virtual/range {v0 .. v6}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method protected onNotNullableQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 262
    const/16 v1, 0x36

    if-ne p1, v1, :cond_2

    .line 263
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 264
    .local v0, "requestId":I
    iget v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mCallsRequestId:I

    if-eq v0, v1, :cond_1

    .line 268
    invoke-static {p3}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 292
    .end local v0    # "requestId":I
    :cond_0
    :goto_0
    return-void

    .line 274
    .restart local v0    # "requestId":I
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mCallLogCursor:Landroid/database/Cursor;

    invoke-static {v1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 275
    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mCallLogCursor:Landroid/database/Cursor;

    .line 288
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mCallLogCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mCallLogCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/android/dialer/calllog/CallLogQueryHandler;->updateAdapterData(Landroid/database/Cursor;)V

    .line 290
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mCallLogCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 276
    .end local v0    # "requestId":I
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_2
    const/16 v1, 0x3a

    if-ne p1, v1, :cond_3

    .line 277
    invoke-direct {p0, p3}, Lcom/android/dialer/calllog/CallLogQueryHandler;->updateVoicemailStatus(Landroid/database/Cursor;)V

    goto :goto_0

    .line 280
    :cond_3
    const-string v1, "CallLogQueryHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown query completed: ignoring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {p3}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0
.end method
