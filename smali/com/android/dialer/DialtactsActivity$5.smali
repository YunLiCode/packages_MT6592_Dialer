.class Lcom/android/dialer/DialtactsActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/DialtactsActivity;->showSearchBar()V
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
    .line 781
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$5;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 784
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$5;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSearchViewContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$1500(Lcom/android/dialer/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 785
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$5;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mActionBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$1800(Lcom/android/dialer/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 786
    return-void
.end method
