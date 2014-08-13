.class public Lcom/mediatek/dialer/calllog/CallLogSearchFragment;
.super Landroid/app/ListFragment;
.source "CallLogSearchFragment.java"

# interfaces
.implements Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$CallFetcher;
.implements Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dialer/calllog/CallLogSearchFragment$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogSearchFragment"


# instance fields
.field private mAdapter:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

.field private mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

.field private mListener:Lcom/mediatek/dialer/calllog/CallLogSearchFragment$Listener;

.field private mSearchString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->setHasOptionsMenu(Z)V

    .line 63
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string v0, "CallLogSearchFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method


# virtual methods
.method public fetchCalls()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->mSearchString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    sget-object v0, Lcom/android/contacts/common/util/Constants;->CALLLOG_SEARCH_URI_BASE:Landroid/net/Uri;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->mSearchString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public onCallsDeleted()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " CallLogSearchResultActivity onCallsFetched(), cursor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->log(Ljava/lang/String;)V

    .line 140
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;-><init>(Landroid/content/ContentResolver;Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    const-string v1, "onCreateView()"

    invoke-direct {p0, v1}, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->log(Ljava/lang/String;)V

    .line 80
    const v1, 0x7f04003b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "onDestroy()"

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->log(Ljava/lang/String;)V

    .line 103
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 105
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->mAdapter:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->mAdapter:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->changeCursor(Landroid/database/Cursor;)V

    .line 108
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 170
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 171
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/mediatek/dialer/calllog/CallLogListItemView;

    if-nez v0, :cond_2

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "CallLogFragment exception"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 175
    :cond_2
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallLogSearchResultActivityExtension()Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mediatek/dialer/calllogex/IntentProviderEx;

    if-nez v0, :cond_3

    .line 180
    const-string v0, "onListItemClick(), v.getTag() is not instance of IntentProvider, just return"

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/dialer/calllogex/IntentProviderEx;

    .line 184
    .local v6, "intentProvider":Lcom/mediatek/dialer/calllogex/IntentProviderEx;
    if-eqz v6, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mediatek/dialer/calllogex/IntentProviderEx;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "follow_sim_management"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 153
    const-string v1, "onOptionsItemSelected"

    invoke-direct {p0, v1}, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->log(Ljava/lang/String;)V

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 155
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->mListener:Lcom/mediatek/dialer/calllog/CallLogSearchFragment$Listener;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->mListener:Lcom/mediatek/dialer/calllog/CallLogSearchFragment$Listener;

    invoke-interface {v1}, Lcom/mediatek/dialer/calllog/CallLogSearchFragment$Listener;->onHomeInActionBarSelected()V

    .line 159
    :cond_0
    const/4 v1, 0x1

    .line 161
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 74
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->fetchCalls()V

    .line 75
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "currentCountryIso":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 93
    .local v1, "listView":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 94
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 96
    invoke-virtual {p0, v1}, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    .line 147
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 149
    return-void
.end method

.method public setDataSetChangedNotifyEnable(Z)V
    .locals 1
    .param p1, "dataSetChangeNotifyFlag"    # Z

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->mAdapter:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    if-eqz v0, :cond_0

    .line 194
    :cond_0
    return-void
.end method

.method public setListener(Lcom/mediatek/dialer/calllog/CallLogSearchFragment$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/dialer/calllog/CallLogSearchFragment$Listener;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->mListener:Lcom/mediatek/dialer/calllog/CallLogSearchFragment$Listener;

    .line 166
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->mSearchString:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogSearchFragment;->fetchCalls()V

    .line 114
    return-void
.end method
