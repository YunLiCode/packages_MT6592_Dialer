.class Lcom/android/ex/chips/MTKRecipientEditTextView$13$1;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView$13;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$13;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView$13;)V
    .locals 0

    .prologue
    .line 4795
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4798
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$13;

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v1, "RecipientEditTextView"

    const-string v2, "[onGlobalLayout][run]"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4799
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$13;

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v1, 0x0

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V
    invoke-static {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2200(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)V

    .line 4800
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$13;

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$13$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$13;

    iget-object v1, v1, Lcom/android/ex/chips/MTKRecipientEditTextView$13;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->bringPointIntoView(I)Z

    .line 4801
    return-void
.end method
