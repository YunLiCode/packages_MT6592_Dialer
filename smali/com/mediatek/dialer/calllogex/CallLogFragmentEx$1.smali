.class Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1;
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
    .line 336
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 339
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 340
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 344
    :pswitch_0
    const/4 v5, 0x0

    .line 346
    .local v5, "list":Landroid/widget/ListView;
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v6}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getListView()Landroid/widget/ListView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 350
    :goto_1
    const/4 v4, 0x0

    .line 351
    .local v4, "itemView":Lcom/mediatek/dialer/calllog/CallLogListItemView;
    if-eqz v5, :cond_1

    .line 352
    invoke-virtual {v5, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "itemView":Lcom/mediatek/dialer/calllog/CallLogListItemView;
    check-cast v4, Lcom/mediatek/dialer/calllog/CallLogListItemView;

    .line 354
    .restart local v4    # "itemView":Lcom/mediatek/dialer/calllog/CallLogListItemView;
    :cond_1
    sget-boolean v6, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->ISTABLET_LAND:Z

    if-eqz v6, :cond_2

    .line 355
    if-eqz v4, :cond_0

    .line 356
    invoke-virtual {v4}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getSelectImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    invoke-virtual {v4}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/dialer/calllogex/IntentProviderEx;

    .line 358
    .local v3, "intentProvider":Lcom/mediatek/dialer/calllogex/IntentProviderEx;
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v6}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 359
    .local v0, "context":Landroid/content/Context;
    if-eqz v3, :cond_0

    .line 360
    invoke-virtual {v3, v0}, Lcom/mediatek/dialer/calllogex/IntentProviderEx;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 361
    .local v2, "in":Landroid/content/Intent;
    const-string v6, "follow_sim_management"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 362
    sget-boolean v6, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->ISTABLET_LAND:Z

    if-eqz v6, :cond_0

    .line 363
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;
    invoke-static {v6}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$500(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mOldItemView:Lcom/mediatek/dialer/calllog/CallLogListItemView;
    invoke-static {v7}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$400(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/calllog/CallLogListItemView;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->itemSetSelect(Lcom/mediatek/dialer/calllog/CallLogListItemView;Lcom/mediatek/dialer/calllog/CallLogListItemView;)V

    .line 364
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;
    invoke-static {v6}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$500(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    move-result-object v6

    invoke-virtual {v4}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getTagId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->setSelectedPosition(I)V

    .line 365
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # setter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mOldItemView:Lcom/mediatek/dialer/calllog/CallLogListItemView;
    invoke-static {v6, v4}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$402(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Lcom/mediatek/dialer/calllog/CallLogListItemView;)Lcom/mediatek/dialer/calllog/CallLogListItemView;

    .line 366
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    iget-object v7, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # invokes: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getCallLogEntryUris(Landroid/content/Intent;)[Landroid/net/Uri;
    invoke-static {v7, v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$600(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Landroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v7

    # invokes: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->updateData([Landroid/net/Uri;)V
    invoke-static {v6, v7}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$700(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;[Landroid/net/Uri;)V

    .line 368
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # setter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLandIntent:Landroid/content/Intent;
    invoke-static {v6, v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$802(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_0

    .line 347
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "in":Landroid/content/Intent;
    .end local v3    # "intentProvider":Lcom/mediatek/dialer/calllogex/IntentProviderEx;
    .end local v4    # "itemView":Lcom/mediatek/dialer/calllog/CallLogListItemView;
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 374
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "itemView":Lcom/mediatek/dialer/calllog/CallLogListItemView;
    :cond_2
    if-eqz v4, :cond_0

    .line 375
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;
    invoke-static {v6}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$500(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    move-result-object v6

    invoke-virtual {v4}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getTagId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->setSelectedPosition(I)V

    .line 376
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # setter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mOldItemView:Lcom/mediatek/dialer/calllog/CallLogListItemView;
    invoke-static {v6, v4}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$402(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Lcom/mediatek/dialer/calllog/CallLogListItemView;)Lcom/mediatek/dialer/calllog/CallLogListItemView;

    goto/16 :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
