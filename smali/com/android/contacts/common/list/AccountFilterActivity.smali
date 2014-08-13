.class public Lcom/android/contacts/common/list/AccountFilterActivity;
.super Landroid/app/Activity;
.source "AccountFilterActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/AccountFilterActivity$1;,
        Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;,
        Lcom/android/contacts/common/list/AccountFilterActivity$MyLoaderCallbacks;,
        Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;
    }
.end annotation


# static fields
.field private static final FILTER_LOADER_ID:I = 0x0

.field public static final KEY_EXTRA_CONTACT_LIST_FILTER:Ljava/lang/String; = "contactListFilter"

.field public static final KEY_EXTRA_CURRENT_FILTER:Ljava/lang/String; = "currentFilter"

.field private static final SUBACTIVITY_CUSTOMIZE_FILTER:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mFinished:Z

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContact:Landroid/widget/TextView;

.field private mLoadingContainer:Landroid/view/View;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mWaitCursorView:Lcom/mediatek/contacts/widget/WaitCursorView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/android/contacts/common/list/AccountFilterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mFinished:Z

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->loadAccountFilters(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/contacts/common/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/common/list/AccountFilterActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/AccountFilterActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/common/list/AccountFilterActivity;)Lcom/mediatek/contacts/widget/WaitCursorView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/AccountFilterActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mWaitCursorView:Lcom/mediatek/contacts/widget/WaitCursorView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/common/list/AccountFilterActivity;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/AccountFilterActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mCurrentFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/common/list/AccountFilterActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/AccountFilterActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private static loadAccountFilters(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 137
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 138
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactListFilter;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 139
    .local v1, "accountFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactListFilter;>;"
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v3

    .line 140
    .local v3, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v4

    .line 150
    .local v4, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 151
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v11, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v2

    .line 152
    .local v2, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/contacts/common/model/account/AccountType;->isExtension()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 156
    :cond_1
    const-string v11, "geticon"

    const-string v12, "[accountfilteractivity] "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v10, -0x1

    .line 177
    .local v10, "slotId":I
    const/4 v6, 0x0

    .line 178
    .local v6, "displayName":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/contacts/common/model/account/AccountType;->isIccCardAccount()Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v0

    .line 179
    check-cast v11, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    iget v10, v11, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->mSlotId:I

    .line 181
    iget-object v11, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/android/contacts/common/util/AccountFilterUtil;->getAccountDisplayNameByAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 182
    sget-object v11, Lcom/android/contacts/common/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[AccountFilterActivity] displayName : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/contacts/common/model/account/AccountType;->isIccCardAccount()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 186
    sget-object v11, Lcom/android/contacts/common/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[AccountFilterActivity] mSlotId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v2, p0, v10}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIconBySlotId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 195
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v11, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v11, v12, v13, v8, v6}, Lcom/android/contacts/common/list/ContactListFilter;->createAccountFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 189
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, p0}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .restart local v8    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    goto :goto_1

    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 201
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v2    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v6    # "displayName":Ljava/lang/String;
    .end local v10    # "slotId":I
    :cond_5
    const/4 v11, -0x2

    invoke-static {v11}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 205
    .local v5, "count":I
    if-lt v5, v14, :cond_7

    .line 207
    if-le v5, v14, :cond_6

    .line 208
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 210
    :cond_6
    const/4 v11, -0x3

    invoke-static {v11}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_7
    return-object v9
.end method


# virtual methods
.method public isActivityFinished()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mFinished:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 286
    if-eq p2, v3, :cond_0

    .line 300
    :goto_0
    return-void

    .line 290
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 292
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, -0x3

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 295
    .local v0, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    const-string v2, "contactListFilter"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/AccountFilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->finish()V

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x8

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v1, 0x7f040017

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/AccountFilterActivity;->setContentView(I)V

    .line 80
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/AccountFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    .line 81
    iget-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    const v1, 0x7f0d0177

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/AccountFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mLoadingContainer:Landroid/view/View;

    .line 89
    const v1, 0x7f0d0179

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/AccountFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mLoadingContact:Landroid/widget/TextView;

    .line 90
    iget-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mLoadingContact:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    const v1, 0x7f0d0178

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/AccountFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 92
    iget-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 93
    new-instance v1, Lcom/mediatek/contacts/widget/WaitCursorView;

    iget-object v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mLoadingContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mProgress:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mLoadingContact:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/mediatek/contacts/widget/WaitCursorView;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mWaitCursorView:Lcom/mediatek/contacts/widget/WaitCursorView;

    .line 97
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 98
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 99
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "currentFilter"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListFilter;

    iput-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mCurrentFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 104
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/contacts/common/list/AccountFilterActivity$MyLoaderCallbacks;

    invoke-direct {v3, p0, v5}, Lcom/android/contacts/common/list/AccountFilterActivity$MyLoaderCallbacks;-><init>(Lcom/android/contacts/common/list/AccountFilterActivity;Lcom/android/contacts/common/list/AccountFilterActivity$1;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 105
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mFinished:Z

    .line 371
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 372
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    .line 269
    .local v0, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    if-nez v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 272
    :cond_0
    iget v2, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_1

    .line 273
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/common/list/CustomContactListFilterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/list/AccountFilterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 277
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 278
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "contactListFilter"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/contacts/common/list/AccountFilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 280
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 351
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 361
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 356
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->onBackPressed()V

    .line 357
    const/4 v0, 0x1

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
