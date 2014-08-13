.class public Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialogFragment"
.end annotation


# static fields
.field private static final ARG_MESSAGE_RES_ID:Ljava/lang/String; = "argMessageResId"

.field private static final ARG_TITLE_RES_ID:Ljava/lang/String; = "argTitleResId"


# instance fields
.field private mMessageResId:I

.field private mTitleResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1616
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;
    .locals 1
    .param p0, "messageResId"    # I

    .prologue
    .line 1624
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(II)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(II)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;
    .locals 3
    .param p0, "titleResId"    # I
    .param p1, "messageResId"    # I

    .prologue
    .line 1628
    new-instance v1, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-direct {v1}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;-><init>()V

    .line 1629
    .local v1, "fragment":Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1630
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "argTitleResId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1631
    const-string v2, "argMessageResId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1632
    invoke-virtual {v1, v0}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1633
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1638
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1639
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argTitleResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->mTitleResId:I

    .line 1640
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argMessageResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:I

    .line 1641
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1645
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1646
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->mTitleResId:I

    if-eqz v1, :cond_0

    .line 1647
    iget v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->mTitleResId:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1649
    :cond_0
    iget v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:I

    if-eqz v1, :cond_1

    .line 1650
    iget v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1652
    :cond_1
    const v1, 0x104000a

    new-instance v2, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment$1;-><init>(Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1659
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
