.class Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

.field final synthetic val$recipients:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 3833
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iput-object p2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matchesFound(Ljava/util/Map;)V
    .locals 16
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
    .line 3837
    .local p1, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v12, v12, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v13, "RecipientEditTextView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[RecipientReplacementTask.doInBackground][matchesFound] start, recipients count: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", entries size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3839
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3842
    .local v7, "replacements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 3843
    .local v3, "contacts":Ljava/util/Collection;
    new-instance v9, Lcom/android/ex/chips/MTKRecipientEditTextView$PreloadPhotoTask;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v12, v12, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v13, 0x0

    invoke-direct {v9, v12, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView$PreloadPhotoTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    .line 3844
    .local v9, "task":Lcom/android/ex/chips/MTKRecipientEditTextView$PreloadPhotoTask;
    sget-object v12, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/util/Collection;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-virtual {v9, v12, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView$PreloadPhotoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3846
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3847
    .local v10, "temp":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v4, 0x0

    .line 3848
    .local v4, "entry":Lcom/android/ex/chips/RecipientEntry;
    if-eqz v10, :cond_0

    .line 3849
    invoke-interface {v10}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v1

    .line 3850
    .local v1, "contactID":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v12, v12, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v12

    invoke-interface {v12, v10}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 3851
    .local v8, "spanStart":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v12, v12, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v13, "RecipientEditTextView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[matchesFound] chip: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v10}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", contactID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", spanStart: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3853
    invoke-static {v1, v2}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3856
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v12, v12, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3857
    invoke-interface {v10}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3858
    .local v11, "tokenizedAddress":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "entry":Lcom/android/ex/chips/RecipientEntry;
    check-cast v4, Lcom/android/ex/chips/RecipientEntry;

    .line 3859
    .restart local v4    # "entry":Lcom/android/ex/chips/RecipientEntry;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v12, v12, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v13, "RecipientEditTextView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[matchesFound] phone case, entry: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3860
    if-nez v4, :cond_1

    .line 3861
    invoke-interface {v10}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v6

    .line 3862
    .local v6, "phoneStr":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "entry":Lcom/android/ex/chips/RecipientEntry;
    check-cast v4, Lcom/android/ex/chips/RecipientEntry;

    .line 3871
    .end local v6    # "phoneStr":Ljava/lang/String;
    .end local v11    # "tokenizedAddress":Ljava/lang/String;
    .restart local v4    # "entry":Lcom/android/ex/chips/RecipientEntry;
    :cond_1
    :goto_1
    const/4 v12, -0x1

    if-ne v8, v12, :cond_2

    .line 3872
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v12, v12, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->createFreeChip(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v13, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->access$5000(Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v13

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->addTemporaryRecipients(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    invoke-static {v12, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$5100(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 3873
    const/4 v4, 0x0

    .line 3876
    :cond_2
    if-eqz v4, :cond_4

    .line 3877
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->createFreeChip(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v12, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->access$5000(Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3865
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v13, v12, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-interface {v10}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/ex/chips/RecipientEntry;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    invoke-static {v13, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4900(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    .line 3867
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v12, v12, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v13, "RecipientEditTextView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[matchesFound] email case, entry: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3879
    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3883
    .end local v1    # "contactID":J
    .end local v4    # "entry":Lcom/android/ex/chips/RecipientEntry;
    .end local v8    # "spanStart":I
    .end local v10    # "temp":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->processReplacements(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v12, v13, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->access$5200(Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;Ljava/util/List;Ljava/util/List;)V

    .line 3884
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v12, v12, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v13, "RecipientEditTextView"

    const-string v14, "[RecipientReplacementTask.doInBackground][matchesFound] end"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3885
    return-void
.end method

.method public matchesNotFound(Ljava/util/Set;)V
    .locals 8
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
    .local p1, "unfoundAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 3889
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v3, v3, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v4, "RecipientEditTextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RecipientReplacementTask.doInBackground][matchesNotFound] start, unfound count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3891
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 3892
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3894
    .local v1, "replacements":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3895
    .local v2, "temp":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v3, v3, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 3897
    invoke-interface {v2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3898
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    invoke-interface {v2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->createFreeChip(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v3, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->access$5000(Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3900
    :cond_0
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3903
    :cond_1
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3906
    .end local v2    # "temp":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_2
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->processReplacements(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v3, v4, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->access$5200(Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;Ljava/util/List;Ljava/util/List;)V

    .line 3908
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "replacements":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    :cond_3
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    iget-object v3, v3, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v4, "RecipientEditTextView"

    const-string v5, "[RecipientReplacementTask.doInBackground][matchesNotFound] end"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3909
    return-void
.end method
