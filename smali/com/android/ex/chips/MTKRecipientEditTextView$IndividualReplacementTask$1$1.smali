.class Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->matchesFound(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;

.field final synthetic val$chip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

.field final synthetic val$isFirstChip:Z

.field final synthetic val$tempEntry:Lcom/android/ex/chips/RecipientEntry;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;Z)V
    .locals 0

    .prologue
    .line 4127
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->this$2:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;

    iput-object p2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->val$chip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    iput-object p3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->val$tempEntry:Lcom/android/ex/chips/RecipientEntry;

    iput-boolean p4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->val$isFirstChip:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 4130
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->this$2:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v5, "RecipientEditTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[IndividualReplacementTask.doInBackground][matchesFound.run] old: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->val$chip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v7}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", new: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->val$tempEntry:Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4132
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->this$2:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;
    invoke-static {v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4133
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->this$2:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->val$chip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->val$tempEntry:Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v4, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    .line 4137
    iget-boolean v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->val$isFirstChip:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->this$2:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z
    invoke-static {v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$5900(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4138
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->this$2:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateAvailableWidth()F
    invoke-static {v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$6000(Lcom/android/ex/chips/MTKRecipientEditTextView;)F

    move-result v4

    float-to-int v2, v4

    .line 4139
    .local v2, "innerWidth":I
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->this$2:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->this$2:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;

    iget-object v5, v5, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v5, v5, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->getMeasuredMoreSpanWidth(I)I
    invoke-static {v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$6100(Lcom/android/ex/chips/MTKRecipientEditTextView;I)I

    move-result v3

    .line 4140
    .local v3, "moreSpanWidth":I
    sub-int v1, v2, v3

    .line 4141
    .local v1, "chipsSpace":I
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->this$2:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 4142
    .local v0, "allChips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->this$2:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    aget-object v5, v0, v8

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    invoke-static {v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$6200(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v4

    if-le v4, v1, :cond_0

    .line 4143
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->this$2:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v5, "RecipientEditTextView"

    const-string v6, "The first chip must be ellipsized again"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4144
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1$1;->this$2:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    iget-object v4, v4, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    aget-object v5, v0, v8

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipOnSameTextRange(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;I)V
    invoke-static {v4, v5, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$6300(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;I)V

    .line 4149
    .end local v0    # "allChips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v1    # "chipsSpace":I
    .end local v2    # "innerWidth":I
    .end local v3    # "moreSpanWidth":I
    :cond_0
    return-void
.end method
