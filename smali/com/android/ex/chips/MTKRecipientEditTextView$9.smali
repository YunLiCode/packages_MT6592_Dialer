.class Lcom/android/ex/chips/MTKRecipientEditTextView$9;
.super Landroid/os/AsyncTask;
.source "MTKRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;->showAlternates(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

.field final synthetic val$alternatesPopup:Landroid/widget/ListPopupWindow;

.field final synthetic val$currentChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;I)V
    .locals 0

    .prologue
    .line 2326
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iput-object p2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->val$currentChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    iput-object p3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->val$alternatesPopup:Landroid/widget/ListPopupWindow;

    iput p4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->val$width:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/widget/ListAdapter;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->val$currentChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->createAlternatesAdapter(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;
    invoke-static {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1500(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2326
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->doInBackground([Ljava/lang/Void;)Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "result"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 2334
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mAttachedToWindow:Z
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2335
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v2, "RecipientEditTextView"

    const-string v3, "[mShowAlternatesTask][onPostExecute] !mAttachedToWindow, return"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    :goto_0
    return-void

    .line 2338
    :cond_0
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v2, "RecipientEditTextView"

    const-string v3, "[mShowAlternatesTask][onPostExecute]"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v2, 0x0

    # setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandlingAlternatesDropDown:Z
    invoke-static {v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$502(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)Z

    .line 2341
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->val$alternatesPopup:Landroid/widget/ListPopupWindow;

    iget v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->val$width:I

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 2342
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->val$alternatesPopup:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 2343
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->val$alternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2344
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->val$alternatesPopup:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1800(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2346
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mCheckedItem:I
    invoke-static {v1, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1902(Lcom/android/ex/chips/MTKRecipientEditTextView;I)I

    .line 2347
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->val$alternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 2348
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->val$alternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 2349
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 2354
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mCheckedItem:I
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1900(Lcom/android/ex/chips/MTKRecipientEditTextView;)I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 2355
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mCheckedItem:I
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1900(Lcom/android/ex/chips/MTKRecipientEditTextView;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 2356
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mCheckedItem:I
    invoke-static {v1, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1902(Lcom/android/ex/chips/MTKRecipientEditTextView;I)I

    .line 2359
    :cond_1
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShowAlternatesTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2326
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$9;->onPostExecute(Landroid/widget/ListAdapter;)V

    return-void
.end method
