.class Lcom/android/incallui/CallList$1;
.super Landroid/os/Handler;
.source "CallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallList;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallList;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 472
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message not expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    :goto_0
    return-void

    .line 474
    :pswitch_0
    const-string v0, "EVENT_DISCONNECTED_TIMEOUT "

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    iget-object v1, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/services/telephony/common/Call;

    # invokes: Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/services/telephony/common/Call;)V
    invoke-static {v1, v0}, Lcom/android/incallui/CallList;->access$000(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 478
    :pswitch_1
    const-string v0, "EVENT_AUTO_DROP_VT_TIMEOUT "

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    # getter for: Lcom/android/incallui/CallList;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/incallui/CallList;->access$100(Lcom/android/incallui/CallList;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/services/telephony/common/Call;

    invoke-static {v1, v0}, Lcom/mediatek/incallui/vt/VTUtils;->handleAutoDropBack(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 472
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
