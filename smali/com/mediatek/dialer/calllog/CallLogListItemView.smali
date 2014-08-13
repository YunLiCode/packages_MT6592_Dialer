.class public Lcom/mediatek/dialer/calllog/CallLogListItemView;
.super Landroid/view/ViewGroup;
.source "CallLogListItemView.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;
    }
.end annotation


# static fields
.field private static final ADJUST_NUMBER:F = 0.01f

.field private static final DEFAULT_CALLLOG_SECONDARY_TEXT_COLOR:I = 0x999999

.field private static final DEFAULT_DATE_DIVIDER_HEIGHT:I = 0x3

.field private static final DEFAULT_ITEM_CALL_COUNT_TEXT_SIZE:I = 0xc

.field private static final DEFAULT_ITEM_CALL_TIME_TEXT_SIZE:I = 0xc

.field private static final DEFAULT_ITEM_DATE_BACKGROUND_COLOR:I = 0x55ffffff

.field private static final DEFAULT_ITEM_NAME_TEXT_SIZE:I = 0x12

.field private static final DEFAULT_ITEM_NUMBER_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_ITEM_TEXT_COLOR:I = -0x1

.field private static final FONT_SIZE_EXTRA_LARGE:F = 1.15f

.field private static final FONT_SIZE_LARGE:F = 1.1f

.field private static final NAME_TOP_TO_ADD:I = 0x2c

.field private static final NUMBER_TOP_TO_ADD:I = 0x6

.field private static final QUICK_CONTACT_BADGE_STYLE:I = 0x10102af

.field private static final TAG:Ljava/lang/String; = "CallLogListItemView"

.field private static final VERTICAL_DIVIDER_LEN:I = 0x1

.field private static sCallLogDateTopPadding:I

.field private static sCallLogInnerMarginDim:I

.field private static sCheckBoxMultiSelWidthDim:I

.field private static sImageViewCallHeightDim:I

.field private static sImageViewCallWidthDim:I

.field private static sListItemPaddingLeftDim:I

.field private static sListItemPaddingRightDim:I

.field private static sListItemQuickContactPaddingBottom:I

.field private static sListItemQuickContactPaddingTop:I

.field private static sNameWidthMaxDim:I

.field private static sSimNameWidthMaxDim:I

.field private static sVerticalDividerHeightDim:I


# instance fields
.field private mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivatedSupported:Z

.field private mBackground:Landroid/widget/ImageView;

.field private mBoundsWithoutHeader:Landroid/graphics/Rect;

.field private mCallButtonClickListener:Landroid/view/View$OnClickListener;

.field private mCallLogDateVisible:Z

.field private mCallTypeIcon:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

.field private mCallTypeIconHeight:I

.field private mCallTypeIconSimNameMaxHeight:I

.field private mCheckBoxMultiSel:Landroid/widget/CheckBox;

.field private mCheckBoxMultiSelHeight:I

.field protected final mContext:Landroid/content/Context;

.field private mDrawableVertialDivider:Landroid/graphics/drawable/Drawable;

.field private mExtentionIcon:Landroid/widget/ImageView;

.field private final mGapBetweenImageAndText:I

