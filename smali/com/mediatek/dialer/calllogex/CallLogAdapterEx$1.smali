.class Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$1;
.super Ljava/lang/Object;
.source "CallLogAdapterEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 241
    const-string v2, "CallLogAdapter"

    const-string v3, "call button onClick +++++++"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/dialer/calllogex/IntentProviderEx;

    .line 243
    .local v1, "intentProvider":Lcom/mediatek/dialer/calllogex/IntentProviderEx;
    if-eqz v1, :cond_1

    .line 245
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->access$000(Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/dialer/calllogex/IntentProviderEx;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 246
    .local v0, "in":Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v2, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->access$100(Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-lez v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->access$000(Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a056a

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/MtkToast;->toast(Landroid/content/Context;I)V

    .line 249
    const-string v2, "CallLogAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->access$100(Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v0    # "in":Landroid/content/Intent;
    :goto_0
    return-void

    .line 258
    .restart local v0    # "in":Landroid/content/Intent;
    :cond_0
    const-string v2, "CallLogAdapter"

    const-string v3, "will startActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->access$000(Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->access$000(Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/dialer/calllogex/IntentProviderEx;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "follow_sim_management"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 261
    const-string v2, "CallLogAdapter"

    const-string v3, "finish startActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v0    # "in":Landroid/content/Intent;
    :cond_1
    const-string v2, "CallLogAdapter"

    const-string v3, "call button onClick --------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
