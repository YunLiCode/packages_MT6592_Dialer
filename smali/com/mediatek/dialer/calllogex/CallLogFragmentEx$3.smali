.class Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;
.super Landroid/os/Handler;
.source "CallLogFragmentEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V
    .locals 0

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v4, 0x7f0a05ab

    const/4 v1, 0x0

    .line 1040
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsFinished:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIsFinished:Z
    invoke-static {v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1000(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1100(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Ljava/lang/String;)V

    .line 1042
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1044
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$500(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$500(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->notifyDataSetChanged()V

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSelectResDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSelectResDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1050
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->showChoiceResourceDialog()V

    goto :goto_0

    .line 1056
    :sswitch_1
    const-string v2, "CallLogFragmentEx"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start WAIT_CURSOR_START !isFinished : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIsFinished:Z
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1000(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIsFinished:Z
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1000(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mEmptyTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1200(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1059
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContact:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1060
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1400(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContact:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1062
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1500(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1056
    goto :goto_1

    .line 1068
    :sswitch_2
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIsFinished:Z
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1000(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mEmptyTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1200(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContact:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a045b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1075
    :sswitch_3
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIsFinished:Z
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1000(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mEmptyTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1200(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContact:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1082
    :sswitch_4
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # invokes: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->refreshData()V
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1600(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V

    goto/16 :goto_0

    .line 1042
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x4ce -> :sswitch_1
        0x4e2 -> :sswitch_2
        0x4e3 -> :sswitch_3
        0x4e4 -> :sswitch_4
    .end sparse-switch
.end method
