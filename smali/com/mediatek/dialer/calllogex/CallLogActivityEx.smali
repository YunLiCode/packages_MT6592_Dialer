.class public Lcom/mediatek/dialer/calllogex/CallLogActivityEx;
.super Landroid/app/Activity;
.source "CallLogActivityEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogActivityEx"


# instance fields
.field private mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

.field private mChooseResoucesItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 177
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx$1;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/calllogex/CallLogActivityEx$1;-><init>(Lcom/mediatek/dialer/calllogex/CallLogActivityEx;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->mChooseResoucesItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/dialer/calllogex/CallLogActivityEx;)Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogActivityEx;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "bAutoRejectedFilter":Z
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->isAutoRejectedFilterMode()Z

    move-result v0

    .line 160
    :cond_0
    if-eqz v0, :cond_1

    .line 161
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->onBackHandled()V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {p0}, Lcom/mediatek/dialer/util/SmartBookUtils;->setOrientationPortait(Landroid/app/Activity;)V

    .line 63
    const v2, 0x7f04000b

    invoke-virtual {p0, v2}, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 66
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 67
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 68
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "Call_Log_Fragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .line 74
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    if-nez v2, :cond_0

    .line 75
    new-instance v2, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-direct {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;-><init>()V

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .line 76
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 77
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const v2, 0x7f0d0066

    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    const-string v4, "Call_Log_Fragment"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 78
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 79
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 80
    const-string v2, "CallLogActivityEx"

    const-string v3, "onCreate(), show Call_Log_Fragment."

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    const-string v2, "CallLogActivityEx"

    const-string v3, "onCreate() end."

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 109
    .local v1, "inflater":Landroid/view/MenuInflater;
    invoke-static {p0}, Lcom/android/dialer/util/OrientationUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const v2, 0x7f110006

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 115
    :goto_0
    const v2, 0x7f0d01b6

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 116
    .local v0, "chooseResourceMenuItem":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->mChooseResoucesItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 119
    const/4 v2, 0x1

    return v2

    .line 112
    .end local v0    # "chooseResourceMenuItem":Landroid/view/MenuItem;
    :cond_0
    const v2, 0x7f110002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onMenuEditNumberBeforeCall(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->onMenuEditNumberBeforeCall(Landroid/view/MenuItem;)V

    .line 170
    return-void
.end method

.method public onMenuRemoveFromCallLog(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->onMenuRemoveFromCallLog(Landroid/view/MenuItem;)V

    .line 174
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 92
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 93
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 124
    const v4, 0x7f0d01b7

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 125
    .local v3, "itemDeleteAll":Landroid/view/MenuItem;
    const v4, 0x7f0d01b6

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 128
    .local v2, "chooseResourceMenuItem":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 129
    iget-object v4, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v4}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getAdapter()Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    move-result-object v0

    .line 130
    .local v0, "adapter":Lcom/mediatek/dialer/calllog/CallLogListAdapter;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_0
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 132
    const v4, 0x7f0d01b4

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 133
    const v4, 0x7f0d01b5

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 135
    if-eqz v2, :cond_0

    .line 136
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 137
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 143
    :cond_0
    :goto_1
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/mediatek/contacts/ext/CallDetailExtension;

    move-result-object v4

    iget-object v7, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v7}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->isAutoRejectedFilterMode()Z

    move-result v7

    if-nez v7, :cond_1

    move v6, v5

    :cond_1
    const-string v7, "ExtensionForOP01"

    invoke-virtual {v4, v6, v7}, Lcom/mediatek/contacts/ext/CallDetailExtension;->isNeedAutoRejectedMenu(ZLjava/lang/String;)Z

    move-result v1

    .line 146
    .local v1, "bShowAutoRejectedMenu":Z
    const v4, 0x7f0d01b8

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 151
    .end local v0    # "adapter":Lcom/mediatek/dialer/calllog/CallLogListAdapter;
    .end local v1    # "bShowAutoRejectedMenu":Z
    :cond_2
    return v5

    .restart local v0    # "adapter":Lcom/mediatek/dialer/calllog/CallLogListAdapter;
    :cond_3
    move v4, v6

    .line 130
    goto :goto_0

    .line 139
    :cond_4
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 101
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 102
    return-void
.end method
