.class Lcom/mediatek/incallui/vt/VTCallFragment$3;
.super Ljava/lang/Object;
.source "VTCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/incallui/vt/VTCallFragment;->onVTInCallVideoSettingLocalNightMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/incallui/vt/VTCallFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$3;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 439
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$3;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$200(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$3;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$200(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 441
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$3;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$202(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 443
    :cond_0
    if-nez p2, :cond_2

    .line 445
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$3;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const-string v1, "onVTInCallVideoSettingLocalNightMode() : CallCommandClient.getInstance().setNightMode(true);"

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$300(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 448
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCommandClient;->setNightMode(Z)V

    .line 458
    :cond_1
    :goto_0
    return-void

    .line 450
    :cond_2
    if-ne v2, p2, :cond_1

    .line 452
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$3;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const-string v1, "onVTInCallVideoSettingLocalNightMode() : CallCommandClient.getInstance().setNightMode(false);"

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$300(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 455
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->setNightMode(Z)V

    goto :goto_0
.end method