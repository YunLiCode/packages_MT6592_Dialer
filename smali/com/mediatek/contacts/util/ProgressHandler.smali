.class public Lcom/mediatek/contacts/util/ProgressHandler;
.super Landroid/os/Handler;
.source "ProgressHandler.java"


# static fields
.field private static final PROGRESS_DIALOG_DISMISS:I = 0x1

.field private static final PROGRESS_DIALOG_SHOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ProgressHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissDialog(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/util/ProgressHandler;->removeMessages(I)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/contacts/util/ProgressHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/util/ProgressHandler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    const-string v0, "ProgressHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleMessage]msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg.obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 75
    const-string v0, "ProgressHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleMessage]unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/FragmentManager;

    invoke-static {v0}, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/FragmentManager;

    invoke-static {v0}, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showDialog(Landroid/app/FragmentManager;)V
    .locals 0
    .param p1, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 51
    invoke-static {p1}, Lcom/mediatek/contacts/widget/SimpleProgressDialogFragment;->show(Landroid/app/FragmentManager;)V

    .line 52
    return-void
.end method

.method public showDialogDelayed(Landroid/app/FragmentManager;I)V
    .locals 3
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "millis"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/contacts/util/ProgressHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/contacts/util/ProgressHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 56
    return-void
.end method
