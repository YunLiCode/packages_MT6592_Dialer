.class Lcom/mediatek/dialer/activities/SpeedDialManageActivity$5;
.super Landroid/os/Handler;
.source "SpeedDialManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/activities/SpeedDialManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/activities/SpeedDialManageActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)V
    .locals 0

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$5;->this$0:Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1329
    const-string v0, "SpeedDialManageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg==== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1344
    :goto_0
    return-void

    .line 1334
    :pswitch_0
    const-string v0, "SpeedDialManageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start WAIT_CURSOR_START sIsQueryContact : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->sIsQueryContact:Z
    invoke-static {}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->access$1000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    # getter for: Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->sIsQueryContact:Z
    invoke-static {}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$5;->this$0:Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    # invokes: Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->showProgressIndication()V
    invoke-static {v0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->access$1500(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)V

    .line 1338
    :cond_0
    const/4 v0, 0x0

    # setter for: Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->sIsQueryContact:Z
    invoke-static {v0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->access$1002(Z)Z

    goto :goto_0

    .line 1331
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
