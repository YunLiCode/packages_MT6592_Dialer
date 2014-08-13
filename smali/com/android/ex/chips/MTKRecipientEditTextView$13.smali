.class Lcom/android/ex/chips/MTKRecipientEditTextView$13;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;->registerGlobalLayoutListener()V
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
    .line 4770
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 4773
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v2, "RecipientEditTextView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onGlobalLayout] current view width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", line count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLineCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4776
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mCurrentWidth:I
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$6400(Lcom/android/ex/chips/MTKRecipientEditTextView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 4795
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$800(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/ex/chips/MTKRecipientEditTextView$13$1;

    invoke-direct {v2, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$13$1;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView$13;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4804
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->unRegisterGlobalLayoutListener()V
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$6700(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 4805
    return-void

    .line 4780
    :cond_1
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v2

    # setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mCurrentWidth:I
    invoke-static {v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$6402(Lcom/android/ex/chips/MTKRecipientEditTextView;I)I

    .line 4781
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4785
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_2

    .line 4786
    .local v0, "isPortrait":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 4787
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->rotateToPortrait()V
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$6500(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 4791
    :goto_2
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->requestLayout()V

    goto :goto_0

    .line 4785
    .end local v0    # "isPortrait":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 4789
    .restart local v0    # "isPortrait":Z
    :cond_3
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->rotateToLandscape()V
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$6600(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    goto :goto_2
.end method
