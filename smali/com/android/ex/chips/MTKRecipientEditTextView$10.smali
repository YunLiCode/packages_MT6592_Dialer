.class Lcom/android/ex/chips/MTKRecipientEditTextView$10;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

.field final synthetic val$spannable:Landroid/text/Spannable;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Landroid/text/Spannable;)V
    .locals 0

    .prologue
    .line 2661
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$10;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iput-object p2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$10;->val$spannable:Landroid/text/Spannable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    .locals 3
    .param p1, "first"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "second"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 2665
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$10;->val$spannable:Landroid/text/Spannable;

    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 2666
    .local v0, "firstStart":I
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$10;->val$spannable:Landroid/text/Spannable;

    invoke-interface {v2, p2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 2667
    .local v1, "secondStart":I
    if-ge v0, v1, :cond_0

    .line 2668
    const/4 v2, -0x1

    .line 2672
    :goto_0
    return v2

    .line 2669
    :cond_0
    if-le v0, v1, :cond_1

    .line 2670
    const/4 v2, 0x1

    goto :goto_0

    .line 2672
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2661
    check-cast p1, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView$10;->compare(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v0

    return v0
.end method
