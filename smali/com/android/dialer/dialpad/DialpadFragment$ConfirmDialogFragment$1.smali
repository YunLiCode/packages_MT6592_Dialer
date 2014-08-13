.class Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment;)V
    .locals 0

    .prologue
    .line 2854
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2857
    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDial:Lcom/mediatek/dialer/dialpad/SpeedDial;
    invoke-static {}, Lcom/android/dialer/dialpad/DialpadFragment;->access$1100()Lcom/mediatek/dialer/dialpad/SpeedDial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/dialer/dialpad/SpeedDial;->enterSpeedDial()V

    .line 2858
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment;->dismiss()V

    .line 2859
    return-void
.end method
