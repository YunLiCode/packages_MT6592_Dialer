.class public Lcom/android/dialer/CallDetailActivityQueryHandler;
.super Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;
.source "CallDetailActivityQueryHandler.java"


# static fields
.field private static final HAS_CONTENT_COLUMN_INDEX:I = 0x1

.field private static final QUERY_VOICEMAIL_CONTENT_TOKEN:I = 0x65

.field private static final QUERY_VOICEMAIL_STATUS_TOKEN:I = 0x66

.field private static final SOURCE_PACKAGE_COLUMN_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CallDetail"


# instance fields
.field private final VOICEMAIL_CONTENT_PROJECTION:[Ljava/lang/String;

.field private final mCallDetailActivity:Lcom/android/dialer/CallDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/CallDetailActivity;)V
    .locals 3
    .param p1, "callDetailActivity"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "source_package"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "has_content"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivityQueryHandler;->VOICEMAIL_CONTENT_PROJECTION:[Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivityQueryHandler;->mCallDetailActivity:Lcom/android/dialer/CallDetailActivity;

    .line 49
    return-void
.end method

.method private getSourcePackage(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "voicemailCursor"    # Landroid/database/Cursor;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasNoAudio(Landroid/database/Cursor;)Z
    .locals 2
    .param p1, "voicemailCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToFirst(Landroid/database/Cursor;)Z
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 97
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    const-string v0, "CallDetail"

    const-string v1, "Cursor not valid, could not move to first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized onNotNullableQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v1, 0x66

    .line 69
    monitor-enter p0

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 71
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/dialer/CallDetailActivityQueryHandler;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/android/dialer/CallDetailActivityQueryHandler;->hasNoAudio(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-direct {p0, p3}, Lcom/android/dialer/CallDetailActivityQueryHandler;->getSourcePackage(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/VoicemailContract$Status;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/CallDetailActivityQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_0
    :try_start_1
    invoke-static {p3}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_2
    const-string v0, "CallDetail"

    const-string v1, " !moveToFirst(cursor) && hasNoAudio(cursor)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {p3}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 82
    :cond_1
    if-ne p1, v1, :cond_2

    .line 85
    :try_start_4
    const-string v0, "CallDetail"

    const-string v1, "token == QUERY_VOICEMAIL_STATUS_TOKEN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_2
    const-string v0, "CallDetail"

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
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public startVoicemailStatusQuery(Landroid/net/Uri;)V
    .locals 8
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 61
    const/16 v1, 0x65

    iget-object v4, p0, Lcom/android/dialer/CallDetailActivityQueryHandler;->VOICEMAIL_CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/CallDetailActivityQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
