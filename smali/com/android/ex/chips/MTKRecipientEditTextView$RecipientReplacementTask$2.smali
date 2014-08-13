.class Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->processReplacements(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

.field final synthetic val$recipients:Ljava/util/List;

.field final synthetic val$replacements:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 3922
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iput-object p2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->val$replacements:Ljava/util/List;

    iput-object p3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->val$recipients:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 3925
    const-wide/16 v24, 0x8

    const-string v26, "processRep"

    invoke-static/range {v24 .. v26}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->adjustHeapUtilization()V
    invoke-static/range {v24 .. v24}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->access$5300(Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;)V

    .line 3929
    new-instance v21, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3930
    .local v21, "text":Landroid/text/Editable;
    const/4 v11, 0x0

    .line 3932
    .local v11, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->val$replacements:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v23

    .line 3933
    .local v23, "totalChips":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v24, v0

    const-string v25, "RecipientEditTextView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[RecipientReplacementTask.processReplacements][run] start, recipients count: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->val$recipients:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", replacements count: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->val$replacements:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v24 .. v26}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->val$recipients:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3936
    .local v7, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->val$replacements:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3937
    .local v18, "replacement":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v18, :cond_6

    .line 3938
    invoke-interface {v7}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v17

    .line 3939
    .local v17, "oldEntry":Lcom/android/ex/chips/RecipientEntry;
    invoke-interface/range {v18 .. v18}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v16

    .line 3940
    .local v16, "newEntry":Lcom/android/ex/chips/RecipientEntry;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getBetterRecipient(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_2

    const/4 v14, 0x1

    .line 3943
    .local v14, "isBetter":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v24, v0

    const-string v25, "RecipientEditTextView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[run] index: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", old: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", new: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", isBetter: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", spanStart: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v24 .. v26}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3945
    if-eqz v14, :cond_1

    .line 3946
    move-object/from16 v20, v7

    .line 3948
    .local v20, "targetChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v19

    .line 3950
    .local v19, "start":I
    const/16 v24, -0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 3951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v24, v0

    const-string v25, "RecipientEditTextView"

    const-string v26, "[run] Can\'t find the chip to be replaced!!"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v24 .. v26}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v8

    .line 3953
    .local v8, "currentChips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    move-object v5, v8

    .local v5, "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v15, v5

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_2
    if-ge v13, v15, :cond_0

    aget-object v6, v5, v13

    .line 3954
    .local v6, "c":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v24, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v25

    invoke-interface {v6}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lcom/android/ex/chips/MTKRecipientEditTextView;->compareEntries(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEntry;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 3955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v24, v0

    const-string v25, "RecipientEditTextView"

    const-string v26, "[run] Found the missing chip"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v24 .. v26}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3956
    move-object/from16 v20, v6

    .line 3957
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v19

    .line 3962
    .end local v5    # "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v6    # "c":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v8    # "currentChips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    :cond_0
    const/16 v24, -0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 3965
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-interface/range {v21 .. v21}, Landroid/text/Editable;->length()I

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 3967
    .local v10, "end":I
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 3970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v24, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v4

    .line 3971
    .local v4, "addressText":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 3972
    new-instance v9, Landroid/text/SpannableString;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3974
    .local v9, "displayText":Landroid/text/SpannableString;
    const/16 v24, 0x0

    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    const/16 v26, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3982
    invoke-interface/range {v21 .. v21}, Landroid/text/Editable;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v24

    const/16 v25, 0x20

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    add-int/lit8 v24, v10, 0x1

    invoke-interface/range {v21 .. v21}, Landroid/text/Editable;->length()I

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 3984
    .local v22, "toReplace":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v24, v0

    const-string v25, "RecipientEditTextView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[run] replace text, start: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", end: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", text: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v24 .. v26}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3985
    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-interface {v0, v1, v2, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 3986
    invoke-virtual {v9}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 3987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->val$replacements:Ljava/util/List;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v11, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->val$recipients:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v11, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3990
    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I
    invoke-static {}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3900()I

    move-result v24

    and-int/lit8 v24, v24, 0x2

    if-eqz v24, :cond_1

    .line 3991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v24, v0

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-interface/range {v18 .. v18}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4005
    .end local v4    # "addressText":Ljava/lang/String;
    .end local v9    # "displayText":Landroid/text/SpannableString;
    .end local v10    # "end":I
    .end local v14    # "isBetter":Z
    .end local v16    # "newEntry":Lcom/android/ex/chips/RecipientEntry;
    .end local v17    # "oldEntry":Lcom/android/ex/chips/RecipientEntry;
    .end local v19    # "start":I
    .end local v20    # "targetChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v22    # "toReplace":I
    :cond_1
    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 4006
    goto/16 :goto_0

    .line 3940
    .restart local v16    # "newEntry":Lcom/android/ex/chips/RecipientEntry;
    .restart local v17    # "oldEntry":Lcom/android/ex/chips/RecipientEntry;
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 3953
    .restart local v5    # "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v6    # "c":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v8    # "currentChips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v13    # "i$":I
    .restart local v14    # "isBetter":Z
    .restart local v15    # "len$":I
    .restart local v19    # "start":I
    .restart local v20    # "targetChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .end local v5    # "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v6    # "c":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v8    # "currentChips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .restart local v4    # "addressText":Ljava/lang/String;
    .restart local v9    # "displayText":Landroid/text/SpannableString;
    .restart local v10    # "end":I
    :cond_4
    move/from16 v22, v10

    .line 3982
    goto/16 :goto_3

    .line 3994
    .end local v4    # "addressText":Ljava/lang/String;
    .end local v9    # "displayText":Landroid/text/SpannableString;
    .end local v10    # "end":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/ex/chips/MTKRecipientEditTextView;->hasFocus()Z

    move-result v24

    if-nez v24, :cond_1

    .line 3997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v24, v0

    const-string v25, "RecipientEditTextView"

    const-string v26, "[run] !hasFocus, add chip back to mTemporaryRecipients"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v24 .. v26}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->addTemporaryRecipients(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    invoke-static {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$5100(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    goto :goto_4

    .line 4003
    .end local v14    # "isBetter":Z
    .end local v16    # "newEntry":Lcom/android/ex/chips/RecipientEntry;
    .end local v17    # "oldEntry":Lcom/android/ex/chips/RecipientEntry;
    .end local v19    # "start":I
    .end local v20    # "targetChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v24, v0

    const-string v25, "RecipientEditTextView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[run] index: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", replacement is null"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v24 .. v26}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 4007
    .end local v7    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v18    # "replacement":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4009
    if-lez v23, :cond_8

    .line 4010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v24, v0

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->recoverLayout()V
    invoke-static/range {v24 .. v24}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$5400(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 4013
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v24, v0

    const-string v25, "RecipientEditTextView"

    const-string v26, "[RecipientReplacementTask.processReplacements][run] end"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v24 .. v26}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v24, v0

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->restoreHeapUtilization()V
    invoke-static/range {v24 .. v24}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->access$5500(Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;)V

    .line 4017
    const-wide/16 v24, 0x8

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 4018
    return-void
.end method
