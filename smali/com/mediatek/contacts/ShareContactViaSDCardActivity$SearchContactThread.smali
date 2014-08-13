.class Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;
.super Ljava/lang/Thread;
.source "ShareContactViaSDCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/ShareContactViaSDCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchContactThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread$CanceledException;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 361
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    invoke-virtual {v0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->finish()V

    .line 375
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 378
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    invoke-virtual {v0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->finish()V

    .line 381
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 365
    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    # getter for: Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->access$100(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    # getter for: Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->access$100(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    # setter for: Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mDataUri:Landroid/net/Uri;
    invoke-static {v2, v1}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->access$202(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 367
    const-string v1, "ShareContactViaSDCardActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[run]mDataUri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    # getter for: Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mDataUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->access$200(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    # getter for: Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mDataUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->access$200(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 369
    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    # getter for: Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mLookUpUris:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->access$300(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->shareViaSDCard(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->access$400(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;Ljava/lang/String;)V

    .line 371
    :cond_0
    return-void
.end method
