.class Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;
.super Landroid/os/AsyncTask;
.source "MTKRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndividualReplacementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
        ">;",
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
    .line 4051
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p2, "x1"    # Lcom/android/ex/chips/MTKRecipientEditTextView$1;

    .prologue
    .line 4051
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 4051
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->doInBackground([Ljava/util/ArrayList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/ArrayList;)Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "params":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 4058
    aget-object v4, p1, v9

    .line 4059
    .local v4, "originalRecipients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v6, "RecipientEditTextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[IndividualReplacementTask.doInBackground] start, recipient count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4060
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4062
    .local v1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 4063
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 4064
    .local v2, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_0

    .line 4065
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-interface {v2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4062
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4068
    .end local v2    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_1
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/BaseRecipientAdapter;

    .line 4069
    .local v0, "adapter":Lcom/android/ex/chips/BaseRecipientAdapter;
    if-nez v0, :cond_2

    .line 4175
    :goto_1
    return-object v10

    .line 4072
    :cond_2
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    new-instance v7, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;

    invoke-direct {v7, p0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$1;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;Ljava/util/ArrayList;)V

    invoke-static {v5, v0, v1, v6, v7}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/ArrayList;Landroid/accounts/Account;Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;)V

    .line 4164
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->setForceEnableBringPointIntoView(Z)V
    invoke-static {v5, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1300(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)V

    .line 4166
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$800(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$2;

    invoke-direct {v6, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask$2;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4174
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v6, "RecipientEditTextView"

    const-string v7, "[IndividualReplacementTask.doInBackground] end"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4051
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessListener:Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$5600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4181
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessListener:Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$5600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;->onChipProcessDone()V

    .line 4183
    :cond_0
    return-void
.end method
