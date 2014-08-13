.class public Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDialogFragment"
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "speed_dial"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2840
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment;
    .locals 1

    .prologue
    .line 2844
    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment;

    invoke-direct {v0}, Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment;-><init>()V

    .line 2845
    .local v0, "f":Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2850
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2851
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0464

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2852
    const v1, 0x7f0a0465

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2853
    const v1, 0x104000a

    new-instance v2, Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment$1;-><init>(Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2861
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment$2;-><init>(Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2868
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
