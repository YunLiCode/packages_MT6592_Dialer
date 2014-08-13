.class final Lcom/android/dialer/calllog/IntentProvider$3;
.super Lcom/android/dialer/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/IntentProvider;->getCallDetailIntentProvider(Landroid/database/Cursor;IJI)Lcom/android/dialer/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$groupSize:I

.field final synthetic val$id:J

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/database/Cursor;IIJ)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/dialer/calllog/IntentProvider$3;->val$cursor:Landroid/database/Cursor;

    iput p2, p0, Lcom/android/dialer/calllog/IntentProvider$3;->val$position:I

    iput p3, p0, Lcom/android/dialer/calllog/IntentProvider$3;->val$groupSize:I

    iput-wide p4, p0, Lcom/android/dialer/calllog/IntentProvider$3;->val$id:J

    invoke-direct {p0}, Lcom/android/dialer/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 73
    iget-object v4, p0, Lcom/android/dialer/calllog/IntentProvider$3;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    # getter for: Lcom/android/dialer/calllog/IntentProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/dialer/calllog/IntentProvider;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getCallDetailIntentProvider() cursor is already closed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v2, 0x0

    .line 106
    :goto_0
    return-object v2

    .line 81
    :cond_0
    iget-object v4, p0, Lcom/android/dialer/calllog/IntentProvider$3;->val$cursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/dialer/calllog/IntentProvider$3;->val$position:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 83
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/dialer/CallDetailActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/dialer/calllog/IntentProvider$3;->val$cursor:Landroid/database/Cursor;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "voicemailUri":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 87
    const-string v4, "EXTRA_VOICEMAIL_URI"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    :cond_1
    const-string v4, "EXTRA_VOICEMAIL_START_PLAYBACK"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    iget v4, p0, Lcom/android/dialer/calllog/IntentProvider$3;->val$groupSize:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 94
    iget v4, p0, Lcom/android/dialer/calllog/IntentProvider$3;->val$groupSize:I

    new-array v0, v4, [J

    .line 96
    .local v0, "ids":[J
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    iget v4, p0, Lcom/android/dialer/calllog/IntentProvider$3;->val$groupSize:I

    if-ge v1, v4, :cond_2

    .line 97
    iget-object v4, p0, Lcom/android/dialer/calllog/IntentProvider$3;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 98
    iget-object v4, p0, Lcom/android/dialer/calllog/IntentProvider$3;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 100
    :cond_2
    const-string v4, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto :goto_0

    .line 103
    .end local v0    # "ids":[J
    .end local v1    # "index":I
    :cond_3
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/dialer/calllog/IntentProvider$3;->val$id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method
