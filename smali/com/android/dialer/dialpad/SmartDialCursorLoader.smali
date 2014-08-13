.class public Lcom/android/dialer/dialpad/SmartDialCursorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "SmartDialCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

.field private mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 46
    const-class v0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->DEBUG:Z

    .line 58
    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private releaseResources(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method public configureQuery(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/android/dialer/dialpad/SmartDialPrefix;->getMap()Lcom/android/dialer/dialpad/SmartDialMap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mQuery:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mQuery:Ljava/lang/String;

    invoke-static {}, Lcom/android/dialer/dialpad/SmartDialPrefix;->getMap()Lcom/android/dialer/dialpad/SmartDialMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;-><init>(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    .line 73
    return-void
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 118
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 120
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 126
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 127
    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 86
    iget-object v6, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/dialerbind/DatabaseHelperManager;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;

    move-result-object v3

    .line 87
    .local v3, "dialerDatabaseHelper":Lcom/android/dialer/database/DialerDatabaseHelper;
    iget-object v6, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mQuery:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    invoke-virtual {v3, v6, v7}, Lcom/android/dialer/database/DialerDatabaseHelper;->getLooseMatches(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialNameMatcher;)Ljava/util/ArrayList;

    move-result-object v0

    .line 94
    .local v0, "allMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;>;"
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 95
    .local v2, "cursor":Landroid/database/MatrixCursor;
    sget-object v6, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    array-length v6, v6

    new-array v5, v6, [Ljava/lang/Object;

    .line 96
    .local v5, "row":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;

    .line 97
    .local v1, "contact":Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;
    const/4 v6, 0x0

    iget-wide v7, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->dataId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 98
    const/4 v6, 0x3

    iget-object v7, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->phoneNumber:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 99
    const/4 v6, 0x4

    iget-wide v7, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 100
    const/4 v6, 0x5

    iget-object v7, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->lookupKey:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 101
    const/4 v6, 0x6

    iget-wide v7, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->photoId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 102
    const/4 v6, 0x7

    iget-object v7, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->displayName:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 103
    invoke-virtual {v2, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    .end local v1    # "contact":Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;
    :cond_0
    return-object v2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    .line 167
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->onStopLoading()V

    .line 155
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 159
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->forceLoad()V

    .line 141
    :cond_1
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->cancelLoad()Z

    .line 147
    return-void
.end method
