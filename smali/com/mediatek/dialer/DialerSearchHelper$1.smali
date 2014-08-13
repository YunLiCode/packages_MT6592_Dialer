.class Lcom/mediatek/dialer/DialerSearchHelper$1;
.super Landroid/os/Handler;
.source "DialerSearchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/DialerSearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/DialerSearchHelper;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/DialerSearchHelper;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mediatek/dialer/DialerSearchHelper$1;->this$0:Lcom/mediatek/dialer/DialerSearchHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 63
    :pswitch_0
    const-string v0, "DialerSearchHelper"

    const-string v1, "MTK-DialerSearch, MESSAGE_DIALER_SEARCH_UPDATE_INTERVAL_TIMEOUT"

    invoke-static {v0, v1}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper$1;->this$0:Lcom/mediatek/dialer/DialerSearchHelper;

    # setter for: Lcom/mediatek/dialer/DialerSearchHelper;->mHasOnGoingUpdateRequest:Z
    invoke-static {v0, v2}, Lcom/mediatek/dialer/DialerSearchHelper;->access$002(Lcom/mediatek/dialer/DialerSearchHelper;Z)Z

    .line 65
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper$1;->this$0:Lcom/mediatek/dialer/DialerSearchHelper;

    # getter for: Lcom/mediatek/dialer/DialerSearchHelper;->mHasPendingUpdateRequest:Z
    invoke-static {v0}, Lcom/mediatek/dialer/DialerSearchHelper;->access$100(Lcom/mediatek/dialer/DialerSearchHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper$1;->this$0:Lcom/mediatek/dialer/DialerSearchHelper;

    # setter for: Lcom/mediatek/dialer/DialerSearchHelper;->mHasPendingUpdateRequest:Z
    invoke-static {v0, v2}, Lcom/mediatek/dialer/DialerSearchHelper;->access$102(Lcom/mediatek/dialer/DialerSearchHelper;Z)Z

    .line 67
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper$1;->this$0:Lcom/mediatek/dialer/DialerSearchHelper;

    invoke-virtual {v0}, Lcom/mediatek/dialer/DialerSearchHelper;->dialerSearchUpdateAsync()V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
