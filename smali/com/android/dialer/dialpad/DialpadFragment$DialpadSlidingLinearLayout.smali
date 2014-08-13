.class public Lcom/android/dialer/dialpad/DialpadFragment$DialpadSlidingLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialpadSlidingLinearLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 193
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 194
    return-void
.end method


# virtual methods
.method public getYFraction()F
    .locals 3
    .annotation build Lcom/android/dialer/NeededForReflection;
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadSlidingLinearLayout;->getHeight()I

    move-result v0

    .line 199
    .local v0, "height":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 200
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadSlidingLinearLayout;->getTranslationY()F

    move-result v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method public setYFraction(F)V
    .locals 1
    .param p1, "yFraction"    # F
    .annotation build Lcom/android/dialer/NeededForReflection;
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadSlidingLinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadSlidingLinearLayout;->setTranslationY(F)V

    .line 206
    return-void
.end method
