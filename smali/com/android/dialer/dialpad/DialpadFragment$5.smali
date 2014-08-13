.class Lcom/android/dialer/dialpad/DialpadFragment$5;
.super Landroid/os/Handler;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0

    .prologue
    .line 2820
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$5;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2822
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2831
    :cond_0
    :goto_0
    return-void

    .line 2824
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 2825
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$5;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/text/TextWatcher;

    # setter for: Lcom/android/dialer/dialpad/DialpadFragment;->mTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v1, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->access$402(Lcom/android/dialer/dialpad/DialpadFragment;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;

    goto :goto_0

    .line 2822
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
