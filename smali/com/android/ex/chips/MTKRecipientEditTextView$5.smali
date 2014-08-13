.class Lcom/android/ex/chips/MTKRecipientEditTextView$5;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 369
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$5;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "rowId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$5;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandlingAlternatesDropDown:Z
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$5;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v2, 0x1

    # setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandlingAlternatesDropDown:Z
    invoke-static {v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$502(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)Z

    .line 379
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$5;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 380
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$5;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$5;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/RecipientAlternatesAdapter;

    invoke-virtual {v1, p3}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getRecipientEntry(I)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    .line 382
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$5;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$800(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/os/Handler;

    move-result-object v1

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->DISMISS:I
    invoke-static {}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$900()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 383
    .local v0, "delayed":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$5;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 384
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$5;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$800(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 385
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$5;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearComposingText()V

    goto :goto_0
.end method
