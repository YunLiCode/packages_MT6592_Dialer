.class final Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipShadow;
.super Landroid/view/View$DragShadowBuilder;
.source "MTKRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecipientChipShadow"
.end annotation


# instance fields
.field private final mChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 0
    .param p2, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 4311
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipShadow;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    .line 4312
    iput-object p2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipShadow;->mChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 4313
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 4324
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipShadow;->mChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v0, p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->draw(Landroid/graphics/Canvas;)V

    .line 4325
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "shadowSize"    # Landroid/graphics/Point;
    .param p2, "shadowTouchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 4317
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipShadow;->mChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4318
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 4319
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 4320
    return-void
.end method