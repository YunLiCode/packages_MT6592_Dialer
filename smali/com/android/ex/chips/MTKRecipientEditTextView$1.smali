.class Lcom/android/ex/chips/MTKRecipientEditTextView$1;
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
    .line 289
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$1;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$1;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v1, "RecipientEditTextView"

    const-string v2, "[mAddTextWatcher.run]"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$1;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/text/TextWatcher;

    move-result-object v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$1;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$1;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    # setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$102(Lcom/android/ex/chips/MTKRecipientEditTextView;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;

    .line 295
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$1;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$1;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 297
    :cond_0
    return-void
.end method
