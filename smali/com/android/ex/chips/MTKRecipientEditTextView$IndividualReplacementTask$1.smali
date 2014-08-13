.class Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->doInBackground([Ljava/util/ArrayList;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

.field final synthetic val$originalRecipients:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 4073
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iput-object p2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->val$originalRecipients:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matchesFound(Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4077
    .local p1, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v13, v13, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v14, "RecipientEditTextView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[IndividualReplacementTask.doInBackground][matchesFound] entries size: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v14, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4078
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4079
    .local v2, "des":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v13, v13, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v14, "RecipientEditTextView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "entry: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v14, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4081
    .end local v2    # "des":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    .line 4082
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->val$originalRecipients:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 4083
    .local v11, "temp":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v11, :cond_7

    invoke-interface {v11}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 4086
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v13, v13, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v13

    invoke-interface {v13, v11}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    .line 4087
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v13, v13, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mEllipsizedChipLock:Ljava/lang/Object;
    invoke-static {v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$5700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 4088
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v13, v13, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v10

    .line 4089
    .local v10, "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v10, :cond_3

    .line 4090
    const/4 v5, 0x0

    .line 4091
    .local v5, "found":Z
    const/4 v7, 0x0

    .local v7, "idx":I
    :goto_2
    array-length v13, v10

    if-ge v7, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->val$originalRecipients:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_1

    .line 4092
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v13, v13, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-interface {v11}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v15

    aget-object v16, v10, v7

    invoke-interface/range {v16 .. v16}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->compareEntries(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEntry;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 4093
    aget-object v11, v10, v7

    .line 4094
    const/4 v5, 0x1

    .line 4095
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v13, v13, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v15, "RecipientEditTextView"

    const-string v16, "[matchesFound] Chip may be replaced due to replaceChipOnSameTextRange()"

    move-object/from16 v0, v16

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v15, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4099
    :cond_1
    if-nez v5, :cond_3

    .line 4100
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v13, v13, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v15, "RecipientEditTextView"

    const-string v16, "[matchesFound] [WARNING] Can\'t find the chip to replace"

    move-object/from16 v0, v16

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v15, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4101
    monitor-exit v14

    goto/16 :goto_1

    .line 4104
    .end local v5    # "found":Z
    .end local v7    # "idx":I
    .end local v10    # "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 4091
    .restart local v5    # "found":Z
    .restart local v7    # "idx":I
    .restart local v10    # "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 4104
    .end local v5    # "found":Z
    .end local v7    # "idx":I
    :cond_3
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4109
    .end local v10    # "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_4
    invoke-interface {v11}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 4110
    .local v3, "destination":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4111
    .local v4, "entry":Lcom/android/ex/chips/RecipientEntry;
    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z
    invoke-static {v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$5800(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 4112
    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4114
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v14, v13, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/ex/chips/RecipientEntry;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    invoke-static {v14, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4900(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    .line 4115
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v13, v13, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v14, "RecipientEditTextView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[matchesFound] destination: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", entry created: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v14, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4119
    if-nez v4, :cond_6

    .line 4120
    invoke-interface {v11}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    .line 4122
    :cond_6
    move-object v12, v4

    .line 4123
    .local v12, "tempEntry":Lcom/android/ex/chips/RecipientEntry;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v13, v13, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v14, "RecipientEditTextView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[matchesFound] post runnable, old: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v11}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", new: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v14, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4124
    if-eqz v12, :cond_7

    .line 4125
    move-object v1, v11

    .line 4126
    .local v1, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-nez v8, :cond_8

    const/4 v9, 0x1

    .line 4127
    .local v9, "isFirstChip":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v13, v13, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$800(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v1, v12, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;Z)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4153
    .end local v1    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v3    # "destination":Ljava/lang/String;
    .end local v4    # "entry":Lcom/android/ex/chips/RecipientEntry;
    .end local v9    # "isFirstChip":Z
    .end local v12    # "tempEntry":Lcom/android/ex/chips/RecipientEntry;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 4126
    .restart local v1    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v3    # "destination":Ljava/lang/String;
    .restart local v4    # "entry":Lcom/android/ex/chips/RecipientEntry;
    .restart local v12    # "tempEntry":Lcom/android/ex/chips/RecipientEntry;
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 4155
    .end local v1    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v3    # "destination":Ljava/lang/String;
    .end local v4    # "entry":Lcom/android/ex/chips/RecipientEntry;
    .end local v11    # "temp":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v12    # "tempEntry":Lcom/android/ex/chips/RecipientEntry;
    :cond_9
    return-void
.end method

.method public matchesNotFound(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4160
    .local p1, "unfoundAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v1, "RecipientEditTextView"

    const-string v2, "[IndividualReplacementTask.doInBackground][matchesNotFound]"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4161
    return-void
.end method