.field private mHighlightedText:[C

.field private mHighlighter:Lcom/mediatek/dialer/calllog/CallLogHighlighter;

.field private mHorizontalDateDividerColor:I

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerVisible:Z

.field private mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

.field private mPhotoViewHeight:I

.field private mPhotoViewWidth:I

.field private mQuickContactPhoto:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

.field private final mSecondaryTextColor:I

.field private mSelectIcon:Landroid/widget/ImageView;

.field private final mSelectableItemBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectionBoundsMarginLeft:I

.field private mSelectionBoundsMarginRight:I

.field private mTagId:I

.field private mTextViewCallCount:Landroid/widget/TextView;

.field private mTextViewCallCountHeight:I

.field private mTextViewCallLogDate:Landroid/widget/TextView;

.field private mTextViewCallLogDateHeight:I

.field private mTextViewCallLogDateWidth:I

.field private mTextViewCallTime:Landroid/widget/TextView;

.field private mTextViewCallTimeHeight:I

.field private mTextViewName:Landroid/widget/TextView;

.field private mTextViewNameHeight:I

.field private mTextViewNumber:Landroid/widget/TextView;

.field private mTextViewNumberHeight:I

.field private mTextViewSimName:Landroid/widget/TextView;

.field private mTextViewSimNameHeight:I

.field private mVerticalDividerBeVisible:Z

.field private mVerticalDividerWidth:I

.field private mViewHorizontalDateDivider:Landroid/view/View;

.field private mViewHorizontalDateDividerHeight:I

.field private mViewHorizontalDivider:Landroid/view/View;

.field private mViewVertialDivider:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 223
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTagId:I

    .line 83
    iput-boolean v7, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHorizontalDividerVisible:Z

    .line 84
    iput v7, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHorizontalDividerHeight:I

    .line 90
    iput v7, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mVerticalDividerWidth:I

    .line 99
    const v3, 0x55ffffff

    iput v3, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHorizontalDateDividerColor:I

    .line 158
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    .line 224
    iput-object p1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    .line 227
    const/4 v1, 0x0

    .line 233
    .local v1, "def":I
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/dialer/R$styleable;->ContactListItemView:[I

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 236
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 241
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mGapBetweenImageAndText:I

    .line 269
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    const/4 v6, 0x7

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->setPadding(IIII)V

    .line 279
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 281
    iget-object v3, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->ViewGroup_Layout:[I

    const v6, 0x10102af

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mPhotoViewWidth:I

    .line 287
    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mPhotoViewHeight:I

    .line 291
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 292
    iget-object v3, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    new-array v4, v7, [I

    const v5, 0x101030e

    aput v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 294
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSelectableItemBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 296
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/dialer/R$styleable;->CallLog:[I

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 298
    const v3, 0x999999

    invoke-virtual {v0, v10, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSecondaryTextColor:I

    .line 300
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 302
    const/4 v2, 0x0

    .line 306
    .local v2, "highlightColor":I
    if-nez v2, :cond_0

    .line 307
    const/16 v3, 0xf

    const v4, -0xff0100

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 309
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    :cond_0
    new-instance v3, Lcom/mediatek/dialer/calllog/CallLogHighlighter;

    invoke-direct {v3, v2}, Lcom/mediatek/dialer/calllog/CallLogHighlighter;-><init>(I)V

    iput-object v3, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHighlighter:Lcom/mediatek/dialer/calllog/CallLogHighlighter;

    .line 313
    iget-object v3, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 314
    iget-object v3, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 317
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->initPredefinedData()V

    .line 318
    return-void
.end method

.method private ensureVerticalDivider()V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mDrawableVertialDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mDrawableVertialDivider:Landroid/graphics/drawable/Drawable;

    .line 777
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mVerticalDividerWidth:I

    .line 779
    :cond_0
    return-void
.end method

.method public static getFontSize()F
    .locals 5

    .prologue
    .line 1427
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 1429
    .local v1, "mCurConfig":Landroid/content/res/Configuration;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1434
    :goto_0
    const-string v2, "CallLogListItemView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFontSize(), Font size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    iget v2, v1, Landroid/content/res/Configuration;->fontScale:F

    return v2

    .line 1430
    :catch_0
    move-exception v0

    .line 1431
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CallLogListItemView"

    const-string v3, "Unable to retrieve font size"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initPredefinedData()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 708
    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    .line 710
    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sImageViewCallWidthDim:I

    .line 712
    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sImageViewCallHeightDim:I

    .line 714
    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sVerticalDividerHeightDim:I

    .line 720
    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sSimNameWidthMaxDim:I

    .line 722
    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemQuickContactPaddingTop:I

    .line 724
    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemQuickContactPaddingBottom:I

    .line 726
    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCheckBoxMultiSelWidthDim:I

    .line 730
    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemPaddingLeftDim:I

    .line 732
    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemPaddingRightDim:I

    .line 734
    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sNameWidthMaxDim:I

    .line 736
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    .line 739
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sImageViewCallWidthDim:I

    .line 741
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sImageViewCallHeightDim:I

    .line 743
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sVerticalDividerHeightDim:I

    .line 745
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogDateTopPadding:I

    .line 747
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sSimNameWidthMaxDim:I

    .line 749
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemQuickContactPaddingTop:I

    .line 751
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemQuickContactPaddingBottom:I

    .line 753
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCheckBoxMultiSelWidthDim:I

    .line 755
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemPaddingLeftDim:I

    .line 757
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemPaddingRightDim:I

    .line 759
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sNameWidthMaxDim:I

    .line 764
    :goto_0
    return-void

    .line 762
    :cond_0
    const-string v0, "CallLogListItemView"

    const-string v1, "Error!!! - initPredefinedData() mContext is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 327
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 328
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 329
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSelectionBoundsMarginLeft:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 330
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSelectionBoundsMarginRight:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 331
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 857
    iget-boolean v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mActivatedSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 866
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mVerticalDividerBeVisible:Z

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mDrawableVertialDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 870
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 871
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 836
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 837
    iget-boolean v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mActivatedSupported:Z

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 840
    :cond_0
    return-void
.end method

.method public getBackgroundView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mBackground:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1039
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mBackground:Landroid/widget/ImageView;

    .line 1040
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mBackground:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->addView(Landroid/view/View;I)V

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCallButton()Landroid/widget/ImageView;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 989
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    if-nez v0, :cond_1

    .line 990
    new-instance v0, Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    .line 991
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 992
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSelectableItemBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 993
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;->setImageResource(I)V

    .line 996
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    sget v1, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    sget v3, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    sget v4, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;->setPadding(IIII)V

    .line 998
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1000
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->addView(Landroid/view/View;)V

    .line 1002
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewVertialDivider:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1003
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewVertialDivider:Landroid/view/View;

    .line 1004
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewVertialDivider:Landroid/view/View;

    const v1, 0x7f020198

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1005
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewVertialDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->addView(Landroid/view/View;)V

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v5}, Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewVertialDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    return-object v0
.end method

.method public getCallCountTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1260
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    .line 1261
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1262
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    const/high16 v1, 0x41400000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1263
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSecondaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1264
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1267
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1268
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    const-string v1, "100000"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1269
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->addView(Landroid/view/View;)V

    .line 1271
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCallLogNameTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1119
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    .line 1120
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1121
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1122
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    sget v1, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sNameWidthMaxDim:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1123
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1126
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1127
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1128
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->addView(Landroid/view/View;)V

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCallTimeTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1345
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    .line 1346
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1347
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    const/high16 v1, 0x41400000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1348
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSecondaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1349
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1352
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1353
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    const-string v1, "9:00 pm"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1354
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->addView(Landroid/view/View;)V

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCallTypeIconView()Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;
    .locals 2

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

    if-nez v0, :cond_0

    .line 1226
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

    .line 1228
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->setActivated(Z)V

    .line 1229
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->addView(Landroid/view/View;)V

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

    return-object v0
.end method

.method public getCheckBoxMultiSel()Landroid/widget/CheckBox;
    .locals 2

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 1400
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    .line 1403
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setActivated(Z)V

    .line 1404
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->addView(Landroid/view/View;)V

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getExtentionIconView()V
    .locals 3

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1473
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    .line 1475
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1477
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/mediatek/contacts/ext/CallListExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    const-string v2, "ExtenstionForRCS"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/contacts/ext/CallListExtension;->setExtentionImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1479
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->addView(Landroid/view/View;)V

    .line 1480
    return-void
.end method

.method public getHorizontalDivider()Landroid/view/View;
    .locals 2

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDivider:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1386
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDivider:Landroid/view/View;

    .line 1387
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDivider:Landroid/view/View;

    iget v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHorizontalDateDividerColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1388
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->addView(Landroid/view/View;)V

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDivider:Landroid/view/View;

    return-object v0
.end method

.method public getNumberTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1183
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    .line 1184
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    const/high16 v1, 0x41600000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1185
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSecondaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1186
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    sget v1, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sNameWidthMaxDim:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1187
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1188
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1191
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1192
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->addView(Landroid/view/View;)V

    .line 1194
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method public getQuickContact()Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;
    .locals 4

    .prologue
    .line 968
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mQuickContactPhoto:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    if-nez v0, :cond_0

    .line 969
    new-instance v0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x10102af

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mQuickContactPhoto:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    .line 978
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mQuickContactPhoto:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->addView(Landroid/view/View;)V

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mQuickContactPhoto:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    return-object v0
.end method

.method public getSectionDate()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 900
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 901
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    .line 902
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 903
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 904
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 905
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 907
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    sget v1, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogDateTopPadding:I

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 909
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->addView(Landroid/view/View;)V

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDateDivider:Landroid/view/View;

    if-nez v0, :cond_1

    .line 912
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDateDivider:Landroid/view/View;

    .line 913
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDateDivider:Landroid/view/View;

    iget v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHorizontalDateDividerColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 914
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDateDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->addView(Landroid/view/View;)V

    .line 917
    :cond_1
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 918
    iput-boolean v3, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallLogDateVisible:Z

    .line 920
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSelectImageView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1022
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    .line 1023
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1025
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1026
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->addView(Landroid/view/View;)V

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSimNameTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1301
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    .line 1302
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1303
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1305
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1306
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1307
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1308
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    sget v1, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sSimNameWidthMaxDim:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1311
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1312
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    const-string v1, "China Mobile Realy?"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1313
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->addView(Landroid/view/View;)V

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTagId()I
    .locals 1

    .prologue
    .line 1485
    iget v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTagId:I

    return v0
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 767
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

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 849
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 850
    iget-boolean v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mActivatedSupported:Z

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 853
    :cond_0
    return-void
.end method

.method protected layoutLeftSide(IIII)I
    .locals 5
    .param p1, "height"    # I
    .param p2, "topBound"    # I
    .param p3, "bottomBound"    # I
    .param p4, "leftBound"    # I

    .prologue
    .line 783
    iget-object v2, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    invoke-virtual {p0, v2}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 784
    iget-object v2, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    invoke-virtual {v2}, Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;->getMeasuredWidth()I

    move-result v0

    .line 785
    .local v0, "buttonWidth":I
    iget-object v2, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    add-int v3, p4, v0

    iget v4, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHorizontalDividerHeight:I

    sub-int v4, p1, v4

    invoke-virtual {v2, p4, p2, v3, v4}, Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;->layout(IIII)V

    .line 790
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mVerticalDividerBeVisible:Z

    .line 791
    invoke-direct {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->ensureVerticalDivider()V

    .line 792
    add-int/2addr p4, v0

    .line 793
    add-int v2, p2, p1

    sget v3, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sVerticalDividerHeightDim:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 794
    .local v1, "iDividTopBond":I
    iget-object v2, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mDrawableVertialDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mVerticalDividerWidth:I

    add-int/2addr v3, p4

    sget v4, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sVerticalDividerHeightDim:I

    add-int/2addr v4, v1

    invoke-virtual {v2, p4, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 799
    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    add-int/2addr p4, v2

    .line 804
    .end local v0    # "buttonWidth":I
    .end local v1    # "iDividTopBond":I
    :goto_0
    return p4

    .line 801
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mVerticalDividerBeVisible:Z

    goto :goto_0
.end method

.method protected layoutRightSide(IIII)I
    .locals 5
    .param p1, "height"    # I
    .param p2, "topBound"    # I
    .param p3, "bottomBound"    # I
    .param p4, "rightBound"    # I

    .prologue
    .line 809
    iget-object v2, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    invoke-virtual {p0, v2}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 810
    iget-object v2, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    invoke-virtual {v2}, Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;->getMeasuredWidth()I

    move-result v0

    .line 811
    .local v0, "buttonWidth":I
    sub-int/2addr p4, v0

    .line 812
    iget-object v2, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    add-int v3, p4, v0

    iget v4, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHorizontalDividerHeight:I

    sub-int v4, p1, v4

    invoke-virtual {v2, p4, p2, v3, v4}, Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;->layout(IIII)V

    .line 817
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mVerticalDividerBeVisible:Z

    .line 818
    invoke-direct {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->ensureVerticalDivider()V

    .line 819
    iget v2, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mVerticalDividerWidth:I

    sub-int/2addr p4, v2

    .line 820
    add-int v2, p2, p1

    sget v3, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sVerticalDividerHeightDim:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 821
    .local v1, "iDividTopBond":I
    iget-object v2, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mDrawableVertialDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mVerticalDividerWidth:I

    add-int/2addr v3, p4

    sget v4, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sVerticalDividerHeightDim:I

    add-int/2addr v4, v1

    invoke-virtual {v2, p4, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 826
    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    sub-int/2addr p4, v2

    .line 831
    .end local v0    # "buttonWidth":I
    .end local v1    # "iDividTopBond":I
    :goto_0
    return p4

    .line 828
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mVerticalDividerBeVisible:Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 28
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 491
    sub-int v11, p5, p3

    .line 492
    .local v11, "height":I
    sub-int v27, p4, p2

    .line 496
    .local v27, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getPaddingRight()I

    move-result v12

    .line 497
    .local v12, "iPaddingRight":I
    const/4 v4, 0x0

    .line 498
    .local v4, "topBound":I
    move v5, v11

    .line 499
    .local v5, "bottomBound":I
    if-nez v12, :cond_f

    sget v3, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemPaddingLeftDim:I

    .line 500
    .local v3, "leftBound":I
    :goto_0
    if-nez v12, :cond_10

    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemPaddingRightDim:I

    :goto_1
    sub-int v6, v27, v2

    .line 502
    .local v6, "rightBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isLayoutRtl()Z

    move-result v14

    .line 503
    .local v14, "isLayoutRtl":Z
    const-string v2, "CallLogListItemView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLayoutRtl: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallLogDateVisible:Z

    if-eqz v2, :cond_0

    .line 507
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    if-eqz v14, :cond_11

    sub-int v2, v27, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDateWidth:I

    sub-int/2addr v2, v7

    move v7, v2

    :goto_2
    if-eqz v14, :cond_12

    sub-int v2, v27, v6

    :goto_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDateHeight:I

    invoke-virtual {v8, v7, v4, v2, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 511
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDateHeight:I

    add-int/2addr v4, v2

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDateDivider:Landroid/view/View;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDateDividerHeight:I

    add-int/2addr v7, v4

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 514
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDateDividerHeight:I

    add-int/2addr v4, v2

    .line 519
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mBackground:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mBackground:Landroid/widget/ImageView;

    const/4 v7, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v7, v4, v0, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .line 525
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHorizontalDividerVisible:Z

    if-eqz v2, :cond_3

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDivider:Landroid/view/View;

    if-nez v2, :cond_2

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getHorizontalDivider()Landroid/view/View;

    .line 529
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDivider:Landroid/view/View;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHorizontalDividerHeight:I

    sub-int v7, v11, v7

    invoke-virtual {v2, v3, v7, v6, v11}, Landroid/view/View;->layout(IIII)V

    .line 530
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHorizontalDividerHeight:I

    sub-int/2addr v5, v2

    .line 533
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    const/4 v7, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v7, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 535
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mActivatedSupported:Z

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 540
    :cond_4
    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemQuickContactPaddingTop:I

    add-int/2addr v4, v2

    .line 541
    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemQuickContactPaddingBottom:I

    sub-int/2addr v5, v2

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 545
    sub-int v2, v5, v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCheckBoxMultiSelHeight:I

    sub-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    add-int v10, v4, v2

    .line 546
    .local v10, "checkBoxTop":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    if-eqz v14, :cond_13

    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCheckBoxMultiSelWidthDim:I

    sub-int v2, v6, v2

    move v7, v2

    :goto_4
    if-eqz v14, :cond_14

    move v2, v6

    :goto_5
    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCheckBoxMultiSelHeight:I

    add-int/2addr v9, v10

    invoke-virtual {v8, v7, v10, v2, v9}, Landroid/widget/CheckBox;->layout(IIII)V

    .line 551
    if-eqz v14, :cond_15

    .line 552
    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCheckBoxMultiSelWidthDim:I

    sub-int/2addr v6, v2

    .line 559
    .end local v10    # "checkBoxTop":I
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mQuickContactPhoto:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 560
    sub-int v2, v5, v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mPhotoViewHeight:I

    sub-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    add-int v15, v4, v2

    .line 561
    .local v15, "photoTop":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mQuickContactPhoto:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    if-eqz v14, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mPhotoViewWidth:I

    sub-int v2, v6, v2

    move v7, v2

    :goto_7
    if-eqz v14, :cond_17

    move v2, v6

    :goto_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mPhotoViewHeight:I

    add-int/2addr v9, v15

    invoke-virtual {v8, v7, v15, v2, v9}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->layout(IIII)V

    .line 566
    if-eqz v14, :cond_18

    .line 567
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mPhotoViewWidth:I

    sget v7, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    add-int/2addr v2, v7

    sub-int/2addr v6, v2

    .line 574
    .end local v15    # "photoTop":I
    :cond_6
    :goto_9
    if-eqz v14, :cond_19

    .line 575
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4, v5, v3}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->layoutLeftSide(IIII)I

    move-result v3

    .line 581
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v13

    .line 583
    .local v13, "iconSelecteWidth":I
    sub-int v16, v27, v13

    .line 584
    .local v16, "rBound":I
    if-eqz v14, :cond_1a

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    const/16 v7, 0xa

    add-int/lit8 v8, v13, 0xa

    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHorizontalDividerHeight:I

    sub-int v9, v11, v9

    invoke-virtual {v2, v7, v4, v8, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 593
    .end local v13    # "iconSelecteWidth":I
    .end local v16    # "rBound":I
    :cond_7
    :goto_b
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/mediatek/contacts/ext/CallListExtension;

    move-result-object v2

    const-string v7, "ExtenstionForRCS"

    invoke-virtual {v2, v7}, Lcom/mediatek/contacts/ext/CallListExtension;->checkPluginSupport(Ljava/lang/String;)Z

    move-result v17

    .line 595
    .local v17, "supportStattus":Z
    if-eqz v17, :cond_8

    .line 596
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/mediatek/contacts/ext/CallListExtension;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mGapBetweenImageAndText:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    const-string v9, "ExtenstionForRCS"

    invoke-virtual/range {v2 .. v9}, Lcom/mediatek/contacts/ext/CallListExtension;->layoutExtentionIcon(IIIIILandroid/widget/ImageView;Ljava/lang/String;)I

    move-result v6

    .line 603
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNameHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumberHeight:I

    add-int/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIconSimNameMaxHeight:I

    add-int v25, v2, v7

    .line 605
    .local v25, "totalTextHeight":I
    add-int v2, v5, v4

    sub-int v2, v2, v25

    div-int/lit8 v18, v2, 0x2

    .line 609
    .local v18, "textTopBound":I
    const/16 v19, 0x0

    .line 610
    .local v19, "textViewNameWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v19

    .line 612
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    if-eqz v14, :cond_1b

    sub-int v2, v6, v19

    :goto_c
    move-object/from16 v0, p0

    iget v8, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNameHeight:I

    add-int v8, v8, v18

    move/from16 v0, v18

    invoke-virtual {v7, v2, v0, v6, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 618
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNameHeight:I

    add-int v18, v18, v2

    .line 621
    const/16 v20, 0x0

    .line 622
    .local v20, "textViewNumberWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v20

    .line 624
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    if-eqz v14, :cond_1c

    sub-int v2, v6, v20

    :goto_d
    move-object/from16 v0, p0

    iget v8, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumberHeight:I

    add-int v8, v8, v18

    move/from16 v0, v18

    invoke-virtual {v7, v2, v0, v6, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 630
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumberHeight:I

    add-int/lit8 v2, v2, 0x6

    add-int v18, v18, v2

    .line 635
    :cond_a
    move/from16 v21, v3

    .line 636
    .local v21, "thirdLeftBound":I
    move/from16 v22, v6

    .line 637
    .local v22, "thirdRightBound":I
    const/16 v26, 0x0

    .line 638
    .local v26, "viewWidth":I
    add-int v23, v18, v5

    .line 640
    .local v23, "thirdTopAdjust":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIconHeight:I

    sub-int v2, v23, v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v24, v2, 0x2

    .line 641
    .local v24, "thirdTopBound":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

    invoke-virtual {v2}, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->getMeasuredWidth()I

    move-result v26

    .line 643
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

    if-eqz v14, :cond_1d

    sub-int v2, v22, v26

    move v7, v2

    :goto_e
    if-eqz v14, :cond_1e

    move/from16 v2, v22

    :goto_f
    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIconHeight:I

    add-int v9, v9, v24

    move/from16 v0, v24

    invoke-virtual {v8, v7, v0, v2, v9}, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->layout(IIII)V

    .line 648
    if-eqz v14, :cond_1f

    .line 649
    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    add-int v2, v2, v26

    sub-int v22, v22, v2

    .line 657
    :cond_b
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v26

    .line 659
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCountHeight:I

    sub-int v2, v23, v2

    div-int/lit8 v24, v2, 0x2

    .line 660
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    if-eqz v14, :cond_20

    sub-int v2, v22, v26

    move v7, v2

    :goto_11
    if-eqz v14, :cond_21

    move/from16 v2, v22

    :goto_12
    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCountHeight:I

    add-int v9, v9, v24

    move/from16 v0, v24

    invoke-virtual {v8, v7, v0, v2, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 665
    if-eqz v14, :cond_22

    .line 666
    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    add-int v2, v2, v26

    sub-int v22, v22, v2

    .line 674
    :cond_c
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v26

    .line 677
    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sSimNameWidthMaxDim:I

    move/from16 v0, v26

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 678
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimNameHeight:I

    sub-int v2, v23, v2

    div-int/lit8 v24, v2, 0x2

    .line 679
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    if-eqz v14, :cond_23

    sub-int v2, v22, v26

    move v7, v2

    :goto_14
    if-eqz v14, :cond_24

    move/from16 v2, v22

    :goto_15
    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimNameHeight:I

    add-int v9, v9, v24

    move/from16 v0, v24

    invoke-virtual {v8, v7, v0, v2, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 684
    if-eqz v14, :cond_25

    .line 685
    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    add-int v2, v2, v26

    sub-int v22, v22, v2

    .line 693
    :cond_d
    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v26

    .line 695
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTimeHeight:I

    sub-int v2, v23, v2

    div-int/lit8 v24, v2, 0x2

    .line 696
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    if-eqz v14, :cond_26

    sub-int v2, v22, v26

    :goto_17
    if-eqz v14, :cond_27

    .end local v22    # "thirdRightBound":I
    :goto_18
    move-object/from16 v0, p0

    iget v8, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTimeHeight:I

    add-int v8, v8, v24

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v7, v2, v0, v1, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 702
    :cond_e
    return-void

    .line 499
    .end local v3    # "leftBound":I
    .end local v6    # "rightBound":I
    .end local v14    # "isLayoutRtl":Z
    .end local v17    # "supportStattus":Z
    .end local v18    # "textTopBound":I
    .end local v19    # "textViewNameWidth":I
    .end local v20    # "textViewNumberWidth":I
    .end local v21    # "thirdLeftBound":I
    .end local v23    # "thirdTopAdjust":I
    .end local v24    # "thirdTopBound":I
    .end local v25    # "totalTextHeight":I
    .end local v26    # "viewWidth":I
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 500
    .restart local v3    # "leftBound":I
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_1

    .restart local v6    # "rightBound":I
    .restart local v14    # "isLayoutRtl":Z
    :cond_11
    move v7, v3

    .line 507
    goto/16 :goto_2

    :cond_12
    move v2, v6

    goto/16 :goto_3

    .restart local v10    # "checkBoxTop":I
    :cond_13
    move v7, v3

    .line 546
    goto/16 :goto_4

    :cond_14
    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCheckBoxMultiSelWidthDim:I

    add-int/2addr v2, v3

    goto/16 :goto_5

    .line 554
    :cond_15
    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCheckBoxMultiSelWidthDim:I

    add-int/2addr v3, v2

    goto/16 :goto_6

    .end local v10    # "checkBoxTop":I
    .restart local v15    # "photoTop":I
    :cond_16
    move v7, v3

    .line 561
    goto/16 :goto_7

    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mPhotoViewWidth:I

    add-int/2addr v2, v3

    goto/16 :goto_8

    .line 569
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mPhotoViewWidth:I

    sget v7, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    goto/16 :goto_9

    .line 577
    .end local v15    # "photoTop":I
    :cond_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4, v5, v6}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->layoutRightSide(IIII)I

    move-result v6

    goto/16 :goto_a

    .line 587
    .restart local v13    # "iconSelecteWidth":I
    .restart local v16    # "rBound":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    add-int/lit8 v7, v16, -0xa

    move-object/from16 v0, p0

    iget v8, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHorizontalDividerHeight:I

    sub-int v8, v11, v8

    move/from16 v0, v27

    invoke-virtual {v2, v7, v4, v0, v8}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_b

    .end local v13    # "iconSelecteWidth":I
    .end local v16    # "rBound":I
    .restart local v17    # "supportStattus":Z
    .restart local v18    # "textTopBound":I
    .restart local v19    # "textViewNameWidth":I
    .restart local v25    # "totalTextHeight":I
    :cond_1b
    move v2, v3

    .line 612
    goto/16 :goto_c

    .restart local v20    # "textViewNumberWidth":I
    :cond_1c
    move v2, v3

    .line 624
    goto/16 :goto_d

    .restart local v21    # "thirdLeftBound":I
    .restart local v22    # "thirdRightBound":I
    .restart local v23    # "thirdTopAdjust":I
    .restart local v24    # "thirdTopBound":I
    .restart local v26    # "viewWidth":I
    :cond_1d
    move/from16 v7, v21

    .line 643
    goto/16 :goto_e

    :cond_1e
    add-int v2, v21, v26

    goto/16 :goto_f

    .line 651
    :cond_1f
    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    add-int v2, v2, v26

    add-int v21, v21, v2

    goto/16 :goto_10

    :cond_20
    move/from16 v7, v21

    .line 660
    goto/16 :goto_11

    :cond_21
    add-int v2, v21, v26

    goto/16 :goto_12

    .line 668
    :cond_22
    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    add-int v2, v2, v26

    add-int v21, v21, v2

    goto/16 :goto_13

    :cond_23
    move/from16 v7, v21

    .line 679
    goto/16 :goto_14

    :cond_24
    add-int v2, v21, v26

    goto/16 :goto_15

    .line 687
    :cond_25
    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    add-int v2, v2, v26

    add-int v21, v21, v2

    goto/16 :goto_16

    :cond_26
    move/from16 v2, v21

    .line 696
    goto/16 :goto_17

    :cond_27
    add-int v22, v21, v26

    goto/16 :goto_18
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, -0x80000000

    const/4 v9, 0x0

    .line 346
    invoke-static {v9, p1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->resolveSize(II)I

    move-result v5

    .line 348
    .local v5, "specWidth":I
    iput v9, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDateHeight:I

    .line 349
    iput v9, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDateWidth:I

    .line 350
    iput v9, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDateDividerHeight:I

    .line 351
    iput v9, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNameHeight:I

    .line 352
    iput v9, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumberHeight:I

    .line 353
    iput v9, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIconHeight:I

    .line 354
    iput v9, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCountHeight:I

    .line 355
    iput v9, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimNameHeight:I

    .line 356
    iput v9, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTimeHeight:I

    .line 362
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 363
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    const/high16 v7, 0x40000000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 366
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDateHeight:I

    .line 367
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iput v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDateWidth:I

    .line 368
    const/4 v6, 0x3

    iput v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDateDividerHeight:I

    .line 371
    :cond_0
    iget-boolean v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallLogDateVisible:Z

    if-eqz v6, :cond_a

    .line 372
    iget v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mPhotoViewHeight:I

    iget v7, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDateHeight:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDateDividerHeight:I

    add-int/2addr v6, v7

    sget v7, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemQuickContactPaddingTop:I

    add-int/2addr v6, v7

    sget v7, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemQuickContactPaddingBottom:I

    add-int v4, v6, v7

    .line 379
    .local v4, "preferredHeight":I
    :goto_0
    sget v6, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sImageViewCallWidthDim:I

    sub-int v6, v5, v6

    iget v7, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mVerticalDividerWidth:I

    sub-int/2addr v6, v7

    sget v7, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    sub-int v3, v6, v7

    .line 383
    .local v3, "iPrimaryActionWidth":I
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 384
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 387
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNameHeight:I

    .line 393
    :goto_1
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 394
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 396
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumberHeight:I

    .line 400
    :cond_1
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

    invoke-virtual {p0, v6}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 401
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->measure(II)V

    .line 403
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

    invoke-virtual {v6}, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIconHeight:I

    .line 407
    :cond_2
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 408
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 410
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCountHeight:I

    .line 412
    :cond_3
    iget v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIconHeight:I

    iget v7, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallCountHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIconSimNameMaxHeight:I

    .line 415
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 416
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 418
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimNameHeight:I

    .line 420
    :cond_4
    iget v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIconSimNameMaxHeight:I

    iget v7, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewSimNameHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIconSimNameMaxHeight:I

    .line 424
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 425
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 427
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTimeHeight:I

    .line 429
    :cond_5
    iget v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIconSimNameMaxHeight:I

    iget v7, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallTimeHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIconSimNameMaxHeight:I

    .line 432
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    invoke-virtual {p0, v6}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 433
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;

    sget v7, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sImageViewCallWidthDim:I

    sget v8, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sImageViewCallHeightDim:I

    invoke-virtual {v6, v7, v8}, Lcom/mediatek/dialer/calllog/CallLogListItemView$DontPressWithParentImageView;->measure(II)V

    .line 439
    :cond_6
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    if-eqz v6, :cond_7

    .line 440
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    sget v7, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sImageViewCallWidthDim:I

    mul-int/lit8 v7, v7, 0x2

    sget v8, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sImageViewCallHeightDim:I

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/widget/ImageView;->measure(II)V

    .line 444
    :cond_7
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    invoke-virtual {p0, v6}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 445
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    sget v7, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCheckBoxMultiSelWidthDim:I

    sget v8, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sCheckBoxMultiSelWidthDim:I

    invoke-virtual {v6, v7, v8}, Landroid/widget/CheckBox;->measure(II)V

    .line 446
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCheckBoxMultiSelHeight:I

    .line 449
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getPaddingTop()I

    move-result v2

    .line 450
    .local v2, "iPaddingTop":I
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getPaddingBottom()I

    move-result v1

    .line 451
    .local v1, "iPaddingBottom":I
    if-nez v2, :cond_c

    .line 452
    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemQuickContactPaddingTop:I

    .line 457
    :goto_2
    if-nez v1, :cond_d

    .line 458
    sget v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemQuickContactPaddingBottom:I

    .line 464
    :goto_3
    iget v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDateHeight:I

    iget v7, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDateDividerHeight:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNameHeight:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumberHeight:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIconSimNameMaxHeight:I

    add-int/2addr v6, v7

    add-int/2addr v6, v1

    add-int v0, v6, v2

    .line 469
    .local v0, "height":I
    iget v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mPhotoViewHeight:I

    add-int/2addr v6, v2

    add-int/2addr v6, v1

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 472
    iget-boolean v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHorizontalDividerVisible:Z

    if-eqz v6, :cond_9

    .line 473
    iget v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHorizontalDividerHeight:I

    add-int/2addr v0, v6

    .line 477
    :cond_9
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 478
    invoke-virtual {p0, v5, v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->setMeasuredDimension(II)V

    .line 482
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/mediatek/contacts/ext/CallListExtension;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    const-string v8, "ExtenstionForRCS"

    invoke-virtual {v6, v7, v8}, Lcom/mediatek/contacts/ext/CallListExtension;->measureExtention(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 487
    return-void

    .line 375
    .end local v0    # "height":I
    .end local v1    # "iPaddingBottom":I
    .end local v2    # "iPaddingTop":I
    .end local v3    # "iPrimaryActionWidth":I
    .end local v4    # "preferredHeight":I
    :cond_a
    iget v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mPhotoViewHeight:I

    sget v7, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemQuickContactPaddingTop:I

    add-int/2addr v6, v7

    sget v7, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemQuickContactPaddingBottom:I

    add-int v4, v6, v7

    .restart local v4    # "preferredHeight":I
    goto/16 :goto_0

    .line 389
    .restart local v3    # "iPrimaryActionWidth":I
    :cond_b
    const/16 v6, 0x2c

    iput v6, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNameHeight:I

    goto/16 :goto_1

    .line 454
    .restart local v1    # "iPaddingBottom":I
    .restart local v2    # "iPaddingTop":I
    :cond_c
    sput v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemQuickContactPaddingTop:I

    goto :goto_2

    .line 460
    :cond_d
    sput v2, Lcom/mediatek/dialer/calllog/CallLogListItemView;->sListItemQuickContactPaddingBottom:I

    goto :goto_3
.end method

.method public removeExtentionIconView()V
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->removeView(Landroid/view/View;)V

    .line 1449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    .line 1451
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->forceLayout()V

    .line 879
    return-void
.end method

.method public setCallLogName(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "isNameOrNumber"    # Z

    .prologue
    .line 1160
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1162
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1174
    :cond_1
    :goto_0
    return-void

    .line 1165
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCallLogNameTextView()Landroid/widget/TextView;

    .line 1166
    if-eqz p2, :cond_3

    .line 1167
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHighlighter:Lcom/mediatek/dialer/calllog/CallLogHighlighter;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHighlightedText:[C

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/dialer/calllog/CallLogHighlighter;->applyName(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1171
    :goto_1
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1169
    :cond_3
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHighlighter:Lcom/mediatek/dialer/calllog/CallLogHighlighter;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHighlightedText:[C

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/dialer/calllog/CallLogHighlighter;->applyNumber(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1
.end method

.method public setCallType(II)V
    .locals 2
    .param p1, "callType"    # I
    .param p2, "isVTCall"    # I

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

    if-nez v0, :cond_0

    .line 1241
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCallTypeIconView()Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

    if-eqz v0, :cond_1

    .line 1245
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->setVisibility(I)V

    .line 1246
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;->set(II)V

    .line 1251
    :goto_0
    return-void

    .line 1248
    :cond_1
    const-string v0, "CallLogListItemView"

    const-string v1, "Error!!! - setCallType() mCallTypeIcon is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCheckBoxMultiSel(ZZ)V
    .locals 2
    .param p1, "focusable"    # Z
    .param p2, "clickable"    # Z

    .prologue
    .line 1416
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCheckBoxMultiSel()Landroid/widget/CheckBox;

    .line 1417
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 1418
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 1419
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1420
    return-void
.end method

.method public setExtentionIcon(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1458
    if-eqz p1, :cond_2

    .line 1459
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1460
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getExtentionIconView()V

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1468
    :cond_1
    :goto_0
    return-void

    .line 1464
    :cond_2
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1465
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHighlightedText([C)V
    .locals 0
    .param p1, "upperCaseText"    # [C

    .prologue
    .line 1495
    iput-object p1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHighlightedText:[C

    .line 1496
    return-void
.end method

.method public setNumber(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "isNumber"    # Z

    .prologue
    .line 1203
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1205
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1217
    :cond_1
    :goto_0
    return-void

    .line 1208
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getNumberTextView()Landroid/widget/TextView;

    .line 1211
    if-eqz p2, :cond_3

    .line 1212
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHighlighter:Lcom/mediatek/dialer/calllog/CallLogHighlighter;

    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mHighlightedText:[C

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/dialer/calllog/CallLogHighlighter;->applyNumber(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1214
    :cond_3
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1215
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnCallButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "callButtonClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallButtonClickListener:Landroid/view/View$OnClickListener;

    .line 340
    return-void
.end method

.method public setSectionDate(Ljava/lang/String;)V
    .locals 3
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 945
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getSectionDate()Landroid/widget/TextView;

    .line 947
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDateDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallLogDateVisible:Z

    .line 960
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDateDivider:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 956
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mViewHorizontalDateDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 958
    :cond_2
    iput-boolean v1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mCallLogDateVisible:Z

    goto :goto_0
.end method

.method public setTagId(I)V
    .locals 0
    .param p1, "tagId"    # I

    .prologue
    .line 1489
    iput p1, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mTagId:I

    .line 1490
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 844
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListItemView;->mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
