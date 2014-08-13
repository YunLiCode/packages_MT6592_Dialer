.class public final Lcom/android/contacts/common/editor/SelectAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/editor/SelectAccountDialogFragment$SimReceiver;,
        Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static final KEY_EXTRA_ARGS:Ljava/lang/String; = "extra_args"

.field private static final KEY_LIST_FILTER:Ljava/lang/String; = "list_filter"

.field private static final KEY_TITLE_RES_ID:Ljava/lang/String; = "title_res_id"

.field private static final REQUEST_TYPE:I = 0x130

.field public static final TAG:Ljava/lang/String; = "SelectAccountDialogFragment"


# instance fields
.field private mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

.field private mActivity:Landroid/app/Activity;

.field private mReceiver:Lcom/android/contacts/common/editor/SelectAccountDialogFragment$SimReceiver;

.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mSlotId:I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/editor/SelectAccountDialogFragment;
    .param p1, "x1"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mSlotId:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/editor/SelectAccountDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mSlotId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/editor/SelectAccountDialogFragment;
    .param p1, "x1"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    return-void
.end method

.method private onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 4
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 151
    .local v1, "targetFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 152
    check-cast v0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;

    .line 153
    .local v0, "target":Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;
    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_args"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;->onAccountChosen(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V

    .line 155
    .end local v0    # "target":Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;
    :cond_0
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "titleResourceId"    # I
    .param p3, "accountListFilter"    # Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;
    .param p4, "extraArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;I",
            "Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "targetFragment":Landroid/app/Fragment;, "TF;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "title_res_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v2, "list_filter"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 77
    const-string v2, "extra_args"

    if-nez p4, :cond_0

    sget-object p4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .end local p4    # "extraArgs":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 79
    new-instance v1, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;-><init>()V

    .line 80
    .local v1, "instance":Lcom/android/contacts/common/editor/SelectAccountDialogFragment;
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 82
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 140
    .local v1, "targetFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 141
    check-cast v0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;

    .line 142
    .local v0, "target":Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;
    invoke-interface {v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;->onAccountSelectorCancelled()V

    .line 144
    .end local v0    # "target":Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mReceiver:Lcom/android/contacts/common/editor/SelectAccountDialogFragment$SimReceiver;

    if-nez v1, :cond_0

    .line 166
    new-instance v1, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$SimReceiver;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$SimReceiver;-><init>(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)V

    iput-object v1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mReceiver:Lcom/android/contacts/common/editor/SelectAccountDialogFragment$SimReceiver;

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHB_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mReceiver:Lcom/android/contacts/common/editor/SelectAccountDialogFragment$SimReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    const-string v1, "SelectAccountDialogFragment"

    const-string v2, "[onCreate]registerReceiver mReceiver"

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 173
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mActivity:Landroid/app/Activity;

    .line 90
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 93
    .local v1, "args":Landroid/os/Bundle;
    const-string v6, "list_filter"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    .line 94
    .local v4, "filter":Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;
    new-instance v0, Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lcom/android/contacts/common/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;)V

    .line 97
    .local v0, "accountAdapter":Lcom/android/contacts/common/util/AccountsListAdapter;
    new-instance v3, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;-><init>(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/util/AccountsListAdapter;)V

    .line 130
    .local v3, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    const-string v6, "title_res_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 131
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 133
    .local v5, "result":Landroid/app/AlertDialog;
    return-object v5
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mReceiver:Lcom/android/contacts/common/editor/SelectAccountDialogFragment$SimReceiver;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mReceiver:Lcom/android/contacts/common/editor/SelectAccountDialogFragment$SimReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mReceiver:Lcom/android/contacts/common/editor/SelectAccountDialogFragment$SimReceiver;

    .line 180
    const-string v0, "SelectAccountDialogFragment"

    const-string v1, "[onDetach]unregisterReceiver mReceiver"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 183
    return-void
.end method
