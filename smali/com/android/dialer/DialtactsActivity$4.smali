.class Lcom/android/dialer/DialtactsActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/DialtactsActivity;->hideSearchBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$4;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$4;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mBottomPaddingView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$1600(Lcom/android/dialer/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 766
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$4;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mFragmentsFrame:Landroid/view/View;
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$1700(Lcom/android/dialer/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 767
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$4;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mActionBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$1800(Lcom/android/dialer/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 768
    return-void
.end method
