.class public Lcom/mediatek/dialer/DialerSearchCursorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "DialerSearchCursorLoader.java"


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
.field private final CONTACT_DATA_ID:I

.field private final CONTACT_DISPLAY_NAME:I

.field private final CONTACT_ID:I

.field private final CONTACT_LOOKUP:I

.field private final CONTACT_NUMBER:I

.field private final CONTACT_PHOTO_ID:I

.field private final DEBUG:Z

.field private final INDICATE_PHONE_OR_SIM:I

.field private final TAG:Ljava/lang/String;

.field private mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mQuery:Ljava/lang/String;

.field private mRegularSearch:Z

.field private mUseCallableUri:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useCallable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 40
    const-string v0, "DialerSearchCursorLoader"

    iput-object v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->TAG:Ljava/lang/String;

    .line 41
    iput-boolean v2, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->DEBUG:Z

    .line 45
    iput-boolean v1, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mUseCallableUri:Z

    .line 46
    iput-boolean v1, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mRegularSearch:Z

    .line 49
    iput v2, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->CONTACT_ID:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->CONTACT_DATA_ID:I

    .line 51
    const/16 v0, 0x9

    iput v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->INDICATE_PHONE_OR_SIM:I

    .line 52
    const/16 v0, 0xb

    iput v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->CONTACT_PHOTO_ID:I

    .line 53
    const/16 v0, 0xd

    iput v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->CONTACT_DISPLAY_NAME:I

    .line 54
    const/16 v0, 0xe

    iput v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->CONTACT_NUMBER:I

    .line 55
    const/16 v0, 0xf

    iput v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->CONTACT_LOOKUP:I

    .line 59
    iput-object p1, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mContext:Landroid/content/Context;

    .line 60
    iput-boolean p2, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mUseCallableUri:Z

    .line 61
    return-void
.end method

.method private releaseResources(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 205
    const/4 p1, 0x0

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public configureQuery(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "isSmartQuery"    # Z

    .prologue
    .line 69
    const-string v0, "DialerSearchCursorLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTK-DialerSearch, Configure new query to be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    if-eqz p2, :cond_1

    .line 72
    invoke-static {}, Lcom/android/dialer/dialpad/SmartDialPrefix;->getMap()Lcom/android/dialer/dialpad/SmartDialMap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mQuery:Ljava/lang/String;

    .line 79
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 80
    return-void

    .line 74
    :cond_1
    iput-object p1, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mQuery:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->isInValidDialpadString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mRegularSearch:Z

    goto :goto_0
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 145
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 147
    invoke-virtual {p0}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 153
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 154
    invoke-direct {p0, v0}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 89
    const-string v2, "DialerSearchCursorLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK-DialerSearch, Load in background. mQuery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mQuery:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/dialer/DialerSearchHelper;->getInstance(Landroid/content/Context;)Lcom/mediatek/dialer/DialerSearchHelper;

    move-result-object v1

    .line 92
    .local v1, "dialerSearchHelper":Lcom/mediatek/dialer/DialerSearchHelper;
    const/4 v0, 0x0

    .line 93
    .local v0, "cursor":Landroid/database/Cursor;
    iget-boolean v2, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mRegularSearch:Z

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mQuery:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mUseCallableUri:Z

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/dialer/DialerSearchHelper;->getRegularDialerSearchResults(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 98
    :goto_0
    if-eqz v0, :cond_1

    .line 99
    const-string v2, "DialerSearchCursorLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK-DialerSearch, loadInBackground, result.getCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_1
    return-object v0

    .line 96
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/dialer/DialerSearchHelper;->getDialerSearchResults(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_1
    const-string v2, "DialerSearchCursorLoader"

    const-string v3, "MTK-DialerSearch, ----cursor is null----"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_0

    .line 192
    invoke-virtual {p0, p1}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 193
    const-string v0, "DialerSearchCursorLoader"

    const-string v1, "MTK-DialerSearch, onCanceled(). force deliverResult cursor!"

    invoke-static {v0, v1}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->onStopLoading()V

    .line 182
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 186
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchCursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->forceLoad()V

    .line 168
    :cond_1
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/mediatek/dialer/DialerSearchCursorLoader;->cancelLoad()Z

    .line 174
    return-void
.end method
