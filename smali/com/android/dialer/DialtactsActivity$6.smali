.class Lcom/android/dialer/DialtactsActivity$6;
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
    .line 792
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$6;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$6;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mBottomPaddingView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$1600(Lcom/android/dialer/DialtactsActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 796
    return-void
.end method
