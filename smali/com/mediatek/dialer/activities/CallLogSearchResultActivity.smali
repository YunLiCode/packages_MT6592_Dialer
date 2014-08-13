.class public Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;
.super Landroid/app/ListActivity;
.source "CallLogSearchResultActivity.java"

# interfaces
.implements Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$CallFetcher;
.implements Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;


# static fields
.field private static final EMPTY_LOADER_ID:I = 0x0

.field private static final MENU_ITEM_DELETE_ALL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CallLogSearchResultActivity"


# instance fields
.field private mAdapter:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

.field private mCallLogFetched:Z

.field private mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

.field private mData:Ljava/lang/String;

.field private mEmptyLoaderRunning:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mScrollToTop:Z

.field private mSearchResult:Landroid/view/ViewGroup;

.field private mSearchResultFor:Landroid/widget/TextView;

.field private mSearchResultFound:Landroid/widget/TextView;

.field public mStatusBarMgr:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 77
    return-void
.end method

.method private destroyEmptyLoaderIfAllDataFetched()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-boolean v0, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mCallLogFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mEmptyLoaderRunning:Z

    if-eqz v0, :cond_0

    .line 250
    iput-boolean v1, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mEmptyLoaderRunning:Z

    .line 251
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 253
    :cond_0
    return-void
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 4
    .param p1, "count"    # I
    .param p2, "zeroResourceId"    # I
    .param p3, "pluralResourceId"    # I

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 314
    :goto_0
    return-object v1

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "format":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 211
    const-string v0, "CallLogSearchResultActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 153
    const-string v0, "CallLogSearchResultActivity refreshData()"

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->log(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->startCallsQuery()V

    .line 159
    return-void
.end method


# virtual methods
.method public fetchCalls()V
    .locals 4

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 265
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "user_query"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    .line 266
    sget-object v2, Lcom/android/contacts/common/util/Constants;->CALLLOG_SEARCH_URI_BASE:Landroid/net/Uri;

    iget-object v3, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 269
    .local v1, "uri":Landroid/net/Uri;
    return-void
.end method

.method public onCallsDeleted()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " CallLogSearchResultActivity onCallsFetched(), cursor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->log(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mAdapter:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    invoke-virtual {v1, v3}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->setLoading(Z)V

    .line 226
    iget-object v1, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mAdapter:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    invoke-virtual {v1, p1}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->changeCursor(Landroid/database/Cursor;)V

    .line 228
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->invalidateOptionsMenu()V

    .line 230
    if-nez p1, :cond_2

    .line 231
    invoke-virtual {p0, v3}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->setSearchResultCount(I)V

    .line 236
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mScrollToTop:Z

    if-eqz v1, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 238
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 239
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 241
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 242
    iput-boolean v3, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mScrollToTop:Z

    .line 244
    .end local v0    # "listView":Landroid/widget/ListView;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mCallLogFetched:Z

    .line 245
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->destroyEmptyLoaderIfAllDataFetched()V

    .line 246
    return-void

    .line 233
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->setSearchResultCount(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 81
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v6, 0x7f040037

    invoke-virtual {p0, v6}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->setContentView(I)V

    .line 87
    new-instance v6, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v6, v7, p0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;-><init>(Landroid/content/ContentResolver;Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;)V

    iput-object v6, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    .line 89
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 90
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 94
    .local v5, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/android/dialer/CallDetailActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v3, "newIntent":Landroid/content/Intent;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v3}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->finish()V

    .line 100
    .end local v3    # "newIntent":Landroid/content/Intent;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v6, "user_query"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    .line 101
    const v6, 0x7f0d0108

    invoke-virtual {p0, v6}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mSearchResult:Landroid/view/ViewGroup;

    .line 102
    iget-object v6, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mSearchResult:Landroid/view/ViewGroup;

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 103
    const v6, 0x7f0d0109

    invoke-virtual {p0, v6}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mSearchResultFor:Landroid/widget/TextView;

    .line 104
    iget-object v6, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mSearchResultFor:Landroid/widget/TextView;

    const v7, 0x7f0a040c

    new-array v8, v12, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<b>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</b>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a04b5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "searching":Ljava/lang/String;
    const v6, 0x7f0d010a

    invoke-virtual {p0, v6}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mSearchResultFound:Landroid/widget/TextView;

    .line 108
    iget-object v6, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mSearchResultFound:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "currentCountryIso":Ljava/lang/String;
    new-instance v6, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    new-instance v7, Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;

    invoke-direct {v7, p0, v1}, Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v6, p0, p0, v7}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;-><init>(Landroid/content/Context;Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$CallFetcher;Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;)V

    iput-object v6, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mAdapter:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    .line 112
    iget-object v6, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mAdapter:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    iget-object v7, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->setQueryString(Ljava/lang/String;)V

    .line 113
    iget-object v6, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mAdapter:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    invoke-virtual {p0, v6}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 116
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 273
    const v0, 0x7f0a038d

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 275
    return v2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "onDestroy()"

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->log(Ljava/lang/String;)V

    .line 190
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 192
    iget-object v0, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mAdapter:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mAdapter:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->changeCursor(Landroid/database/Cursor;)V

    .line 195
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 320
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 321
    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/mediatek/dialer/calllog/CallLogListItemView;

    if-nez v1, :cond_2

    .line 322
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "CallLogFragment exception"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    :cond_1
    :goto_0
    return-void

    .line 325
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/dialer/calllogex/IntentProviderEx;

    .line 326
    .local v0, "intentProvider":Lcom/mediatek/dialer/calllogex/IntentProviderEx;
    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0, p0}, Lcom/mediatek/dialer/calllogex/IntentProviderEx;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "follow_sim_management"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->setIntent(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 300
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 291
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "false"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v1, "user_query"

    iget-object v2, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 295
    const/4 v1, 0x1

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 179
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 180
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 280
    iget-object v4, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mAdapter:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    invoke-virtual {v4}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 281
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_0
    move v1, v3

    .line 282
    .local v1, "enable":Z
    :goto_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v1, :cond_3

    move v4, v3

    :goto_1
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 283
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 284
    return v3

    .end local v1    # "enable":Z
    :cond_2
    move v1, v2

    .line 281
    goto :goto_0

    .restart local v1    # "enable":Z
    :cond_3
    move v4, v2

    .line 282
    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 120
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 122
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->refreshData()V

    .line 124
    iget-object v0, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mSearchResultFor:Landroid/widget/TextView;

    const v1, 0x7f0a040c

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    invoke-virtual {v0, v6, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 128
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 136
    iput-boolean v4, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mScrollToTop:Z

    .line 137
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/dialer/util/EmptyLoader$Callback;

    invoke-direct {v3, p0}, Lcom/android/dialer/util/EmptyLoader$Callback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 138
    iput-boolean v4, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mEmptyLoaderRunning:Z

    .line 139
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 140
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 185
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    .line 258
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 260
    return-void
.end method

.method public setSearchResultCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 304
    const v1, 0x7f0a040d

    const v2, 0x7f0f0003

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mSearchResultFound:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    return-void
.end method

.method public startCallsQuery()V
    .locals 4

    .prologue
    .line 162
    const-string v2, "CallLogSearchResultActivity startCallsQuery()"

    invoke-direct {p0, v2}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->log(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mAdapter:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->setLoading(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mEmptyView:Landroid/widget/TextView;

    .line 165
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mEmptyView:Landroid/widget/TextView;

    const v3, 0x7f0a0411

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 167
    const-string v2, "user_query"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    .line 168
    sget-object v2, Lcom/android/contacts/common/util/Constants;->CALLLOG_SEARCH_URI_BASE:Landroid/net/Uri;

    iget-object v3, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mData:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 170
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/dialer/activities/CallLogSearchResultActivity;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    invoke-virtual {v2, v1}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->fetchSearchCalls(Landroid/net/Uri;)V

    .line 171
    return-void
.end method
