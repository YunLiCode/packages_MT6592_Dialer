.class public Lcom/android/contacts/common/list/ContactListItemView;
.super Landroid/view/ViewGroup;
.source "ContactListItemView.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;,
        Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;
    }
.end annotation


# static fields
.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "ContactListItemView"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivatedStateSupported:Z

.field private mBoundsWithoutHeader:Landroid/graphics/Rect;

.field private mContactsCountTextColor:I

.field private mCountView:Landroid/widget/TextView;

.field private mCountViewTextSize:I

.field private final mDataBuffer:Landroid/database/CharArrayBuffer;

.field private mDataView:Landroid/widget/TextView;

.field private mDataViewHeight:I

.field private mDataViewWidthWeight:I

.field private mDefaultPhotoViewSize:I

.field private mExtentionIcon:Landroid/widget/ImageView;

.field private mExtentionText:Landroid/widget/TextView;

.field private mGapBetweenImageAndText:I

.field private mGapBetweenLabelAndData:I

.field private mHeaderBackgroundHeight:I

.field private mHeaderDivider:Landroid/view/View;

.field private mHeaderTextColor:I

.field private mHeaderTextIndent:I

.field private mHeaderTextSize:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderUnderlineColor:I

.field private mHeaderUnderlineHeight:I

.field private mHeaderVisible:Z

.field private mHighlightedPrefix:Ljava/lang/String;

.field private mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerVisible:Z

.field private mKeepHorizontalPaddingForPhotoView:Z

.field private mKeepVerticalPaddingForPhotoView:Z

.field private mLabelAndDataViewMaxHeight:I

.field private mLabelView:Landroid/widget/TextView;

.field private mLabelViewHeight:I

.field private mLabelViewWidthWeight:I

.field private mNameHighlightSequence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mNameTextView:Landroid/widget/TextView;

.field private mNameTextViewHeight:I

.field private mNumberHighlightSequence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

.field private mPhoneticNameTextView:Landroid/widget/TextView;

.field private mPhoneticNameTextViewHeight:I

.field private mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPhotoViewHeight:I

.field private mPhotoViewWidth:I

.field private mPhotoViewWidthAndHeightAreReady:Z

.field private mPreferredHeight:I

.field private mPresenceIcon:Landroid/widget/ImageView;

.field private mPresenceIconMargin:I

.field private mPresenceIconSize:I

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mQuickContactEnabled:Z

.field private mSecondaryTextColor:Landroid/content/res/ColorStateList;

.field private mSelectBox:Landroid/widget/CheckBox;

.field private mSelectionBoundsMarginLeft:I

.field private mSelectionBoundsMarginRight:I

.field private mSnippetTextViewHeight:I

.field private mSnippetView:Landroid/widget/TextView;

.field private mStatusTextViewHeight:I

.field private mStatusView:Landroid/widget/TextView;

.field private final mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

