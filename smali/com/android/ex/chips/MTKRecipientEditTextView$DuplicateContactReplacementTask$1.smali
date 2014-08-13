.class Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$chip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

.field final synthetic val$currEntry:Lcom/android/ex/chips/RecipientEntry;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 0

    .prologue
    .line 5143
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;

    iput-object p2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;->val$address:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;->val$currEntry:Lcom/android/ex/chips/RecipientEntry;

    iput-object p4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;->val$chip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matchesFound(Ljava/util/Map;)V
    .locals 6
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
    .line 5146
    .local p1, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;>;"
    const/4 v0, 0x0

    .line 5147
    .local v0, "entry":Lcom/android/ex/chips/RecipientEntry;
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;->val$address:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lcom/android/ex/chips/RecipientEntry;
    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    .line 5148
    .restart local v0    # "entry":Lcom/android/ex/chips/RecipientEntry;
    move-object v1, v0

    .line 5149
    .local v1, "newEntry":Lcom/android/ex/chips/RecipientEntry;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;->val$currEntry:Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 5150
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;

    iget-object v2, v2, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v3, "RecipientEditTextView"

    const-string v4, "[DuplicateContactReplacement] Post handleReplaceDuplicateChip."

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 5151
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;

    iget-object v2, v2, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$800(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1$1;

    invoke-direct {v3, p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1$1;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;Lcom/android/ex/chips/RecipientEntry;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5158
    :cond_0
    return-void
.end method

.method public matchesNotFound(Ljava/util/Set;)V
    .locals 0
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
    .line 5163
    .local p1, "unfoundAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method
