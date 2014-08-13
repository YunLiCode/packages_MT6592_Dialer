.class public Lcom/mediatek/dialer/dialpad/DialerSearchItemView;
.super Landroid/widget/FrameLayout;
.source "DialerSearchItemView.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "DialerSearchListItem"

.field private static sDialerSearchItemViewHeight:I

.field private static sListItemQuickContactPaddingBottom:I

.field private static sListItemQuickContactPaddingTop:I


# instance fields
.field public mCall:Landroid/widget/ImageButton;

.field public mCallType:Landroid/widget/ImageView;

.field public mDate:Landroid/widget/TextView;

.field public mDivider:Landroid/view/View;

.field public mLabelAndNumber:Landroid/widget/TextView;

.field public mName:Landroid/widget/TextView;

.field public mOperator:Landroid/widget/TextView;

.field public mQuickContactBadge:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->sDialerSearchItemViewHeight:I

    .line 43
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->sListItemQuickContactPaddingTop:I

    .line 45
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->sListItemQuickContactPaddingBottom:I

    .line 47
    return-void
.end method

.method private getLineMaxHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "heightThirdLine"    # I

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private onSubLayout(Landroid/view/View;II)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "subIconRight"    # I
    .param p3, "parentBottom"    # I

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 197
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 198
    .local v2, "height":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 200
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v5, p1, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 202
    sub-int v5, p3, v2

    add-int/lit8 v1, v5, -0x3

    .line 206
    .local v1, "childTop":I
    :goto_0
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v0, p2, v5

    .line 207
    .local v0, "childLeft":I
    add-int v5, v0, v4

    add-int v6, v1, v2

    invoke-virtual {p1, v0, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 208
    add-int v5, v0, v4

    return v5

    .line 204
    .end local v0    # "childLeft":I
    .end local v1    # "childTop":I
    :cond_0
    sub-int v1, p3, v2

    .restart local v1    # "childTop":I
    goto :goto_0
.end method


# virtual methods
.method log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v0, "DialerSearchListItem"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f0d0093

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    iput-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mQuickContactBadge:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    .line 55
    const v0, 0x7f0d0120

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mLabelAndNumber:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0d0094

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mName:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0d0121

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mCallType:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f0d0122

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mOperator:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0d0064

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mDate:Landroid/widget/TextView;

    .line 60
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 26
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 67
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mPaddingLeft:I

    move/from16 v16, v0

    .line 68
    .local v16, "parentLeft":I
    sub-int v23, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v17, v23, v24

    .line 70
    .local v17, "parentRight":I
    sget v18, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->sListItemQuickContactPaddingTop:I

    .line 71
    .local v18, "parentTop":I
    sub-int v23, p5, p3

    sget v24, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->sListItemQuickContactPaddingBottom:I

    sub-int v15, v23, v24

    .line 81
    .local v15, "parentBottom":I
    move/from16 v4, p2

    .line 82
    .local v4, "childLeft":I
    move/from16 v5, p3

    .line 86
    .local v5, "childTop":I
    const/4 v7, 0x0

    .line 87
    .local v7, "heightFirstLine":I
    const/4 v8, 0x0

    .line 88
    .local v8, "heightSecondLine":I
    const/4 v9, 0x0

    .line 89
    .local v9, "heightThirdLine":I
    const/4 v12, 0x0

    .line 95
    .local v12, "maxThreeLineHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mQuickContactBadge:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->getMeasuredWidth()I

    move-result v22

    .line 96
    .local v22, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mQuickContactBadge:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->getMeasuredHeight()I

    move-result v6

    .line 97
    .local v6, "height":I
    sub-int v23, v15, v18

    sub-int v23, v23, v6

    div-int/lit8 v23, v23, 0x2

    add-int v5, v18, v23

    .line 98
    move/from16 v4, v16

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mQuickContactBadge:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v23, v0

    add-int v24, v4, v22

    add-int v25, v5, v6

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->layout(IIII)V

    .line 100
    add-int v19, v4, v22

    .line 104
    .local v19, "quickContactBadgeRight":I
    sget v23, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->sListItemQuickContactPaddingTop:I

    add-int v23, v23, v6

    sget v24, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->sListItemQuickContactPaddingBottom:I

    add-int v23, v23, v24

    sput v23, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->sDialerSearchItemViewHeight:I

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v22

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 111
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v5, v18

    .line 112
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v4, v19, v23

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    add-int v24, v4, v22

    add-int v25, v5, v6

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 114
    add-int v13, v5, v6

    .line 115
    .local v13, "nameBottom":I
    move v7, v6

    .line 116
    add-int/2addr v12, v7

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mCallType:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getVisibility()I

    move-result v23

    if-nez v23, :cond_2

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mCallType:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v15}, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->onSubLayout(Landroid/view/View;II)I

    move-result v3

    .line 123
    .local v3, "callTypeRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mCallType:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v9}, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->getLineMaxHeight(Landroid/view/View;I)I

    move-result v9

    .line 127
    move/from16 v21, v3

    .line 128
    .local v21, "tempTypeRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mOperator:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getVisibility()I

    move-result v23

    if-nez v23, :cond_0

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mOperator:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3, v15}, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->onSubLayout(Landroid/view/View;II)I

    move-result v21

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mOperator:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v9}, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->getLineMaxHeight(Landroid/view/View;I)I

    move-result v9

    .line 134
    :cond_0
    move/from16 v14, v21

    .line 135
    .local v14, "operatorRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mDate:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getVisibility()I

    move-result v23

    if-nez v23, :cond_1

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mDate:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v14, v15}, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->onSubLayout(Landroid/view/View;II)I

    move-result v20

    .line 137
    .local v20, "tempRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mDate:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v9}, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->getLineMaxHeight(Landroid/view/View;I)I

    move-result v9

    .line 140
    .end local v20    # "tempRight":I
    :cond_1
    add-int/2addr v12, v9

    .line 144
    .end local v3    # "callTypeRight":I
    .end local v14    # "operatorRight":I
    .end local v21    # "tempTypeRight":I
    :cond_2
    move/from16 v10, v19

    .line 145
    .local v10, "labelRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mLabelAndNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getVisibility()I

    move-result v23

    if-nez v23, :cond_3

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mLabelAndNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v22

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mLabelAndNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mLabelAndNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 149
    .restart local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mCallType:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getVisibility()I

    move-result v23

    if-nez v23, :cond_4

    .line 150
    move v5, v13

    .line 154
    :goto_0
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v4, v19, v23

    .line 156
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    sub-int v10, v17, v23

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->mLabelAndNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    add-int v24, v5, v6

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v4, v5, v10, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 158
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 161
    :cond_3
    add-int/2addr v12, v8

    .line 171
    sget v23, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->sDialerSearchItemViewHeight:I

    move/from16 v0, v23

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v23

    sput v23, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->sDialerSearchItemViewHeight:I

    .line 172
    return-void

    .line 152
    :cond_4
    sub-int v5, v15, v6

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 179
    .local v0, "measuredWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 180
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->resolveSizeAndState(III)I

    move-result v1

    sget v2, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->sDialerSearchItemViewHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/dialer/dialpad/DialerSearchItemView;->setMeasuredDimension(II)V

    .line 182
    return-void
.end method
