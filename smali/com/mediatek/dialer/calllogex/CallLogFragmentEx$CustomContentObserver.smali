.class Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$CustomContentObserver;
.super Landroid/database/ContentObserver;
.source "CallLogFragmentEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;


# direct methods
.method public constructor <init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V
    .locals 1

    .prologue
    .line 201
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$CustomContentObserver;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .line 203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 204
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    .line 207
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$CustomContentObserver;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # setter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mRefreshDataRequired:Z
    invoke-static {v0, v1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$002(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Z)Z

    .line 208
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$CustomContentObserver;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # setter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mScrollToTop:Z
    invoke-static {v0, v1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$102(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Z)Z

    .line 213
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$CustomContentObserver;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIsResumed:Z
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$200(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$CustomContentObserver;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$CustomContentObserver;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x4e4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 218
    :cond_0
    return-void
.end method
