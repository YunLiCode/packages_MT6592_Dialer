.class Lcom/android/ex/chips/MTKRecipientEditTextView$18;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;->postHandleContactUpdate(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

.field final synthetic val$chips:Ljava/util/List;

.field final synthetic val$deletedIDs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 5740
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$18;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iput-object p2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$18;->val$deletedIDs:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$18;->val$chips:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5743
    const-string v0, "MTKRecipContactObserver"

    const-string v1, "+update+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5744
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$18;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$18;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 5745
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$18;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$18;->val$deletedIDs:Ljava/util/ArrayList;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->handleContactDeleteSync(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$7700(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/util/List;)V

    .line 5746
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$18;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$18;->val$chips:Ljava/util/List;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->handleContactAdd(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$7600(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/util/List;)V

    .line 5747
    const-string v0, "MTKRecipContactObserver"

    const-string v1, "-update-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5748
    return-void
.end method
