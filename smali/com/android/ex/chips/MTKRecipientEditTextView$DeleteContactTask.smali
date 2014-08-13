.class Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;
.super Landroid/os/AsyncTask;
.source "MTKRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteContactTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Object;",
        "Ljava/util/HashMap",
        "<",
        "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
        "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
        ">;>;"
    }
.end annotation


# instance fields
.field mChipsNeedToReplace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private mHasFocusInPreExe:Z

.field private mIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSpansNeedToReplace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 1

    .prologue
    .line 5488
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->mChipsNeedToReplace:Ljava/util/List;

    .line 5491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->mSpansNeedToReplace:Ljava/util/List;

    .line 5492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->mHasFocusInPreExe:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p2, "x1"    # Lcom/android/ex/chips/MTKRecipientEditTextView$1;

    .prologue
    .line 5488
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 5488
    check-cast p1, [Ljava/util/List;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->doInBackground([Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5517
    .local p1, "params":[Ljava/util/List;, "[Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5518
    .local v2, "chipMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5519
    .local v7, "tempChips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->mChipsNeedToReplace:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5520
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->mSpansNeedToReplace:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5521
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 5522
    .local v1, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5523
    .local v0, "address":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getRecipientEntryByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    .line 5524
    .local v4, "entry":Lcom/android/ex/chips/RecipientEntry;
    if-nez v4, :cond_0

    .line 5525
    invoke-interface {v1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/ex/chips/RecipientEntry;->constructFakePhoneEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    .line 5529
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v8, v4, v9, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4400(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 5534
    .local v6, "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {v2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5530
    .end local v6    # "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :catch_0
    move-exception v3

    .line 5531
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 5536
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .end local v4    # "entry":Lcom/android/ex/chips/RecipientEntry;
    :cond_1
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5488
    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5540
    .local p1, "chipMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->hasFocus()Z

    move-result v3

    .line 5541
    .local v3, "hasFocus":Z
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/text/TextWatcher;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5542
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 5543
    .local v2, "editable":Landroid/text/Editable;
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5544
    .local v7, "text":Landroid/text/Editable;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5545
    .local v1, "chips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->mChipsNeedToReplace:Ljava/util/List;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5546
    iget-boolean v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->mHasFocusInPreExe:Z

    if-nez v8, :cond_0

    if-eqz v3, :cond_0

    .line 5547
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->mSpansNeedToReplace:Ljava/util/List;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5549
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 5550
    .local v0, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 5551
    .local v5, "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v8, v0, v5, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/text/Editable;)V

    goto :goto_0

    .line 5553
    .end local v0    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v5    # "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_1
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    new-instance v9, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;

    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    # setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v8, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$102(Lcom/android/ex/chips/MTKRecipientEditTextView;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;

    .line 5554
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/text/TextWatcher;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5555
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v8, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 5556
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setSelection(I)V

    .line 5557
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5558
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->mSpansNeedToReplace:Ljava/util/List;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5559
    iget-boolean v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->mHasFocusInPreExe:Z

    if-eqz v8, :cond_2

    if-nez v3, :cond_2

    .line 5560
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->mChipsNeedToReplace:Ljava/util/List;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5562
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 5563
    .local v6, "span":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 5564
    .restart local v5    # "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipsInRemovedSpans(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    invoke-static {v8, v6, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$7300(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    goto :goto_1

    .line 5566
    .end local v5    # "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v6    # "span":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_3
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->tryToAdjustChips()V
    invoke-static {v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$7400(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 5567
    return-void
.end method

.method protected onPreExecute()V
    .locals 11

    .prologue
    .line 5498
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->hasFocus()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->mHasFocusInPreExe:Z

    .line 5499
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->mIDs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5500
    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5501
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 5502
    .local v6, "l":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 5503
    .local v4, "id":J
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipsByContactID(J)Ljava/util/List;
    invoke-static {v7, v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$7200(Lcom/android/ex/chips/MTKRecipientEditTextView;J)Ljava/util/List;

    move-result-object v1

    .line 5504
    .local v1, "chips":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->mChipsNeedToReplace:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5505
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 5506
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 5507
    .local v0, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v7

    cmp-long v7, v7, v4

    if-eqz v7, :cond_2

    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v7

    const-wide/16 v9, -0x2

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 5508
    :cond_2
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->mSpansNeedToReplace:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 5509
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->mSpansNeedToReplace:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5514
    .end local v0    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v1    # "chips":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "id":J
    .end local v6    # "l":Ljava/lang/Long;
    :cond_3
    return-void
.end method

.method public setDeleteIDs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5494
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->mIDs:Ljava/util/List;

    .line 5495
    return-void
.end method
