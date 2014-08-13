.class Lcom/android/dialer/CallDetailActivity$12;
.super Landroid/os/Handler;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity;)V
    .locals 0

    .prologue
    .line 1559
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$12;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1562
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1569
    :goto_0
    return-void

    .line 1564
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$12;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$12;->this$0:Lcom/android/dialer/CallDetailActivity;

    # invokes: Lcom/android/dialer/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/dialer/CallDetailActivity;->access$2700(Lcom/android/dialer/CallDetailActivity;)[Landroid/net/Uri;

    move-result-object v1

    # invokes: Lcom/android/dialer/CallDetailActivity;->updateData([Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/dialer/CallDetailActivity;->access$2800(Lcom/android/dialer/CallDetailActivity;[Landroid/net/Uri;)V

    goto :goto_0

    .line 1562
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
