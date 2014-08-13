.class Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0

    .prologue
    .line 3312
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p2, "x1"    # Lcom/android/ex/chips/MTKRecipientEditTextView$1;

    .prologue
    .line 3312
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 18
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 3316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v15, "RecipientEditTextView"

    const-string v16, "[RecipientTextWatcher.afterTextChanged]"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v14 .. v16}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3318
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setCursorVisible(Z)V

    .line 3321
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 3322
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v15, "RecipientEditTextView"

    const-string v16, "[RecipientTextWatcher.afterTextChanged] text is empty"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v14 .. v16}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3324
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    .line 3325
    .local v10, "spannable":Landroid/text/Spannable;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    const-class v16, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, v16

    invoke-interface {v10, v14, v15, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3327
    .local v3, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    move-object v1, v3

    .local v1, "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v2, v1, v5

    .line 3328
    .local v2, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v10, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3327
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3330
    .end local v2    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;
    invoke-static {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2300(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/text/style/ImageSpan;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 3331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;
    invoke-static {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2300(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/text/style/ImageSpan;

    move-result-object v14

    invoke-interface {v10, v14}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3334
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v15, 0x0

    # setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z
    invoke-static {v14, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2402(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)Z

    .line 3337
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 3338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v15, "RecipientEditTextView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[RecipientTextWatcher.afterTextChanged] mTemporaryRecipients is not empty, count: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v17, v0

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v14 .. v16}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->clearTemporaryRecipients()V
    invoke-static {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2600(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 3405
    .end local v1    # "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v3    # "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "spannable":Landroid/text/Spannable;
    :cond_2
    :goto_1
    return-void

    .line 3346
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->chipsPending()Z
    invoke-static {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 3350
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 3351
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v15

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z
    invoke-static {v14, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2800(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 3352
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setCursorVisible(Z)V

    .line 3353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setSelection(I)V

    .line 3354
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V
    invoke-static {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2900(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 3360
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringAccelerateRemoveChip:Z
    invoke-static {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 3364
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v9

    .line 3367
    .local v9, "length":I
    const/4 v14, 0x1

    if-le v9, v14, :cond_2

    .line 3368
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->lastCharacterIsCommitCharacter(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 3369
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->commitByCharacter()V
    invoke-static {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3100(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    goto :goto_1

    .line 3373
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v14

    if-nez v14, :cond_7

    const/4 v4, 0x0

    .line 3374
    .local v4, "end":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->length()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    .line 3375
    .local v7, "len":I
    if-eq v4, v7, :cond_8

    .line 3376
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    .line 3380
    .local v6, "last":C
    :goto_3
    const v14, 0xff0c

    if-eq v6, v14, :cond_6

    const v14, 0xff1b

    if-ne v6, v14, :cond_a

    .line 3382
    :cond_6
    const v14, 0xff0c

    if-ne v6, v14, :cond_9

    .line 3383
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v14

    add-int/lit8 v15, v4, 0x1

    const/16 v16, 0x2c

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v4, v15, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_1

    .line 3373
    .end local v4    # "end":I
    .end local v6    # "last":C
    .end local v7    # "len":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    goto :goto_2

    .line 3378
    .restart local v4    # "end":I
    .restart local v7    # "len":I
    :cond_8
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    .restart local v6    # "last":C
    goto :goto_3

    .line 3386
    :cond_9
    const v14, 0xff1b

    if-ne v6, v14, :cond_2

    .line 3387
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v14

    add-int/lit8 v15, v4, 0x1

    const/16 v16, 0x3b

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v4, v15, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_1

    .line 3391
    :cond_a
    const/16 v14, 0x20

    if-ne v6, v14, :cond_2

    .line 3392
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v14

    if-nez v14, :cond_2

    .line 3395
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3396
    .local v12, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3200(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v15

    invoke-interface {v14, v12, v15}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v13

    .line 3397
    .local v13, "tokenStart":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3200(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v14

    invoke-interface {v14, v12, v13}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 3399
    .local v11, "sub":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;
    invoke-static {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3300(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/AutoCompleteTextView$Validator;

    move-result-object v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;
    invoke-static {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3300(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/AutoCompleteTextView$Validator;

    move-result-object v14

    invoke-interface {v14, v11}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3400
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->commitByCharacter()V
    invoke-static {v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3100(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    goto/16 :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 3487
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3409
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v8, "RecipientEditTextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[RecipientTextWatcher.onTextChanged] start: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", before: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", processing mode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;
    invoke-static {v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3400(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v8, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3411
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v8, "RecipientEditTextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[RecipientTextWatcher.onTextChanged] text: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v8, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3413
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3400(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-result-object v5

    sget-object v9, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    if-eq v5, v9, :cond_5

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3400(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-result-object v5

    sget-object v9, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->COMMIT:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    if-eq v5, v9, :cond_5

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3400(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-result-object v5

    sget-object v9, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REMOVE_LAST:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    if-eq v5, v9, :cond_5

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3400(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-result-object v5

    sget-object v9, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REPLACE_LAST:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    if-eq v5, v9, :cond_5

    move v5, v6

    :goto_0
    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V
    invoke-static {v8, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2200(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)V

    .line 3419
    sub-int v5, p3, p4

    if-ne v5, v6, :cond_7

    .line 3420
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v8, "RecipientEditTextView"

    const-string v9, "[RecipientTextWatcher.onTextChanged] deleting case"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v8, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3423
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionStart()I

    move-result v2

    .line 3424
    .local v2, "selStart":I
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    const-class v8, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v5, v2, v2, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3426
    .local v1, "repl":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v8, "RecipientEditTextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[RecipientTextWatcher.onTextChanged] selStart: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", repl.length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v8, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3427
    array-length v5, v1

    if-lez v5, :cond_6

    .line 3429
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 3431
    .local v0, "editable":Landroid/text/Editable;
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3200(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v5

    invoke-interface {v5, v0, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 3432
    .local v4, "tokenStart":I
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3200(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 3433
    .local v3, "tokenEnd":I
    add-int/lit8 v3, v3, 0x1

    .line 3434
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v3, v5, :cond_0

    .line 3435
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 3438
    :cond_0
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 3439
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v6, "RecipientEditTextView"

    const-string v8, "[RecipientTextWatcher.onTextChanged] mSelectedChip != null"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3440
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v6

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    invoke-static {v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3500(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v5

    if-ne v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v6

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    invoke-static {v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3600(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v5

    if-ne v3, v5, :cond_3

    .line 3441
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3442
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 3444
    :cond_1
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3445
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 3447
    :cond_2
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v6, 0x0

    # setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$702(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3451
    :cond_3
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v6, "MTKRecip"

    const-string v8, "[onTextChanged] delete"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3800(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3452
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v6, "RecipientEditTextView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[RecipientTextWatcher.onTextChanged] delete a chip, tokenStart:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tokenEnd:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3453
    invoke-interface {v0, v4, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 3454
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-interface {v5, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3456
    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I
    invoke-static {}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3900()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    .line 3457
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-interface {v6}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3482
    .end local v0    # "editable":Landroid/text/Editable;
    .end local v1    # "repl":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v2    # "selStart":I
    .end local v3    # "tokenEnd":I
    .end local v4    # "tokenStart":I
    :cond_4
    :goto_1
    return-void

    :cond_5
    move v5, v7

    .line 3413
    goto/16 :goto_0

    .line 3459
    .restart local v1    # "repl":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v2    # "selStart":I
    :cond_6
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mLastStringChanged:Z
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z

    move-result v5

    if-nez v5, :cond_4

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I
    invoke-static {}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3900()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    .line 3460
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mLastStringChanged:Z
    invoke-static {v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4102(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)Z

    .line 3461
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->registerVSync()V
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4200(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    goto :goto_1

    .line 3465
    .end local v1    # "repl":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v2    # "selStart":I
    :cond_7
    if-le p4, p3, :cond_4

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mDisableBringPointIntoView:Z
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4300(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3467
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->scrollBottomIntoView()V
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1100(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 3469
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mLastStringChanged:Z
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z

    move-result v5

    if-nez v5, :cond_8

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I
    invoke-static {}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3900()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_8

    .line 3470
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mLastStringChanged:Z
    invoke-static {v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4102(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)Z

    .line 3471
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->registerVSync()V
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4200(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 3474
    :cond_8
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v6

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z
    invoke-static {v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2800(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3476
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v5, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->lastCharacterIsCommitCharacter(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3477
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->commitByCharacter()V
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3100(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    goto :goto_1
.end method
