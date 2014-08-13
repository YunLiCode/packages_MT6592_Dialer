.class public Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;
.super Landroid/app/ListFragment;
.source "CallLogMultipleDeleteFragment.java"

# interfaces
.implements Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$CallFetcher;
.implements Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;


# static fields
.field private static final SIM_INFO_UPDATE_MESSAGE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CallLogMultipleDeleteFragment"


# instance fields
.field private mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

.field private mCallLogMultipleChoiceTypeFilter:I

.field private mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

.field private mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScrollToTop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mCallLogMultipleChoiceTypeFilter:I

    .line 318
    new-instance v0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment$1;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment$1;-><init>(Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;)Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 303
    const-string v0, "CallLogMultipleDeleteFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method


# virtual methods
.method public deleteSelectedCallItems()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;->getSelectedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    const v2, 0x7f0a0414

    invoke-virtual {p0, v2}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v1}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;->getDeleteFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->deleteSpecifiedCalls(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public fetchCalls()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public getSelectedItemCount()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;->getSelectedItemCount()I

    move-result v0

    return v0
.end method

.method public getSelections()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;->getDeleteFilter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAllSelected()Z
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 312
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getSelectedItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCallsDeleted()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "onCallsDeleted()"

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallsFetched(), cursor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    :cond_0
    if-eqz p1, :cond_1

    .line 77
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v1, v3}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;->setLoading(Z)V

    .line 82
    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v1, p1}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 84
    iget-boolean v1, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mScrollToTop:Z

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 86
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 87
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 89
    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 90
    iput-boolean v3, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mScrollToTop:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 63
    const-string v0, "onCreate()"

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;-><init>(Landroid/content/ContentResolver;Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    const-string v1, "onCreateView()"

    invoke-direct {p0, v1}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 111
    const v1, 0x7f04003a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/phone/SIMInfoWrapper;->registerForSimInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 117
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 164
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 165
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 168
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->unregisterForSimInfoUpdate(Landroid/os/Handler;)V

    .line 170
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick: position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    move-object v1, p2

    .line 274
    check-cast v1, Lcom/mediatek/dialer/calllog/CallLogListItemView;

    .line 275
    .local v1, "itemView":Lcom/mediatek/dialer/calllog/CallLogListItemView;
    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCheckBoxMultiSel()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 277
    .local v0, "isChecked":Z
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    iget-object v3, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v3, p3}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;->changeSelectedStatusToMap(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->updateSelectedItemsView(I)V

    .line 279
    invoke-virtual {v1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCheckBoxMultiSel()Landroid/widget/CheckBox;

    move-result-object v3

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 281
    .end local v0    # "isChecked":Z
    :cond_0
    return-void

    .line 279
    .restart local v0    # "isChecked":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 153
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 146
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mScrollToTop:Z

    .line 139
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 140
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 159
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 122
    const-string v1, "onViewCreated()"

    invoke-direct {p0, v1}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 123
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "currentCountryIso":Ljava/lang/String;
    new-instance v1, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v4, ""

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;-><init>(Landroid/content/Context;Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$CallFetcher;Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    .line 127
    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {p0, v1}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/high16 v2, 0x60000

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 133
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->refreshData()V

    .line 134
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    .line 290
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 292
    return-void
.end method

.method public refreshData()V
    .locals 1

    .prologue
    .line 222
    const-string v0, "refreshData()"

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;->unSelectAllItems()V

    .line 224
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->startCallsQuery()V

    .line 225
    return-void
.end method

.method public selectAllItems()I
    .locals 2

    .prologue
    .line 235
    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v1}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;->selectAllItems()I

    move-result v0

    .line 236
    .local v0, "iCount":I
    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v1}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;->notifyDataSetChanged()V

    .line 237
    return v0
.end method

.method public setCallLogMultipleChoiceTypeFilter(I)V
    .locals 0
    .param p1, "typefilter"    # I

    .prologue
    .line 337
    iput p1, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mCallLogMultipleChoiceTypeFilter:I

    .line 338
    return-void
.end method

.method public startCallsQuery()V
    .locals 8

    .prologue
    .line 187
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;->setLoading(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 189
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "calllog_sim_filter"

    const/16 v7, 0x4e21

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 190
    .local v3, "simFilter":I
    const-string v6, "calllog_type_filter"

    const/16 v7, 0x4e2b

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 194
    .local v4, "typeFilter":I
    const/4 v6, -0x1

    iget v7, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mCallLogMultipleChoiceTypeFilter:I

    if-eq v6, v7, :cond_0

    .line 195
    iget v4, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mCallLogMultipleChoiceTypeFilter:I

    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCallsQuery() typeFilter ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 201
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "true"

    const-string v7, "false"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 202
    const-string v6, "Is google search mode"

    invoke-direct {p0, v6}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 203
    const-string v6, "user_query"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "data":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCallsQuery() data=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->log(Ljava/lang/String;)V

    .line 205
    sget-object v6, Lcom/android/contacts/common/util/Constants;->CALLLOG_SEARCH_URI_BASE:Landroid/net/Uri;

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 206
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    invoke-virtual {v6, v5}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->fetchSearchCalls(Landroid/net/Uri;)V

    .line 210
    .end local v0    # "data":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    invoke-virtual {v6, v3, v4}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->fetchCallsJionDataView(II)V

    goto :goto_0
.end method

.method public unSelectAllItems()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;->unSelectAllItems()V

    .line 248
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;->notifyDataSetChanged()V

    .line 249
    return-void
.end method
