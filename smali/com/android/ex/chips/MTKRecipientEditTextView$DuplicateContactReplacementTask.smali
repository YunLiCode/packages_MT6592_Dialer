.class Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;
.super Landroid/os/AsyncTask;
.source "MTKRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DuplicateContactReplacementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0

    .prologue
    .line 5131
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p2, "x1"    # Lcom/android/ex/chips/MTKRecipientEditTextView$1;

    .prologue
    .line 5131
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 5131
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 5134
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v6, "RecipientEditTextView"

    const-string v7, "[DuplicateContactReplacementTask] start."

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 5135
    const/4 v5, 0x0

    aget-object v3, p1, v5

    check-cast v3, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 5136
    .local v3, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v3}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    .line 5137
    .local v4, "currEntry":Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    .line 5138
    .local v1, "address":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5139
    .local v2, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5141
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/BaseRecipientAdapter;

    .line 5142
    .local v0, "adapter":Lcom/android/ex/chips/BaseRecipientAdapter;
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    new-instance v7, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;

    invoke-direct {v7, p0, v1, v4, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    invoke-static {v5, v0, v2, v6, v7}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/ArrayList;Landroid/accounts/Account;Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;)V

    .line 5166
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v6, "RecipientEditTextView"

    const-string v7, "[DuplicateContactReplacementTask] end."

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 5167
    const/4 v5, 0x0

    return-object v5
.end method
