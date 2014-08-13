.class public Lcom/android/dialer/list/SmartDialSearchFragment;
.super Lcom/android/dialer/list/SearchFragment;
.source "SmartDialSearchFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/SmartDialSearchFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/dialer/list/SearchFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, "adapter":Lcom/android/dialer/list/SmartDialNumberListAdapter;
    invoke-super {p0}, Lcom/android/dialer/list/SearchFragment;->usesCallableUri()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setUseCallableUri(Z)V

    .line 43
    invoke-virtual {v0, v3}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setQuickContactEnabled(Z)V

    .line 46
    invoke-virtual {v0, v2, v2}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setShortcutEnabled(IZ)V

    .line 47
    invoke-virtual {v0, v3, v2}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setShortcutEnabled(IZ)V

    .line 48
    return-object v0
.end method

.method protected getPhoneUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;

    .line 98
    .local v0, "adapter":Lcom/android/dialer/list/SmartDialNumberListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getDirectoryLoaderId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 68
    invoke-super {p0, p1, p2}, Lcom/android/dialer/list/SearchFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;

    .line 72
    .local v0, "adapter":Lcom/android/dialer/list/SmartDialNumberListAdapter;
    sget-object v2, Lcom/android/dialer/list/SmartDialSearchFragment;->TAG:Ljava/lang/String;

    const-string v3, "MTK-DialerSearch, Create loader"

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-static {}, Lcom/mediatek/dialer/util/DialerUtils;->isDialerSearchEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    new-instance v1, Lcom/mediatek/dialer/DialerSearchCursorLoader;

    .end local v1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0}, Lcom/android/dialer/list/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->usesCallableUri()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/mediatek/dialer/DialerSearchCursorLoader;-><init>(Landroid/content/Context;Z)V

    .line 85
    .restart local v1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->configureLoader(Landroid/content/Loader;)V

    goto :goto_0

    .line 82
    :cond_1
    new-instance v1, Lcom/android/dialer/dialpad/SmartDialCursorLoader;

    .end local v1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0}, Lcom/android/dialer/list/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;-><init>(Landroid/content/Context;)V

    .restart local v1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    goto :goto_1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x1

    .line 53
    invoke-super {p0, p1, p2}, Lcom/android/dialer/list/SearchFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;

    .line 55
    .local v0, "adapter":Lcom/android/dialer/list/SmartDialNumberListAdapter;
    invoke-virtual {v0, v1, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setShortcutEnabled(IZ)V

    .line 57
    invoke-virtual {v0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->notifyDataSetChanged()V

    .line 59
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/list/SmartDialSearchFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
