.class Lcom/android/dialer/dialpad/DialpadFragment$2;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpad/DialpadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;

.field final synthetic val$fragmentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    iput-object p2, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->val$fragmentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 587
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    :goto_0
    return v3

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mAdjustTranslationForAnimation:Z
    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$600(Lcom/android/dialer/dialpad/DialpadFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->val$fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->val$fragmentView:Landroid/view/View;

    check-cast v1, Lcom/android/dialer/dialpad/DialpadFragment$DialpadSlidingLinearLayout;

    const v2, 0x3f2b851f

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadSlidingLinearLayout;->setYFraction(F)V

    .line 592
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->val$fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 593
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
