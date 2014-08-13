.class public Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;
.super Landroid/widget/FrameLayout;
.source "DialpadAdditionalButtons.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DialpadAdditionalButtons"


# instance fields
.field private mButtonHeight:I

.field private mButtonWidth:I

.field private mDialButton:Landroid/widget/ImageButton;

.field private mDivider1:Landroid/view/View;

.field private mDivider2:Landroid/view/View;

.field private mDividerHeight:I

.field private mDividerVertical:Landroid/graphics/drawable/Drawable;

.field private mDividerWidth:I

.field private mHoloButton:Landroid/widget/ImageButton;

.field private mLayouted:Z

.field private mMenuButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mLayouted:Z

    .line 37
    invoke-virtual {p0}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mButtonWidth:I

    .line 39
    const v1, 0x7f0800a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mButtonHeight:I

    .line 40
    const v1, 0x7f08007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDividerHeight:I

    .line 41
    const v1, 0x7f080080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDividerWidth:I

    .line 42
    return-void
.end method

.method private calculatePositionByOrientation(II)I
    .locals 2
    .param p1, "portraitPosition"    # I
    .param p2, "gapPosition"    # I

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 143
    sub-int/2addr p1, p2

    .line 145
    .end local p1    # "portraitPosition":I
    :cond_0
    return p1
.end method


# virtual methods
.method protected init()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    new-array v5, v8, [I

    const v6, 0x101030e

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 55
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 57
    .local v1, "itemBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    new-array v5, v8, [I

    const v6, 0x101030a

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 58
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDividerVertical:Landroid/graphics/drawable/Drawable;

    .line 60
    new-instance v4, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mHoloButton:Landroid/widget/ImageButton;

    .line 61
    iget-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mHoloButton:Landroid/widget/ImageButton;

    const v5, 0x7f020196

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 62
    iget-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mHoloButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mHoloButton:Landroid/widget/ImageButton;

    const v5, 0x7f0d002a

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setId(I)V

    .line 64
    iget-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mHoloButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v4}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->addView(Landroid/view/View;)V

    .line 66
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDivider1:Landroid/view/View;

    .line 67
    iget-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDivider1:Landroid/view/View;

    iget-object v5, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDividerVertical:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDivider1:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->addView(Landroid/view/View;)V

    .line 70
    new-instance v4, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDialButton:Landroid/widget/ImageButton;

    .line 71
    iget-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDialButton:Landroid/widget/ImageButton;

    const v5, 0x7f020092

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 72
    iget-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDialButton:Landroid/widget/ImageButton;

    const v5, 0x7f02000b

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 73
    iget-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDialButton:Landroid/widget/ImageButton;

    const v5, 0x7f0d002b

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setId(I)V

    .line 74
    iget-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDialButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v4}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->addView(Landroid/view/View;)V

    .line 76
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDivider2:Landroid/view/View;

    .line 77
    iget-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDivider2:Landroid/view/View;

    iget-object v5, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDividerVertical:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDivider2:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->addView(Landroid/view/View;)V

    .line 80
    new-instance v4, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mMenuButton:Landroid/widget/ImageButton;

    .line 81
    iget-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    const v0, 0x7f0d002c

    .line 83
    .local v0, "id":I
    const v2, 0x7f0200d4

    .line 84
    .local v2, "resId":I
    invoke-virtual {p0}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    const v0, 0x7f0d002d

    .line 87
    const v2, 0x7f020195

    .line 93
    :cond_0
    iget-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setId(I)V

    .line 94
    iget-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 95
    iget-object v4, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v4}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->setButtonVisibility()V

    .line 97
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 49
    invoke-virtual {p0}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->init()V

    .line 50
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 100
    iget-boolean v5, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mLayouted:Z

    if-eqz v5, :cond_0

    .line 124
    :goto_0
    return-void

    .line 104
    :cond_0
    iput-boolean v7, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mLayouted:Z

    .line 106
    invoke-virtual {p0, v8}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "child":Landroid/view/View;
    iget v5, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mButtonWidth:I

    iget v6, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mButtonHeight:I

    invoke-virtual {v0, v8, v8, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 109
    iget v5, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mButtonHeight:I

    iget v6, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDividerHeight:I

    sub-int/2addr v5, v6

    shr-int/lit8 v4, v5, 0x1

    .line 110
    .local v4, "dividerTop":I
    invoke-virtual {p0, v7}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 111
    iget v5, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mButtonWidth:I

    iget v6, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDividerHeight:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->calculatePositionByOrientation(II)I

    move-result v1

    .line 112
    .local v1, "child1LeftPosition":I
    iget v5, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mButtonWidth:I

    iget v6, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDividerWidth:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDividerHeight:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->calculatePositionByOrientation(II)I

    move-result v2

    .line 113
    .local v2, "child1RightPosition":I
    iget v5, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDividerHeight:I

    add-int/2addr v5, v4

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 115
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 116
    iget v5, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mButtonWidth:I

    iget v6, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDividerHeight:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->calculatePositionByOrientation(II)I

    move-result v3

    .line 117
    .local v3, "child2LeftPosition":I
    iget v5, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mButtonWidth:I

    shl-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mButtonHeight:I

    invoke-virtual {v0, v3, v8, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 119
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 120
    iget v5, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mButtonWidth:I

    shl-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mButtonWidth:I

    shl-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDividerWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDividerHeight:I

    add-int/2addr v7, v4

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 122
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 123
    iget v5, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mButtonWidth:I

    shl-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mButtonWidth:I

    shl-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mButtonWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mButtonHeight:I

    invoke-virtual {v0, v5, v8, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected setButtonVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 127
    invoke-virtual {p0}, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mHoloButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDivider1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/mediatek/dialer/widget/DialpadAdditionalButtons;->mDivider2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_0
    return-void
.end method
