.class Lcom/android/ex/chips/MTKRecipientEditTextView$15;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0

    .prologue
    .line 5251
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$15;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5254
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$15;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$15;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mLastStringChanged:Z
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 5255
    :cond_0
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[notifyChipChanged] changedChipAddresses.size(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$15;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5256
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$15;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->notifyChipChanged()V
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$6900(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 5257
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$15;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5258
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$15;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mLastStringChanged:Z
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z

    move-result v0

    if-ne v4, v0, :cond_1

    .line 5259
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$15;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mLastStringChanged:Z
    invoke-static {v0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4102(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)Z

    .line 5261
    :cond_1
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$15;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->isRegisterVSync:Z
    invoke-static {v0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$7002(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)Z

    .line 5262
    return-void
.end method
