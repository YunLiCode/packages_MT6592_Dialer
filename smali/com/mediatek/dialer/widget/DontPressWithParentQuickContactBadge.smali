.class Lcom/mediatek/dialer/widget/DontPressWithParentQuickContactBadge;
.super Landroid/widget/QuickContactBadge;
.source "DontPressWithParentImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/dialer/widget/DontPressWithParentQuickContactBadge;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/QuickContactBadge;->setPressed(Z)V

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/QuickContactBadge;->setPressed(Z)V

    goto :goto_0
.end method
