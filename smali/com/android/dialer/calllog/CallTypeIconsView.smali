.class public Lcom/android/dialer/calllog/CallTypeIconsView;
.super Landroid/view/View;
.source "CallTypeIconsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallTypeIconsView$Resources;
    }
.end annotation


# instance fields
.field private mCallTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

.field private mVTCall:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/calllog/CallTypeIconsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    .line 50
    new-instance v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    invoke-direct {v0, p1}, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    .line 51
    return-void
.end method

.method private getCallTypeDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "callType"    # I
    .param p2, "isVtCall"    # I

    .prologue
    const/4 v0, 0x1

    .line 109
    packed-switch p1, :pswitch_data_0

    .line 144
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    .line 111
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->vtincoming:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 117
    :pswitch_1
    if-ne p2, v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->vtoutgoing:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 123
    :pswitch_2
    if-ne p2, v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->vtmissed:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 129
    :pswitch_3
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->voicemail:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 131
    :pswitch_4
    if-ne p2, v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->vtautorejected:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->autorejected:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 109
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
.method public add(II)V
    .locals 4
    .param p1, "callType"    # I
    .param p2, "isVtCall"    # I

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iput p2, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mVTCall:I

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calllog/CallTypeIconsView;->getCallTypeDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget v3, v3, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->iconMargin:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mWidth:I

    .line 71
    iget v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mHeight:I

    .line 72
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallTypeIconsView;->invalidate()V

    .line 73
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    iput v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mWidth:I

    .line 56
    iput v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mHeight:I

    .line 57
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallTypeIconsView;->invalidate()V

    .line 58
    return-void
.end method

.method public getCallType(I)I
    .locals 1
    .param p1, "index"    # I
    .annotation build Lcom/android/contacts/common/test/NeededForTesting;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1
    .annotation build Lcom/android/contacts/common/test/NeededForTesting;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 156
    const/4 v3, 0x0

    .line 157
    .local v3, "left":I
    iget-object v5, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 158
    .local v0, "callType":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mVTCall:I

    invoke-direct {p0, v5, v6}, Lcom/android/dialer/calllog/CallTypeIconsView;->getCallTypeDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 159
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v4, v3, v5

    .line 160
    .local v4, "right":I
    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 161
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 162
    iget-object v5, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget v5, v5, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->iconMargin:I

    add-int v3, v4, v5

    .line 163
    goto :goto_0

    .line 164
    .end local v0    # "callType":Ljava/lang/Integer;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "right":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 151
    iget v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mWidth:I

    iget v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/calllog/CallTypeIconsView;->setMeasuredDimension(II)V

    .line 152
    return-void
.end method
