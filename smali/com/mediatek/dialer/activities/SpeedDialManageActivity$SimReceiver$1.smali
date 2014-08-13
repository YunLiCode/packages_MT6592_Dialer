.class Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver$1;
.super Landroid/os/Handler;
.source "SpeedDialManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver;)V
    .locals 0

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver$1;->this$1:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1427
    # getter for: Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->sIsQueryContact:Z
    invoke-static {}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1428
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "[SimReceiver.handleMessage] query in process, discard this query"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :goto_0
    return-void

    .line 1430
    :cond_0
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "[SimReceiver.handleMessage] update UI due to SIMService finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver$1;->this$1:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver;

    iget-object v0, v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver;->this$0:Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    # invokes: Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->startQuery()V
    invoke-static {v0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->access$1600(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)V

    goto :goto_0
.end method
