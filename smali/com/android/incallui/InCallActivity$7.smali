.class Lcom/android/incallui/InCallActivity$7;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivity;->showStorageFullDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    .prologue
    .line 960
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$7;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showStorageDialog... , on click, which="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$7;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$100(Lcom/android/incallui/InCallActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$7;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$100(Lcom/android/incallui/InCallActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 966
    :cond_0
    return-void
.end method
