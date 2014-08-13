.class Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx$1;
.super Ljava/lang/Object;
.source "ClearCallLogDialogEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx$1;->this$0:Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;

    iput-object p2, p0, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx$1;->val$resolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 56
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx$1;->this$0:Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;

    invoke-virtual {v2}, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx$1;->this$0:Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;

    const v4, 0x7f0a0567

    invoke-virtual {v3, v4}, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 59
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v1, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx$1$1;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx$1$1;-><init>(Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx$1;Landroid/app/ProgressDialog;)V

    .line 75
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 76
    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    return-void
.end method