.field private mTextIndent:I

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1599
    const-string v0, "([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactListItemView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x80

    const/16 v4, 0xc

    const/high16 v3, -0x1000000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 246
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 93
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    .line 94
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 95
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    .line 96
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    .line 97
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    .line 98
    iput v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextColor:I

    .line 99
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextIndent:I

    .line 100
    iput v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextSize:I

    .line 101
    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineHeight:I

    .line 102
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineColor:I

    .line 103
    iput v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountViewTextSize:I

    .line 104
    iput v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContactsCountTextColor:I

    .line 105
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    .line 111
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    .line 115
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    .line 122
    iput-boolean v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerVisible:Z

    .line 164
    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 169
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    .line 173
    iput-boolean v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 189
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 215
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 234
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v5}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    .line 235
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v5}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    .line 239
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    .line 1695
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    .line 1821
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->icon:Landroid/graphics/drawable/Drawable;

    .line 247
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    .line 249
    new-instance v0, Lcom/android/contacts/common/format/TextHighlighter;

    invoke-direct {v0, v2}, Lcom/android/contacts/common/format/TextHighlighter;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x7

    const/4 v3, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 253
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    .line 94
    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 95
    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    .line 96
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    .line 97
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    .line 98
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextColor:I

    .line 99
    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextIndent:I

    .line 100
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextSize:I

    .line 101
    iput v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineHeight:I

    .line 102
    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineColor:I

    .line 103
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountViewTextSize:I

    .line 104
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContactsCountTextColor:I

    .line 105
    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    .line 111
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    .line 115
    iput v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    .line 122
    iput-boolean v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerVisible:Z

    .line 164
    invoke-static {v5}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 169
    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    .line 173
    iput-boolean v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 189
    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 215
    iput-boolean v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 234
    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    .line 235
    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    .line 239
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    .line 1695
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    .line 1821
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->icon:Landroid/graphics/drawable/Drawable;

    .line 254
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    .line 257
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/common/R$styleable;->ContactListItemView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 258
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    .line 260
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 262
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 265
    const/16 v1, 0x9

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 268
    const/16 v1, 0xa

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    .line 271
    const/16 v1, 0xb

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    .line 274
    const/16 v1, 0xc

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    .line 276
    const/16 v1, 0xd

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 278
    const/16 v1, 0x10

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextIndent:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextIndent:I

    .line 280
    const/16 v1, 0x11

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextColor:I

    .line 282
    const/16 v1, 0x12

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextSize:I

    .line 284
    const/16 v1, 0x13

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    .line 286
    const/16 v1, 0x14

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineHeight:I

    .line 289
    const/16 v1, 0x15

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineColor:I

    .line 292
    const/16 v1, 0x17

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    .line 294
    const/16 v1, 0x18

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountViewTextSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountViewTextSize:I

    .line 297
    const/16 v1, 0x16

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContactsCountTextColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContactsCountTextColor:I

    .line 300
    const/16 v1, 0x19

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    .line 302
    const/16 v1, 0x1a

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    .line 307
    invoke-static {}, Lcom/mediatek/contacts/GlobalEnv;->isUsingTwoPanes()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 308
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 309
    const/16 v1, 0x28

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/16 v3, 0x28

    const/16 v4, 0xf

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setPadding(IIII)V

    .line 343
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/contacts/common/format/TextHighlighter;

    invoke-direct {v1, v6}, Lcom/android/contacts/common/format/TextHighlighter;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    .line 345
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 347
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 348
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    .line 349
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 351
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerHeight:I

    .line 353
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 357
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    .line 358
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    .line 359
    return-void

    .line 317
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_0

    .line 318
    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 330
    :cond_3
    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private ensurePhotoViewSize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 799
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    if-nez v0, :cond_2

    .line 800
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    .line 801
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 802
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-nez v0, :cond_0

    .line 803
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    .line 805
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    if-nez v0, :cond_1

    .line 806
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    .line 810
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 812
    :cond_2
    return-void
.end method

.method private getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 829
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 830
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 831
    return-object v0
.end method

.method public static final getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    .locals 3
    .param p0, "opposite"    # Z

    .prologue
    .line 153
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 154
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 155
    .local v0, "layoutDirection":I
    packed-switch v0, :pswitch_data_0

    .line 160
    if-eqz p0, :cond_1

    sget-object v2, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    :goto_0
    return-object v2

    .line 157
    :pswitch_0
    if-eqz p0, :cond_0

    sget-object v2, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->RIGHT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    goto :goto_0

    .line 160
    :cond_1
    sget-object v2, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->RIGHT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getTextEllipsis()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 1299
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method private layoutLeftCheckBox(III)I
    .locals 6
    .param p1, "leftBound"    # I
    .param p2, "topBound"    # I
    .param p3, "bottomBound"    # I

    .prologue
    .line 1748
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1749
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v1

    .line 1750
    .local v1, "selectBoxWidth":I
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v0

    .line 1751
    .local v0, "selectBoxHeight":I
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    add-int v3, p3, p2

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int v4, p1, v1

    add-int v5, p3, p2

    add-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, p1, v3, v4, v5}, Landroid/widget/CheckBox;->layout(IIII)V

    .line 1755
    add-int/2addr p1, v1

    .line 1757
    .end local v0    # "selectBoxHeight":I
    .end local v1    # "selectBoxWidth":I
    .end local p1    # "leftBound":I
    :cond_0
    return p1
.end method

.method private layoutRightCheckBox(III)I
    .locals 6
    .param p1, "rightBound"    # I
    .param p2, "topBound"    # I
    .param p3, "bottomBound"    # I

    .prologue
    .line 1761
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1762
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v1

    .line 1763
    .local v1, "selectBoxWidth":I
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v0

    .line 1764
    .local v0, "selectBoxHeight":I
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    sub-int v3, p1, v1

    add-int v4, p3, p2

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int v5, p3, p2

    add-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v3, v4, p1, v5}, Landroid/widget/CheckBox;->layout(IIII)V

    .line 1768
    sub-int/2addr p1, v1

    .line 1770
    .end local v0    # "selectBoxHeight":I
    .end local v1    # "selectBoxWidth":I
    .end local p1    # "rightBound":I
    :cond_0
    return p1
.end method

.method private measureCheckBox()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1737
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1, v1}, Landroid/widget/CheckBox;->measure(II)V

    .line 1740
    :cond_0
    return-void
.end method

