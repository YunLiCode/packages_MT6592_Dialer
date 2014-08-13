.class Lcom/android/ex/chips/MTKRecipientEditTextView$7;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$7;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 759
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$7;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->scrollBottomIntoView()V
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1100(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 762
    :cond_0
    return-void
.end method
