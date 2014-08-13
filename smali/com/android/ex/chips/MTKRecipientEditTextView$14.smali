.class Lcom/android/ex/chips/MTKRecipientEditTextView$14;
.super Ljava/util/ArrayList;
.source "MTKRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0

    .prologue
    .line 5210
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$14;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5210
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$14;->add(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 5213
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$14;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 5214
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$14;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->registerVSync()V
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4200(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 5215
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$14;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5216
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 5217
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
