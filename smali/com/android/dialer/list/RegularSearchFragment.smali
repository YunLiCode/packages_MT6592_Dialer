.class public Lcom/android/dialer/list/RegularSearchFragment;
.super Lcom/android/dialer/list/SearchFragment;
.source "RegularSearchFragment.java"


# static fields
.field private static final SEARCH_DIRECTORY_RESULT_LIMIT:I = 0x5

.field private static final mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/dialerbind/ObjectFactory;->newCachedNumberLookupService()Lcom/android/dialer/service/CachedNumberLookupService;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/RegularSearchFragment;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/dialer/list/SearchFragment;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->configureDirectorySearch()V

    .line 39
    return-void
.end method


# virtual methods
.method protected cacheContactInfo(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 66
    sget-object v1, Lcom/android/dialer/list/RegularSearchFragment;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/RegularSearchListAdapter;

    .line 69
    .local v0, "adapter":Lcom/android/dialer/list/RegularSearchListAdapter;
    sget-object v1, Lcom/android/dialer/list/RegularSearchFragment;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/dialer/list/RegularSearchFragment;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    invoke-virtual {v0, v3, p1}, Lcom/android/dialer/list/RegularSearchListAdapter;->getContactInfo(Lcom/android/dialer/service/CachedNumberLookupService;I)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/dialer/service/CachedNumberLookupService;->addContact(Landroid/content/Context;Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;)V

    .line 72
    .end local v0    # "adapter":Lcom/android/dialer/list/RegularSearchListAdapter;
    :cond_0
    return-void
.end method

.method public configureDirectorySearch()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/RegularSearchFragment;->setDirectorySearchEnabled(Z)V

    .line 48
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/RegularSearchFragment;->setDirectoryResultLimit(I)V

    .line 49
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/android/dialer/list/RegularSearchListAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/list/RegularSearchListAdapter;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, "adapter":Lcom/android/dialer/list/RegularSearchListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/RegularSearchListAdapter;->setDisplayPhotos(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->usesCallableUri()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/RegularSearchListAdapter;->setUseCallableUri(Z)V

    .line 61
    return-object v0
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
    .line 82
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getDirectoryLoaderId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 83
    invoke-super {p0, p1, p2}, Lcom/android/dialer/list/SearchFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v1

    .line 88
    :goto_0
    return-object v1

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/RegularSearchListAdapter;

    .line 86
    .local v0, "adapter":Lcom/android/dialer/list/RegularSearchListAdapter;
    new-instance v1, Lcom/mediatek/dialer/DialerSearchCursorLoader;

    invoke-super {p0}, Lcom/android/dialer/list/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->usesCallableUri()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/mediatek/dialer/DialerSearchCursorLoader;-><init>(Landroid/content/Context;Z)V

    .line 87
    .local v1, "loader":Lcom/mediatek/dialer/DialerSearchCursorLoader;
    invoke-virtual {v0, v1}, Lcom/android/dialer/list/RegularSearchListAdapter;->configureLoader(Lcom/mediatek/dialer/DialerSearchCursorLoader;)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/android/dialer/list/SearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/PinnedHeaderListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setScrollToSectionOnHeaderTouch(Z)V

    .line 55
    return-void
.end method
