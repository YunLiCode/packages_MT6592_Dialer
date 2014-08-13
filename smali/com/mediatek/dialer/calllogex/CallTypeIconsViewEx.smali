.class public Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;
.super Landroid/view/View;
.source "CallTypeIconsViewEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;
    }
.end annotation


# instance fields
.field private mCallType:I

.field private mHeight:I

.field private mResources:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;

.field private mVTCall:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;

    invoke-direct {v0, p1}, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mResources:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;

    .line 58
    return-void
.end method

.method private getCallTypeDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "callType"    # I
    .param p2, "isVTCall"    # I

    .prologue
    const/4 v0, 0x1

    .line 191
    packed-switch p1, :pswitch_data_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid call type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mResources:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->vtincoming:Landroid/graphics/drawable/Drawable;

    .line 216
    :goto_0
    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mResources:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 199
    :pswitch_1
    if-ne p2, v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mResources:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->vtoutgoing:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mResources:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 205
    :pswitch_2
    if-ne p2, v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mResources:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->vtmissed:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mResources:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->missed:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 211
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mResources:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->voicemail:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 213
    :pswitch_4
    if-ne p2, v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mResources:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->vtautorejected:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mResources:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->autorejected:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mCallType:I

    .line 67
    iput v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mWidth:I

    .line 68
    iput v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mHeight:I

    .line 69
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->invalidate()V

    .line 70
    return-void
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mCallType:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 127
    iget v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mCallType:I

    iget v2, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mVTCall:I

    invoke-direct {p0, v1, v2}, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->getCallTypeDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 128
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 132
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 111
    iget v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mWidth:I

    iget v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->setMeasuredDimension(II)V

    .line 112
    return-void
.end method

.method public set(II)V
    .locals 3
    .param p1, "callType"    # I
    .param p2, "isVTCall"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mCallType:I

    .line 177
    iput p2, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mVTCall:I

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->getCallTypeDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 179
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mWidth:I

    .line 183
    iget v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mHeight:I

    .line 185
    iget v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mWidth:I

    iget v2, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->mHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->setMeasuredDimension(II)V

    .line 187
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->invalidate()V

    goto :goto_0
.end method
