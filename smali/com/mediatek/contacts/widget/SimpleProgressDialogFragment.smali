.class public Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "SimpleProgressDialogFragment.java"


# static fields
.field private static final DIALOG_TAG:Ljava/lang/String; = "progress_dialog"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "SimpleProgressDialogFragment"

    sput-object v0, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 64
    return-void
.end method

.method public static dismiss(Landroid/app/FragmentManager;)V
    .locals 4
    .param p0, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 44
    sget-object v1, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dismiss]dismiss dialog for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-nez p0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {p0}, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->getExistDialogFragment(Landroid/app/FragmentManager;)Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;

    move-result-object v0

    .line 51
    .local v0, "dialog":Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;
    if-nez v0, :cond_1

    .line 52
    sget-object v1, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->TAG:Ljava/lang/String;

    const-string v2, "dialog never shown before, no need dismiss"

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    sget-object v1, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "force dismiss dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 59
    :cond_2
    sget-object v1, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog not added, dismiss failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getExistDialogFragment(Landroid/app/FragmentManager;)Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;
    .locals 1
    .param p0, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 28
    const-string v0, "progress_dialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;

    return-object v0
.end method

.method private static getInstance(Landroid/app/FragmentManager;)Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;
    .locals 4
    .param p0, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->getExistDialogFragment(Landroid/app/FragmentManager;)Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;

    move-result-object v0

    .line 20
    .local v0, "dialog":Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;
    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;

    .end local v0    # "dialog":Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;
    invoke-direct {v0}, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;-><init>()V

    .line 22
    .restart local v0    # "dialog":Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;
    sget-object v1, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getInstance]create new dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    return-object v0
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 4
    .param p0, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 32
    sget-object v1, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[show]show dialog for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p0}, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->getInstance(Landroid/app/FragmentManager;)Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;

    move-result-object v0

    .line 34
    .local v0, "dialog":Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;
    invoke-virtual {v0}, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    sget-object v1, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[show]dialog is already shown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 37
    :cond_0
    sget-object v1, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[show]dialog created and shown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "progress_dialog"

    invoke-virtual {v0, p0, v1}, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->setCancelable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a03d2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 75
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 81
    invoke-virtual {p0}, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
