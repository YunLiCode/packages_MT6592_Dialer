.class Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment$1;
.super Landroid/os/Handler;
.source "CallLogMultipleDeleteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment$1;->this$0:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 321
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 323
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment$1;->this$0:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

    # getter for: Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;
    invoke-static {v0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->access$000(Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;)Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment$1;->this$0:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

    # getter for: Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;
    invoke-static {v0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->access$000(Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;)Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
