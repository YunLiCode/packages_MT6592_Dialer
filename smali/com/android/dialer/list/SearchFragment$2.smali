.class Lcom/android/dialer/list/SearchFragment$2;
.super Landroid/os/Handler;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/SearchFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/SearchFragment;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/dialer/list/SearchFragment$2;->this$0:Lcom/android/dialer/list/SearchFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 157
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/list/SearchFragment$2;->this$0:Lcom/android/dialer/list/SearchFragment;

    # invokes: Lcom/android/dialer/list/SearchFragment;->forceReloadData()V
    invoke-static {v0}, Lcom/android/dialer/list/SearchFragment;->access$100(Lcom/android/dialer/list/SearchFragment;)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x4e4
        :pswitch_0
    .end packed-switch
.end method
