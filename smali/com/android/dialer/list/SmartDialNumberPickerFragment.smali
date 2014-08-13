.class public Lcom/android/dialer/list/SmartDialNumberPickerFragment;
.super Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
.source "SmartDialNumberPickerFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/dialer/list/SmartDialNumberPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/SmartDialNumberPickerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "adapter":Lcom/android/dialer/list/SmartDialNumberListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setDisplayPhotos(Z)V

    .line 47
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->usesCallableUri()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setUseCallableUri(Z)V

    .line 48
    return-object v0
.end method

.method protected getPhoneUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;

    .line 91
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
    .line 57
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberPickerFragment;->getDirectoryLoaderId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 58
    sget-object v2, Lcom/android/dialer/list/SmartDialNumberPickerFragment;->TAG:Ljava/lang/String;

    const-string v3, "Directory load"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    .line 61
    :cond_0
    sget-object v2, Lcom/android/dialer/list/SmartDialNumberPickerFragment;->TAG:Ljava/lang/String;

    const-string v3, "Creating loader"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;

    .line 64
    .local v0, "adapter":Lcom/android/dialer/list/SmartDialNumberListAdapter;
    sget-object v2, Lcom/android/dialer/list/SmartDialNumberPickerFragment;->TAG:Ljava/lang/String;

    const-string v3, "MTK-DialerSearch, Create loader"

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-static {}, Lcom/mediatek/dialer/util/DialerUtils;->isDialerSearchEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    new-instance v1, Lcom/mediatek/dialer/DialerSearchCursorLoader;

    .end local v1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberPickerFragment;->usesCallableUri()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/mediatek/dialer/DialerSearchCursorLoader;-><init>(Landroid/content/Context;Z)V

    .line 78
    .restart local v1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->configureLoader(Landroid/content/Loader;)V

    goto :goto_0

    .line 74
    :cond_1
    new-instance v1, Lcom/android/dialer/dialpad/SmartDialCursorLoader;

    .end local v1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;-><init>(Landroid/content/Context;)V

    .restart local v1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    goto :goto_1
.end method
