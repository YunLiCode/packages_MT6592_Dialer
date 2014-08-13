.class public Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;
.super Landroid/app/Activity;
.source "CallLogMultipleDeleteActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogMultipleDeleteActivity"


# instance fields
.field protected mFragment:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

.field private mIsSelectedAll:Z

.field private mIsSelectedNone:Z

.field private mSelectionMenu:Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;

.field public mStatusBarMgr:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->mIsSelectedAll:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->mIsSelectedNone:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;)Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->mSelectionMenu:Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;)Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;
    .param p1, "x1"    # Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->mSelectionMenu:Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;Landroid/view/View;)Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->updateSelectionMenu(Landroid/view/View;)Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->configureActionBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->showDeleteDialog()V

    return-void
.end method

.method private configureActionBar()V
    .locals 10

    .prologue
    .line 112
    const-string v8, "configureActionBar()"

    invoke-direct {p0, v8}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->log(Ljava/lang/String;)V

    .line 115
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 116
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040039

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 117
    .local v3, "customActionBarView":Landroid/view/View;
    const v8, 0x7f0d0110

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 118
    .local v5, "doneMenuItem":Landroid/widget/ImageButton;
    new-instance v8, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$1;

    invoke-direct {v8, p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$1;-><init>(Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v8, 0x7f0d0111

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 127
    .local v7, "selectView":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020146

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    new-instance v8, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$2;

    invoke-direct {v8, p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$2;-><init>(Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v8, 0x7f0d010e

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 146
    .local v2, "cancelView":Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "cancelText":Ljava/lang/String;
    const-string v8, "Cancel"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_0
    new-instance v8, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$3;

    invoke-direct {v8, p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$3;-><init>(Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v8, 0x7f0d010c

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 161
    .local v4, "deleteView":Landroid/widget/Button;
    iget-boolean v8, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->mIsSelectedNone:Z

    if-eqz v8, :cond_2

    .line 163
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    const v8, -0x777778

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 169
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->getClickListenerOfActionBarOKButton()Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 171
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 172
    const/16 v8, 0x10

    const/16 v9, 0x1a

    invoke-virtual {v0, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 175
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 177
    :cond_1
    return-void

    .line 166
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_2
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    const/high16 v8, -0x1000000

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v0, "CallLogMultipleDeleteActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method private showDeleteDialog()V
    .locals 5

    .prologue
    .line 206
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0417

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0418

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$4;

    invoke-direct {v4, p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$4;-><init>(Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 218
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 219
    .local v1, "delDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 220
    return-void
.end method

.method private updateSelectionMenu(Landroid/view/View;)Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;
    .locals 7
    .param p1, "customActionBarView"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0d0111

    .line 228
    new-instance v0, Lcom/mediatek/dialer/list/DropMenu;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/list/DropMenu;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, "dropMenu":Lcom/mediatek/dialer/list/DropMenu;
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f11000a

    invoke-virtual {v0, v4, v5}, Lcom/mediatek/dialer/list/DropMenu;->addDropDownMenu(Landroid/widget/Button;I)Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;

    move-result-object v3

    .line 233
    .local v3, "selectionMenu":Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 235
    .local v2, "selectView":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020146

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    new-instance v4, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$5;

    invoke-direct {v4, p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$5;-><init>(Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const v4, 0x7f0d01db

    invoke-virtual {v3, v4}, Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 251
    .local v1, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->mFragment:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

    invoke-virtual {v4}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->isAllSelected()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->mIsSelectedAll:Z

    .line 253
    iget-boolean v4, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->mIsSelectedAll:Z

    if-eqz v4, :cond_0

    .line 254
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 255
    const v4, 0x7f0a045e

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 257
    new-instance v4, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$6;

    invoke-direct {v4, p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$6;-><init>(Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;)V

    invoke-virtual {v0, v4}, Lcom/mediatek/dialer/list/DropMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 277
    :goto_0
    return-object v3

    .line 266
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 267
    const v4, 0x7f0a0458

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 269
    new-instance v4, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$7;

    invoke-direct {v4, p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$7;-><init>(Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;)V

    invoke-virtual {v0, v4}, Lcom/mediatek/dialer/list/DropMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected getClickListenerOfActionBarOKButton()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 281
    new-instance v0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$8;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$8;-><init>(Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;)V

    return-object v0
.end method

.method public getMultipleDeleteFragment()Landroid/app/ListFragment;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->mFragment:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    const-string v0, "onCreate()"

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->log(Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-static {p0}, Lcom/mediatek/dialer/util/SmartBookUtils;->setOrientationPortait(Landroid/app/Activity;)V

    .line 68
    const v0, 0x7f040038

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->setContentView(I)V

    .line 73
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d010b

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

    iput-object v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->mFragment:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

    .line 75
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->configureActionBar()V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->updateSelectedItemsView(I)V

    .line 78
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 99
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 91
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 92
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 104
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->finish()V

    .line 105
    return-void
.end method

.method protected onStopForSubClass()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 109
    return-void
.end method

.method public updateSelectedItemsView(I)V
    .locals 7
    .param p1, "checkedItemsCount"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d0111

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 183
    .local v1, "selectedItemsView":Landroid/widget/Button;
    if-nez v1, :cond_0

    .line 184
    const-string v2, "Load view resource error!"

    invoke-direct {p0, v2}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->log(Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 187
    :cond_0
    const v2, 0x7f0a038c

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d010c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 191
    .local v0, "optionView":Landroid/widget/Button;
    if-nez p1, :cond_1

    .line 192
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 193
    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 196
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method
