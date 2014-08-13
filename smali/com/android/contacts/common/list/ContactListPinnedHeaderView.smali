.class public Lcom/android/contacts/common/list/ContactListPinnedHeaderView;
.super Landroid/view/ViewGroup;
.source "ContactListPinnedHeaderView.java"


# instance fields
.field private final mContactsCountTextColor:I

.field protected final mContext:Landroid/content/Context;

.field private mCountTextView:Landroid/widget/TextView;

.field private final mCountViewTextSize:I

.field private mHeaderBackgroundHeight:I

.field private mHeaderDivider:Landroid/view/View;

.field private final mHeaderTextColor:I

.field private final mHeaderTextIndent:I

.field private final mHeaderTextSize:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private final mHeaderUnderlineColor:I

.field private final mHeaderUnderlineHeight:I

.field private final mPaddingLeft:I

.field private final mPaddingRight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0xc

    const/high16 v4, -0x1000000

    const/4 v3, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    .line 59
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/common/R$styleable;->ContactListItemView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextIndent:I

    .line 65
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextColor:I

    .line 67
    const/16 v1, 0x12

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextSize:I

    .line 69
    const/16 v1, 0x14

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderUnderlineHeight:I

    .line 71
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderUnderlineColor:I

    .line 73
    const/16 v1, 0x13

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    .line 75
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mPaddingLeft:I

    .line 77
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mPaddingRight:I

    .line 79
    const/16 v1, 0x16

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mContactsCountTextColor:I

    .line 81
    const/16 v1, 0x18

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountViewTextSize:I

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    .line 87
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 89
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 90
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b001a

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 91
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 92
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->addView(Landroid/view/View;)V

    .line 93
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderDivider:Landroid/view/View;

    .line 94
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderDivider:Landroid/view/View;

    iget v2, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderUnderlineColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->addView(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method private isRTL()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 205
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 206
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isViewMeasurable(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 118
    sub-int v6, p4, p2

    .line 122
    .local v6, "width":I
    const/4 v5, 0x0

    .line 123
    .local v5, "topTextView":I
    iget v0, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    .line 125
    .local v0, "bottomTextView":I
    const/4 v1, 0x0

    .line 126
    .local v1, "leftCountTextView":I
    const/4 v3, 0x0

    .line 128
    .local v3, "rightCountTextView":I
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->isRTL()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 129
    iget v7, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mPaddingRight:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextIndent:I

    sub-int v4, v7, v8

    .line 130
    .local v4, "rightHeaderTextView":I
    iget-object v7, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v2, v4, v7

    .line 132
    .local v2, "leftHeaderTextView":I
    iget v7, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextIndent:I

    iget v8, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mPaddingLeft:I

    add-int v1, v7, v8

    .line 133
    iget-object v7, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int v3, v7, v1

    .line 144
    :goto_0
    iget-object v7, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8, v4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 149
    iget-object v7, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    invoke-direct {p0, v7}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->isViewMeasurable(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 150
    iget-object v7, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8, v3, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 156
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderDivider:Landroid/view/View;

    iget v8, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mPaddingLeft:I

    iget v9, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    iget v10, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mPaddingRight:I

    sub-int v10, v6, v10

    iget v11, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    iget v12, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderUnderlineHeight:I

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 160
    return-void

    .line 135
    .end local v2    # "leftHeaderTextView":I
    .end local v4    # "rightHeaderTextView":I
    :cond_1
    iget v7, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextIndent:I

    iget v8, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mPaddingLeft:I

    add-int v2, v7, v8

    .line 136
    .restart local v2    # "leftHeaderTextView":I
    iget-object v7, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int v4, v7, v2

    .line 139
    .restart local v4    # "rightHeaderTextView":I
    iget v7, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mPaddingRight:I

    sub-int v3, v6, v7

    .line 140
    iget-object v7, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v1, v3, v7

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000

    const/high16 v4, -0x80000000

    .line 102
    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->resolveSize(II)I

    move-result v0

    .line 104
    .local v0, "width":I
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 107
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->isViewMeasurable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 113
    :cond_0
    iget v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    iget v2, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderUnderlineHeight:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setMeasuredDimension(II)V

    .line 114
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->forceLayout()V

    .line 182
    return-void
.end method

.method public setCountView(Ljava/lang/String;)V
    .locals 3
    .param p1, "count"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mContactsCountTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountViewTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 189
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 190
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->addView(Landroid/view/View;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSectionHeader(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
