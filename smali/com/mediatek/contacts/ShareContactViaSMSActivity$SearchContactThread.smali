.class Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;
.super Ljava/lang/Thread;
.source "ShareContactViaSMSActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/ShareContactViaSMSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchContactThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/ShareContactViaSMSActivity;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 326
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    invoke-virtual {v0}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->finish()V

    .line 340
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 343
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    invoke-virtual {v0}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->finish()V

    .line 346
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 330
    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    iget-object v1, v1, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    iget-object v1, v1, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    # setter for: Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mDataUri:Landroid/net/Uri;
    invoke-static {v2, v1}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->access$102(Lcom/mediatek/contacts/ShareContactViaSMSActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 332
    const-string v1, "ShareContactViaSMSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[run]dataUri is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    # getter for: Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mDataUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->access$100(Lcom/mediatek/contacts/ShareContactViaSMSActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    # getter for: Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mDataUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->access$100(Lcom/mediatek/contacts/ShareContactViaSMSActivity;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 334
    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    iget-object v2, v2, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mLookUpUris:Ljava/lang/String;

    # invokes: Lcom/mediatek/contacts/ShareContactViaSMSActivity;->shareViaSMS(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->access$200(Lcom/mediatek/contacts/ShareContactViaSMSActivity;Ljava/lang/String;)V

    .line 336
    :cond_0
    return-void
.end method