.method private setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1157
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    .line 1160
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1161
    .local v0, "spannable":Landroid/text/SpannableString;
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1163
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    .end local v0    # "spannable":Landroid/text/SpannableString;
    :goto_0
    return-void

    .line 1165
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setMarqueeText(Landroid/widget/TextView;[CI)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # [C
    .param p3, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 1149
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 1150
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, v2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1154
    :goto_0
    return-void

    .line 1152
    :cond_0
    invoke-virtual {p1, p2, v2, p3}, Landroid/widget/TextView;->setText([CII)V

    goto :goto_0
.end method

.method private snippetize(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "matchIndex"    # I
    .param p3, "maxLength"    # I

    .prologue
    .line 1546
    move v2, p3

    .line 1547
    .local v2, "remainingLength":I
    move v5, v2

    .line 1550
    .local v5, "tempRemainingLength":I
    move v1, p2

    .line 1551
    .local v1, "index":I
    move v0, v1

    .line 1554
    .local v0, "endTokenIndex":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 1555
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1556
    move v0, v1

    .line 1557
    move v2, v5

    .line 1565
    :cond_0
    add-int/lit8 v1, p2, -0x1

    .line 1566
    move v5, v2

    .line 1567
    move v4, p2

    .line 1568
    .local v4, "startTokenIndex":I
    :goto_1
    const/4 v6, -0x1

    if-le v1, v6, :cond_3

    if-lez v5, :cond_3

    .line 1569
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1570
    move v4, v1

    .line 1571
    move v2, v5

    .line 1573
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 1574
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1560
    .end local v4    # "startTokenIndex":I
    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 1561
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1577
    .restart local v4    # "startTokenIndex":I
    :cond_3
    move v1, v0

    .line 1578
    move v5, v2

    .line 1580
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_5

    if-lez v5, :cond_5

    .line 1581
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1582
    move v0, v1

    .line 1584
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 1585
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1588
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1589
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_6

    .line 1590
    const-string v6, "..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    :cond_6
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 1594
    const-string v6, "..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static split(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1612
    sget-object v2, Lcom/android/contacts/common/list/ContactListItemView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1613
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1614
    .local v1, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1615
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1617
    :cond_0
    return-object v1
.end method

.method private updateSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "snippet"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1504
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1539
    :cond_0
    :goto_0
    return-object v6

    .line 1507
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/common/util/SearchUtil;->cleanStartAndEndOfSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1511
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1512
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1513
    .local v2, "lowerDisplayName":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListItemView;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1514
    .local v5, "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1515
    .local v4, "nameToken":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 1523
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "lowerDisplayName":Ljava/lang/String;
    .end local v4    # "nameToken":Ljava/lang/String;
    .end local v5    # "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-static {p1, p2}, Lcom/android/contacts/common/util/SearchUtil;->findMatchingLine(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/util/SearchUtil$MatchedLine;

    move-result-object v3

    .line 1525
    .local v3, "matched":Lcom/android/contacts/common/util/SearchUtil$MatchedLine;
    if-eqz v3, :cond_0

    iget-object v7, v3, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1529
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1531
    .local v1, "lengthThreshold":I
    iget-object v6, v3, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v1, :cond_4

    .line 1532
    iget-object v6, v3, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    iget v7, v3, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->startIndex:I

    invoke-direct {p0, v6, v7, v1}, Lcom/android/contacts/common/list/ContactListItemView;->snippetize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1534
    :cond_4
    iget-object v6, v3, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addNameHighlightSequence(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    invoke-direct {v1, p1, p2}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    return-void
.end method

.method public addNumberHighlightSequence(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    invoke-direct {v1, p1, p2}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    return-void
.end method

.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 785
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 786
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 787
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectionBoundsMarginLeft:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 788
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectionBoundsMarginRight:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 789
    return-void
.end method

.method public clearHighlightSequences()V
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 990
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    .line 992
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 857
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 860
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 864
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 865
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 836
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 837
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 840
    :cond_0
    return-void
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1722
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 1723
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    .line 1724
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 1725
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 1726
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setFocusableInTouchMode(Z)V

    .line 1727
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1729
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1730
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getCountView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1236
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    .line 1237
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1238
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1239
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1240
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1241
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDataView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1174
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    .line 1175
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1176
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1177
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b001d

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1178
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1179
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const v1, 0x7f0d001a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1180
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getDefaultPhotoViewSize()I
    .locals 1

    .prologue
    .line 819
    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    return v0
.end method

.method public getExtentionIcon()V
    .locals 3

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1800
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    .line 1802
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1804
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactListExtension()Lcom/mediatek/contacts/ext/ContactListExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    const-string v2, "ExtenstionForRCS"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/contacts/ext/ContactListExtension;->setExtentionImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1806
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1807
    return-void
.end method

.method public getExtentionTextView(J)V
    .locals 3
    .param p1, "ContactId"    # J

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1811
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionText:Landroid/widget/TextView;

    .line 1813
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactListExtension()Lcom/mediatek/contacts/ext/ContactListExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionText:Landroid/widget/TextView;

    const-string v2, "ExtenstionForRCS"

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/mediatek/contacts/ext/ContactListExtension;->setExtentionTextView(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 1815
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1816
    return-void
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1083
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1084
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    .line 1085
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1086
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1087
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b001d

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1088
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v1, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v0, v1, :cond_1

    .line 1090
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41400000

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1091
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1092
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1096
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1097
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const v1, 0x7f0d0019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1098
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1017
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 1018
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1019
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1020
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b001c

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1023
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1024
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1025
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1026
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const v1, 0x7f0d0017

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1027
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoneticNameTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1051
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1052
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    .line 1053
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1054
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1055
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1056
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1057
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1058
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const v1, 0x7f0d0018

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1059
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhotoPosition()Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    .locals 1

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    return-object v0
.end method

.method public getPhotoView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 936
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 937
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 939
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 940
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 941
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 914
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_0

    .line 915
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "QuickContact is disabled for this view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-nez v0, :cond_2

    .line 918
    new-instance v0, Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 919
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 920
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a04b8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 926
    iput-boolean v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 928
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public getSnippetView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1204
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    .line 1205
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1206
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1207
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1208
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1209
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStatusView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1219
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    .line 1220
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1221
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1222
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1223
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1224
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1225
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1226
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideDisplayName()V
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 1345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 1347
    :cond_0
    return-void
.end method

.method public hidePhoneticName()V
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 1362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    .line 1364
    :cond_0
    return-void
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 792
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
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 853
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 557
    sub-int v11, p5, p3

    .line 558
    .local v11, "height":I
    sub-int v20, p4, p2

    .line 561
    .local v20, "width":I
    const/4 v4, 0x0

    .line 562
    .local v4, "topBound":I
    move v5, v11

    .line 563
    .local v5, "bottomBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v3

    .line 564
    .local v3, "leftBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v2

    sub-int v6, v20, v2

    .line 566
    .local v6, "rightBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->isLayoutRtl()Z

    move-result v13

    .line 569
    .local v13, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderVisible:Z

    if-eqz v2, :cond_1

    .line 570
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v13, :cond_11

    move v7, v3

    :goto_0
    const/4 v9, 0x0

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextIndent:I

    sub-int v2, v6, v2

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v8, v7, v9, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    invoke-virtual {v2, v7, v8, v6, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 580
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineHeight:I

    add-int/2addr v8, v9

    invoke-virtual {v2, v3, v7, v6, v8}, Landroid/view/View;->layout(IIII)V

    .line 584
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineHeight:I

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    .line 588
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v2, :cond_2

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerHeight:I

    sub-int v7, v11, v7

    invoke-virtual {v2, v3, v7, v6, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 594
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerHeight:I

    sub-int/2addr v5, v2

    .line 597
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    const/4 v7, 0x0

    move/from16 v0, v20

    invoke-virtual {v2, v7, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 599
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 608
    :cond_3
    if-eqz v13, :cond_13

    .line 609
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5}, Lcom/android/contacts/common/list/ContactListItemView;->layoutRightCheckBox(III)I

    move-result v6

    .line 618
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 619
    .local v15, "photoView":Landroid/view/View;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v7, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v2, v7, :cond_16

    .line 621
    if-eqz v15, :cond_15

    .line 623
    sub-int v2, v5, v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    sub-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    add-int v14, v4, v2

    .line 624
    .local v14, "photoTop":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    add-int/2addr v7, v14

    invoke-virtual {v15, v3, v14, v2, v7}, Landroid/view/View;->layout(IIII)V

    .line 629
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    .line 662
    .end local v14    # "photoTop":I
    :cond_4
    :goto_4
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 663
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/mediatek/contacts/ext/ContactDetailExtension;

    move-result-object v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionText:Landroid/widget/TextView;

    const-string v9, "ExtenstionForRCS"

    invoke-virtual/range {v2 .. v9}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->layoutExtentionText(IIIIILandroid/widget/TextView;Ljava/lang/String;)I

    move-result v6

    .line 666
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/mediatek/contacts/ext/ContactDetailExtension;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    const-string v9, "ExtenstionForRCS"

    invoke-virtual/range {v2 .. v9}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->layoutExtentionIcon(IIIIILandroid/widget/ImageView;Ljava/lang/String;)I

    move-result v6

    .line 676
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    add-int/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    add-int/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int v19, v2, v7

    .line 678
    .local v19, "totalTextHeight":I
    add-int v2, v5, v4

    sub-int v2, v2, v19

    div-int/lit8 v18, v2, 0x2

    .line 682
    .local v18, "textTopBound":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    add-int v7, v7, v18

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 687
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    add-int v18, v18, v2

    .line 691
    :cond_6
    if-eqz v13, :cond_19

    .line 692
    move/from16 v17, v6

    .line 693
    .local v17, "statusRightBound":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v12

    .line 695
    .local v12, "iconWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    sub-int v7, v6, v12

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int v8, v8, v18

    move/from16 v0, v18

    invoke-virtual {v2, v7, v0, v6, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 700
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    add-int/2addr v2, v12

    sub-int v17, v17, v2

    .line 703
    .end local v12    # "iconWidth":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int v7, v7, v18

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v2, v3, v0, v1, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 729
    .end local v17    # "statusRightBound":I
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 730
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int v18, v18, v2

    .line 734
    :cond_a
    move v10, v3

    .line 735
    .local v10, "dataLeftBound":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    add-int v7, v7, v18

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 740
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    add-int v18, v18, v2

    .line 744
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v7, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v2, v7, :cond_1b

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int v8, v8, v18

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int v9, v9, v18

    invoke-virtual {v2, v7, v8, v6, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v6, v2

    .line 765
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int v7, v7, v18

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int v8, v8, v18

    invoke-virtual {v2, v10, v7, v6, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 771
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 772
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int v18, v18, v2

    .line 775
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    add-int v7, v7, v18

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 781
    :cond_10
    return-void

    .line 570
    .end local v10    # "dataLeftBound":I
    .end local v15    # "photoView":Landroid/view/View;
    .end local v18    # "textTopBound":I
    .end local v19    # "totalTextHeight":I
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextIndent:I

    add-int/2addr v2, v3

    move v7, v2

    goto/16 :goto_0

    :cond_12
    move v2, v6

    goto/16 :goto_1

    .line 611
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/contacts/common/list/ContactListItemView;->layoutLeftCheckBox(III)I

    move-result v3

    goto/16 :goto_2

    .line 618
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    goto/16 :goto_3

    .line 630
    .restart local v15    # "photoView":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz v2, :cond_4

    .line 632
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    goto/16 :goto_4

    .line 636
    :cond_16
    if-eqz v15, :cond_18

    .line 638
    sub-int v2, v5, v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    sub-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    add-int v14, v4, v2

    .line 639
    .restart local v14    # "photoTop":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    sub-int v2, v6, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    add-int/2addr v7, v14

    invoke-virtual {v15, v2, v14, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 644
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v2, v7

    sub-int/2addr v6, v2

    .line 651
    .end local v14    # "photoTop":I
    :cond_17
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    add-int/2addr v3, v2

    goto/16 :goto_4

    .line 645
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz v2, :cond_17

    .line 647
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v2, v7

    sub-int/2addr v6, v2

    goto :goto_7

    .line 710
    .restart local v18    # "textTopBound":I
    .restart local v19    # "totalTextHeight":I
    :cond_19
    move/from16 v16, v3

    .line 711
    .local v16, "statusLeftBound":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v12

    .line 713
    .restart local v12    # "iconWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    add-int v7, v3, v12

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int v8, v8, v18

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 718
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    add-int/2addr v2, v12

    add-int v16, v16, v2

    .line 721
    .end local v12    # "iconWidth":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int v7, v7, v18

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_5

    .line 756
    .end local v16    # "statusLeftBound":I
    .restart local v10    # "dataLeftBound":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int v10, v3, v2

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int v7, v7, v18

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int v8, v8, v18

    invoke-virtual {v2, v3, v7, v10, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 761
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    add-int/2addr v10, v2

    goto/16 :goto_6
.end method

.method protected onMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 373
    const/4 v12, 0x0

    move/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/contacts/common/list/ContactListItemView;->resolveSize(II)I

    move-result v9

    .line 375
    .local v9, "specWidth":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v12, :cond_c

    .line 376
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerHeight:I

    add-int v8, v12, v13

    .line 381
    .local v8, "preferredHeight":I
    :goto_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    .line 382
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    .line 383
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    .line 384
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    .line 385
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    .line 386
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    .line 387
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->measureCheckBox()V

    .line 408
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/mediatek/contacts/ext/ContactDetailExtension;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    const-string v14, "ExtenstionForRCS"

    invoke-virtual {v12, v13, v14}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->measureExtentionIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/mediatek/contacts/ext/ContactDetailExtension;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionText:Landroid/widget/TextView;

    const-string v14, "ExtenstionForRCS"

    invoke-virtual {v12, v13, v14}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->measureExtentionText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->ensurePhotoViewSize()V

    .line 419
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    if-gtz v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz v12, :cond_d

    .line 420
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v12

    sub-int v12, v9, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v13, v14

    sub-int v2, v12, v13

    .line 429
    .local v2, "effectiveWidth":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 431
    move v7, v2

    .line 432
    .local v7, "nameTextWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v13, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-eq v12, v13, :cond_1

    .line 433
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    sub-int/2addr v7, v12

    .line 435
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/high16 v13, 0x40000000

    invoke-static {v7, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->measure(II)V

    .line 438
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    .line 441
    .end local v7    # "nameTextWidth":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 442
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/high16 v13, 0x40000000

    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->measure(II)V

    .line 445
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    .line 452
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 453
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 454
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    sub-int v11, v2, v12

    .line 455
    .local v11, "totalWidth":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    mul-int/2addr v12, v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    add-int/2addr v13, v14

    div-int v1, v12, v13

    .line 457
    .local v1, "dataWidth":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    mul-int/2addr v12, v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    add-int/2addr v13, v14

    div-int v5, v12, v13

    .line 472
    .end local v11    # "totalWidth":I
    .local v5, "labelWidth":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 473
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/high16 v13, 0x40000000

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->measure(II)V

    .line 475
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    .line 478
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 481
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v13, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v12, v13, :cond_11

    const/high16 v6, 0x40000000

    .line 483
    .local v6, "mode":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->measure(II)V

    .line 485
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    .line 487
    .end local v6    # "mode":I
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    .line 489
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 490
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/high16 v13, 0x40000000

    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->measure(II)V

    .line 493
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    .line 497
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 498
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    const/high16 v14, 0x40000000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    const/high16 v15, 0x40000000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/ImageView;->measure(II)V

    .line 501
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 504
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 507
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 508
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v12

    sub-int v12, v2, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    sub-int v10, v12, v13

    .line 513
    .local v10, "statusWidth":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/high16 v13, 0x40000000

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->measure(II)V

    .line 515
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 520
    .end local v10    # "statusWidth":I
    :cond_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int v4, v12, v13

    .line 525
    .local v4, "height":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingTop()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 528
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v12, :cond_9

    .line 529
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerHeight:I

    add-int/2addr v4, v12

    .line 533
    :cond_9
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 536
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderVisible:Z

    if-eqz v12, :cond_b

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v12

    sub-int v12, v9, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextIndent:I

    sub-int v3, v12, v13

    .line 539
    .local v3, "headerWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/high16 v13, 0x40000000

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    const/high16 v15, 0x40000000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->measure(II)V

    .line 542
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-eqz v12, :cond_a

    .line 543
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/high16 v13, -0x80000000

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    const/high16 v15, 0x40000000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->measure(II)V

    .line 547
    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    .line 549
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineHeight:I

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    .line 552
    .end local v3    # "headerWidth":I
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setMeasuredDimension(II)V

    .line 553
    return-void

    .line 378
    .end local v1    # "dataWidth":I
    .end local v2    # "effectiveWidth":I
    .end local v4    # "height":I
    .end local v5    # "labelWidth":I
    .end local v8    # "preferredHeight":I
    :cond_c
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    .restart local v8    # "preferredHeight":I
    goto/16 :goto_0

    .line 423
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v12

    sub-int v12, v9, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v13

    sub-int v2, v12, v13

    .restart local v2    # "effectiveWidth":I
    goto/16 :goto_1

    .line 460
    :cond_e
    move v1, v2

    .line 461
    .restart local v1    # "dataWidth":I
    const/4 v5, 0x0

    .restart local v5    # "labelWidth":I
    goto/16 :goto_2

    .line 464
    .end local v1    # "dataWidth":I
    .end local v5    # "labelWidth":I
    :cond_f
    const/4 v1, 0x0

    .line 465
    .restart local v1    # "dataWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 466
    move v5, v2

    .restart local v5    # "labelWidth":I
    goto/16 :goto_2

    .line 468
    .end local v5    # "labelWidth":I
    :cond_10
    const/4 v5, 0x0

    .restart local v5    # "labelWidth":I
    goto/16 :goto_2

    .line 481
    :cond_11
    const/high16 v6, -0x80000000

    goto/16 :goto_3

    .line 511
    :cond_12
    move v10, v2

    .restart local v10    # "statusWidth":I
    goto/16 :goto_4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1678
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1679
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1683
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/contacts/common/list/ContactListItemView;->pointInView(FFF)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1684
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1686
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public removeExtentionIconView()V
    .locals 1

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1826
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 1827
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    .line 1829
    :cond_0
    return-void
.end method

.method public removeExtentionTextView()V
    .locals 1

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1834
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 1835
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionText:Landroid/widget/TextView;

    .line 1837
    :cond_0
    return-void
.end method

.method public removePhotoView()V
    .locals 2

    .prologue
    .line 950
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView(ZZ)V

    .line 951
    return-void
.end method

.method public removePhotoView(ZZ)V
    .locals 2
    .param p1, "keepHorizontalPadding"    # Z
    .param p2, "keepVerticalPadding"    # Z

    .prologue
    const/4 v1, 0x0

    .line 962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 963
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    .line 964
    iput-boolean p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    .line 965
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 967
    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_1

    .line 970
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 971
    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 973
    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 1642
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->forceLayout()V

    .line 1643
    return-void
.end method

.method public setActivatedStateSupported(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1634
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    .line 1635
    return-void
.end method

.method public setCheckable(Z)V
    .locals 2
    .param p1, "checkable"    # Z

    .prologue
    .line 1703
    if-eqz p1, :cond_2

    .line 1704
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 1705
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getCheckBox()Landroid/widget/CheckBox;

    .line 1707
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1713
    :cond_1
    :goto_0
    return-void

    .line 1709
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 1710
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCountView(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 1250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1251
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1262
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getCountView()Landroid/widget/TextView;

    .line 1256
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1257
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountViewTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1258
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1259
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContactsCountTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1260
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setData([CI)V
    .locals 2
    .param p1, "text"    # [C
    .param p2, "size"    # I

    .prologue
    .line 1107
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1116
    :cond_1
    :goto_0
    return-void

    .line 1112
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    .line 1113
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;[CI)V

    .line 1114
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setDefaultPhotoViewSize(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 815
    iput p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 816
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 1324
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1326
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1327
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    invoke-virtual {v3, p1, v4}, Lcom/android/contacts/common/format/TextHighlighter;->applyPrefixHighlight(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1339
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1340
    return-void

    .line 1328
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1329
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1330
    .local v2, "spannableName":Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    .line 1331
    .local v0, "highlightSequence":Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    # getter for: Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->start:I
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->access$000(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v4

    # getter for: Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->end:I
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->access$100(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/contacts/common/format/TextHighlighter;->applyMaskingHighlight(Landroid/text/SpannableString;II)V

    goto :goto_1

    .line 1334
    .end local v0    # "highlightSequence":Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;
    :cond_2
    move-object p1, v2

    .line 1335
    goto :goto_0

    .line 1337
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "spannableName":Landroid/text/SpannableString;
    :cond_3
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setDisplayName(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "highlight"    # Z

    .prologue
    .line 1316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1317
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->clearHighlightSequences()V

    .line 1318
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->addNameHighlightSequence(II)V

    .line 1320
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 1321
    return-void
.end method

.method public setDividerVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 872
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerVisible:Z

    .line 873
    return-void
.end method

.method public setDrawableResource(II)V
    .locals 2
    .param p1, "backgroundId"    # I
    .param p2, "drawableId"    # I

    .prologue
    .line 1670
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1671
    .local v0, "photo":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1672
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1673
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1674
    return-void
.end method

.method public setExtentionIcon(ZJ)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "contactId"    # J

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1778
    if-eqz p1, :cond_3

    .line 1779
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1780
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getExtentionIcon()V

    .line 1782
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1783
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/list/ContactListItemView;->getExtentionTextView(J)V

    .line 1785
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1786
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1795
    :cond_2
    :goto_0
    return-void

    .line 1788
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1789
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1791
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1792
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mExtentionText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHighlightedPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "upperCasePrefix"    # Ljava/lang/String;

    .prologue
    .line 982
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    .line 983
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1068
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1069
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1073
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    .line 1074
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1075
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1123
    if-nez p1, :cond_1

    .line 1124
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1125
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    .line 1131
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1133
    .local v1, "textToSet":Landroid/text/SpannableString;
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1134
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    .line 1135
    .local v0, "highlightSequence":Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    # getter for: Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->start:I
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->access$000(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v3

    # getter for: Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->end:I
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->access$100(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/contacts/common/format/TextHighlighter;->applyMaskingHighlight(Landroid/text/SpannableString;II)V

    .line 1139
    .end local v0    # "highlightSequence":Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1140
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1143
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 1144
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0
.end method

.method public setPhoneticName([CI)V
    .locals 2
    .param p1, "text"    # [C
    .param p2, "size"    # I

    .prologue
    .line 1036
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1038
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1045
    :cond_1
    :goto_0
    return-void

    .line 1041
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPhoneticNameTextView()Landroid/widget/TextView;

    .line 1042
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;[CI)V

    .line 1043
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V
    .locals 0
    .param p1, "photoPosition"    # Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .prologue
    .line 1646
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 1647
    return-void
.end method

.method public setPresence(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1283
    if-eqz p1, :cond_2

    .line 1284
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1285
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    .line 1286
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1289
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1290
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1296
    :cond_1
    :goto_0
    return-void

    .line 1292
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1293
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 367
    return-void
.end method

.method public setSectionHeader(Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 879
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 880
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 881
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    .line 882
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 883
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 884
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0019

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 885
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 886
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 887
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    if-nez v0, :cond_1

    .line 890
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    .line 891
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 892
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 895
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 897
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 898
    iput-boolean v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderVisible:Z

    .line 908
    :goto_0
    return-void

    .line 900
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 901
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 903
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 904
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 906
    :cond_4
    iput-boolean v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderVisible:Z

    goto :goto_0
.end method

.method public setSelectionBoundsHorizontalMargin(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1658
    iput p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectionBoundsMarginLeft:I

    .line 1659
    iput p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectionBoundsMarginRight:I

    .line 1660
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getSnippetView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/contacts/common/format/TextHighlighter;->setPrefixText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1269
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1273
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getStatusView()Landroid/widget/TextView;

    .line 1274
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1275
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setUnknownNameText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "unknownNameText"    # Ljava/lang/CharSequence;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 363
    return-void
.end method

.method public showData(Landroid/database/Cursor;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "dataColumnIndex"    # I

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1625
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget v1, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setData([CI)V

    .line 1626
    return-void
.end method

.method public showDisplayName(Landroid/database/Cursor;II)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "nameColumnIndex"    # I
    .param p3, "displayOrder"    # I

    .prologue
    .line 1303
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1304
    .local v0, "name":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 1309
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v1, :cond_0

    .line 1310
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a04b8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1313
    :cond_0
    return-void
.end method

.method public showPhoneNumber(Landroid/database/Cursor;I)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "dataColumnIndex"    # I

    .prologue
    .line 1630
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setPhoneNumber(Ljava/lang/String;)V

    .line 1631
    return-void
.end method

.method public showPhoneticName(Landroid/database/Cursor;I)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "phoneticNameColumnIndex"    # I

    .prologue
    .line 1350
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1351
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iget v0, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 1352
    .local v0, "phoneticNameSize":I
    if-eqz v0, :cond_0

    .line 1353
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setPhoneticName([CI)V

    .line 1357
    :goto_0
    return-void

    .line 1355
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setPhoneticName([CI)V

    goto :goto_0
.end method

.method public showPresenceAndStatusMessage(Landroid/database/Cursor;II)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "presenceColumnIndex"    # I
    .param p3, "contactStatusColumnIndex"    # I

    .prologue
    .line 1371
    const/4 v0, 0x0

    .line 1372
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 1373
    .local v1, "presence":I
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1374
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1375
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/common/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1377
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    .line 1379
    const/4 v2, 0x0

    .line 1380
    .local v2, "statusMessage":Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1381
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1385
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 1386
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/common/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1388
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setStatus(Ljava/lang/CharSequence;)V

    .line 1389
    return-void
.end method

.method public showSnippet(Landroid/database/Cursor;I)V
    .locals 18
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "summarySnippetColumnIndex"    # I

    .prologue
    .line 1395
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p2

    if-gt v0, v1, :cond_0

    .line 1396
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 1491
    :goto_0
    return-void

    .line 1424
    :cond_0
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1427
    .local v14, "snippet":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 1428
    .local v6, "extras":Landroid/os/Bundle;
    const-string v17, "deferred_snippeting"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1430
    const-string v17, "deferred_snippeting_query"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1432
    .local v12, "query":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1433
    .local v3, "displayName":Ljava/lang/String;
    const-string v17, "display_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1434
    .local v4, "displayNameIndex":I
    if-ltz v4, :cond_1

    .line 1435
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1440
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12, v3}, Lcom/android/contacts/common/list/ContactListItemView;->updateSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1441
    .local v11, "nippetTemp":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 1442
    move-object v14, v11

    .line 1446
    :cond_2
    if-eqz v14, :cond_3

    .line 1447
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1449
    const/4 v14, 0x0

    .line 1487
    .end local v3    # "displayName":Ljava/lang/String;
    .end local v4    # "displayNameIndex":I
    .end local v11    # "nippetTemp":Ljava/lang/String;
    .end local v12    # "query":Ljava/lang/String;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_0

    .line 1455
    :cond_4
    if-eqz v14, :cond_3

    .line 1456
    const/4 v8, 0x0

    .line 1457
    .local v8, "from":I
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    .line 1458
    .local v16, "to":I
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 1459
    .local v15, "start":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    .line 1460
    const/4 v14, 0x0

    goto :goto_1

    .line 1462
    :cond_5
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 1463
    .local v7, "firstNl":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_6

    .line 1464
    add-int/lit8 v8, v7, 0x1

    .line 1466
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 1467
    .local v5, "end":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_7

    .line 1468
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v14, v0, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 1469
    .local v10, "lastNl":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_7

    .line 1470
    move/from16 v16, v10

    .line 1474
    .end local v10    # "lastNl":I
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1475
    .local v13, "sb":Ljava/lang/StringBuilder;
    move v9, v8

    .local v9, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v9, v0, :cond_9

    .line 1476
    invoke-virtual {v14, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1477
    .local v2, "c":C
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v2, v0, :cond_8

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v2, v0, :cond_8

    .line 1479
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1475
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1482
    .end local v2    # "c":C
    :cond_9
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

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
