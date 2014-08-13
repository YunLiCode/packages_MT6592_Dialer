.class Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer$1;
.super Ljava/util/TimerTask;
.source "VTCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;


# direct methods
.method constructor <init>(Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer$1;->this$1:Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer$1;->this$1:Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->mVTMTAskDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->access$600(Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer$1;->this$1:Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->mVTMTAskDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->access$600(Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer$1;->this$1:Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->mVTMTAskDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->access$600(Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer$1;->this$1:Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->access$700(Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 724
    return-void
.end method
