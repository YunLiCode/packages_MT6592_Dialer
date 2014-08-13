.class public Lcom/android/dialer/dialpad/DialpadKeyButton;
.super Landroid/widget/FrameLayout;
.source "DialpadKeyButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/dialpad/DialpadKeyButton$OnPressedListener;
    }
.end annotation


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mHoverBounds:Landroid/graphics/Rect;

.field private mOnPressedListener:Lcom/android/dialer/dialpad/DialpadKeyButton$OnPressedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadKeyButton;->initForAccessibility(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadKeyButton;->initForAccessibility(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method private initForAccessibility(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 66
    return-void
.end method

.method private simulateClickForAccessibility()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 125
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadKeyButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadKeyButton;->setPressed(Z)V

    .line 133
    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadKeyButton;->sendAccessibilityEvent(I)V

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadKeyButton;->setPressed(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 105
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadKeyButton;->setClickable(Z)V

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadKeyButton;->simulateClickForAccessibility()V

    .line 111
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadKeyButton;->setClickable(Z)V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 80
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadKeyButton;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 81
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadKeyButton;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 82
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadKeyButton;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 83
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadKeyButton;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 84
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 88
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadKeyButton;->simulateClickForAccessibility()V

    .line 90
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnPressedListener(Lcom/android/dialer/dialpad/DialpadKeyButton$OnPressedListener;)V
    .locals 0
    .param p1, "onPressedListener"    # Lcom/android/dialer/dialpad/DialpadKeyButton$OnPressedListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadKeyButton;->mOnPressedListener:Lcom/android/dialer/dialpad/DialpadKeyButton$OnPressedListener;

    .line 51
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadKeyButton;->mOnPressedListener:Lcom/android/dialer/dialpad/DialpadKeyButton$OnPressedListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadKeyButton;->mOnPressedListener:Lcom/android/dialer/dialpad/DialpadKeyButton$OnPressedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/dialer/dialpad/DialpadKeyButton$OnPressedListener;->onPressed(Landroid/view/View;Z)V

    .line 74
    :cond_0
    return-void
.end method
