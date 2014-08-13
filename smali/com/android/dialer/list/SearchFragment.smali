.class public Lcom/android/dialer/list/SearchFragment;
.super Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
.source "SearchFragment.java"

# interfaces
.implements Lcom/mediatek/dialer/DialerSearchHelper$DialerSearchContentChangeListener;


# static fields
.field private static final DIALER_SEARCH_CONTENT_CHANGE:I = 0x4e4


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;-><init>()V

    .line 52
    const-string v0, "SearchFragment"

    iput-object v0, p0, Lcom/android/dialer/list/SearchFragment;->TAG:Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/android/dialer/list/SearchFragment$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/SearchFragment$2;-><init>(Lcom/android/dialer/list/SearchFragment;)V

    iput-object v0, p0, Lcom/android/dialer/list/SearchFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/list/SearchFragment;)Lcom/android/dialer/list/OnListFragmentScrolledListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/SearchFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/dialer/list/SearchFragment;->mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/list/SearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/list/SearchFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/dialer/list/SearchFragment;->forceReloadData()V

    return-void
.end method

.method private forceReloadData()V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->reloadData()V

    .line 179
    iget-object v0, p0, Lcom/android/dialer/list/SearchFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4e4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    const-string v0, "SearchFragment"

    const-string v1, "Update data"

    invoke-static {v0, v1}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method private startActivityWithErrorToast(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/SearchFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a05ae

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 144
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, "adapter":Lcom/android/dialer/list/DialerPhoneNumberListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->setDisplayPhotos(Z)V

    .line 107
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->usesCallableUri()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->setUseCallableUri(Z)V

    .line 108
    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 58
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 60
    invoke-virtual {p0, v3}, Lcom/android/dialer/list/SearchFragment;->setQuickContactEnabled(Z)V

    .line 61
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/dialer/list/SearchFragment;->setDarkTheme(Z)V

    .line 62
    invoke-static {v3}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/dialer/list/SearchFragment;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    .line 63
    invoke-virtual {p0, v3}, Lcom/android/dialer/list/SearchFragment;->setUseCallableUri(Z)V

    .line 66
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/list/OnListFragmentScrolledListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/android/dialer/list/SearchFragment;->mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-void

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnListFragmentScrolledListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onDialerSeachContentChange()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/dialer/list/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/dialer/list/SearchFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4e4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    const-string v0, "SearchFragment"

    const-string v1, "Should update datas"

    invoke-static {v0, v1}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;

    .line 114
    .local v0, "adapter":Lcom/android/dialer/list/DialerPhoneNumberListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutTypeFromPosition(I)I

    move-result v4

    .line 115
    .local v4, "shortcutType":I
    const-string v5, "SearchFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SearchFragment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onItemClick(IJ)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    if-nez v4, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getOnPhoneNumberPickerListener()Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object v2

    .line 122
    .local v2, "listener":Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onCallNumberDirectly(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v2    # "listener":Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    :cond_2
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "number":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 129
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/dialer/dialpad/SmartDialPrefix;->getMap()Lcom/android/dialer/dialpad/SmartDialMap;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;

    move-result-object v3

    .line 130
    const-string v5, "SearchFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_3
    invoke-static {v3}, Lcom/android/dialer/DialtactsActivity;->getAddNumberToContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 134
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/android/dialer/list/SearchFragment;->startActivityWithErrorToast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onResume()V

    .line 168
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/dialer/DialerSearchHelper;->getInstance(Landroid/content/Context;)Lcom/mediatek/dialer/DialerSearchHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/dialer/DialerSearchHelper;->registerForContentChange(Lcom/mediatek/dialer/DialerSearchHelper$DialerSearchContentChangeListener;)V

    .line 169
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onStart()V

    .line 76
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/list/SearchFragment$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/list/SearchFragment$1;-><init>(Lcom/android/dialer/list/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 91
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onStop()V

    .line 174
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/dialer/DialerSearchHelper;->getInstance(Landroid/content/Context;)Lcom/mediatek/dialer/DialerSearchHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/dialer/DialerSearchHelper;->unRegisterForContentChange(Lcom/mediatek/dialer/DialerSearchHelper$DialerSearchContentChangeListener;)V

    .line 175
    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setSearchMode(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/android/dialer/list/SearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    .line 98
    .local v0, "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, v1, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    .line 101
    :cond_0
    return-void
.end method
