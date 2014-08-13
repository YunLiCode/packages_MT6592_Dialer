.class public Lcom/android/ex/chips/MTKRecipientEditTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/MTKRecipientEditTextView$PreloadPhotoTask;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$ChipWatcher;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipShadow;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;
    }
.end annotation


# static fields
.field private static final CHIP_INTERVAL:I = 0x5

.field static final CHIP_LIMIT:I = 0x2

.field private static final COMMIT_CHAR_CHINESE_COMMA:C = '\uff0c'

.field private static final COMMIT_CHAR_CHINESE_SEMICOLON:C = '\uff1b'

.field private static final COMMIT_CHAR_COMMA:C = ','

.field private static final COMMIT_CHAR_SEMICOLON:C = ';'

.field private static final COMMIT_CHAR_SPACE:C = ' '

.field private static DEBUG_LOG:Z = false

.field private static final DEBUG_MTKRECIPIENTEDITTEXTVIEW_THREADING:Ljava/lang/String; = "debug.MTKRecip.threading"

.field private static DEBUG_THREADING_LOG:Z = false

.field private static final DELTA_Y_THRESHOLD:F = 5.0f

.field private static DISMISS:I = 0x0

.field private static final DISMISS_DELAY:J = 0x12cL

.field private static final F_CHIP_AUTO_UPDATE:I = 0x1

.field private static final F_CHIP_WATCHER:I = 0x2

.field private static final MAX_CHIPS_PARSED:I = 0x64

.field private static final MTKTAG:Ljava/lang/String; = "MTKRecip"

.field private static final NAME_WRAPPER_CHAR:C = '\"'

.field private static final SEPARATOR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "RecipientEditTextView"

.field private static mFeatureSet:I

.field private static sContactObserver:Lcom/android/ex/chips/MTKContactObserver;

.field private static sExcessTopPadding:I

.field private static sSelectedTextColor:I


# instance fields
.field private bPasted:Z

.field private bTouchedAfterPasted:Z

.field private changedChipAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRegisterVSync:Z

.field private mActionBarHeight:I

.field private final mAddTextWatcher:Ljava/lang/Runnable;

.field private mAddressPopup:Landroid/widget/ListPopupWindow;

.field private mAlternatesLayout:I

.field private mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAlternatesPopup:Landroid/widget/ListPopupWindow;

.field private mAnchorView:Landroid/view/View;

.field private mAttachedToWindow:Z

.field private mCheckedItem:I

.field private mChipBackground:Landroid/graphics/drawable/Drawable;

.field private mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

.field private mChipChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/MTKRecipientEditTextView$ChipWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mChipDelete:Landroid/graphics/drawable/Drawable;

.field private mChipFontSize:F

.field private mChipHeight:F

.field private mChipPadding:I

.field private mChipProcessListener:Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;

.field private mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

.field private mChipsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChoreographer:Landroid/view/Choreographer;

.field private mContactListener:Lcom/android/ex/chips/MTKContactObserver$ContactListener;

.field private mCopyAddress:Ljava/lang/String;

.field private mCopyDialog:Landroid/app/Dialog;

.field private mCurrentWidth:I

.field private mDefaultContactPhoto:Landroid/graphics/Bitmap;

.field private mDefaultTextSize:F

.field private mDefaultVerticalOffset:I

.field private mDelayedShrink:Ljava/lang/Runnable;

.field private mDisableBringPointIntoView:Z

.field private mDownPosY:F

.field private mDragEnabled:Z

.field private mDuringAccelerateRemoveChip:Z

.field private mDuringReplaceDupChips:Z

.field private final mEllipsizedChipLock:Ljava/lang/Object;

.field private mEnableScrollAddText:Z

.field private mForceEnableBringPointIntoView:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHandlePendingChips:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHandlingAlternatesDropDown:Z

.field private mHasEllipsizedFirstChip:Z

.field private mHasScrolled:Z

.field private mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

.field private mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

.field private mIsAutoTesting:Z

.field private mJustExpanded:Z

.field private mLastStringChanged:Z

.field private mLimitedWidthForSpan:I

.field private mLineOfSelectedChip:I

.field private mLineSpacingExtra:F

.field private mMaxLines:I

.field private mMoreChip:Landroid/text/style/ImageSpan;

.field private mMoreItem:Landroid/widget/TextView;

.field private mMoveCursorToVisible:Z

.field private mNoChips:Z

.field private mPedingReplaceChips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private mPedingReplaceEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingChips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChipsCount:I

.field private mRETVDiscardNextActionUp:Z

.field private mRemovedSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private mRemovedSpansMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

.field private mShouldShrink:Z

.field mShowAlternatesTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mStringToBeRestore:Ljava/lang/String;

.field private mTemporaryRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

.field private mTriedGettingScrollView:Z

.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;

.field private notifyChipChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->SEPARATOR:Ljava/lang/String;

    .line 182
    sput-boolean v3, Lcom/android/ex/chips/MTKRecipientEditTextView;->DEBUG_THREADING_LOG:Z

    .line 184
    sput-boolean v3, Lcom/android/ex/chips/MTKRecipientEditTextView;->DEBUG_LOG:Z

    .line 188
    const-string v0, "dismiss"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->DISMISS:I

    .line 203
    sput v2, Lcom/android/ex/chips/MTKRecipientEditTextView;->sSelectedTextColor:I

    .line 326
    sput v2, Lcom/android/ex/chips/MTKRecipientEditTextView;->sExcessTopPadding:I

    .line 336
    const/4 v0, 0x0

    sput-object v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->sContactObserver:Lcom/android/ex/chips/MTKContactObserver;

    .line 342
    const/4 v0, 0x0

    sput v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 354
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 206
    iput-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 208
    iput v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDownPosY:F

    .line 210
    iput-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    .line 243
    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    .line 245
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    .line 251
    sget-object v1, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    .line 262
    iput-boolean v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShouldShrink:Z

    .line 287
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDragEnabled:Z

    .line 289
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$1;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$1;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    .line 302
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$2;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$2;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    .line 314
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$3;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$3;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    .line 333
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandlingAlternatesDropDown:Z

    .line 345
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$4;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$4;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mContactListener:Lcom/android/ex/chips/MTKContactObserver$ContactListener;

    .line 2129
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasScrolled:Z

    .line 2296
    iput-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAnchorView:Landroid/view/View;

    .line 4045
    iput-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessListener:Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;

    .line 4411
    iput-boolean v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mEnableScrollAddText:Z

    .line 4432
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRETVDiscardNextActionUp:Z

    .line 4435
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->bPasted:Z

    .line 4436
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->bTouchedAfterPasted:Z

    .line 4440
    iput v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLimitedWidthForSpan:I

    .line 4442
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    .line 4486
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mEllipsizedChipLock:Ljava/lang/Object;

    .line 4568
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoveCursorToVisible:Z

    .line 4569
    iput-boolean v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDisableBringPointIntoView:Z

    .line 4570
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mForceEnableBringPointIntoView:Z

    .line 4571
    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLineOfSelectedChip:I

    .line 4740
    iput-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 4741
    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCurrentWidth:I

    .line 5076
    iput v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultTextSize:F

    .line 5079
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mJustExpanded:Z

    .line 5101
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringAccelerateRemoveChip:Z

    .line 5121
    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultVerticalOffset:I

    .line 5124
    iput-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mStringToBeRestore:Ljava/lang/String;

    .line 5129
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringReplaceDupChips:Z

    .line 5197
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mIsAutoTesting:Z

    .line 5210
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$14;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$14;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    .line 5251
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$15;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$15;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->notifyChipChangedRunnable:Ljava/lang/Runnable;

    .line 355
    const-string v1, "RecipientEditTextView"

    const-string v2, "[MTKRecipientEditTextView] constructor"

    invoke-direct {p0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipDimensions(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 357
    sget v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->sSelectedTextColor:I

    if-ne v1, v7, :cond_0

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->sSelectedTextColor:I

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultTextSize:F

    .line 361
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    .line 362
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    .line 364
    sget-object v1, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    const v2, 0x101006b

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 366
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultVerticalOffset:I

    .line 368
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    .line 369
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$5;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$5;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 388
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getInputType()I

    move-result v1

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setInputType(I)V

    .line 389
    invoke-virtual {p0, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 390
    invoke-virtual {p0, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 391
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$6;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$6;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    .line 401
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;

    invoke-direct {v1, p0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 402
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 403
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 404
    invoke-virtual {p0, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 406
    const-string v1, "debug.MTKRecip.threading"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->DEBUG_THREADING_LOG:Z

    .line 409
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceChips:Ljava/util/ArrayList;

    .line 410
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceEntries:Ljava/util/ArrayList;

    .line 412
    invoke-direct {p0, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setForceEnableBringPointIntoView(Z)V

    .line 414
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->configFeatures(Landroid/content/Context;)V

    .line 416
    return-void
.end method

.method static synthetic access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/ex/chips/MTKRecipientEditTextView;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Landroid/text/TextWatcher;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->scrollBottomIntoView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setForceEnableBringPointIntoView(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createAlternatesAdapter(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAttachedToWindow:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/ex/chips/MTKRecipientEditTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCheckedItem:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/ex/chips/MTKRecipientEditTextView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->unselectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/text/style/ImageSpan;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearTemporaryRecipients()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->chipsPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shrink()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringAccelerateRemoveChip:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitByCharacter()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/AutoCompleteTextView$Validator;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900()I
    .locals 1

    .prologue
    .line 158
    sget v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handleContactChange(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLastStringChanged:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLastStringChanged:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->registerVSync()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDisableBringPointIntoView:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/RecipientEntry;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;)Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    return-object p1
.end method

.method static synthetic access$4800(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandlingAlternatesDropDown:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandlingAlternatesDropDown:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->addTemporaryRecipients(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->recoverLayout()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessListener:Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mEllipsizedChipLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5800(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/ex/chips/MTKRecipientEditTextView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateAvailableWidth()F

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/ex/chips/MTKRecipientEditTextView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getMeasuredMoreSpanWidth(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "x2"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipOnSameTextRange(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/ex/chips/MTKRecipientEditTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCurrentWidth:I

    return v0
.end method

.method static synthetic access$6402(Lcom/android/ex/chips/MTKRecipientEditTextView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCurrentWidth:I

    return p1
.end method

.method static synthetic access$6500(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->rotateToPortrait()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->rotateToLandscape()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->unRegisterGlobalLayoutListener()V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "x2"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handleReplaceDuplicateChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->notifyChipChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->isRegisterVSync:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handleContactDeleteAsync(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/ex/chips/MTKRecipientEditTextView;J)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # J

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipsByContactID(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "x2"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipsInRemovedSpans(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tryToAdjustChips()V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handleContactAdd(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handleContactDeleteSync(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 158
    sget v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->DISMISS:I

    return v0
.end method

.method private addTemporaryRecipients(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 3
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addItemToTemporaryRecipients] count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    return-void
.end method

.method private adjustAnchorView(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 11
    .param p1, "currentChip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2299
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAnchorView:Landroid/view/View;

    if-nez v6, :cond_0

    .line 2300
    new-instance v6, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAnchorView:Landroid/view/View;

    .line 2301
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAnchorView:Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2302
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getRootView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 2303
    .local v4, "rootView":Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2305
    .end local v4    # "rootView":Landroid/view/ViewGroup;
    :cond_0
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 2306
    .local v0, "anchorPos":[I
    invoke-virtual {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLocationInWindow([I)V

    .line 2307
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLineOfChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v1

    .line 2308
    .local v1, "line":I
    aget v6, v0, v10

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getScrollY()I

    move-result v7

    sub-int v3, v6, v7

    .line 2309
    .local v3, "offsetFromWindowTop":I
    aget v6, v0, v9

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getScrollX()I

    move-result v7

    sub-int v5, v6, v7

    .line 2311
    .local v5, "x":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    float-to-int v6, v6

    iget v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultVerticalOffset:I

    mul-int/lit8 v7, v7, -0x2

    add-int/2addr v6, v7

    const/16 v7, 0x70

    invoke-direct {v2, v10, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 2312
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    add-int/lit8 v6, v5, -0x1

    iget v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultVerticalOffset:I

    sub-int v7, v3, v7

    invoke-virtual {v2, v6, v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2313
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAnchorView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2314
    return-void
.end method

.method private alreadyHasChip(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v1, 0x1

    .line 1965
    iget-boolean v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-eqz v2, :cond_1

    .line 1973
    :cond_0
    :goto_0
    return v1

    .line 1968
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    const-class v3, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v2, p1, p2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 1970
    .local v0, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_0

    .line 1971
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private calculateAvailableWidth()F
    .locals 2

    .prologue
    .line 1209
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private calculateNumChipsCanShow()I
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 4510
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v10

    .line 4511
    .local v10, "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v10, :cond_0

    array-length v13, v10

    if-nez v13, :cond_2

    :cond_0
    move v7, v12

    .line 4563
    :cond_1
    :goto_0
    return v7

    .line 4516
    :cond_2
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateAvailableWidth()F

    move-result v13

    float-to-int v4, v13

    .line 4517
    .local v4, "innerWidth":I
    array-length v7, v10

    .line 4518
    .local v7, "numRecipients":I
    const/4 v9, 0x0

    .line 4521
    .local v9, "overage":I
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipInterval()I

    move-result v1

    .line 4523
    .local v1, "chipInterval":I
    const/4 v0, 0x1

    .line 4524
    .local v0, "canShowAll":Z
    const/4 v8, 0x0

    .line 4525
    .local v8, "occupiedSpace":I
    const/4 v3, 0x0

    .line 4526
    .local v3, "index":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_3

    .line 4527
    aget-object v13, v10, v3

    invoke-direct {p0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v13

    add-int/2addr v13, v1

    add-int/2addr v8, v13

    .line 4529
    iget v13, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v4

    if-le v8, v13, :cond_7

    .line 4530
    const/4 v0, 0x0

    .line 4535
    :cond_3
    if-nez v0, :cond_1

    .line 4539
    if-ne v3, v7, :cond_4

    if-nez v0, :cond_4

    .line 4540
    add-int/lit8 v3, v3, -0x1

    .line 4543
    :cond_4
    sub-int v13, v7, v3

    invoke-direct {p0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getMeasuredMoreSpanWidth(I)I

    move-result v6

    .line 4544
    .local v6, "moreSpanWidth":I
    sub-int v2, v4, v6

    .line 4546
    .local v2, "chipsSpace":I
    const/4 v5, 0x0

    .line 4547
    .local v5, "j":I
    move v5, v3

    :goto_2
    if-ltz v5, :cond_5

    .line 4548
    aget-object v13, v10, v5

    invoke-direct {p0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v13

    add-int/2addr v13, v1

    sub-int/2addr v8, v13

    .line 4550
    if-ge v8, v2, :cond_8

    .line 4555
    :cond_5
    if-nez v5, :cond_9

    .line 4556
    aget-object v13, v10, v12

    invoke-direct {p0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v13

    if-le v13, v2, :cond_6

    .line 4558
    aget-object v12, v10, v12

    invoke-direct {p0, v12, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipOnSameTextRange(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;I)V

    .line 4559
    iput-boolean v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    :cond_6
    move v7, v11

    .line 4561
    goto :goto_0

    .line 4526
    .end local v2    # "chipsSpace":I
    .end local v5    # "j":I
    .end local v6    # "moreSpanWidth":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4547
    .restart local v2    # "chipsSpace":I
    .restart local v5    # "j":I
    .restart local v6    # "moreSpanWidth":I
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_9
    move v7, v5

    .line 4563
    goto :goto_0
.end method

.method private calculateOffsetFromBottom(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1198
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLineCount()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    sub-int v0, v1, v2

    .line 1199
    .local v0, "actualLine":I
    iget v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    float-to-int v1, v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getDropDownVerticalOffset()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private calculateUnselectedChipWidth(Lcom/android/ex/chips/RecipientEntry;)I
    .locals 14
    .param p1, "entry"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    .line 1120
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 1121
    .local v7, "paint":Landroid/text/TextPaint;
    iget v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    float-to-int v5, v11

    .line 1122
    .local v5, "height":I
    const/4 v11, 0x1

    new-array v10, v11, [F

    .line 1123
    .local v10, "widths":[F
    const-string v11, " "

    invoke-virtual {v7, v11, v10}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 1124
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v0

    .line 1125
    .local v0, "contactId":J
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v11

    if-eqz v11, :cond_1

    const-wide/16 v11, -0x1

    cmp-long v11, v0, v11

    if-eqz v11, :cond_0

    const/4 v2, 0x1

    .line 1130
    .local v2, "drawIcon":Z
    :goto_0
    if-eqz v2, :cond_3

    move v6, v5

    .line 1131
    .local v6, "iconWidth":I
    :goto_1
    invoke-virtual {v7}, Landroid/text/TextPaint;->getTextSize()F

    move-result v8

    .line 1132
    .local v8, "tempTextSize":F
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v12

    iget v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLimitedWidthForSpan:I

    const/4 v13, -0x1

    if-ne v11, v13, :cond_4

    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateAvailableWidth()F

    move-result v11

    int-to-float v13, v6

    sub-float/2addr v11, v13

    const/4 v13, 0x0

    aget v13, v10, v13

    sub-float/2addr v11, v13

    :goto_2
    invoke-direct {p0, v12, v7, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1135
    .local v3, "ellipsizedText":Ljava/lang/CharSequence;
    const/4 v11, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual {v7, v3, v11, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v4, v11

    .line 1136
    .local v4, "ellipsizedTextWidth":I
    iget v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v4

    add-int v9, v11, v6

    .line 1137
    .local v9, "width":I
    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1138
    return v9

    .line 1125
    .end local v2    # "drawIcon":Z
    .end local v3    # "ellipsizedText":Ljava/lang/CharSequence;
    .end local v4    # "ellipsizedTextWidth":I
    .end local v6    # "iconWidth":I
    .end local v8    # "tempTextSize":F
    .end local v9    # "width":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v11, -0x1

    cmp-long v11, v0, v11

    if-eqz v11, :cond_2

    const-wide/16 v11, -0x2

    cmp-long v11, v0, v11

    if-eqz v11, :cond_2

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1130
    .restart local v2    # "drawIcon":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1132
    .restart local v6    # "iconWidth":I
    .restart local v8    # "tempTextSize":F
    :cond_4
    iget v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLimitedWidthForSpan:I

    sub-int/2addr v11, v6

    int-to-float v11, v11

    const/4 v13, 0x0

    aget v13, v10, v13

    sub-float/2addr v11, v13

    goto :goto_2
.end method

.method private checkChipWidths()V
    .locals 9

    .prologue
    .line 1330
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    .line 1331
    .local v3, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v3, :cond_1

    .line 1333
    move-object v0, v3

    .local v0, "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 1334
    .local v2, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1335
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v6

    if-lez v6, :cond_0

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_0

    .line 1337
    invoke-interface {v2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    .line 1333
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1341
    .end local v0    # "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    return-void
.end method

.method private chipsPending()Z
    .locals 1

    .prologue
    .line 3301
    iget v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearSelectedChip()V
    .locals 1

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->unselectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 2126
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setCursorVisible(Z)V

    .line 2127
    return-void
.end method

.method private clearTemporaryRecipients()V
    .locals 2

    .prologue
    .line 960
    const-string v0, "RecipientEditTextView"

    const-string v1, "[clearTemporaryRecipients]"

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 962
    return-void
.end method

.method private commitByCharacter()V
    .locals 7

    .prologue
    .line 1793
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v4, :cond_0

    .line 1807
    :goto_0
    return-void

    .line 1796
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1797
    .local v0, "editable":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 1798
    .local v1, "end":I
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1800
    .local v3, "start":I
    invoke-direct {p0, v3, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldCreateChip(II)Z

    move-result v2

    .line 1801
    .local v2, "shouldCreate":Z
    const-string v4, "RecipientEditTextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[commitByCharacter] start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", end: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", shouldCreateChip: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    if-eqz v2, :cond_1

    .line 1804
    invoke-direct {p0, v3, v1, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 1806
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setSelection(I)V

    goto :goto_0
.end method

.method private commitChip(IILandroid/text/Editable;)Z
    .locals 21
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "editable"    # Landroid/text/Editable;

    .prologue
    .line 1810
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 1811
    .local v4, "adapter":Landroid/widget/ListAdapter;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v18

    if-lez v18, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->enoughToFilter()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v18

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPopupShowing()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1813
    const-string v18, "RecipientEditTextView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[commitChip] submit 1st item, start: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", end: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->submitItemAtPosition(I)V

    .line 1816
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->dismissDropDown()V

    .line 1817
    const/16 v18, 0x1

    .line 1917
    :goto_0
    return v18

    .line 1819
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v17

    .line 1820
    .local v17, "tokenEnd":I
    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v18

    add-int/lit8 v19, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 1821
    add-int/lit8 v18, v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    .line 1822
    .local v6, "charAt":C
    const/16 v18, 0x2c

    move/from16 v0, v18

    if-eq v6, v0, :cond_1

    const/16 v18, 0x3b

    move/from16 v0, v18

    if-eq v6, v0, :cond_1

    const v18, 0xff0c

    move/from16 v0, v18

    if-eq v6, v0, :cond_1

    const v18, 0xff1b

    move/from16 v0, v18

    if-ne v6, v0, :cond_2

    .line 1823
    :cond_1
    add-int/lit8 v17, v17, 0x1

    .line 1826
    .end local v6    # "charAt":C
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 1827
    .local v16, "text":Ljava/lang/String;
    const-string v18, "RecipientEditTextView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[commitChip] trying to match item. text: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", start: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", end: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v18

    if-eqz v18, :cond_a

    if-eqz v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->enoughToFilter()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v18

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1830
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    .line 1832
    .local v5, "adapterCount":I
    if-lez v5, :cond_7

    .line 1834
    const/4 v14, 0x0

    .local v14, "itemCnt":I
    :goto_1
    if-ge v14, v5, :cond_5

    .line 1835
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/ex/chips/RecipientEntry;

    .line 1836
    .local v12, "entry":Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v12}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 1837
    .local v11, "displayName":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v10

    .line 1838
    .local v10, "destination":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1839
    :cond_3
    const-string v18, "RecipientEditTextView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[commitChip] submit item: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->submitItemAtPosition(I)V

    .line 1841
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->dismissDropDown()V

    .line 1842
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1834
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1846
    .end local v10    # "destination":Ljava/lang/String;
    .end local v11    # "displayName":Ljava/lang/String;
    .end local v12    # "entry":Lcom/android/ex/chips/RecipientEntry;
    :cond_5
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v5, :cond_a

    .line 1847
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/ex/chips/RecipientEntry;

    .line 1848
    .restart local v12    # "entry":Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v12}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 1849
    .restart local v11    # "displayName":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v10

    .line 1850
    .restart local v10    # "destination":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/ex/chips/RecipientEntry;->getDestinationKind()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 1851
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1852
    .local v9, "currentNumber":Ljava/lang/String;
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1853
    .local v15, "queryNumber":Ljava/lang/String;
    invoke-static {v9, v15}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1854
    const-string v18, "RecipientEditTextView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[commitChip] match normalized destination. submit item: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->submitItemAtPosition(I)V

    .line 1856
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->dismissDropDown()V

    .line 1857
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1846
    .end local v9    # "currentNumber":Ljava/lang/String;
    .end local v15    # "queryNumber":Ljava/lang/String;
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1862
    .end local v10    # "destination":Ljava/lang/String;
    .end local v11    # "displayName":Ljava/lang/String;
    .end local v12    # "entry":Lcom/android/ex/chips/RecipientEntry;
    .end local v14    # "itemCnt":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/widget/ListAdapter;->getCount()I

    move-result v18

    if-nez v18, :cond_a

    .line 1863
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getRecipientEntryByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v13

    .line 1864
    .local v13, "entryByPhoneNumber":Lcom/android/ex/chips/RecipientEntry;
    if-eqz v13, :cond_a

    .line 1865
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearComposingText()V

    .line 1866
    const-string v18, ""

    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1867
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v13, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1868
    .local v7, "chip":Ljava/lang/CharSequence;
    if-eqz v7, :cond_8

    if-ltz p1, :cond_8

    if-ltz p2, :cond_8

    .line 1869
    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1871
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->sanitizeBetween()V

    .line 1873
    sget v18, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_9

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual {v13}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1876
    :cond_9
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1882
    .end local v5    # "adapterCount":I
    .end local v7    # "chip":Ljava/lang/CharSequence;
    .end local v13    # "entryByPhoneNumber":Lcom/android/ex/chips/RecipientEntry;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearComposingText()V

    .line 1883
    if-eqz v16, :cond_10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_10

    const-string v18, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 1884
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v12

    .line 1885
    .restart local v12    # "entry":Lcom/android/ex/chips/RecipientEntry;
    if-eqz v12, :cond_d

    .line 1887
    sget-object v18, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->COMMIT:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 1888
    const-string v18, ""

    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1889
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v12, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1890
    .local v8, "chipText":Ljava/lang/CharSequence;
    if-eqz v8, :cond_c

    const/16 v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    const/16 v18, -0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    .line 1891
    const-string v18, "MTKRecip"

    const-string v19, "[commitChip] replace"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    add-int/lit8 v18, p2, 0x1

    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v19, p2, 0x2

    move-object/from16 v0, v18

    move/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string v19, ", "

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1894
    add-int/lit8 p2, p2, 0x2

    .line 1896
    :cond_b
    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2, v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1898
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->dismissDropDown()V

    .line 1899
    sget-object v18, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 1905
    .end local v8    # "chipText":Ljava/lang/CharSequence;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v18

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1906
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->dismissDropDown()V

    .line 1908
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->sanitizeBetween()V

    .line 1910
    sget v18, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_f

    .line 1911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1913
    :cond_f
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1916
    .end local v12    # "entry":Lcom/android/ex/chips/RecipientEntry;
    :cond_10
    const-string v18, "RecipientEditTextView"

    const-string v19, "[commitChip] do nothing"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method private commitDefault()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1766
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v7, :cond_1

    .line 1788
    :cond_0
    :goto_0
    return v5

    .line 1769
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 1770
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1771
    .local v0, "editable":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 1772
    .local v1, "end":I
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v7, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1774
    .local v3, "start":I
    invoke-direct {p0, v3, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldCreateChip(II)Z

    move-result v2

    .line 1775
    .local v2, "shouldCreate":Z
    const-string v7, "RecipientEditTextView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[commitDefault] start: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", end: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", shouldCreateChip: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    if-eqz v2, :cond_0

    .line 1778
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1781
    .local v4, "whatEnd":I
    invoke-virtual {p0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->movePastTerminators(I)I

    move-result v4

    .line 1782
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 1783
    invoke-direct {p0, v3, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handleEdit(II)V

    move v5, v6

    .line 1784
    goto :goto_0

    .line 1786
    :cond_2
    invoke-direct {p0, v3, v1, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    move-result v5

    goto :goto_0
.end method

.method private configFeatures(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 5899
    const-string v0, "com.android.mms"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5900
    sget v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    or-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    .line 5902
    :cond_0
    sget v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 5903
    sget-object v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->sContactObserver:Lcom/android/ex/chips/MTKContactObserver;

    if-nez v0, :cond_1

    .line 5904
    new-instance v0, Lcom/android/ex/chips/MTKContactObserver;

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKContactObserver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->sContactObserver:Lcom/android/ex/chips/MTKContactObserver;

    .line 5907
    :cond_1
    sget v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 5908
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLastStringChanged:Z

    .line 5909
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChoreographer:Landroid/view/Choreographer;

    .line 5910
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->notifyChipChangedRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 5912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->isRegisterVSync:Z

    .line 5914
    :cond_2
    return-void
.end method

.method private constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 12
    .param p1, "contact"    # Lcom/android/ex/chips/RecipientEntry;
    .param p2, "pressed"    # Z
    .param p3, "leaveIconSpace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x8

    const/4 v9, 0x0

    .line 1161
    const-string v6, "RecipientEditTextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[constructChipSpan] pressed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 1163
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Unable to render any chips as setChipDimensions was not called."

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1166
    :cond_0
    const-string v6, "constructChipSpan"

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1167
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 1168
    .local v2, "paint":Landroid/text/TextPaint;
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    .line 1169
    .local v1, "defaultSize":F
    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    .line 1172
    .local v0, "defaultColor":I
    if-eqz p2, :cond_1

    .line 1173
    invoke-direct {p0, p1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createSelectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1180
    .local v5, "tmpBitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1181
    .local v4, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v4, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1182
    new-instance v3, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;

    invoke-direct {v3, v4, p1}, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/ex/chips/RecipientEntry;)V

    .line 1184
    .local v3, "recipientChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1185
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1186
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1187
    return-object v3

    .line 1176
    .end local v3    # "recipientChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v4    # "result":Landroid/graphics/drawable/Drawable;
    .end local v5    # "tmpBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0, p1, v2, p3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createUnselectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5    # "tmpBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private convertToVisibleChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 5
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    const/4 v2, 0x0

    .line 4909
    instance-of v3, p1, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;

    if-eqz v3, :cond_1

    .line 4910
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 4911
    .local v0, "entry":Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 4914
    .local v1, "leaveSpace":Z
    :goto_0
    invoke-direct {p0, v0, v2, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object p1

    .line 4916
    .end local v0    # "entry":Lcom/android/ex/chips/RecipientEntry;
    .end local v1    # "leaveSpace":Z
    :cond_1
    return-object p1

    .restart local v0    # "entry":Lcom/android/ex/chips/RecipientEntry;
    :cond_2
    move v1, v2

    .line 4911
    goto :goto_0
.end method

.method private createAlternatesAdapter(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;
    .locals 9
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 2366
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2368
    new-instance v0, Lcom/android/ex/chips/RecipientAlternatesAdapter;

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getDataId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v6}, Lcom/android/ex/chips/BaseRecipientAdapter;->getQueryType()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v7}, Lcom/android/ex/chips/BaseRecipientAdapter;->getShowPhoneAndEmail()Z

    move-result v8

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/ex/chips/RecipientAlternatesAdapter;-><init>(Landroid/content/Context;JJILcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;Z)V

    .line 2372
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/android/ex/chips/RecipientAlternatesAdapter;

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getDataId()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v7}, Lcom/android/ex/chips/BaseRecipientAdapter;->getQueryType()I

    move-result v7

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/ex/chips/RecipientAlternatesAdapter;-><init>(Landroid/content/Context;JJILcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "entry"    # Lcom/android/ex/chips/RecipientEntry;
    .param p2, "pressed"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2507
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v2

    .line 2508
    .local v2, "displayText":Ljava/lang/String;
    const-string v6, "RecipientEditTextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[createChip] displayText: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pressed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v5

    .line 2528
    :cond_0
    :goto_0
    return-object v1

    .line 2512
    :cond_1
    const/4 v1, 0x0

    .line 2514
    .local v1, "chipText":Landroid/text/SpannableString;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 2515
    .local v4, "textLength":I
    new-instance v1, Landroid/text/SpannableString;

    .end local v1    # "chipText":Landroid/text/SpannableString;
    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2516
    .restart local v1    # "chipText":Landroid/text/SpannableString;
    iget-boolean v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-nez v6, :cond_0

    .line 2518
    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 2520
    .local v0, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v6, 0x0

    const/16 v7, 0x21

    invoke-virtual {v1, v0, v6, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2522
    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2523
    .end local v0    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :catch_0
    move-exception v3

    .line 2524
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v6, "RecipientEditTextView"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v5

    .line 2525
    goto :goto_0
.end method

.method private createMoreSpan(I)Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;
    .locals 14
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 2710
    const-string v3, "RecipientEditTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[createMoreSpan] count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2711
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2712
    .local v1, "moreText":Ljava/lang/String;
    new-instance v6, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 2713
    .local v6, "morePaint":Landroid/text/TextPaint;
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2714
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 2715
    invoke-virtual {v6, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int v13, v3, v4

    .line 2718
    .local v13, "width":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v7

    .line 2719
    .local v7, "TempTextSize":F
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultTextSize:F

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2721
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLineHeight()I

    move-result v10

    .line 2722
    .local v10, "height":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v10, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2723
    .local v9, "drawable":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2724
    .local v0, "canvas":Landroid/graphics/Canvas;
    move v8, v10

    .line 2725
    .local v8, "adjustedHeight":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .line 2726
    .local v11, "layout":Landroid/text/Layout;
    if-eqz v11, :cond_0

    .line 2727
    invoke-virtual {v11, v2}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int/2addr v8, v3

    .line 2729
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    int-to-float v5, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 2731
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v12, v3, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2732
    .local v12, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12, v2, v2, v13, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2733
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2734
    new-instance v2, Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;

    invoke-direct {v2, p0, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private createReplacementChip(IILandroid/text/Editable;Z)V
    .locals 10
    .param p1, "tokenStart"    # I
    .param p2, "tokenEnd"    # I
    .param p3, "editable"    # Landroid/text/Editable;
    .param p4, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1534
    const-string v7, "RecipientEditTextView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[createReplacementChip] tokenStart:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tokenEnd:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", visible:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->alreadyHasChip(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1579
    :cond_0
    :goto_0
    return-void

    .line 1540
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1541
    .local v5, "token":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1542
    .local v6, "trimmedToken":Ljava/lang/String;
    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1543
    .local v1, "commitCharIndex":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_2

    .line 1544
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1546
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    .line 1547
    .local v3, "entry":Lcom/android/ex/chips/RecipientEntry;
    if-eqz v3, :cond_0

    .line 1548
    const/4 v0, 0x0

    .line 1550
    .local v0, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    sget-object v7, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->COMMIT:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    invoke-direct {p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 1552
    :try_start_0
    iget-boolean v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-nez v7, :cond_5

    .line 1554
    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 1557
    .local v4, "leaveSpace":Z
    :cond_4
    if-eqz p4, :cond_7

    const/4 v7, 0x0

    invoke-direct {p0, v3, v7, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1564
    .end local v4    # "leaveSpace":Z
    :cond_5
    :goto_1
    const-string v7, "MTKRecip"

    const-string v8, "[createReplacementChip] replace"

    invoke-direct {p0, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    const/16 v7, 0x21

    invoke-interface {p3, v0, p1, p2, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1567
    if-eqz v0, :cond_6

    .line 1569
    invoke-interface {v0, v6}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 1571
    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->addTemporaryRecipients(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 1573
    :cond_6
    sget-object v7, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    invoke-direct {p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 1575
    sget v7, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_0

    .line 1576
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1557
    .restart local v4    # "leaveSpace":Z
    :cond_7
    :try_start_1
    new-instance v7, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;

    invoke-direct {v7, v3}, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;-><init>(Lcom/android/ex/chips/RecipientEntry;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v7

    goto :goto_1

    .line 1561
    .end local v4    # "leaveSpace":Z
    :catch_0
    move-exception v2

    .line 1562
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v7, "RecipientEditTextView"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private createSelectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "contact"    # Lcom/android/ex/chips/RecipientEntry;
    .param p2, "paint"    # Landroid/text/TextPaint;

    .prologue
    const/4 v2, 0x0

    .line 977
    iget v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    float-to-int v9, v3

    .line 978
    .local v9, "height":I
    move v8, v9

    .line 979
    .local v8, "deleteWidth":I
    const/4 v3, 0x1

    new-array v12, v3, [F

    .line 980
    .local v12, "widths":[F
    const-string v3, " "

    invoke-virtual {p2, v3, v12}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 981
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateAvailableWidth()F

    move-result v4

    int-to-float v5, v8

    sub-float/2addr v4, v5

    aget v5, v12, v2

    sub-float/2addr v4, v5

    invoke-direct {p0, v3, p2, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;

    move-result-object v1

    .line 983
    .local v1, "ellipsizedText":Ljava/lang/CharSequence;
    const-string v3, "RecipientEditTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[createSelectedChip] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p2, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 993
    .local v11, "width":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v9, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 994
    .local v10, "tmpBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 995
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 996
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2, v2, v11, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 997
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 998
    sget v3, Lcom/android/ex/chips/MTKRecipientEditTextView;->sSelectedTextColor:I

    invoke-virtual {p2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1000
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    int-to-float v4, v4

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, p2, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F

    move-result v5

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1003
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1004
    .local v7, "backgroundPadding":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1005
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    sub-int v3, v11, v8

    iget v4, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v4, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x0

    iget v5, v7, Landroid/graphics/Rect;->right:I

    sub-int v5, v11, v5

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v9, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1009
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1013
    .end local v7    # "backgroundPadding":Landroid/graphics/Rect;
    :goto_0
    return-object v10

    .line 1011
    :cond_0
    const-string v2, "RecipientEditTextView"

    const-string v3, "Unable to draw a background for the chips as it was never set"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createSingleAddressAdapter(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;
    .locals 4
    .param p1, "currentChip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 2378
    new-instance v0, Lcom/android/ex/chips/SingleRecipientArrayAdapter;

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesLayout:I

    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/chips/SingleRecipientArrayAdapter;-><init>(Landroid/content/Context;ILcom/android/ex/chips/RecipientEntry;)V

    return-object v0
.end method

.method private createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 9
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1599
    const-string v5, "RecipientEditTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[createTokenizedEntry] token:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1601
    const/4 v5, 0x0

    .line 1655
    :goto_0
    return-object v5

    .line 1603
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1605
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1606
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1607
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1608
    :cond_1
    invoke-static {p1}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v5

    goto :goto_0

    .line 1611
    :cond_2
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 1612
    .local v3, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v0, 0x0

    .line 1613
    .local v0, "display":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v1

    .line 1614
    .local v1, "isValid":Z
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    array-length v5, v3

    if-lez v5, :cond_4

    .line 1617
    aget-object v5, v3, v8

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1618
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1619
    const-string v5, "RecipientEditTextView"

    const-string v6, "[createTokenizedEntry] RecipientEntry.constructGeneratedEntry()"

    invoke-direct {p0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    aget-object v5, v3, v8

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v1}, Lcom/android/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v5

    goto :goto_0

    .line 1622
    :cond_3
    aget-object v5, v3, v8

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1623
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1624
    const-string v5, "RecipientEditTextView"

    const-string v6, "[createTokenizedEntry] RecipientEntry.constructFakeEntry()"

    invoke-direct {p0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v5

    goto :goto_0

    .line 1631
    :cond_4
    const/4 v4, 0x0

    .line 1632
    .local v4, "validatedToken":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v5, :cond_5

    if-nez v1, :cond_5

    .line 1634
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v5, p1}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1635
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1636
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1639
    invoke-static {v4}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 1640
    .local v2, "tokenized":[Landroid/text/util/Rfc822Token;
    array-length v5, v2

    if-lez v5, :cond_5

    .line 1641
    aget-object v5, v2, v8

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1642
    const/4 v1, 0x1

    .line 1654
    .end local v2    # "tokenized":[Landroid/text/util/Rfc822Token;
    :cond_5
    :goto_1
    const-string v5, "RecipientEditTextView"

    const-string v6, "[createTokenizedEntry] RecipientEntry.constructFakeEntry()"

    invoke-direct {p0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .end local v4    # "validatedToken":Ljava/lang/String;
    :goto_2
    invoke-static {v4, v1}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v5

    goto/16 :goto_0

    .line 1648
    .restart local v4    # "validatedToken":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    .line 1649
    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    move-object v4, p1

    .line 1655
    goto :goto_2
.end method

.method private createUnselectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Z)Landroid/graphics/Bitmap;
    .locals 28
    .param p1, "contact"    # Lcom/android/ex/chips/RecipientEntry;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "leaveBlankIconSpacer"    # Z

    .prologue
    .line 1021
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    float-to-int v0, v5

    move/from16 v18, v0

    .line 1022
    .local v18, "height":I
    move/from16 v19, v18

    .line 1023
    .local v19, "iconWidth":I
    const/4 v5, 0x1

    new-array v0, v5, [F

    move-object/from16 v26, v0

    .line 1024
    .local v26, "widths":[F
    const-string v5, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 1026
    invoke-virtual/range {p0 .. p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLimitedWidthForSpan:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateAvailableWidth()F

    move-result v5

    move/from16 v0, v19

    int-to-float v7, v0

    sub-float/2addr v5, v7

    const/4 v7, 0x0

    aget v7, v26, v7

    sub-float/2addr v5, v7

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v6, v1, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1028
    .local v4, "ellipsizedText":Ljava/lang/CharSequence;
    const-string v5, "RecipientEditTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[createUnselectedChip] start, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const/16 v17, 0x0

    .line 1034
    .local v17, "hasIcon":Z
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    move/from16 v16, v0

    .line 1035
    .local v16, "ellipsizedTextWidth":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v5, v5, 0x2

    add-int v25, v16, v5

    .line 1039
    .local v25, "width":I
    const/16 v24, 0x0

    .line 1040
    .local v24, "tmpBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipBackground(Lcom/android/ex/chips/RecipientEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1041
    .local v10, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_c

    .line 1042
    const/4 v3, 0x0

    .line 1043
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/16 v21, 0x0

    .line 1044
    .local v21, "photo":Landroid/graphics/Bitmap;
    const/16 v20, 0x0

    .line 1047
    .local v20, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v12

    .line 1048
    .local v12, "contactId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v5

    if-eqz v5, :cond_6

    const-wide/16 v5, -0x1

    cmp-long v5, v12, v5

    if-eqz v5, :cond_5

    const/4 v14, 0x1

    .line 1053
    .local v14, "drawPhotos":Z
    :goto_1
    if-eqz v14, :cond_9

    .line 1054
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v22

    .line 1057
    .local v22, "photoBytes":[B
    const-wide/16 v5, 0x8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPhoto "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1058
    if-nez v22, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1060
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Lcom/android/ex/chips/BaseRecipientAdapter;->fetchPhoto(Lcom/android/ex/chips/RecipientEntry;Landroid/net/Uri;)V

    .line 1062
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v22

    .line 1064
    :cond_0
    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1065
    const-wide/16 v5, 0x8

    const-string v7, "decodePhoto"

    invoke-static {v5, v6, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1066
    if-eqz v22, :cond_8

    .line 1067
    const/4 v5, 0x0

    move-object/from16 v0, v22

    array-length v6, v0

    move-object/from16 v0, v22

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 1072
    :goto_2
    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1074
    if-eqz v21, :cond_1

    .line 1076
    const/16 v17, 0x1

    .line 1077
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v5, v5, 0x2

    add-int v5, v5, v16

    add-int v25, v5, v19

    .line 1079
    new-instance v23, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, v23

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1080
    .local v23, "src":Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 1081
    .local v11, "backgroundPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1082
    new-instance v15, Landroid/graphics/RectF;

    sub-int v5, v25, v19

    iget v6, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v11, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x0

    int-to-float v6, v6

    iget v7, v11, Landroid/graphics/Rect;->right:I

    sub-int v7, v25, v7

    int-to-float v7, v7

    iget v8, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v18, v8

    int-to-float v8, v8

    invoke-direct {v15, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1086
    .local v15, "dst":Landroid/graphics/RectF;
    new-instance v20, Landroid/graphics/Matrix;

    .end local v20    # "matrix":Landroid/graphics/Matrix;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    .line 1087
    .restart local v20    # "matrix":Landroid/graphics/Matrix;
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1093
    .end local v11    # "backgroundPadding":Landroid/graphics/Rect;
    .end local v15    # "dst":Landroid/graphics/RectF;
    .end local v22    # "photoBytes":[B
    .end local v23    # "src":Landroid/graphics/RectF;
    :cond_1
    :goto_3
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v25

    move/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 1094
    new-instance v3, Landroid/graphics/Canvas;

    .end local v3    # "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1096
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v10, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1097
    invoke-virtual {v10, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1098
    if-eqz v21, :cond_2

    if-eqz v20, :cond_2

    .line 1099
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1102
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 1104
    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    move/from16 v27, v0

    .line 1105
    .local v27, "xPositionOfText":I
    :goto_4
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move/from16 v0, v27

    int-to-float v7, v0

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v8, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F

    move-result v8

    move-object/from16 v9, p2

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1111
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "contactId":J
    .end local v14    # "drawPhotos":Z
    .end local v20    # "matrix":Landroid/graphics/Matrix;
    .end local v21    # "photo":Landroid/graphics/Bitmap;
    .end local v27    # "xPositionOfText":I
    :goto_5
    if-nez v24, :cond_3

    .line 1112
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v25

    move/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 1114
    :cond_3
    const-string v5, "RecipientEditTextView"

    const-string v6, "[createUnselectedChip] end"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    return-object v24

    .line 1026
    .end local v4    # "ellipsizedText":Ljava/lang/CharSequence;
    .end local v10    # "background":Landroid/graphics/drawable/Drawable;
    .end local v16    # "ellipsizedTextWidth":I
    .end local v17    # "hasIcon":Z
    .end local v24    # "tmpBitmap":Landroid/graphics/Bitmap;
    .end local v25    # "width":I
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLimitedWidthForSpan:I

    sub-int v5, v5, v19

    int-to-float v5, v5

    const/4 v7, 0x0

    aget v7, v26, v7

    sub-float/2addr v5, v7

    goto/16 :goto_0

    .line 1048
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "ellipsizedText":Ljava/lang/CharSequence;
    .restart local v10    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "contactId":J
    .restart local v16    # "ellipsizedTextWidth":I
    .restart local v17    # "hasIcon":Z
    .restart local v20    # "matrix":Landroid/graphics/Matrix;
    .restart local v21    # "photo":Landroid/graphics/Bitmap;
    .restart local v24    # "tmpBitmap":Landroid/graphics/Bitmap;
    .restart local v25    # "width":I
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_6
    const-wide/16 v5, -0x1

    cmp-long v5, v12, v5

    if-eqz v5, :cond_7

    const-wide/16 v5, -0x2

    cmp-long v5, v12, v5

    if-eqz v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1070
    .restart local v14    # "drawPhotos":Z
    .restart local v22    # "photoBytes":[B
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultContactPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    goto/16 :goto_2

    .line 1089
    .end local v22    # "photoBytes":[B
    :cond_9
    if-eqz p3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1090
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1104
    :cond_b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v25, v6

    sub-int v6, v6, v16

    div-int/lit8 v6, v6, 0x2

    add-int v27, v5, v6

    goto :goto_4

    .line 1108
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "contactId":J
    .end local v14    # "drawPhotos":Z
    .end local v20    # "matrix":Landroid/graphics/Matrix;
    .end local v21    # "photo":Landroid/graphics/Bitmap;
    :cond_c
    const-string v5, "RecipientEditTextView"

    const-string v6, "Unable to draw a background for the chips as it was never set"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    .locals 6
    .param p1, "item"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    .line 2579
    if-nez p1, :cond_0

    .line 2580
    const/4 v1, 0x0

    .line 2598
    :goto_0
    return-object v1

    .line 2586
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 2587
    .local v0, "destination":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 2588
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->isValid()Z

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    .local v1, "entry":Lcom/android/ex/chips/RecipientEntry;
    goto :goto_0

    .line 2590
    .end local v1    # "entry":Lcom/android/ex/chips/RecipientEntry;
    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v2, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2594
    :cond_2
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->isValid()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    .restart local v1    # "entry":Lcom/android/ex/chips/RecipientEntry;
    goto :goto_0

    .line 2596
    .end local v1    # "entry":Lcom/android/ex/chips/RecipientEntry;
    :cond_3
    move-object v1, p1

    .restart local v1    # "entry":Lcom/android/ex/chips/RecipientEntry;
    goto :goto_0
.end method

.method private ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "maxWidth"    # F

    .prologue
    .line 965
    iget v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipFontSize:F

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 966
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    const-string v0, "RecipientEditTextView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max width is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, p2, p3, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private expand()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 891
    const-string v9, "RecipientEditTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[expand] start, pending chip count: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceChips:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", TemporaryRecipients count: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    move-object v6, v7

    :goto_0
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v9, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    invoke-direct {p0, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setForceEnableBringPointIntoView(Z)V

    .line 896
    iget-boolean v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShouldShrink:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v6

    if-nez v6, :cond_0

    .line 897
    const v6, 0x7fffffff

    invoke-virtual {p0, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setMaxLines(I)V

    .line 900
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 901
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v2

    .line 902
    .local v2, "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_1

    array-length v6, v2

    if-lez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    if-eqz v6, :cond_1

    .line 903
    aget-object v6, v2, v8

    const/4 v9, -0x1

    invoke-direct {p0, v6, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipOnSameTextRange(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;I)V

    .line 904
    iput-boolean v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    .line 908
    .end local v2    # "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeMoreChip()V

    .line 910
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceChips:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_4

    .line 911
    iput-boolean v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringReplaceDupChips:Z

    .line 912
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceChips:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 915
    .local v3, "replaceCnt":I
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    if-ge v5, v3, :cond_3

    .line 916
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceChips:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 917
    .local v1, "oldChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    .line 918
    .local v0, "newEntry":Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {p0, v1, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    .line 919
    const-string v6, "RecipientEditTextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[expand] Expand and replace contact from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v6, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 891
    .end local v0    # "newEntry":Lcom/android/ex/chips/RecipientEntry;
    .end local v1    # "oldChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v3    # "replaceCnt":I
    .end local v5    # "x":I
    :cond_2
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    .line 921
    .restart local v3    # "replaceCnt":I
    .restart local v5    # "x":I
    :cond_3
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceChips:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 922
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 923
    iput-boolean v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringReplaceDupChips:Z

    .line 926
    .end local v3    # "replaceCnt":I
    .end local v5    # "x":I
    :cond_4
    invoke-virtual {p0, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setCursorVisible(Z)V

    .line 927
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 928
    .local v4, "text":Landroid/text/Editable;
    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    if-lez v6, :cond_7

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setSelection(I)V

    .line 931
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 932
    const-string v6, "RecipientEditTextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[expand] execute RecipientReplacementTask, mTemporaryRecipients.size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v6, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    new-instance v6, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    invoke-direct {v6, p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    new-array v7, v8, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 935
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearTemporaryRecipients()V

    .line 938
    :cond_5
    invoke-direct {p0, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setForceEnableBringPointIntoView(Z)V

    .line 940
    invoke-direct {p0, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 942
    iget-boolean v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-eqz v6, :cond_6

    .line 943
    iput-boolean v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mJustExpanded:Z

    .line 946
    :cond_6
    const-string v6, "RecipientEditTextView"

    const-string v7, "[expand] end"

    invoke-direct {p0, v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    return-void

    :cond_7
    move v6, v8

    .line 928
    goto :goto_2
.end method

.method private filterInvalidCharacter(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 3590
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3592
    .local v0, "result":Ljava/lang/String;
    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3594
    const v1, 0xff0c

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 3596
    const v1, 0xff1b

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 3598
    const-string v1, "^( *,)+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3600
    const-string v1, "( *,)+"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3601
    const-string v1, "(, *)+"

    const-string v2, ", "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3603
    const-string v1, "^( *;)+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3605
    const-string v1, "( *;)+"

    const-string v2, ";"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3606
    const-string v1, "(; *)+"

    const-string v2, "; "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3608
    const-string v1, "^\\s+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3609
    return-object v0
.end method

.method private findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 9
    .param p1, "offset"    # I

    .prologue
    .line 2441
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    const-class v8, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v5, v6, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2443
    .local v1, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 2444
    aget-object v0, v1, v3

    .line 2445
    .local v0, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v4

    .line 2446
    .local v4, "start":I
    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v2

    .line 2447
    .local v2, "end":I
    if-lt p1, v4, :cond_0

    if-gt p1, v2, :cond_0

    .line 2451
    .end local v0    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v2    # "end":I
    .end local v4    # "start":I
    :goto_1
    return-object v0

    .line 2443
    .restart local v0    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v2    # "end":I
    .restart local v4    # "start":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2451
    .end local v0    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v2    # "end":I
    .end local v4    # "start":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static findText(Landroid/text/Editable;I)I
    .locals 2
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "offset"    # I

    .prologue
    .line 2434
    invoke-interface {p0, p1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 2437
    .end local p1    # "offset":I
    :goto_0
    return p1

    .restart local p1    # "offset":I
    :cond_0
    const/4 p1, -0x1

    goto :goto_0
.end method

.method private focusNext()Z
    .locals 2

    .prologue
    .line 1749
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 1750
    .local v0, "next":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1751
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1752
    const/4 v1, 0x1

    .line 1754
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    .locals 1
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 2058
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getChipInterval()I
    .locals 1

    .prologue
    .line 4465
    const/4 v0, 0x5

    return v0
.end method

.method private getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    .locals 1
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 2054
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getChipWidth(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    .locals 2
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 4450
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 4452
    .local v0, "width":I
    if-nez v0, :cond_0

    .line 4453
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateUnselectedChipWidth(Lcom/android/ex/chips/RecipientEntry;)I

    move-result v0

    .line 4456
    :cond_0
    return v0
.end method

.method private getChipsByContactID(J)Ljava/util/List;
    .locals 8
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5399
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v5

    .line 5400
    .local v5, "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5401
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    move-object v0, v5

    .local v0, "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 5402
    .local v4, "recip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v4}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-nez v6, :cond_0

    .line 5403
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5401
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5406
    .end local v4    # "recip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_1
    return-object v3
.end method

.method private getExcessTopPadding()I
    .locals 2

    .prologue
    .line 784
    sget v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->sExcessTopPadding:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 785
    iget v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    iget v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLineSpacingExtra:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->sExcessTopPadding:I

    .line 787
    :cond_0
    sget v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->sExcessTopPadding:I

    return v0
.end method

.method private getLineOfChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    .locals 2
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 3504
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    goto :goto_0
.end method

.method private getMatchRecipientEntry(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 9
    .param p2, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/ex/chips/RecipientEntry;"
        }
    .end annotation

    .prologue
    .line 5343
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientEntry;>;"
    const/4 v1, 0x0

    .local v1, "itemCnt":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 5344
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    .line 5345
    .local v0, "entry":Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 5346
    .local v4, "mDisplayName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v3

    .line 5347
    .local v3, "mDestination":Ljava/lang/String;
    const-string v6, "RecipientEditTextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[notifyChipChanged] destination: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5348
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5349
    :cond_0
    const-string v6, "RecipientEditTextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[notifyChipChanged] match destination: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5366
    .end local v0    # "entry":Lcom/android/ex/chips/RecipientEntry;
    .end local v3    # "mDestination":Ljava/lang/String;
    .end local v4    # "mDisplayName":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 5343
    .restart local v0    # "entry":Lcom/android/ex/chips/RecipientEntry;
    .restart local v3    # "mDestination":Ljava/lang/String;
    .restart local v4    # "mDisplayName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5354
    .end local v0    # "entry":Lcom/android/ex/chips/RecipientEntry;
    .end local v3    # "mDestination":Ljava/lang/String;
    .end local v4    # "mDisplayName":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 5355
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    .line 5356
    .restart local v0    # "entry":Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v3

    .line 5357
    .restart local v3    # "mDestination":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getDestinationKind()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 5358
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5359
    .local v2, "mCurrentNumber":Ljava/lang/String;
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5360
    .local v5, "mQueryNumber":Ljava/lang/String;
    invoke-static {v2, v5}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5361
    const-string v6, "RecipientEditTextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[notifyChipChanged] match number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5354
    .end local v2    # "mCurrentNumber":Ljava/lang/String;
    .end local v5    # "mQueryNumber":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5366
    .end local v0    # "entry":Lcom/android/ex/chips/RecipientEntry;
    .end local v3    # "mDestination":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    goto :goto_1
.end method

.method private getMeasuredMoreSpanWidth(I)I
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 4474
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4475
    .local v1, "moreText":Ljava/lang/String;
    new-instance v0, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 4476
    .local v0, "morePaint":Landroid/text/TextPaint;
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 4477
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method private getOffsetFromBottom(I)I
    .locals 5
    .param p1, "line"    # I

    .prologue
    .line 4640
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    .line 4641
    const/4 v0, 0x0

    .line 4646
    .local v0, "bottom":I
    :goto_0
    return v0

    .line 4643
    .end local v0    # "bottom":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    add-int v1, v2, v3

    .line 4644
    .local v1, "offsetFromTop":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getScrollY()I

    move-result v3

    sub-int v3, v1, v3

    sub-int/2addr v2, v3

    neg-int v0, v2

    .restart local v0    # "bottom":I
    goto :goto_0
.end method

.method private static getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "height"    # I

    .prologue
    .line 1153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1154
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, p0, v2, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1155
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 1156
    .local v1, "textHeight":I
    sub-int v2, p2, v1

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    int-to-float v2, v2

    return v2
.end method

.method private handleContactAdd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/text/Editable;)V
    .locals 19
    .param p1, "newChip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "text"    # Landroid/text/Editable;

    .prologue
    .line 5682
    const-string v16, "RecipientEditTextView"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleContactAdd begin chip-->"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 5733
    :cond_0
    :goto_0
    return-void

    .line 5686
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 5687
    .local v8, "editable":Landroid/text/Editable;
    invoke-interface/range {p1 .. p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAndNormalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 5688
    .local v14, "newAddress":Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_0

    .line 5689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipsMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 5690
    .local v5, "chipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    if-eqz v5, :cond_3

    .line 5691
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 5692
    .local v4, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v4}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v11

    .line 5693
    .local v11, "isGeneratedChip":Z
    if-eqz v11, :cond_2

    instance-of v0, v4, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 5694
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/text/Editable;)V

    goto :goto_1

    .line 5699
    .end local v4    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "isGeneratedChip":Z
    :cond_3
    const/4 v9, 0x0

    .line 5700
    .local v9, "end":I
    const-string v13, ""

    .line 5701
    .local v13, "lastString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLastChip()Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v12

    .line 5702
    .local v12, "lastChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v12, :cond_4

    .line 5703
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v16

    add-int/lit8 v9, v16, 0x1

    .line 5705
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/text/Editable;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-nez v16, :cond_6

    .line 5706
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->length()I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 5708
    :cond_6
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->addressMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 5709
    invoke-direct/range {p0 .. p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->convertToVisibleChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object p1

    .line 5710
    invoke-interface/range {p1 .. p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v7

    .line 5711
    .local v7, "displayText":Ljava/lang/String;
    const/4 v6, 0x0

    .line 5713
    .local v6, "chipText":Landroid/text/SpannableString;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v15, v16, -0x1

    .line 5714
    .local v15, "textLength":I
    new-instance v6, Landroid/text/SpannableString;

    .end local v6    # "chipText":Landroid/text/SpannableString;
    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5715
    .restart local v6    # "chipText":Landroid/text/SpannableString;
    const/16 v16, 0x0

    const/16 v17, 0x21

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v6, v0, v1, v15, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5717
    invoke-virtual {v6}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 5718
    const-string v16, "RecipientEditTextView"

    const-string v17, "[handleContactAdd] replace"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5719
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    add-int v16, v16, v9

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v9, v1, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 5720
    sget v16, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v16, v16, 0x2

    if-eqz v16, :cond_7

    .line 5721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-interface/range {p1 .. p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5723
    .end local v6    # "chipText":Landroid/text/SpannableString;
    .end local v7    # "displayText":Ljava/lang/String;
    .end local v15    # "textLength":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 5724
    invoke-interface/range {p1 .. p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAndNormalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5725
    .local v3, "address":Ljava/lang/String;
    const-string v16, "RecipientEditTextView"

    const-string v17, "handleContactAdd replace spans begain"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5726
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_0

    .line 5727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpansMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "chipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    check-cast v5, Ljava/util/ArrayList;

    .line 5728
    .restart local v5    # "chipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    if-eqz v5, :cond_0

    .line 5729
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 5730
    .restart local v4    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipsInRemovedSpans(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    goto :goto_2

    .line 5732
    .end local v4    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_8
    const-string v16, "RecipientEditTextView"

    const-string v17, "handleContactAdd end "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleContactAdd(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5613
    .local p1, "chips":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipsMap:Ljava/util/HashMap;

    .line 5614
    const-string v9, "RecipientEditTextView"

    const-string v10, "construct chips map begain"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5615
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    .line 5616
    .local v3, "chipArray":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v3, :cond_3

    .line 5617
    move-object v1, v3

    .local v1, "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v2, v1, v6

    .line 5618
    .local v2, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 5619
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAndNormalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5620
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 5617
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5621
    :cond_1
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipsMap:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 5622
    .local v4, "chipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    if-nez v4, :cond_2

    .line 5623
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "chipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5625
    .restart local v4    # "chipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    :cond_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5626
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipsMap:Ljava/util/HashMap;

    invoke-virtual {v9, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5629
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v2    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v4    # "chipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_3
    const-string v9, "RecipientEditTextView"

    const-string v10, "contruct chip map end"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5631
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpansMap:Ljava/util/HashMap;

    .line 5632
    const-string v9, "RecipientEditTextView"

    const-string v10, "construct span map begain"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5633
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    .line 5634
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 5635
    .restart local v2    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 5636
    .restart local v0    # "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAndNormalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5637
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 5638
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpansMap:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 5639
    .restart local v4    # "chipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    if-nez v4, :cond_5

    .line 5640
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "chipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5642
    .restart local v4    # "chipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    :cond_5
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5643
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpansMap:Ljava/util/HashMap;

    invoke-virtual {v9, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 5646
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v4    # "chipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_6
    const-string v9, "RecipientEditTextView"

    const-string v10, "contruct span map end"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5647
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5648
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 5649
    .local v5, "editable":Landroid/text/Editable;
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5650
    .local v8, "text":Landroid/text/Editable;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 5651
    .restart local v2    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-direct {p0, v2, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handleContactAdd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/text/Editable;)V

    goto :goto_3

    .line 5653
    .end local v2    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_7
    new-instance v9, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    iput-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 5654
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5655
    invoke-virtual {p0, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 5656
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setSelection(I)V

    .line 5657
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tryToAdjustChips()V

    .line 5658
    return-void
.end method

.method private handleContactChange(Ljava/util/Set;)V
    .locals 24
    .param p1, "s"    # Ljava/util/Set;

    .prologue
    .line 5410
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 5411
    .local v15, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5412
    .local v9, "chips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5414
    .local v10, "deletedIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v8

    .line 5415
    .local v8, "chipArray":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5416
    .local v4, "addresses":Ljava/util/ArrayList;
    move-object v5, v8

    .local v5, "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v0, v5

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    aget-object v7, v5, v16

    .line 5417
    .local v7, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v7}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAndNormalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5416
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 5419
    .end local v7    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 5421
    .local v19, "removeSpans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 5422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5427
    :cond_1
    :goto_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_3

    .line 5428
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 5429
    .restart local v7    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v7}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAndNormalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5424
    .end local v7    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .local v16, "i$":I
    :catch_0
    move-exception v14

    .line 5425
    .local v14, "ex":Ljava/util/ConcurrentModificationException;
    invoke-virtual {v14}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_1

    .line 5459
    .end local v14    # "ex":Ljava/util/ConcurrentModificationException;
    .end local v16    # "i$":I
    .local v11, "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    :cond_2
    iget-wide v0, v11, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->CID:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5433
    .end local v11    # "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    :cond_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 5434
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;

    .line 5435
    .restart local v11    # "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    iget v0, v11, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->eventType:I

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 5436
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v20

    iget-wide v0, v11, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->CID:J

    move-wide/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v23

    invoke-static/range {v20 .. v23}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getRecipientEntryByContactID(Landroid/content/Context;JZ)Ljava/util/List;

    move-result-object v12

    .line 5437
    .local v12, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/ex/chips/RecipientEntry;

    .line 5439
    .local v13, "entry":Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v13}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v18

    .line 5440
    .local v18, "photoThumbnailUri":Landroid/net/Uri;
    if-eqz v18, :cond_4

    .line 5441
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v20

    check-cast v20, Lcom/android/ex/chips/BaseRecipientAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->updatePhotoCacheByUri(Landroid/net/Uri;)V

    .line 5444
    :cond_4
    invoke-virtual {v13}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAndNormalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5445
    .local v3, "address":Ljava/lang/String;
    const/4 v6, 0x0

    .line 5446
    .local v6, "c":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 5448
    const/16 v20, 0x0

    const/16 v21, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v13, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 5456
    :goto_4
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5449
    :catch_1
    move-exception v14

    .line 5450
    .local v14, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v14}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 5451
    new-instance v6, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;

    .end local v6    # "c":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-direct {v6, v13}, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;-><init>(Lcom/android/ex/chips/RecipientEntry;)V

    .line 5452
    .restart local v6    # "c":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    goto :goto_4

    .line 5454
    .end local v14    # "ex":Ljava/lang/NullPointerException;
    :cond_5
    new-instance v6, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;

    .end local v6    # "c":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-direct {v6, v13}, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;-><init>(Lcom/android/ex/chips/RecipientEntry;)V

    .restart local v6    # "c":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    goto :goto_4

    .line 5462
    .end local v3    # "address":Ljava/lang/String;
    .end local v6    # "c":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v11    # "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    .end local v12    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    .end local v13    # "entry":Lcom/android/ex/chips/RecipientEntry;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "photoThumbnailUri":Landroid/net/Uri;
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 5476
    :goto_5
    return-void

    .line 5463
    :cond_7
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 5464
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;

    .line 5465
    .restart local v11    # "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    iget v0, v11, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->eventType:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    goto :goto_5

    .line 5467
    :pswitch_0
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->postHandleContactDelete(Ljava/util/List;)V

    goto :goto_5

    .line 5470
    :pswitch_1
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->postHandleContactAdd(Ljava/util/List;)V

    goto :goto_5

    .line 5473
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->postHandleContactUpdate(Ljava/util/List;)V

    goto :goto_5

    .line 5465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleContactDeleteAsync(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5570
    .local p1, "IDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    .line 5571
    .local v0, "task":Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;
    invoke-virtual {v0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->setDeleteIDs(Ljava/util/List;)V

    .line 5572
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView$DeleteContactTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5573
    return-void
.end method

.method private handleContactDeleteSync(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "IDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v10, 0x1

    .line 5575
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5576
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5577
    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 5578
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 5579
    .local v6, "l":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 5580
    .local v4, "id":J
    invoke-direct {p0, v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipsByContactID(J)Ljava/util/List;

    move-result-object v7

    .line 5581
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 5582
    .local v0, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/android/ex/chips/RecipientEntry;->constructFakePhoneEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    .line 5583
    .local v1, "fakeEntry":Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    goto :goto_0

    .line 5585
    .end local v0    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v1    # "fakeEntry":Lcom/android/ex/chips/RecipientEntry;
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setSelection(I)V

    .line 5586
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-nez v8, :cond_2

    .line 5598
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "id":J
    .end local v6    # "l":Ljava/lang/Long;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    :goto_1
    return-void

    .line 5587
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "id":J
    .restart local v6    # "l":Ljava/lang/Long;
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    :cond_2
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 5588
    .restart local v0    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-nez v8, :cond_3

    .line 5589
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/android/ex/chips/RecipientEntry;->constructFakePhoneEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    .line 5590
    .restart local v1    # "fakeEntry":Lcom/android/ex/chips/RecipientEntry;
    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipsInRemovedSpans(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    goto :goto_2

    .line 5596
    .end local v0    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v1    # "fakeEntry":Lcom/android/ex/chips/RecipientEntry;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "id":J
    .end local v6    # "l":Ljava/lang/Long;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    :cond_4
    new-instance v8, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    iput-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 5597
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1
.end method

.method private handleEdit(II)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v8, -0x1

    .line 1977
    const-string v5, "RecipientEditTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleEdit] start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", end: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    if-eq p1, v8, :cond_0

    if-ne p2, v8, :cond_1

    .line 1980
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->dismissDropDown()V

    .line 2007
    :goto_0
    return-void

    .line 1985
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1986
    .local v1, "editable":Landroid/text/Editable;
    invoke-virtual {p0, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setSelection(I)V

    .line 1987
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1988
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1989
    invoke-direct {p0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    .line 1990
    .local v2, "entry":Lcom/android/ex/chips/RecipientEntry;
    const-string v5, ""

    invoke-static {v1, p1, p2, v5}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1991
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1992
    .local v0, "chipText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v3

    .line 1994
    .local v3, "selEnd":I
    add-int/lit8 v5, p2, 0x1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, p2, 0x2

    invoke-virtual {v5, p2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, ", "

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1995
    add-int/lit8 p2, p2, 0x2

    .line 1997
    :cond_2
    if-eqz v0, :cond_3

    if-le p1, v8, :cond_3

    if-le v3, v8, :cond_3

    .line 1998
    const-string v5, "MTKRecip"

    const-string v6, "[handleEdit] replace"

    invoke-direct {p0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    invoke-interface {v1, p1, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2002
    :cond_3
    sget v5, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    .line 2003
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2006
    .end local v0    # "chipText":Ljava/lang/CharSequence;
    .end local v2    # "entry":Lcom/android/ex/chips/RecipientEntry;
    .end local v3    # "selEnd":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->dismissDropDown()V

    goto :goto_0
.end method

.method private handlePasteAndReplace()V
    .locals 4

    .prologue
    .line 3627
    const-string v1, "RecipientEditTextView"

    const-string v2, "[handlePasteAndReplace]"

    invoke-direct {p0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3628
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handlePaste()Ljava/util/ArrayList;

    move-result-object v0

    .line 3629
    .local v0, "created":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3632
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    .line 3633
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3635
    :cond_0
    return-void
.end method

.method private handlePasteClip(Landroid/content/ClipData;)V
    .locals 14
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    const/16 v13, 0x20

    .line 3512
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->hasFocus()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    if-eqz v10, :cond_1

    .line 3513
    :cond_0
    const-string v10, "RecipientEditTextView"

    const-string v11, "[handlePasteClip] in shrink state, return"

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3580
    :goto_0
    return-void

    .line 3516
    :cond_1
    const-string v10, "RecipientEditTextView"

    const-string v11, "[handlePasteClip] start"

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3517
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3520
    const/4 v3, 0x0

    .line 3521
    .local v3, "index":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLastChip()Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v4

    .line 3522
    .local v4, "lastChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v4, :cond_2

    .line 3523
    invoke-direct {p0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v10

    add-int/lit8 v3, v10, 0x1

    .line 3525
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v6

    .line 3526
    .local v6, "selEnd":I
    if-le v6, v3, :cond_3

    if-nez v6, :cond_5

    .line 3544
    :cond_3
    :goto_1
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v10

    const-string v11, "text/plain"

    invoke-virtual {v10, v11}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 3545
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v10

    if-ge v2, v10, :cond_a

    .line 3546
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 3547
    .local v5, "paste":Ljava/lang/CharSequence;
    if-eqz v5, :cond_9

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 3548
    const-string v10, "RecipientEditTextView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[handlePasteClip] paste text: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3549
    invoke-direct {p0, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->filterInvalidCharacter(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3550
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionStart()I

    move-result v7

    .line 3551
    .local v7, "start":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 3552
    .local v1, "end":I
    const-string v10, "RecipientEditTextView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[handlePasteClip] filtered text: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", start: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", end: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 3556
    .local v0, "editable":Landroid/text/Editable;
    if-ne v7, v1, :cond_4

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v1, v10, :cond_4

    invoke-interface {v0, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    if-ne v10, v13, :cond_4

    .line 3557
    add-int/lit8 v7, v7, 0x1

    .line 3558
    add-int/lit8 v1, v1, 0x1

    .line 3561
    :cond_4
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 3562
    if-ltz v7, :cond_8

    if-ltz v1, :cond_8

    if-eq v7, v1, :cond_8

    .line 3564
    const-string v10, "MTKRecip"

    const-string v11, "[handlePasteClip] replace"

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3565
    invoke-interface {v0, v7, v1, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 3566
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setSelection(I)V

    .line 3571
    :goto_3
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handlePasteAndReplace()V

    .line 3545
    .end local v0    # "editable":Landroid/text/Editable;
    .end local v1    # "end":I
    .end local v7    # "start":I
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 3530
    .end local v2    # "i":I
    .end local v5    # "paste":Ljava/lang/CharSequence;
    :cond_5
    move v9, v6

    .line 3531
    .local v9, "x":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3532
    .local v8, "text":Ljava/lang/String;
    :goto_5
    if-le v9, v3, :cond_6

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v13, :cond_6

    .line 3533
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 3535
    :cond_6
    add-int/lit8 v10, v9, -0x1

    if-le v10, v3, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_7

    add-int/lit8 v10, v6, -0x1

    if-gt v9, v10, :cond_7

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v13, :cond_7

    .line 3537
    add-int/lit8 v9, v9, 0x1

    .line 3539
    :cond_7
    const-string v10, "MTKRecip"

    const-string v11, "[handlePasteClip] delete"

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3540
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10, v9, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto/16 :goto_1

    .line 3569
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "x":I
    .restart local v0    # "editable":Landroid/text/Editable;
    .restart local v1    # "end":I
    .restart local v2    # "i":I
    .restart local v5    # "paste":Ljava/lang/CharSequence;
    .restart local v7    # "start":I
    :cond_8
    invoke-interface {v0, v1, v5}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_3

    .line 3573
    .end local v0    # "editable":Landroid/text/Editable;
    .end local v1    # "end":I
    .end local v7    # "start":I
    :cond_9
    const-string v10, "RecipientEditTextView"

    const-string v11, "[handlePasteClip] pasted text is empty, ignore"

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3578
    .end local v2    # "i":I
    .end local v5    # "paste":Ljava/lang/CharSequence;
    :cond_a
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3579
    const-string v10, "RecipientEditTextView"

    const-string v11, "[handlePasteClip] end"

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleReplaceDuplicateChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V
    .locals 4
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "newEntry"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    .line 5172
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 5173
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    .line 5174
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DuplicateContactReplacement] Replace contact from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5180
    :goto_0
    return-void

    .line 5176
    :cond_1
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceChips:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5177
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5178
    const-string v0, "RecipientEditTextView"

    const-string v1, "[DuplicateContactReplacement] Replace contact later."

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isEndChip()Z
    .locals 6

    .prologue
    .line 4653
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 4654
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 4655
    .local v1, "end":I
    add-int/lit8 v2, v1, -0x1

    .line 4658
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3b

    if-eq v0, v4, :cond_0

    .line 4659
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4662
    .end local v0    # "c":C
    :cond_0
    sub-int v4, v1, v2

    const/4 v5, 0x2

    if-gt v4, v5, :cond_1

    if-eqz v2, :cond_1

    .line 4663
    const/4 v4, 0x1

    .line 4665
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isInDelete(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;IFF)Z
    .locals 1
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "offset"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 3104
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1585
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1586
    const/4 v1, 0x0

    .line 1591
    :goto_0
    return v1

    .line 1590
    :cond_0
    sget-object v1, Landroid/util/Patterns;->PHONE_PATTERN_MTK:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1591
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v0, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private notifyChipChanged()V
    .locals 20

    .prologue
    .line 5266
    const-string v17, "RecipientEditTextView"

    const-string v18, "[notifyChipChanged] begin"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipChangedListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipChangedListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_1

    .line 5340
    :cond_0
    :goto_0
    return-void

    .line 5271
    :cond_1
    const-wide/16 v17, 0x8

    const-string v19, "notifyChipChanged"

    invoke-static/range {v17 .. v19}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5272
    const-wide/16 v17, 0x8

    const-string v19, "notify-prepare"

    invoke-static/range {v17 .. v19}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5276
    .local v2, "allChips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientEntry;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v14

    .line 5277
    .local v14, "recipientChips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v14, :cond_2

    array-length v0, v14

    move/from16 v17, v0

    if-lez v17, :cond_2

    .line 5278
    const/4 v9, 0x0

    .local v9, "itemCnt":I
    :goto_1
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 5279
    aget-object v5, v14, v9

    .line 5280
    .local v5, "currChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v5}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5278
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 5285
    .end local v5    # "currChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v9    # "itemCnt":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5286
    .local v3, "bindString":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_3

    .line 5287
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[notifyChipChanged] mRemovedSpans.size()="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5288
    const/4 v9, 0x0

    .restart local v9    # "itemCnt":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_3

    .line 5289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface/range {v17 .. v17}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5288
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 5292
    .end local v9    # "itemCnt":I
    :cond_3
    const-string v17, "RecipientEditTextView"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5293
    const/4 v8, 0x0

    .line 5294
    .local v8, "end":I
    const-string v11, ""

    .line 5295
    .local v11, "lastString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLastChip()Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v10

    .line 5296
    .local v10, "lastChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v10, :cond_4

    .line 5297
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v17

    add-int/lit8 v8, v17, 0x1

    .line 5299
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_6

    .line 5300
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/text/Editable;->length()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 5301
    const-string v17, "RecipientEditTextView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[notifyChipChanged] last string: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5305
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_9

    .line 5306
    const-string v17, "RecipientEditTextView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[notifyChipChanged] mPendingChips.size()="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5307
    const/4 v9, 0x0

    .restart local v9    # "itemCnt":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_8

    .line 5308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5309
    .local v7, "destination":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v16

    .line 5310
    .local v16, "tokens":[Landroid/text/util/Rfc822Token;
    if-eqz v16, :cond_7

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_7

    .line 5311
    const/16 v17, 0x0

    aget-object v17, v16, v17

    invoke-virtual/range {v17 .. v17}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v13

    .line 5312
    .local v13, "name":Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v16, v17

    invoke-virtual/range {v17 .. v17}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 5313
    .local v6, "dest":Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v13, v6, v0}, Lcom/android/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v15

    .line 5314
    .local v15, "tempEntry":Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5307
    .end local v6    # "dest":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "tempEntry":Lcom/android/ex/chips/RecipientEntry;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 5317
    .end local v7    # "destination":Ljava/lang/String;
    .end local v16    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_8
    const-string v11, ""

    .line 5320
    .end local v9    # "itemCnt":I
    :cond_9
    const-string v17, "RecipientEditTextView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[notifyChipChanged] allChips.size(): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5322
    .local v4, "bindString1":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .restart local v9    # "itemCnt":I
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_a

    .line 5323
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[notifyChipChanged] allChips.get("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "): "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5322
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 5326
    :cond_a
    const/4 v9, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_b

    .line 5327
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[notifyChipChanged]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5326
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 5329
    :cond_b
    const-string v17, "RecipientEditTextView"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5330
    const-wide/16 v17, 0x8

    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 5332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipChangedListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 5333
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipChangedListeners:Ljava/util/ArrayList;

    .line 5334
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/MTKRecipientEditTextView$ChipWatcher;>;"
    const/4 v9, 0x0

    :goto_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_c

    .line 5335
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/ex/chips/MTKRecipientEditTextView$ChipWatcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v2, v1, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView$ChipWatcher;->onChipChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 5334
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 5338
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/MTKRecipientEditTextView$ChipWatcher;>;"
    :cond_c
    const-string v17, "RecipientEditTextView"

    const-string v18, "[notifyChipChanged] end"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5339
    const-wide/16 v17, 0x8

    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0
.end method

.method private postHandleContactAdd(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5601
    .local p1, "chips":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$17;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$17;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5609
    return-void
.end method

.method private postHandleContactDelete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5479
    .local p1, "IDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$16;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$16;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5487
    return-void
.end method

.method private postHandleContactUpdate(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5736
    .local p1, "chips":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5737
    .local v1, "deletedIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 5738
    .local v0, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5740
    .end local v0    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_0
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/ex/chips/MTKRecipientEditTextView$18;

    invoke-direct {v4, p0, v1, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$18;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/util/ArrayList;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5750
    return-void
.end method

.method private postHandlePendingChips()V
    .locals 3

    .prologue
    .line 1324
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[postHandlePendingChips] count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1326
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1327
    return-void
.end method

.method private printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "logContent"    # Ljava/lang/String;

    .prologue
    .line 5191
    sget-boolean v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 5192
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5194
    :cond_0
    return-void
.end method

.method private printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "logContent"    # Ljava/lang/String;

    .prologue
    .line 5184
    sget-boolean v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->DEBUG_THREADING_LOG:Z

    if-eqz v0, :cond_0

    .line 5185
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5187
    :cond_0
    return-void
.end method

.method private putOffsetInRange(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2394
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 2395
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 2400
    .local v0, "offset":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->putOffsetInRange(I)I

    move-result v1

    return v1

    .line 2397
    .end local v0    # "offset":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->supportGetOffsetForPosition(FF)I

    move-result v0

    .restart local v0    # "offset":I
    goto :goto_0
.end method

.method private putOffsetInRange(I)I
    .locals 9
    .param p1, "o"    # I

    .prologue
    .line 2407
    move v3, p1

    .line 2408
    .local v3, "offset":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 2409
    .local v6, "text":Landroid/text/Editable;
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v2

    .line 2411
    .local v2, "length":I
    move v5, v2

    .line 2412
    .local v5, "realLength":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2413
    invoke-interface {v6, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_0

    .line 2414
    add-int/lit8 v5, v5, -0x1

    .line 2412
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2422
    :cond_0
    if-lt v3, v5, :cond_1

    move v4, v3

    .line 2430
    .end local v3    # "offset":I
    .local v4, "offset":I
    :goto_1
    return v4

    .line 2425
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2426
    .local v0, "editable":Landroid/text/Editable;
    :goto_2
    if-ltz v3, :cond_2

    invoke-static {v0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->findText(Landroid/text/Editable;I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    invoke-direct {p0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v7

    if-nez v7, :cond_2

    .line 2428
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    move v4, v3

    .line 2430
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_1
.end method

.method private recoverLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 5107
    const-string v0, "RecipientEditTextView"

    const-string v2, "[recoverLayout]"

    invoke-direct {p0, v0, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5108
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mIsAutoTesting:Z

    if-eqz v0, :cond_0

    .line 5118
    :goto_0
    return-void

    .line 5112
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setSelection(I)V

    .line 5113
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    move v1, v6

    .line 5114
    .local v1, "hintWant":I
    :goto_1
    new-instance v3, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v3}, Landroid/text/BoringLayout$Metrics;-><init>()V

    new-instance v4, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v4}, Landroid/text/BoringLayout$Metrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int v5, v0, v2

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 5116
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->requestLayout()V

    .line 5117
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->invalidate()V

    goto :goto_0

    .line 5113
    .end local v1    # "hintWant":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    goto :goto_1
.end method

.method private registerGlobalLayoutListener()V
    .locals 2

    .prologue
    .line 4768
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4769
    .local v0, "viewTreeObs":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v1, :cond_0

    .line 4770
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$13;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$13;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 4807
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4809
    :cond_0
    return-void
.end method

.method private registerVSync()V
    .locals 4

    .prologue
    .line 5244
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->isRegisterVSync:Z

    if-nez v0, :cond_0

    .line 5245
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->notifyChipChangedRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 5247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->isRegisterVSync:Z

    .line 5249
    :cond_0
    return-void
.end method

.method private replaceChipOnSameTextRange(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;I)V
    .locals 9
    .param p1, "currentChip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "newChipWidth"    # I

    .prologue
    const/4 v6, 0x0

    .line 4488
    const-string v5, "RecipientEditTextView"

    const-string v7, "[replaceChipOnSameTextRange]"

    invoke-direct {p0, v5, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4489
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v3

    .line 4490
    .local v3, "start":I
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v1

    .line 4491
    .local v1, "end":I
    iput p2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLimitedWidthForSpan:I

    .line 4492
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    .line 4493
    .local v2, "entry":Lcom/android/ex/chips/RecipientEntry;
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    invoke-direct {p0, v7, v6, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 4496
    .local v0, "ellipsizeRecipient":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLimitedWidthForSpan:I

    .line 4497
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mEllipsizedChipLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4498
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4499
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 4500
    .local v4, "text":Landroid/text/Editable;
    const-string v5, ""

    invoke-static {v4, v3, v1, v5}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 4501
    const-string v5, "MTKRecip"

    const-string v7, "[replaceChipOnSameTextRange] setSpan"

    invoke-direct {p0, v5, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4502
    const/16 v5, 0x21

    invoke-interface {v4, v0, v3, v1, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 4503
    monitor-exit v6

    .line 4504
    return-void

    .end local v0    # "ellipsizeRecipient":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v4    # "text":Landroid/text/Editable;
    :cond_1
    move v5, v6

    .line 4493
    goto :goto_0

    .line 4503
    .restart local v0    # "ellipsizeRecipient":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private replaceChipsInRemovedSpans(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V
    .locals 5
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "newEntry"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    .line 5769
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 5782
    :cond_0
    :goto_0
    return-void

    .line 5772
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p2, v3, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 5777
    .local v2, "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 5778
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 5779
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5780
    sget v3, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 5781
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5773
    .end local v1    # "index":I
    .end local v2    # "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :catch_0
    move-exception v0

    .line 5774
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private replaceChipsInRemovedSpans(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 4
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "newChip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 5753
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 5766
    :cond_0
    :goto_0
    return-void

    .line 5755
    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->convertToVisibleChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 5760
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 5761
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 5762
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 5763
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5764
    sget v2, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 5765
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    invoke-interface {p2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5756
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .line 5757
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private rotateToLandscape()V
    .locals 30

    .prologue
    .line 4922
    const-string v27, "RecipientEditTextView"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[rotateToLandscape] current view width="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", height="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getHeight()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", line count="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLineCount()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4923
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v24

    .line 4924
    .local v24, "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v23, v0

    .line 4926
    .local v23, "numRecipients":I
    if-eqz v24, :cond_0

    if-nez v23, :cond_1

    .line 5040
    :cond_0
    :goto_0
    return-void

    .line 4931
    :cond_1
    const/16 v27, 0x0

    aget-object v27, v24, v27

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipOnSameTextRange(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;I)V

    .line 4932
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    .line 4933
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v24

    .line 4935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    .line 4939
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateAvailableWidth()F

    move-result v27

    move/from16 v0, v27

    float-to-int v14, v0

    .line 4940
    .local v14, "innerWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getMeasuredMoreSpanWidth(I)I

    move-result v21

    .line 4941
    .local v21, "moreSpanWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipInterval()I

    move-result v7

    .line 4942
    .local v7, "chipInterval":I
    move v4, v14

    .line 4943
    .local v4, "availableSpace":I
    move/from16 v17, v4

    .line 4945
    .local v17, "leftSpace":I
    const/16 v27, 0x1

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 4946
    add-int v27, v21, v7

    sub-int v4, v4, v27

    .line 4947
    const/16 v27, 0x0

    aget-object v27, v24, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v27

    sub-int v27, v4, v27

    if-gez v27, :cond_2

    .line 4948
    const/16 v27, 0x0

    aget-object v27, v24, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipOnSameTextRange(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;I)V

    .line 4949
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    goto :goto_0

    .line 4954
    :cond_2
    const/4 v10, 0x0

    .line 4956
    .local v10, "currIndex":I
    const/4 v10, 0x0

    :goto_1
    move/from16 v0, v23

    if-ge v10, v0, :cond_3

    .line 4957
    aget-object v27, v24, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v27

    add-int v27, v27, v7

    sub-int v17, v17, v27

    .line 4958
    if-gtz v17, :cond_5

    .line 4964
    :cond_3
    const/4 v13, 0x0

    .line 4965
    .local v13, "i":I
    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v13, v0, :cond_4

    .line 4966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v27

    add-int v27, v27, v7

    sub-int v17, v17, v27

    .line 4967
    if-gtz v17, :cond_6

    .line 4972
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ne v13, v0, :cond_8

    .line 4973
    if-ltz v17, :cond_7

    .line 4975
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->expand()V

    goto/16 :goto_0

    .line 4956
    .end local v13    # "i":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 4965
    .restart local v13    # "i":I
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 4978
    :cond_7
    add-int/lit8 v13, v13, -0x1

    .line 4983
    :cond_8
    sub-int v17, v17, v21

    .line 4984
    const/16 v16, 0x0

    .line 4985
    .local v16, "j":I
    move/from16 v16, v13

    :goto_3
    if-ltz v16, :cond_9

    .line 4986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v27

    add-int v27, v27, v7

    add-int v17, v17, v27

    .line 4987
    if-ltz v17, :cond_b

    .line 4993
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v25

    .line 4994
    .local v25, "spannable":Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    .line 4995
    .local v11, "editable":Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    .line 4996
    .local v20, "moreSpanStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v19

    .line 4997
    .local v19, "moreSpanEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4998
    add-int/lit8 v27, v23, -0x1

    aget-object v27, v24, v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 4999
    .local v12, "end":I
    const/4 v8, 0x0

    .line 5000
    .local v8, "chipStart":I
    move v6, v12

    .line 5002
    .local v6, "chipEnd":I
    const/4 v5, 0x0

    .line 5003
    .local v5, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 5004
    .local v22, "newChips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    const/4 v15, 0x0

    .local v15, "iteration":I
    :goto_4
    move/from16 v0, v16

    if-ge v15, v0, :cond_c

    .line 5005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    check-cast v5, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 5007
    .restart local v5    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v5}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 5012
    .local v26, "token":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 5013
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v27

    add-int v6, v8, v27

    .line 5015
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v8, v0, :cond_a

    .line 5016
    const-string v27, "MTKRecip"

    const-string v28, "[rotateToLandscape] setSpan"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5018
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->convertToVisibleChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v5

    .line 5020
    const/16 v27, 0x21

    move/from16 v0, v27

    invoke-interface {v11, v5, v8, v6, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 5022
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5024
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5004
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 4985
    .end local v5    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v6    # "chipEnd":I
    .end local v8    # "chipStart":I
    .end local v11    # "editable":Landroid/text/Editable;
    .end local v12    # "end":I
    .end local v15    # "iteration":I
    .end local v19    # "moreSpanEnd":I
    .end local v20    # "moreSpanStart":I
    .end local v22    # "newChips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    .end local v25    # "spannable":Landroid/text/Spannable;
    .end local v26    # "token":Ljava/lang/String;
    :cond_b
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_3

    .line 5027
    .restart local v5    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v6    # "chipEnd":I
    .restart local v8    # "chipStart":I
    .restart local v11    # "editable":Landroid/text/Editable;
    .restart local v12    # "end":I
    .restart local v15    # "iteration":I
    .restart local v19    # "moreSpanEnd":I
    .restart local v20    # "moreSpanStart":I
    .restart local v22    # "newChips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    .restart local v25    # "spannable":Landroid/text/Spannable;
    :cond_c
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_d

    .line 5028
    const-string v27, "RecipientEditTextView"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[rotateToLandscape] execute IndividualReplacementTask, count: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5029
    new-instance v27, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    .line 5030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v22, v28, v29

    invoke-virtual/range {v27 .. v28}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5034
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreSpan(I)Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;

    move-result-object v18

    .line 5035
    .local v18, "moreSpan":Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;
    new-instance v9, Landroid/text/SpannableString;

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v27

    add-int/lit8 v28, v6, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v9, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5036
    .local v9, "chipText":Landroid/text/SpannableString;
    const/16 v27, 0x0

    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v28

    const/16 v29, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5037
    const-string v27, "MTKRecip"

    const-string v28, "[rotateToLandscape] replace"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5038
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v27

    add-int/lit8 v28, v6, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 5039
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    goto/16 :goto_0
.end method

.method private rotateToPortrait()V
    .locals 25

    .prologue
    .line 4826
    const-string v22, "RecipientEditTextView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[rotateToPortrait] current view width="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", height="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getHeight()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", line count="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLineCount()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4827
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v17

    .line 4828
    .local v17, "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    move-object/from16 v0, v17

    array-length v15, v0

    .line 4830
    .local v15, "numRecipients":I
    if-eqz v17, :cond_0

    if-nez v15, :cond_1

    .line 4904
    :cond_0
    :goto_0
    return-void

    .line 4834
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    .line 4835
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreChip()V

    goto :goto_0

    .line 4839
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateAvailableWidth()F

    move-result v22

    move/from16 v0, v22

    float-to-int v8, v0

    .line 4840
    .local v8, "innerWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getMeasuredMoreSpanWidth(I)I

    move-result v14

    .line 4841
    .local v14, "moreSpanWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipInterval()I

    move-result v4

    .line 4843
    .local v4, "chipInterval":I
    sub-int v3, v8, v14

    .line 4844
    .local v3, "availableSpace":I
    move v11, v3

    .line 4846
    .local v11, "leftSpace":I
    const/4 v6, 0x0

    .line 4848
    .local v6, "currIndex":I
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v15, :cond_3

    .line 4849
    aget-object v22, v17, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v22

    add-int v22, v22, v4

    sub-int v11, v11, v22

    .line 4850
    if-gtz v11, :cond_5

    .line 4855
    :cond_3
    if-ne v6, v15, :cond_4

    .line 4856
    if-gez v11, :cond_0

    .line 4860
    add-int/lit8 v6, v6, -0x1

    .line 4864
    :cond_4
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_6

    .line 4865
    if-nez v6, :cond_0

    if-gez v11, :cond_0

    .line 4867
    const/16 v22, 0x0

    aget-object v22, v17, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipOnSameTextRange(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;I)V

    .line 4868
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    goto :goto_0

    .line 4848
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4872
    :cond_6
    if-nez v6, :cond_7

    .line 4873
    add-int/lit8 v6, v6, 0x1

    .line 4874
    if-gez v11, :cond_7

    .line 4876
    const/16 v22, 0x0

    aget-object v22, v17, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipOnSameTextRange(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;I)V

    .line 4877
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    .line 4882
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v20

    .line 4883
    .local v20, "spannable":Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v21

    .line 4884
    .local v21, "text":Landroid/text/Editable;
    aget-object v22, v17, v6

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v16

    .line 4885
    .local v16, "recipientSpanStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 4886
    .local v13, "moreSpanEnd":I
    const/4 v9, 0x0

    .line 4887
    .local v9, "j":I
    move v7, v6

    .local v7, "i":I
    move v10, v9

    .end local v9    # "j":I
    .local v10, "j":I
    :goto_2
    if-ge v7, v15, :cond_a

    .line 4888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-object v23, v17, v7

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    aget-object v23, v17, v7

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 4890
    :cond_8
    aget-object v22, v17, v7

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v19

    .line 4891
    .local v19, "spanStart":I
    aget-object v22, v17, v7

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v18

    .line 4892
    .local v18, "spanEnd":I
    aget-object v22, v17, v7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 4894
    .end local v18    # "spanEnd":I
    .end local v19    # "spanStart":I
    :cond_9
    aget-object v22, v17, v7

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4887
    add-int/lit8 v7, v7, 0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto :goto_2

    .line 4896
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreSpan(I)Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;

    move-result-object v12

    .line 4898
    .local v12, "moreSpan":Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;
    new-instance v5, Landroid/text/SpannableString;

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1, v13}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4899
    .local v5, "chipText":Landroid/text/SpannableString;
    const/16 v22, 0x0

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v23

    const/16 v24, 0x21

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v5, v12, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 4900
    const-string v22, "MTKRecip"

    const-string v23, "[rotateToPortrait] replace"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4901
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1, v13, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 4902
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    goto/16 :goto_0
.end method

.method private scrollBottomIntoView()V
    .locals 7

    .prologue
    .line 767
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShouldShrink:Z

    if-eqz v4, :cond_0

    .line 768
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 769
    .local v3, "location":[I
    invoke-virtual {p0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLocationOnScreen([I)V

    .line 770
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getHeight()I

    move-result v2

    .line 771
    .local v2, "height":I
    const/4 v4, 0x1

    aget v4, v3, v4

    add-int v0, v4, v2

    .line 776
    .local v0, "currentPos":I
    iget v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mActionBarHeight:I

    add-int/2addr v4, v5

    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getExcessTopPadding()I

    move-result v5

    add-int v1, v4, v5

    .line 777
    .local v1, "desiredPos":I
    if-le v0, v1, :cond_0

    .line 778
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v5, 0x0

    sub-int v6, v0, v1

    invoke-virtual {v4, v5, v6}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 781
    .end local v0    # "currentPos":I
    .end local v1    # "desiredPos":I
    .end local v2    # "height":I
    .end local v3    # "location":[I
    :cond_0
    return-void
.end method

.method private scrollLineIntoView(I)V
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 2288
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 2289
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateOffsetFromBottom(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2291
    :cond_0
    return-void
.end method

.method private selectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 14
    .param p1, "currentChip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 2927
    const-string v11, "RecipientEditTextView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[selectChip] "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez p1, :cond_0

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v11, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2928
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 2929
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2930
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v8

    .line 2931
    .local v8, "text":Ljava/lang/CharSequence;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v6, "spannable":Landroid/text/Spannable;
    move-object v1, v6

    .line 2932
    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 2933
    .local v1, "editable":Landroid/text/Editable;
    invoke-interface {v6, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 2934
    .local v5, "spanStart":I
    invoke-interface {v6, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 2936
    .local v4, "spanEnd":I
    move v9, v4

    .line 2937
    .local v9, "toDelete":I
    :goto_1
    if-ltz v9, :cond_1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    invoke-interface {v1, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_1

    .line 2938
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2927
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v4    # "spanEnd":I
    .end local v5    # "spanStart":I
    .end local v6    # "spannable":Landroid/text/Spannable;
    .end local v8    # "text":Ljava/lang/CharSequence;
    .end local v9    # "toDelete":I
    :cond_0
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v10

    goto :goto_0

    .line 2941
    .restart local v1    # "editable":Landroid/text/Editable;
    .restart local v4    # "spanEnd":I
    .restart local v5    # "spanStart":I
    .restart local v6    # "spannable":Landroid/text/Spannable;
    .restart local v8    # "text":Ljava/lang/CharSequence;
    .restart local v9    # "toDelete":I
    :cond_1
    invoke-interface {v6, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2942
    invoke-interface {v1, v5, v9}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2943
    invoke-interface {v1, v8}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 2944
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 2945
    invoke-virtual {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2946
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setCursorVisible(Z)V

    .line 2947
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setSelection(I)V

    .line 2948
    const/4 v3, 0x0

    .line 3004
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v4    # "spanEnd":I
    .end local v5    # "spanStart":I
    .end local v6    # "spannable":Landroid/text/Spannable;
    .end local v8    # "text":Ljava/lang/CharSequence;
    .end local v9    # "toDelete":I
    :goto_2
    return-object v3

    .line 2949
    :cond_2
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v10

    const-wide/16 v12, -0x2

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->isGalContact()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_8

    .line 2951
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v7

    .line 2952
    .local v7, "start":I
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v2

    .line 2953
    .local v2, "end":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    invoke-interface {v10, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2956
    :try_start_0
    iget-boolean v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-eqz v10, :cond_4

    .line 2957
    const/4 v3, 0x0

    goto :goto_2

    .line 2959
    :cond_4
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v10, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2964
    .local v3, "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2965
    .restart local v1    # "editable":Landroid/text/Editable;
    const-string v10, ""

    invoke-static {v1, v7, v2, v10}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2966
    const/4 v10, -0x1

    if-eq v7, v10, :cond_5

    const/4 v10, -0x1

    if-ne v2, v10, :cond_7

    .line 2967
    :cond_5
    const-string v10, "RecipientEditTextView"

    const-string v11, "The chip being selected no longer exists but should."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    :goto_3
    const/4 v10, 0x1

    invoke-interface {v3, v10}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setSelected(Z)V

    .line 2973
    invoke-direct {p0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2974
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-direct {p0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->scrollLineIntoView(I)V

    .line 2976
    :cond_6
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v11

    invoke-direct {p0, v3, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->showAddress(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;I)V

    .line 2977
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setCursorVisible(Z)V

    goto :goto_2

    .line 2960
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v3    # "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :catch_0
    move-exception v0

    .line 2961
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v10, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2962
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 2969
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "editable":Landroid/text/Editable;
    .restart local v3    # "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_7
    const-string v10, "MTKRecip"

    const-string v11, "[selectChip] setSpan"

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2970
    const/16 v10, 0x21

    invoke-interface {v1, v3, v7, v2, v10}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 2980
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v2    # "end":I
    .end local v3    # "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v7    # "start":I
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v7

    .line 2981
    .restart local v7    # "start":I
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v2

    .line 2982
    .restart local v2    # "end":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    invoke-interface {v10, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2985
    :try_start_1
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v10, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 2990
    .restart local v3    # "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2991
    .restart local v1    # "editable":Landroid/text/Editable;
    const-string v10, ""

    invoke-static {v1, v7, v2, v10}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2992
    const/4 v10, -0x1

    if-eq v7, v10, :cond_9

    const/4 v10, -0x1

    if-ne v2, v10, :cond_b

    .line 2993
    :cond_9
    const-string v10, "RecipientEditTextView"

    const-string v11, "The chip being selected no longer exists but should."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    :goto_4
    const/4 v10, 0x1

    invoke-interface {v3, v10}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setSelected(Z)V

    .line 2999
    invoke-direct {p0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 3000
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-direct {p0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->scrollLineIntoView(I)V

    .line 3002
    :cond_a
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v11

    invoke-direct {p0, v3, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->showAlternates(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;I)V

    .line 3003
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setCursorVisible(Z)V

    goto/16 :goto_2

    .line 2986
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v3    # "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :catch_1
    move-exception v0

    .line 2987
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    const-string v10, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2988
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 2995
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "editable":Landroid/text/Editable;
    .restart local v3    # "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_b
    const-string v10, "MTKRecip"

    const-string v11, "[selectChip] setSpan"

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2996
    const/16 v10, 0x21

    invoke-interface {v1, v3, v7, v2, v10}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4
.end method

.method private setChipDimensions(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x1

    const/high16 v8, -0x40800000

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1214
    sget-object v3, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView:[I

    invoke-virtual {p1, p2, v3, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1216
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1217
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 1218
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 1219
    sget v3, Lcom/android/ex/chips/R$drawable;->chip_background:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 1221
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    .line 1223
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 1224
    sget v3, Lcom/android/ex/chips/R$drawable;->chip_background_selected:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    .line 1226
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 1227
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 1228
    sget v3, Lcom/android/ex/chips/R$drawable;->chip_delete:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 1230
    :cond_2
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    .line 1231
    iget v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    if-ne v3, v6, :cond_3

    .line 1232
    sget v3, Lcom/android/ex/chips/R$dimen;->chip_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    .line 1234
    :cond_3
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesLayout:I

    .line 1236
    iget v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesLayout:I

    if-ne v3, v6, :cond_4

    .line 1237
    sget v3, Lcom/android/ex/chips/R$layout;->chips_alternate_item:I

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesLayout:I

    .line 1240
    :cond_4
    sget v3, Lcom/android/ex/chips/R$drawable;->ic_contact_picture:I

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultContactPhoto:Landroid/graphics/Bitmap;

    .line 1242
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/ex/chips/R$layout;->more_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    .line 1244
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    .line 1245
    iget v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_5

    .line 1246
    sget v3, Lcom/android/ex/chips/R$dimen;->chip_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    .line 1248
    :cond_5
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipFontSize:F

    .line 1249
    iget v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipFontSize:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_6

    .line 1250
    sget v3, Lcom/android/ex/chips/R$dimen;->chip_text_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipFontSize:F

    .line 1252
    :cond_6
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    .line 1254
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_7

    .line 1255
    sget v3, Lcom/android/ex/chips/R$drawable;->chip_background_invalid:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    .line 1257
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/ex/chips/R$dimen;->line_spacing_extra:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLineSpacingExtra:F

    .line 1258
    sget v3, Lcom/android/ex/chips/R$integer;->chips_max_lines:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMaxLines:I

    .line 1259
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1260
    .local v2, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10102eb

    invoke-virtual {v3, v4, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1261
    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mActionBarHeight:I

    .line 1264
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1265
    return-void
.end method

.method private setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V
    .locals 3
    .param p1, "mode"    # Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    .prologue
    .line 5071
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setChipProcessingMode] from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5072
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    .line 5073
    return-void
.end method

.method private setDisableBringPointIntoView(Z)V
    .locals 3
    .param p1, "disableBringPointIntoView"    # Z

    .prologue
    .line 4592
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDisableBringPointIntoView] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4593
    iput-boolean p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDisableBringPointIntoView:Z

    .line 4594
    return-void
.end method

.method private setForceEnableBringPointIntoView(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 4601
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setForceEnableBringPointIntoView] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4602
    iput-boolean p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mForceEnableBringPointIntoView:Z

    .line 4603
    return-void
.end method

.method private shouldCreateChip(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1961
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->alreadyHasChip(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowEditableText(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z
    .locals 4
    .param p1, "currentChip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 3009
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v0

    .line 3010
    .local v0, "contactId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showAddress(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;I)V
    .locals 7
    .param p1, "currentChip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "popup"    # Landroid/widget/ListPopupWindow;
    .param p3, "width"    # I

    .prologue
    const/4 v6, 0x1

    .line 3016
    const-string v4, "RecipientEditTextView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[showAddress] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3017
    iget-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAttachedToWindow:Z

    if-nez v3, :cond_2

    .line 3043
    :cond_0
    :goto_1
    return-void

    .line 3016
    :cond_1
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 3021
    :cond_2
    if-eqz p2, :cond_0

    .line 3024
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 3025
    .local v1, "line":I
    invoke-direct {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getOffsetFromBottom(I)I

    move-result v0

    .line 3028
    .local v0, "bottom":I
    invoke-virtual {p2, p3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 3029
    invoke-virtual {p2, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 3030
    iget v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultVerticalOffset:I

    add-int/2addr v3, v0

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 3031
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createSingleAddressAdapter(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3032
    new-instance v3, Lcom/android/ex/chips/MTKRecipientEditTextView$11;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView$11;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3039
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->show()V

    .line 3040
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 3041
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 3042
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1
.end method

.method private showAlternates(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;I)V
    .locals 4
    .param p1, "currentChip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "alternatesPopup"    # Landroid/widget/ListPopupWindow;
    .param p3, "width"    # I

    .prologue
    const/4 v0, 0x0

    .line 2318
    const-string v2, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[showAlternates] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_1

    move-object v1, v0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShowAlternatesTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 2321
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShowAlternatesTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 2324
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->adjustAnchorView(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 2326
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/ex/chips/MTKRecipientEditTextView$9;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;I)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShowAlternatesTask:Landroid/os/AsyncTask;

    .line 2362
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShowAlternatesTask:Landroid/os/AsyncTask;

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2363
    return-void

    .line 2318
    :cond_1
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method private showCopyDialog(Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 4329
    const-string v4, "RecipientEditTextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[showCopyDialog] address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4330
    iget-boolean v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAttachedToWindow:Z

    if-nez v4, :cond_0

    .line 4354
    :goto_0
    return-void

    .line 4333
    :cond_0
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    .line 4335
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4336
    .local v3, "title":Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4338
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v4, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 4339
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    sget v5, Lcom/android/ex/chips/R$layout;->copy_chip_dialog_layout:I

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 4340
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4341
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4342
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    const v5, 0x1020019

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 4343
    .local v1, "button":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4345
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4346
    sget v0, Lcom/android/ex/chips/R$string;->copy_number:I

    .line 4350
    .local v0, "btnTitleId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4351
    .local v2, "buttonTitle":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4352
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v4, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4353
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 4348
    .end local v0    # "btnTitleId":I
    .end local v2    # "buttonTitle":Ljava/lang/String;
    :cond_1
    sget v0, Lcom/android/ex/chips/R$string;->copy_email:I

    .restart local v0    # "btnTitleId":I
    goto :goto_1
.end method

.method private shrink()V
    .locals 15

    .prologue
    const-wide/16 v11, -0x1

    .line 796
    const-string v13, "RecipientEditTextView"

    const-string v14, "[shrink]"

    invoke-direct {p0, v13, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v13, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v13, :cond_0

    .line 875
    :goto_0
    return-void

    .line 801
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 802
    .local v3, "editable":Landroid/text/Editable;
    iget-boolean v13, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-eqz v13, :cond_1

    .line 803
    invoke-virtual {p0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->countTokens(Landroid/text/Editable;)I

    move-result v9

    .line 804
    .local v9, "tokenCount":I
    const/16 v13, 0x64

    if-ge v9, v13, :cond_2

    .line 805
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    .line 814
    .end local v9    # "tokenCount":I
    :cond_1
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v13

    if-nez v13, :cond_3

    .line 815
    const-string v11, "RecipientEditTextView"

    const-string v12, "[shrink] empty, return"

    invoke-direct {p0, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 807
    .restart local v9    # "tokenCount":I
    :cond_2
    const-string v11, "RecipientEditTextView"

    const-string v12, "[shrink] mNoChips"

    invoke-direct {p0, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreChip()V

    goto :goto_0

    .line 818
    .end local v9    # "tokenCount":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 819
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v13

    invoke-virtual {p0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setSelection(I)V

    .line 823
    :cond_4
    iget-object v13, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v13, :cond_7

    iget-object v13, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v13}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v1

    .line 824
    .local v1, "contactId":J
    :goto_1
    iget-object v13, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v13, :cond_8

    cmp-long v11, v1, v11

    if-eqz v11, :cond_8

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v11

    if-nez v11, :cond_5

    const-wide/16 v11, -0x2

    cmp-long v11, v1, v11

    if-nez v11, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 826
    :cond_6
    const-string v11, "RecipientEditTextView"

    const-string v12, "[shrink] selecting chip"

    invoke-direct {p0, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 874
    :goto_2
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreChip()V

    goto :goto_0

    .end local v1    # "contactId":J
    :cond_7
    move-wide v1, v11

    .line 823
    goto :goto_1

    .line 829
    .restart local v1    # "contactId":J
    :cond_8
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v11

    if-gtz v11, :cond_9

    .line 830
    const-string v11, "RecipientEditTextView"

    const-string v12, "[shrink] getWidth() <= 0"

    invoke-direct {p0, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 837
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 842
    :cond_9
    iget v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    if-lez v11, :cond_b

    .line 843
    const-string v11, "RecipientEditTextView"

    const-string v12, "[shrink] mPendingChipsCount > 0"

    invoke-direct {p0, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->postHandlePendingChips()V

    .line 872
    :cond_a
    :goto_3
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 846
    :cond_b
    const-string v11, "RecipientEditTextView"

    const-string v12, "[shrink] mPendingChipsCount = 0"

    invoke-direct {p0, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    invoke-direct {p0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->textIsAllBlank(Landroid/text/Editable;)Z

    move-result v8

    .line 850
    .local v8, "textIsAllBlank":Z
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v4

    .line 851
    .local v4, "end":I
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v11, v3, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 853
    .local v6, "start":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v11

    const-class v12, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v6, v4, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 855
    .local v0, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_c

    array-length v11, v0

    if-nez v11, :cond_a

    .line 856
    :cond_c
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 857
    .local v7, "text":Landroid/text/Editable;
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v11, v7, v6}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v10

    .line 859
    .local v10, "whatEnd":I
    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v11

    if-ge v10, v11, :cond_d

    invoke-interface {v7, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x2c

    if-ne v11, v12, :cond_d

    .line 860
    invoke-virtual {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->movePastTerminators(I)I

    move-result v10

    .line 864
    :cond_d
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v5

    .line 865
    .local v5, "selEnd":I
    if-eq v10, v5, :cond_e

    if-nez v8, :cond_e

    .line 866
    invoke-direct {p0, v6, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handleEdit(II)V

    goto :goto_3

    .line 868
    :cond_e
    invoke-direct {p0, v6, v4, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    goto :goto_3
.end method

.method private startDrag(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 5
    .param p1, "currentChip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 4275
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 4276
    .local v0, "address":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 4279
    .local v1, "data":Landroid/content/ClipData;
    new-instance v2, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipShadow;

    invoke-direct {v2, p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipShadow;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 4283
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 4284
    return-void
.end method

.method private submitItemAtPosition(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v10, 0x0

    .line 2544
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ex/chips/RecipientEntry;

    invoke-direct {p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    .line 2546
    .local v4, "entry":Lcom/android/ex/chips/RecipientEntry;
    if-nez v4, :cond_1

    .line 2576
    :cond_0
    :goto_0
    return-void

    .line 2549
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearComposingText()V

    .line 2551
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v3

    .line 2552
    .local v3, "end":I
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v7, v8, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 2554
    .local v5, "start":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 2555
    .local v2, "editable":Landroid/text/Editable;
    const-string v7, ""

    invoke-static {v2, v5, v3, v7}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2556
    invoke-direct {p0, v4, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2557
    .local v0, "chip":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    if-ltz v5, :cond_2

    if-ltz v3, :cond_2

    .line 2558
    const-string v7, "MTKRecip"

    const-string v8, "[submitItemAtPosition] replace"

    invoke-direct {p0, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2559
    invoke-interface {v2, v5, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2561
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->sanitizeBetween()V

    .line 2563
    sget v7, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_3

    .line 2564
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2567
    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    .line 2568
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    const-class v9, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v7, v5, v8, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2569
    .local v1, "currChips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v1, :cond_0

    array-length v7, v1

    if-eqz v7, :cond_0

    .line 2572
    new-instance v6, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    .line 2573
    .local v6, "task":Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aget-object v8, v1, v10

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private supportConvertToLocalHorizontalCoordinate(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 4241
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 4243
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 4244
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 4245
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 4246
    return p1
.end method

.method private supportGetLineAtCoordinate(F)I
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 4250
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 4252
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 4253
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 4254
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 4255
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method private supportGetOffsetAtCoordinate(IF)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "x"    # F

    .prologue
    .line 4259
    invoke-direct {p0, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->supportConvertToLocalHorizontalCoordinate(F)F

    move-result p2

    .line 4260
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method private supportGetOffsetForPosition(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4234
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    .line 4237
    :goto_0
    return v1

    .line 4235
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->supportGetLineAtCoordinate(F)I

    move-result v0

    .line 4236
    .local v0, "line":I
    invoke-direct {p0, v0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->supportGetOffsetAtCoordinate(IF)I

    move-result v1

    .line 4237
    .local v1, "offset":I
    goto :goto_0
.end method

.method private tempLogPrint(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "logTitle"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 5091
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 5092
    .local v4, "spanStart":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 5093
    .local v0, "spanEnd":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 5094
    .local v1, "spanFlag":I
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 5095
    .local v3, "spanName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 5096
    .local v2, "spanID":I
    const-string v5, "RecipientEditTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Debug] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ---> spanStart="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", spanEnd="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", spanFlag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", spanID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", spanName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5098
    return-void
.end method

.method private textIsAllBlank(Landroid/text/Editable;)Z
    .locals 4
    .param p1, "e"    # Landroid/text/Editable;

    .prologue
    const/4 v1, 0x0

    .line 879
    if-eqz p1, :cond_0

    .line 880
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 881
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    .line 887
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 880
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 885
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "destination"    # Ljava/lang/String;

    .prologue
    .line 1675
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 1676
    .local v0, "tokens":[Landroid/text/util/Rfc822Token;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1677
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object p0

    .line 1679
    .end local p0    # "destination":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static tokenizeAndNormalizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "destination"    # Ljava/lang/String;

    .prologue
    .line 1682
    invoke-static {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1683
    invoke-static {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1684
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1686
    :cond_0
    return-object p0
.end method

.method private tokenizeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "destination"    # Ljava/lang/String;

    .prologue
    .line 1667
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 1668
    .local v0, "tokens":[Landroid/text/util/Rfc822Token;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1669
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1671
    .end local p1    # "destination":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private tryToAdjustChips()V
    .locals 23

    .prologue
    .line 5827
    const-string v20, "RecipientEditTextView"

    const-string v21, "tryToAdjustChips"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5828
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v17

    .line 5829
    .local v17, "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    move-object/from16 v0, v17

    array-length v15, v0

    .line 5831
    .local v15, "numRecipients":I
    if-eqz v17, :cond_0

    if-nez v15, :cond_1

    .line 5897
    :cond_0
    :goto_0
    return-void

    .line 5835
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 5837
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateAvailableWidth()F

    move-result v20

    move/from16 v0, v20

    float-to-int v8, v0

    .line 5838
    .local v8, "innerWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getMeasuredMoreSpanWidth(I)I

    move-result v14

    .line 5839
    .local v14, "moreSpanWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipInterval()I

    move-result v4

    .line 5841
    .local v4, "chipInterval":I
    sub-int v3, v8, v14

    .line 5842
    .local v3, "availableSpace":I
    move v11, v3

    .line 5844
    .local v11, "leftSpace":I
    const/4 v6, 0x0

    .line 5846
    .local v6, "currIndex":I
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v15, :cond_2

    .line 5847
    aget-object v20, v17, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v20

    add-int v20, v20, v4

    sub-int v11, v11, v20

    .line 5848
    if-gtz v11, :cond_4

    .line 5853
    :cond_2
    if-ne v6, v15, :cond_3

    .line 5854
    if-gez v11, :cond_0

    .line 5858
    add-int/lit8 v6, v6, -0x1

    .line 5862
    :cond_3
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_5

    .line 5863
    if-nez v6, :cond_0

    if-gez v11, :cond_0

    .line 5865
    const/16 v20, 0x0

    aget-object v20, v17, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipOnSameTextRange(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;I)V

    .line 5866
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    goto :goto_0

    .line 5846
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5870
    :cond_5
    if-nez v6, :cond_6

    .line 5871
    add-int/lit8 v6, v6, 0x1

    .line 5872
    if-gez v11, :cond_6

    .line 5874
    const/16 v20, 0x0

    aget-object v20, v17, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipOnSameTextRange(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;I)V

    .line 5875
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    .line 5880
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v18

    .line 5881
    .local v18, "spannable":Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v19

    .line 5882
    .local v19, "text":Landroid/text/Editable;
    aget-object v20, v17, v6

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v16

    .line 5883
    .local v16, "recipientSpanStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 5884
    .local v13, "moreSpanEnd":I
    const/4 v9, 0x0

    .line 5885
    .local v9, "j":I
    move v7, v6

    .local v7, "i":I
    move v10, v9

    .end local v9    # "j":I
    .local v10, "j":I
    :goto_2
    if-ge v7, v15, :cond_7

    .line 5886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-object v21, v17, v7

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5887
    aget-object v20, v17, v7

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 5885
    add-int/lit8 v7, v7, 0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto :goto_2

    .line 5889
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 5890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreSpan(I)Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;

    move-result-object v12

    .line 5891
    .local v12, "moreSpan":Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;
    new-instance v5, Landroid/text/SpannableString;

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1, v13}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5892
    .local v5, "chipText":Landroid/text/SpannableString;
    const/16 v20, 0x0

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v21

    const/16 v22, 0x21

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v12, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5893
    const-string v20, "MTKRecip"

    const-string v21, "[rotateToPortrait] replace"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5894
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1, v13, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 5895
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    goto/16 :goto_0
.end method

.method private unRegisterGlobalLayoutListener()V
    .locals 2

    .prologue
    .line 4815
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_0

    .line 4816
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4817
    .local v0, "viewTreeObs":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4818
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 4820
    .end local v0    # "viewTreeObs":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method private unselectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 10
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 3051
    const-string v6, "RecipientEditTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[unselectChip] "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p1, :cond_5

    move-object v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3052
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v3

    .line 3053
    .local v3, "start":I
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v2

    .line 3054
    .local v2, "end":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 3055
    .local v1, "editable":Landroid/text/Editable;
    iput-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3056
    if-eq v3, v8, :cond_0

    if-ne v2, v8, :cond_6

    .line 3057
    :cond_0
    const-string v4, "RecipientEditTextView"

    const-string v5, "The chip doesn\'t exist or may be a chip a user was editing"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setSelection(I)V

    .line 3059
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitDefault()Z

    .line 3074
    :cond_1
    :goto_1
    invoke-virtual {p0, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setCursorVisible(Z)V

    .line 3075
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setSelection(I)V

    .line 3076
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3077
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 3080
    :cond_2
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShowAlternatesTask:Landroid/os/AsyncTask;

    if-eqz v4, :cond_3

    .line 3081
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShowAlternatesTask:Landroid/os/AsyncTask;

    invoke-virtual {v4, v9}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3085
    :cond_3
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3086
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 3089
    :cond_4
    return-void

    .line 3051
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v2    # "end":I
    .end local v3    # "start":I
    :cond_5
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 3061
    .restart local v1    # "editable":Landroid/text/Editable;
    .restart local v2    # "end":I
    .restart local v3    # "start":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3062
    const-string v4, ""

    invoke-static {v1, v3, v2, v4}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 3063
    invoke-interface {v1, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 3065
    :try_start_0
    iget-boolean v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-nez v4, :cond_1

    .line 3066
    const-string v4, "MTKRecip"

    const-string v5, "[unSelectChip] setSpan"

    invoke-direct {p0, v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v4

    const/16 v5, 0x21

    invoke-interface {v1, v4, v3, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3070
    :catch_0
    move-exception v0

    .line 3071
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public addChipChangedListener(Lcom/android/ex/chips/MTKRecipientEditTextView$ChipWatcher;)V
    .locals 1
    .param p1, "watcher"    # Lcom/android/ex/chips/MTKRecipientEditTextView$ChipWatcher;

    .prologue
    .line 5227
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipChangedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 5228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipChangedListeners:Ljava/util/ArrayList;

    .line 5231
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5232
    return-void
.end method

.method addressMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "address1"    # Ljava/lang/String;
    .param p2, "address2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5661
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5678
    :cond_0
    :goto_0
    return v4

    .line 5662
    :cond_1
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 5664
    .local v2, "tokenized1":[Landroid/text/util/Rfc822Token;
    if-eqz v2, :cond_2

    array-length v6, v2

    if-lez v6, :cond_2

    .line 5665
    aget-object v6, v2, v5

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 5667
    :cond_2
    invoke-static {p2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 5668
    .local v3, "tokenized2":[Landroid/text/util/Rfc822Token;
    if-eqz v3, :cond_3

    array-length v6, v3

    if-lez v6, :cond_3

    .line 5669
    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object p2

    .line 5671
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5673
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5674
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5675
    .local v0, "currentNumber":Ljava/lang/String;
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5676
    .local v1, "queryNumber":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .end local v0    # "currentNumber":Ljava/lang/String;
    .end local v1    # "queryNumber":Ljava/lang/String;
    :cond_4
    move v4, v5

    .line 5678
    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 632
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 635
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;II)V

    .line 636
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 637
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "displayString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 641
    sget-object v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->SEPARATOR:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/ex/chips/MTKRecipientEditTextView;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-super {p0, v1, v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;II)V

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/ex/chips/MTKRecipientEditTextView;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 647
    iget v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    .line 648
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    .end local v0    # "displayString":Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    if-lez v1, :cond_3

    .line 654
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->postHandlePendingChips()V

    .line 656
    :cond_3
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 657
    return-void
.end method

.method public appendList(Lcom/android/ex/chips/MTKRecipientList;)V
    .locals 14
    .param p1, "recipientList"    # Lcom/android/ex/chips/MTKRecipientList;

    .prologue
    .line 661
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/ex/chips/MTKRecipientList;->getRecipientCount()I

    move-result v11

    if-gtz v11, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    const-wide/16 v11, 0x8

    const-string v13, "appendList"

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 665
    invoke-virtual {p1}, Lcom/android/ex/chips/MTKRecipientList;->getRecipientCount()I

    move-result v5

    .line 666
    .local v5, "recipientCnt":I
    const-string v11, "RecipientEditTextView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[appendList] Start, count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v7, ""

    .line 668
    .local v7, "str":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_1
    if-ge v10, v5, :cond_2

    .line 669
    invoke-virtual {p1, v10}, Lcom/android/ex/chips/MTKRecipientList;->getRecipient(I)Lcom/android/ex/chips/MTKRecipient;

    move-result-object v4

    .line 670
    .local v4, "recipient":Lcom/android/ex/chips/MTKRecipient;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/ex/chips/MTKRecipient;->getFormatString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 668
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 674
    .end local v4    # "recipient":Lcom/android/ex/chips/MTKRecipient;
    :cond_2
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v11, :cond_3

    .line 675
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 678
    :cond_3
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 679
    .local v8, "temText":Landroid/text/Editable;
    invoke-interface {v8, v7}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 680
    invoke-virtual {p0, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    const-string v11, "RecipientEditTextView"

    const/4 v12, 0x3

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    .local v0, "bindString":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v5, :cond_4

    .line 685
    invoke-virtual {p1, v10}, Lcom/android/ex/chips/MTKRecipientList;->getRecipient(I)Lcom/android/ex/chips/MTKRecipient;

    move-result-object v4

    .line 686
    .restart local v4    # "recipient":Lcom/android/ex/chips/MTKRecipient;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[appendList] Recipient -> Name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/ex/chips/MTKRecipient;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " & Dest = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/ex/chips/MTKRecipient;->getDestination()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 688
    .end local v4    # "recipient":Lcom/android/ex/chips/MTKRecipient;
    :cond_4
    const-string v11, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .end local v0    # "bindString":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .restart local v0    # "bindString":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v5, :cond_9

    .line 693
    invoke-virtual {p1, v10}, Lcom/android/ex/chips/MTKRecipientList;->getRecipient(I)Lcom/android/ex/chips/MTKRecipient;

    move-result-object v4

    .line 694
    .restart local v4    # "recipient":Lcom/android/ex/chips/MTKRecipient;
    invoke-virtual {v4}, Lcom/android/ex/chips/MTKRecipient;->getFormatString()Ljava/lang/String;

    move-result-object v9

    .line 695
    .local v9, "text":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-static {v9}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v11

    if-lez v11, :cond_7

    .line 696
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[appendList] adding pending chips, index: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, "displayString":Ljava/lang/String;
    const/16 v11, 0x2c

    invoke-virtual {v1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 702
    .local v6, "separatorPos":I
    const/4 v11, -0x1

    if-le v6, v11, :cond_6

    .line 703
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 704
    .local v3, "parseDisplayString":Ljava/lang/String;
    const/16 v11, 0x22

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 705
    .local v2, "endQuotedTextPos":I
    if-le v2, v6, :cond_6

    .line 706
    const/16 v11, 0x2c

    invoke-virtual {v3, v11, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 710
    .end local v2    # "endQuotedTextPos":I
    .end local v3    # "parseDisplayString":Ljava/lang/String;
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v11

    if-lez v11, :cond_7

    .line 712
    iget v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    .line 713
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    .end local v1    # "displayString":Ljava/lang/String;
    .end local v6    # "separatorPos":I
    :cond_7
    sget v11, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_8

    .line 719
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/android/ex/chips/MTKRecipient;->getDestination()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 723
    .end local v4    # "recipient":Lcom/android/ex/chips/MTKRecipient;
    .end local v9    # "text":Ljava/lang/String;
    :cond_9
    const-string v11, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    if-lez v11, :cond_a

    .line 727
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->postHandlePendingChips()V

    .line 729
    :cond_a
    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 730
    const-string v11, "RecipientEditTextView"

    const-string v12, "[appendList] End"

    invoke-direct {p0, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-wide/16 v11, 0x8

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0
.end method

.method public bringPointIntoView(I)Z
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 4611
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bringPointIntoView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mForceEnableBringPointIntoView:Z

    if-eqz v0, :cond_0

    .line 4615
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->bringPointIntoView(I)Z

    move-result v0

    .line 4619
    :goto_0
    return v0

    .line 4616
    :cond_0
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDisableBringPointIntoView:Z

    if-eqz v0, :cond_1

    .line 4617
    const/4 v0, 0x0

    goto :goto_0

    .line 4619
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->bringPointIntoView(I)Z

    move-result v0

    goto :goto_0
.end method

.method compareEntries(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEntry;)Z
    .locals 5
    .param p1, "entry1"    # Lcom/android/ex/chips/RecipientEntry;
    .param p2, "entry2"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    const/4 v0, 0x0

    .line 3276
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3279
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructPressedChip()V
    .locals 10

    .prologue
    .line 5047
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 5048
    .local v1, "editable":Landroid/text/Editable;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v8

    if-lez v8, :cond_3

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v8

    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setSelection(I)V

    .line 5049
    invoke-direct {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->textIsAllBlank(Landroid/text/Editable;)Z

    move-result v6

    .line 5051
    .local v6, "textIsAllBlank":Z
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v2

    .line 5052
    .local v2, "end":I
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v8, v1, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 5053
    .local v4, "start":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v8

    const-class v9, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v8, v4, v2, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 5054
    .local v0, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_0

    array-length v8, v0

    if-nez v8, :cond_2

    .line 5055
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 5056
    .local v5, "text":Landroid/text/Editable;
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v8, v5, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 5057
    .local v7, "whatEnd":I
    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-interface {v5, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x2c

    if-ne v8, v9, :cond_1

    .line 5058
    add-int/lit8 v7, v7, 0x1

    .line 5060
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v3

    .line 5061
    .local v3, "selEnd":I
    if-eq v7, v3, :cond_4

    if-nez v6, :cond_4

    .line 5062
    invoke-direct {p0, v4, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handleEdit(II)V

    .line 5067
    .end local v3    # "selEnd":I
    .end local v5    # "text":Landroid/text/Editable;
    .end local v7    # "whatEnd":I
    :cond_2
    :goto_1
    return-void

    .line 5048
    .end local v0    # "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v2    # "end":I
    .end local v4    # "start":I
    .end local v6    # "textIsAllBlank":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 5064
    .restart local v0    # "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v2    # "end":I
    .restart local v3    # "selEnd":I
    .restart local v4    # "start":I
    .restart local v5    # "text":Landroid/text/Editable;
    .restart local v6    # "textIsAllBlank":Z
    .restart local v7    # "whatEnd":I
    :cond_4
    invoke-direct {p0, v4, v2, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    goto :goto_1
.end method

.method countTokens(Landroid/text/Editable;)I
    .locals 3
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    .line 2763
    const/4 v1, 0x0

    .line 2764
    .local v1, "tokenCount":I
    const/4 v0, 0x0

    .line 2765
    .local v0, "start":I
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2766
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->movePastTerminators(I)I

    move-result v0

    .line 2767
    add-int/lit8 v1, v1, 0x1

    .line 2768
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 2772
    :cond_1
    return v1
.end method

.method createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;
    .locals 7
    .param p1, "entry"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    .line 2457
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 2458
    .local v1, "display":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 2459
    .local v0, "address":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2460
    :cond_0
    const/4 v1, 0x0

    .line 2463
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2464
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2477
    .local v5, "trimmedDisplayText":Ljava/lang/String;
    :goto_0
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2478
    .local v2, "index":I
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-eqz v6, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_4

    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v6, v5}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_1
    return-object v6

    .line 2466
    .end local v2    # "index":I
    .end local v5    # "trimmedDisplayText":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 2469
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 2470
    .local v4, "tokenized":[Landroid/text/util/Rfc822Token;
    if-eqz v4, :cond_3

    array-length v6, v4

    if-lez v6, :cond_3

    .line 2471
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2474
    .end local v4    # "tokenized":[Landroid/text/util/Rfc822Token;
    :cond_3
    new-instance v3, Landroid/text/util/Rfc822Token;

    const/4 v6, 0x0

    invoke-direct {v3, v1, v0, v6}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2475
    .local v3, "token":Landroid/text/util/Rfc822Token;
    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "trimmedDisplayText":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "token":Landroid/text/util/Rfc822Token;
    .restart local v2    # "index":I
    :cond_4
    move-object v6, v5

    .line 2478
    goto :goto_1
.end method

.method createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;
    .locals 5
    .param p1, "entry"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    .line 2486
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 2487
    .local v1, "display":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 2488
    .local v0, "address":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2489
    :cond_0
    const/4 v1, 0x0

    .line 2491
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2502
    .end local v1    # "display":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2493
    .restart local v1    # "display":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2495
    const-string v3, "([, ]+$)|([; ]+$)"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2496
    sget-object v3, Landroid/util/Patterns;->PHONE_PATTERN_MTK:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2497
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 2498
    .local v2, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v3, v2

    if-lez v3, :cond_3

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .end local v2    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_3
    move-object v1, v0

    .line 2500
    goto :goto_0

    .line 2502
    :cond_4
    new-instance v3, Landroid/text/util/Rfc822Token;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method createMoreChip()V
    .locals 20

    .prologue
    .line 2782
    const-string v17, "RecipientEditTextView"

    const-string v18, "[createMoreChip] Start"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 2785
    const-string v17, "RecipientEditTextView"

    const-string v18, "[createMoreChip] mNoChips, return"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreChipPlainText()V

    .line 2859
    :goto_0
    return-void

    .line 2790
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShouldShrink:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 2791
    const-string v17, "RecipientEditTextView"

    const-string v18, "[createMoreChip] !mShouldShrink, return"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2797
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeMoreChip()V

    .line 2799
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v9

    .line 2800
    .local v9, "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    const-string v18, "RecipientEditTextView"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[createMoreChip] recipients count: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    if-nez v9, :cond_4

    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2802
    if-eqz v9, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v17

    if-nez v17, :cond_2

    array-length v0, v9

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v17

    if-eqz v17, :cond_5

    array-length v0, v9

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_5

    .line 2803
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 2804
    const-string v17, "RecipientEditTextView"

    const-string v18, "[createMoreChip] no chip or all chips can be shown, return"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2800
    :cond_4
    array-length v0, v9

    move/from16 v17, v0

    goto :goto_1

    .line 2807
    :cond_5
    array-length v7, v9

    .line 2809
    .local v7, "numRecipients":I
    const/4 v8, 0x0

    .line 2810
    .local v8, "overage":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2811
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateNumChipsCanShow()I

    move-result v17

    sub-int v8, v7, v17

    .line 2812
    if-gtz v8, :cond_7

    .line 2813
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 2814
    const-string v17, "RecipientEditTextView"

    const-string v18, "[createMoreChip] overage <= 0, return"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2818
    :cond_6
    add-int/lit8 v8, v7, -0x2

    .line 2821
    :cond_7
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2822
    .local v12, "spannable":Landroid/text/Editable;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreSpan(I)Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;

    move-result-object v6

    .line 2823
    .local v6, "moreSpan":Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    .line 2824
    const/16 v16, 0x0

    .line 2825
    .local v16, "totalReplaceStart":I
    const/4 v15, 0x0

    .line 2826
    .local v15, "totalReplaceEnd":I
    move-object v14, v12

    .line 2827
    .local v14, "text":Landroid/text/Editable;
    sub-int v5, v7, v8

    .local v5, "i":I
    :goto_2
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_c

    .line 2828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    aget-object v18, v9, v5

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2829
    sub-int v17, v7, v8

    move/from16 v0, v17

    if-ne v5, v0, :cond_8

    .line 2830
    aget-object v17, v9, v5

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v16

    .line 2832
    :cond_8
    array-length v0, v9

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    .line 2833
    aget-object v17, v9, v5

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    .line 2835
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    aget-object v18, v9, v5

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 2836
    :cond_a
    aget-object v17, v9, v5

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 2837
    .local v11, "spanStart":I
    aget-object v17, v9, v5

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 2838
    .local v10, "spanEnd":I
    aget-object v17, v9, v5

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 2840
    .end local v10    # "spanEnd":I
    .end local v11    # "spanStart":I
    :cond_b
    aget-object v17, v9, v5

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 2827
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2842
    :cond_c
    invoke-interface {v14}, Landroid/text/Editable;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v15, v0, :cond_d

    .line 2843
    invoke-interface {v14}, Landroid/text/Editable;->length()I

    move-result v15

    .line 2845
    :cond_d
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2846
    .local v4, "end":I
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 2847
    .local v13, "start":I
    new-instance v3, Landroid/text/SpannableString;

    invoke-interface {v14, v13, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2848
    .local v3, "chipText":Landroid/text/SpannableString;
    const/16 v17, 0x0

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v18

    const/16 v19, 0x21

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v3, v6, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2849
    const-string v17, "MTKRecip"

    const-string v18, "[createMoreChip] replace"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    const-string v17, "RecipientEditTextView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[createMoreChip] do replace, start: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", end: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2851
    invoke-interface {v14, v13, v4, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2852
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2853
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 2855
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v17

    if-nez v17, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLineCount()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMaxLines:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_e

    .line 2856
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLineCount()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setMaxLines(I)V

    .line 2858
    :cond_e
    const-string v17, "RecipientEditTextView"

    const-string v18, "[createMoreChip] End"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method createMoreChipPlainText()V
    .locals 10

    .prologue
    .line 2740
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 2741
    .local v5, "text":Landroid/text/Editable;
    const/4 v4, 0x0

    .line 2742
    .local v4, "start":I
    move v1, v4

    .line 2743
    .local v1, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v7, 0x2

    if-ge v2, v7, :cond_0

    .line 2744
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v7, v5, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->movePastTerminators(I)I

    move-result v1

    .line 2745
    move v4, v1

    .line 2743
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2748
    :cond_0
    const/4 v4, 0x0

    .line 2749
    invoke-virtual {p0, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->countTokens(Landroid/text/Editable;)I

    move-result v6

    .line 2750
    .local v6, "tokenCount":I
    add-int/lit8 v7, v6, -0x2

    invoke-direct {p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreSpan(I)Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;

    move-result-object v3

    .line 2751
    .local v3, "moreSpan":Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;
    new-instance v0, Landroid/text/SpannableString;

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v5, v1, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2752
    .local v0, "chipText":Landroid/text/SpannableString;
    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v0, v3, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2753
    const-string v7, "MTKRecip"

    const-string v8, "[createMoreChipPlainText] replace"

    invoke-direct {p0, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v5, v1, v7, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2755
    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 2756
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLineCount()I

    move-result v7

    iget v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMaxLines:I

    if-le v7, v8, :cond_1

    .line 2757
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLineCount()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setMaxLines(I)V

    .line 2759
    :cond_1
    return-void
.end method

.method public enableDrag()V
    .locals 1

    .prologue
    .line 4268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDragEnabled:Z

    .line 4269
    return-void
.end method

.method getChipBackground(Lcom/android/ex/chips/RecipientEntry;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "contact"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    .line 1148
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method getContactIds()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2603
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2604
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v2

    .line 2605
    .local v2, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_0

    .line 2606
    move-object v0, v2

    .local v0, "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 2607
    .local v1, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2606
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2610
    .end local v0    # "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v1    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-object v5
.end method

.method getDataIds()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2616
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2617
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v2

    .line 2618
    .local v2, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_0

    .line 2619
    move-object v0, v2

    .local v0, "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 2620
    .local v1, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getDataId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2619
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2623
    .end local v0    # "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v1    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-object v5
.end method

.method protected getEnableDiscardNextActionUp()Z
    .locals 1

    .prologue
    .line 4427
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRETVDiscardNextActionUp:Z

    return v0
.end method

.method protected getIsAutoTesting()Z
    .locals 1

    .prologue
    .line 5203
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mIsAutoTesting:Z

    return v0
.end method

.method getLastChip()Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 3

    .prologue
    .line 472
    const/4 v1, 0x0

    .line 473
    .local v1, "last":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 474
    .local v0, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 475
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .line 477
    :cond_0
    return-object v1
.end method

.method getMoreChip()Landroid/text/style/ImageSpan;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2704
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;

    .line 2706
    .local v0, "moreSpans":[Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v4

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRecipientEntry(FF)Lcom/android/ex/chips/RecipientEntry;
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v8, 0x0

    .line 5371
    const/4 v1, 0x0

    .line 5372
    .local v1, "currentChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->putOffsetInRange(FF)I

    move-result v6

    .line 5373
    .local v6, "offset":I
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isTouchPointInChip(FF)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-direct {p0, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    .line 5374
    :goto_0
    if-eqz v1, :cond_2

    .line 5375
    invoke-interface {v1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v8

    .line 5395
    :cond_0
    :goto_1
    return-object v8

    :cond_1
    move-object v1, v8

    .line 5373
    goto :goto_0

    .line 5377
    :cond_2
    const/4 v2, 0x0

    .line 5378
    .local v2, "end":I
    const-string v5, ""

    .line 5379
    .local v5, "lastString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLastChip()Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v4

    .line 5380
    .local v4, "lastChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v4, :cond_3

    .line 5381
    invoke-direct {p0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v2

    .line 5383
    :cond_3
    int-to-float v9, v2

    cmpl-float v9, p1, v9

    if-lez v9, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_0

    .line 5384
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5385
    .local v7, "recipientEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientEntry;>;"
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {v9, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 5386
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 5387
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const-string v9, "RecipientEditTextView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[notifyChipChanged] adapter.getCount(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5388
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 5389
    const/4 v3, 0x0

    .local v3, "itemCnt":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 5390
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5389
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5392
    :cond_4
    invoke-direct {p0, v7, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getMatchRecipientEntry(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v8

    goto/16 :goto_1
.end method

.method getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 2629
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v12

    const-class v13, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v14, v12, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 2631
    .local v8, "recipientsObj":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 2632
    .local v6, "printLog":Z
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 2633
    .local v1, "currObj":Ljava/lang/Object;
    instance-of v11, v1, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-nez v11, :cond_0

    .line 2634
    const/4 v6, 0x1

    .line 2632
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2637
    .end local v1    # "currObj":Ljava/lang/Object;
    :cond_1
    if-eqz v6, :cond_3

    .line 2638
    move-object v0, v8

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 2639
    .restart local v1    # "currObj":Ljava/lang/Object;
    const-string v11, "getSortedRecipients"

    invoke-direct {p0, v11, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tempLogPrint(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2638
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2641
    .end local v1    # "currObj":Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    .line 2644
    :cond_3
    const/4 v9, 0x0

    .line 2646
    .local v9, "recips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    const-class v14, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "recips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    check-cast v9, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2658
    .restart local v9    # "recips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2660
    .local v7, "recipientsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    .line 2661
    .local v10, "spannable":Landroid/text/Spannable;
    new-instance v11, Lcom/android/ex/chips/MTKRecipientEditTextView$10;

    invoke-direct {v11, p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView$10;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Landroid/text/Spannable;)V

    invoke-static {v7, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2676
    const-string v11, "MTKRec"

    const-string v12, "[getSortedRecipients] end"

    invoke-direct {p0, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    return-object v11

    .line 2648
    .end local v7    # "recipientsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    .end local v9    # "recips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v10    # "spannable":Landroid/text/Spannable;
    :catch_0
    move-exception v2

    .line 2650
    .local v2, "e":Ljava/lang/ArrayStoreException;
    const-string v11, "RecipientEditTextView"

    const-string v12, "[getSortedRecipients] ArrayStoreException occurs."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    const-string v11, "RecipientEditTextView"

    invoke-virtual {v2}, Ljava/lang/ArrayStoreException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2652
    new-instance v5, Landroid/util/LogPrinter;

    const/4 v11, 0x3

    const-string v12, "RecipientEditTextView"

    invoke-direct {v5, v11, v12}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    .line 2653
    .local v5, "lp":Landroid/util/LogPrinter;
    const-string v11, "[getSortedRecipients] spans:"

    invoke-virtual {v5, v11}, Landroid/util/LogPrinter;->println(Ljava/lang/String;)V

    .line 2654
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    const-string v12, "  "

    invoke-static {v11, v5, v12}, Landroid/text/TextUtils;->dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V

    .line 2655
    new-instance v11, Ljava/lang/ArrayStoreException;

    invoke-direct {v11}, Ljava/lang/ArrayStoreException;-><init>()V

    throw v11
.end method

.method getSpannable()Landroid/text/Spannable;
    .locals 1

    .prologue
    .line 2050
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method getViewWidth()I
    .locals 1

    .prologue
    .line 1490
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v0

    return v0
.end method

.method public handleAndGetText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 5087
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method handlePaste()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3639
    const-string v17, "RecipientEditTextView"

    const-string v18, "[handlePaste]"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3640
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3641
    .local v14, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v14, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v11

    .line 3642
    .local v11, "originalTokenStart":I
    invoke-virtual {v14, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 3643
    .local v9, "lastAddress":Ljava/lang/String;
    move/from16 v16, v11

    .line 3644
    .local v16, "tokenStart":I
    const/4 v13, 0x0

    .line 3645
    .local v13, "prevTokenStart":I
    const/4 v7, 0x0

    .line 3646
    .local v7, "findChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3647
    .local v4, "created":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    if-eqz v16, :cond_3

    .line 3649
    :cond_0
    if-eqz v16, :cond_1

    if-nez v7, :cond_1

    move/from16 v0, v16

    if-eq v0, v13, :cond_1

    .line 3650
    move/from16 v13, v16

    .line 3651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v14, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v16

    .line 3652
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v7

    .line 3653
    move/from16 v0, v16

    if-ne v0, v11, :cond_5

    if-nez v7, :cond_5

    .line 3662
    :cond_1
    :goto_0
    move/from16 v0, v16

    if-eq v0, v11, :cond_3

    .line 3663
    if-eqz v7, :cond_2

    .line 3664
    move/from16 v16, v13

    .line 3669
    :cond_2
    move v12, v11

    .line 3670
    .local v12, "parseEnd":I
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v10, v17, v11

    .line 3672
    .local v10, "offsetFromLastString":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v12, :cond_3

    .line 3673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->movePastTerminators(I)I

    move-result v15

    .line 3675
    .local v15, "tokenEnd":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 3676
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v5

    .line 3677
    .local v5, "createdChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-nez v5, :cond_6

    .line 3690
    .end local v5    # "createdChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v10    # "offsetFromLastString":I
    .end local v12    # "parseEnd":I
    .end local v15    # "tokenEnd":I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 3691
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 3692
    .local v6, "editable":Landroid/text/Editable;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v16

    .line 3693
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 3694
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3697
    .end local v6    # "editable":Landroid/text/Editable;
    :cond_4
    sget v17, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v17, v17, 0x2

    if-eqz v17, :cond_7

    .line 3698
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3699
    .local v3, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-interface {v3}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3657
    .end local v3    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_5
    move/from16 v0, v16

    if-ne v13, v0, :cond_0

    goto/16 :goto_0

    .line 3681
    .restart local v5    # "createdChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v10    # "offsetFromLastString":I
    .restart local v12    # "parseEnd":I
    .restart local v15    # "tokenEnd":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v17

    add-int/lit8 v16, v17, 0x1

    .line 3682
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3684
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->length()I

    move-result v17

    sub-int v12, v17, v10

    goto/16 :goto_1

    .line 3703
    .end local v5    # "createdChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v10    # "offsetFromLastString":I
    .end local v12    # "parseEnd":I
    .end local v15    # "tokenEnd":I
    :cond_7
    return-object v4
.end method

.method handlePendingChips()V
    .locals 19

    .prologue
    .line 1345
    const-string v12, "RecipientEditTextView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[handlePendingChips] Start, pending chips count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setForceEnableBringPointIntoView(Z)V

    .line 1349
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getViewWidth()I

    move-result v12

    if-gtz v12, :cond_1

    .line 1350
    const-string v12, "RecipientEditTextView"

    const-string v13, "[handlePendingChips] getViewWidth() <= 0, return"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1356
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    if-lez v12, :cond_0

    .line 1360
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    monitor-enter v13

    .line 1361
    const/4 v7, 0x0

    .line 1363
    .local v7, "prevTokenEnd":I
    :try_start_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    const/16 v14, 0x64

    if-gt v12, v14, :cond_d

    .line 1364
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-direct {v4, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1365
    .local v4, "editable":Landroid/text/Editable;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_a

    .line 1366
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1367
    .local v3, "current":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 1368
    .local v10, "tokenStart":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v10

    add-int/lit8 v9, v12, -0x1

    .line 1369
    .local v9, "tokenEnd":I
    const-string v12, "RecipientEditTextView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[handlePendingChips] index: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", tokenStart:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", tokenEnd:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    if-ltz v10, :cond_4

    .line 1373
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    if-ge v9, v12, :cond_2

    invoke-interface {v4, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v14, 0x2c

    if-ne v12, v14, :cond_2

    .line 1375
    add-int/lit8 v9, v9, 0x1

    .line 1377
    :cond_2
    const-wide/16 v14, 0x8

    const-string v12, "createRepChip"

    invoke-static {v14, v15, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1378
    const/4 v12, 0x2

    if-lt v5, v12, :cond_3

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShouldShrink:Z

    if-nez v12, :cond_7

    :cond_3
    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9, v4, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createReplacementChip(IILandroid/text/Editable;Z)V

    .line 1379
    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 1382
    :cond_4
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v12

    const-class v14, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v4, v10, v12, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 1383
    .local v2, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_9

    array-length v12, v2

    if-lez v12, :cond_9

    .line 1384
    const/4 v8, 0x0

    .line 1385
    .local v8, "prevTokenEndSet":Z
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_3
    array-length v12, v2

    if-ge v11, v12, :cond_5

    .line 1386
    aget-object v12, v2, v11

    invoke-interface {v4, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    if-ne v12, v10, :cond_8

    .line 1387
    aget-object v12, v2, v11

    invoke-interface {v4, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 1388
    const/4 v8, 0x1

    .line 1392
    :cond_5
    if-nez v8, :cond_6

    .line 1393
    const/4 v7, 0x0

    .line 1399
    .end local v8    # "prevTokenEndSet":Z
    .end local v11    # "x":I
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    .line 1365
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1378
    .end local v2    # "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 1385
    .restart local v2    # "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v8    # "prevTokenEndSet":Z
    .restart local v11    # "x":I
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1396
    .end local v8    # "prevTokenEndSet":Z
    .end local v11    # "x":I
    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    .line 1401
    .end local v2    # "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v3    # "current":Ljava/lang/String;
    .end local v9    # "tokenEnd":I
    .end local v10    # "tokenStart":I
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1403
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->sanitizeBetween()V

    .line 1404
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->sanitizeEnd()V

    .line 1411
    .end local v4    # "editable":Landroid/text/Editable;
    .end local v5    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mStringToBeRestore:Ljava/lang/String;

    if-eqz v12, :cond_b

    .line 1412
    const-string v12, "RecipientEditTextView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[handlePendingChips] Restore text ->"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mStringToBeRestore:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mStringToBeRestore:Ljava/lang/String;

    invoke-interface {v12, v14}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 1414
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mStringToBeRestore:Ljava/lang/String;

    .line 1418
    :cond_b
    const-string v14, "RecipientEditTextView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[handlePendingChips] phase 1 completed, mTemporaryRecipients.size: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-nez v12, :cond_e

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/16 v14, 0x64

    if-gt v12, v14, :cond_13

    .line 1422
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->hasFocus()Z

    move-result v12

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v14, 0x2

    if-ge v12, v14, :cond_f

    .line 1423
    :cond_c
    const-string v12, "RecipientEditTextView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[handlePendingChips] execute RecipientReplacementTask, count: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    new-instance v12, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Void;

    invoke-virtual {v12, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1425
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/ex/chips/MTKRecipientEditTextView$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView$8;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    invoke-virtual {v12, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1433
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearTemporaryRecipients()V

    .line 1482
    :goto_7
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    .line 1483
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1484
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    const-string v12, "RecipientEditTextView"

    const-string v13, "[handlePendingChips] End"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1407
    :cond_d
    const/4 v12, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    goto/16 :goto_5

    .line 1484
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 1418
    :cond_e
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    goto/16 :goto_6

    .line 1437
    :cond_f
    const/4 v6, 0x0

    .line 1438
    .local v6, "numChipsCanShow":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1439
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateNumChipsCanShow()I

    move-result v6

    .line 1445
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v2

    .line 1446
    .restart local v2    # "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_11

    array-length v12, v2

    if-gt v12, v6, :cond_11

    .line 1447
    const-string v12, "RecipientEditTextView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[handlePendingChips] execute RecipientReplacementTask, count: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    new-instance v12, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Void;

    invoke-virtual {v12, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1449
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearTemporaryRecipients()V

    goto :goto_7

    .line 1441
    .end local v2    # "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_10
    const/4 v6, 0x2

    goto :goto_8

    .line 1451
    .restart local v2    # "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_11
    const-string v12, "RecipientEditTextView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[handlePendingChips] execute IndividualReplacementTask, count: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", canShow: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    new-instance v12, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    .line 1454
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/util/ArrayList;

    const/4 v15, 0x0

    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v16, v14, v15

    invoke-virtual {v12, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1456
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, v6, :cond_12

    .line 1457
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v6, v15}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 1460
    const-string v12, "RecipientEditTextView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[handlePendingChips] update mTemporaryRecipients count: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", canShow: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreChip()V

    goto/16 :goto_7

    .line 1463
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearTemporaryRecipients()V

    goto :goto_9

    .line 1469
    .end local v2    # "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v6    # "numChipsCanShow":I
    :cond_13
    const-string v14, "RecipientEditTextView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[handlePendingChips] fall back to show addresses. count: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-nez v12, :cond_15

    const/4 v12, 0x0

    :goto_a
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearTemporaryRecipients()V

    .line 1475
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->hasFocus()Z

    move-result v12

    if-nez v12, :cond_14

    .line 1476
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreChip()V

    .line 1480
    :cond_14
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setForceEnableBringPointIntoView(Z)V

    goto/16 :goto_7

    .line 1469
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v12

    goto :goto_a
.end method

.method isCompletedToken(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 2108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2119
    :cond_0
    :goto_0
    return v4

    .line 2112
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2113
    .local v1, "end":I
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, p1, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 2114
    .local v2, "start":I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2115
    .local v3, "token":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2116
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2117
    .local v0, "atEnd":C
    const/16 v5, 0x2c

    if-eq v0, v5, :cond_2

    const/16 v5, 0x3b

    if-eq v0, v5, :cond_2

    const v5, 0xff0c

    if-eq v0, v5, :cond_2

    const v5, 0xff1b

    if-ne v0, v5, :cond_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected isPhoneQuery()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4388
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getQueryType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollAddText()Z
    .locals 1

    .prologue
    .line 4407
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mEnableScrollAddText:Z

    return v0
.end method

.method protected isTouchPointInChip(FF)Z
    .locals 8
    .param p1, "posX"    # F
    .param p2, "posY"    # F

    .prologue
    .line 4692
    const/4 v1, 0x1

    .line 4693
    .local v1, "isInChip":Z
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 4694
    .local v2, "layout":Landroid/text/Layout;
    if-eqz v2, :cond_0

    .line 4696
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getOffsetForPosition(FF)I

    move-result v5

    .line 4697
    .local v5, "offsetForPosition":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 4698
    .local v3, "line":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 4699
    .local v4, "maxX":F
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getTotalPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float v0, p1, v6

    .line 4700
    .local v0, "currentX":F
    const/4 v6, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 4701
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getTotalPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 4702
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    .line 4703
    cmpl-float v6, v0, v4

    if-lez v6, :cond_0

    .line 4705
    const/4 v1, 0x0

    .line 4708
    .end local v0    # "currentX":F
    .end local v3    # "line":I
    .end local v4    # "maxX":F
    .end local v5    # "offsetForPosition":I
    :cond_0
    return v1
.end method

.method protected isTouchPointInChipVertical(F)Z
    .locals 8
    .param p1, "posY"    # F

    .prologue
    const/4 v5, 0x0

    .line 4725
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4726
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_0

    .line 4728
    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    sub-int v2, v6, v7

    .line 4729
    .local v2, "lineHeight":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getTotalPaddingTop()I

    move-result v6

    int-to-float v6, v6

    sub-float v0, p1, v6

    .line 4730
    .local v0, "currentY":F
    int-to-float v6, v2

    iget v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    sub-float v3, v6, v7

    .line 4731
    .local v3, "lineSpace":F
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    int-to-float v7, v2

    rem-float v4, v6, v7

    .line 4732
    .local v4, "y":F
    cmpg-float v6, v4, v3

    if-gtz v6, :cond_0

    .line 4736
    .end local v0    # "currentY":F
    .end local v2    # "lineHeight":I
    .end local v3    # "lineSpace":F
    .end local v4    # "y":F
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public lastCharacterIsCommitCharacter(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 3492
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v3

    .line 3493
    .local v0, "end":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->length()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 3494
    .local v2, "len":I
    if-eq v0, v2, :cond_3

    .line 3495
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 3499
    .local v1, "last":C
    :goto_1
    const/16 v4, 0x2c

    if-eq v1, v4, :cond_0

    const/16 v4, 0x3b

    if-ne v1, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3

    .line 3492
    .end local v0    # "end":I
    .end local v1    # "last":C
    .end local v2    # "len":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    .line 3497
    .restart local v0    # "end":I
    .restart local v2    # "len":I
    :cond_3
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .restart local v1    # "last":C
    goto :goto_1
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 1

    .prologue
    .line 4578
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoveCursorToVisible:Z

    if-nez v0, :cond_0

    .line 4579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoveCursorToVisible:Z

    .line 4580
    const/4 v0, 0x0

    .line 4582
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->moveCursorToVisibleOffset()Z

    move-result v0

    goto :goto_0
.end method

.method movePastTerminators(I)I
    .locals 4
    .param p1, "tokenEnd"    # I

    .prologue
    .line 3708
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->length()I

    move-result v2

    if-lt p1, v2, :cond_0

    move v1, p1

    .line 3720
    .end local p1    # "tokenEnd":I
    .local v1, "tokenEnd":I
    :goto_0
    return v1

    .line 3711
    .end local v1    # "tokenEnd":I
    .restart local p1    # "tokenEnd":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3712
    .local v0, "atEnd":C
    const/16 v2, 0x2c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_2

    .line 3713
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 3717
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->length()I

    move-result v2

    if-ge p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    .line 3718
    add-int/lit8 p1, p1, 0x1

    :cond_3
    move v1, p1

    .line 3720
    .end local p1    # "tokenEnd":I
    .restart local v1    # "tokenEnd":I
    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2682
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAttachedToWindow:Z

    .line 431
    sget v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 432
    sget-object v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->sContactObserver:Lcom/android/ex/chips/MTKContactObserver;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mContactListener:Lcom/android/ex/chips/MTKContactObserver$ContactListener;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/MTKContactObserver;->addContactListener(Lcom/android/ex/chips/MTKContactObserver$ContactListener;)V

    .line 434
    :cond_0
    return-void
.end method

.method public onCheckedItemChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2384
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 2385
    .local v0, "listView":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2386
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 2388
    :cond_0
    iput p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCheckedItem:I

    .line 2389
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4381
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 4383
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    const-string v1, ""

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 4384
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 4385
    return-void
.end method

.method public onClick(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;IFF)V
    .locals 3
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "offset"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 3290
    const-string v1, "RecipientEditTextView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onClick] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3291
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3292
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isInDelete(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;IFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3293
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 3298
    :cond_0
    :goto_1
    return-void

    .line 3290
    :cond_1
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 3295
    :cond_2
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 4750
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onConfigurationChanged] current view width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", line count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLineCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4752
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4753
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->registerGlobalLayoutListener()V

    .line 4756
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4757
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4758
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 4760
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->dismissDropDown()V

    .line 4762
    :cond_2
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2699
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 455
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 456
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v2, 0xff

    .line 457
    .local v1, "imeActions":I
    and-int/lit8 v2, v1, 0x6

    if-eqz v2, :cond_0

    .line 459
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    xor-int/2addr v2, v1

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 461
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 463
    :cond_0
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x40000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 464
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v3, -0x40000001

    and-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 466
    :cond_1
    const/4 v2, 0x6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 467
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/ex/chips/R$string;->done:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 468
    return-object v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2687
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAttachedToWindow:Z

    .line 422
    sget v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 423
    sget-object v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->sContactObserver:Lcom/android/ex/chips/MTKContactObserver;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mContactListener:Lcom/android/ex/chips/MTKContactObserver$ContactListener;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/MTKContactObserver;->removeContactListener(Lcom/android/ex/chips/MTKContactObserver$ContactListener;)V

    .line 425
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 4375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    .line 4376
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 4200
    const/4 v0, 0x0

    return v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v0, 0x1

    .line 4291
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 4302
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4294
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 4296
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->requestFocus()Z

    goto :goto_0

    .line 4299
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handlePasteClip(Landroid/content/ClipData;)V

    goto :goto_0

    .line 4291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "action"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 438
    const-string v1, "RecipientEditTextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onEditorAction] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 v1, 0x6

    if-ne p2, v1, :cond_3

    .line 440
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v0

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v1, :cond_2

    .line 444
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 446
    :cond_2
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->focusNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFilterComplete(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 2098
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->bTouchedAfterPasted:Z

    if-nez v0, :cond_0

    .line 2099
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onFilterComplete(I)V

    .line 2101
    :cond_0
    iput-boolean v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->bPasted:Z

    .line 2102
    iput-boolean v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->bTouchedAfterPasted:Z

    .line 2103
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 4206
    const/4 v0, 0x0

    return v0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "hasFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previous"    # Landroid/graphics/Rect;

    .prologue
    .line 743
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFocusChanged] hasFocus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 745
    if-nez p1, :cond_0

    .line 746
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shrink()V

    .line 750
    :goto_0
    return-void

    .line 748
    :cond_0
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->expand()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2537
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-gez p3, :cond_0

    .line 2541
    :goto_0
    return-void

    .line 2540
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->submitItemAtPosition(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 2015
    const/16 v2, 0x42

    if-ne p1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2045
    :cond_0
    :goto_0
    return v0

    .line 2019
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 2036
    :cond_2
    const/16 v2, 0x43

    if-ne p1, v2, :cond_5

    .line 2037
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2038
    .local v0, "handled":Z
    iget-boolean v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLastStringChanged:Z

    if-nez v2, :cond_0

    sget v2, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 2039
    iput-boolean v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLastStringChanged:Z

    .line 2040
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->registerVSync()V

    goto :goto_0

    .line 2022
    .end local v0    # "handled":Z
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2023
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitDefault()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 2024
    goto :goto_0

    .line 2026
    :cond_3
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v2, :cond_4

    .line 2027
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    move v0, v1

    .line 2028
    goto :goto_0

    .line 2029
    :cond_4
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->focusNext()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 2030
    goto :goto_0

    .line 2045
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2019
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1716
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_0

    .line 1717
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 1718
    const/4 v0, 0x1

    .line 1720
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1733
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onKeyUp] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    packed-switch p1, :pswitch_data_0

    .line 1745
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1736
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1737
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_1

    .line 1738
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 1740
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitDefault()Z

    goto :goto_0

    .line 1734
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4211
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v4, :cond_1

    .line 4228
    :cond_0
    :goto_0
    return-void

    .line 4214
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 4215
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 4216
    .local v3, "y":F
    invoke-direct {p0, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->putOffsetInRange(FF)I

    move-result v1

    .line 4218
    .local v1, "offset":I
    invoke-virtual {p0, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isTouchPointInChip(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 4219
    .local v0, "currentChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :goto_1
    if-eqz v0, :cond_0

    .line 4220
    iget-boolean v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDragEnabled:Z

    if-eqz v4, :cond_3

    .line 4222
    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->startDrag(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    goto :goto_0

    .line 4218
    .end local v0    # "currentChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 4225
    .restart local v0    # "currentChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_3
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->showCopyDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 4628
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onPreDraw()Z

    move-result v0

    .line 4630
    .local v0, "changed":Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 4631
    return v0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2691
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 15
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 544
    const-string v12, "RecipientEditTextView"

    const-string v13, "[onRestoreInstanceState]"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, p1

    .line 547
    check-cast v6, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;

    .line 548
    .local v6, "ss":Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;
    iget-boolean v2, v6, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;->frozenWithFocus:Z

    .line 550
    .local v2, "hasFocus":Z
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 551
    const/4 v12, 0x0

    invoke-super {p0, v12}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 556
    :goto_0
    const-string v12, "RecipientEditTextView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[onRestore] Text->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v1, 0x1

    .line 560
    .local v1, "doRestore":Z
    if-eqz v2, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLastChip()Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    .line 562
    .local v3, "lastChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v3, :cond_0

    .line 563
    const/4 v1, 0x0

    .line 568
    .end local v3    # "lastChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    if-eqz v1, :cond_6

    .line 569
    const-string v12, "RecipientEditTextView"

    const-string v13, "[onRestore] Do restore process"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v12, :cond_1

    .line 571
    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 574
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 575
    .local v7, "text":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 576
    .local v8, "textLen":I
    const-string v12, "MTKRecip"

    const-string v13, "[onRestoreInstanceState] delete"

    invoke-direct {p0, v12, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 578
    new-instance v5, Lcom/android/ex/chips/MTKRecipientList;

    invoke-direct {v5}, Lcom/android/ex/chips/MTKRecipientList;-><init>()V

    .line 579
    .local v5, "recipientList":Lcom/android/ex/chips/MTKRecipientList;
    const/4 v11, 0x0

    .line 580
    .local v11, "x":I
    const/4 v10, 0x0

    .line 581
    .local v10, "tokenStart":I
    const/4 v9, 0x0

    .line 582
    .local v9, "tokenEnd":I
    :goto_1
    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v12, v7, v10}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v9, v12, :cond_4

    .line 583
    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "destination":Ljava/lang/String;
    add-int/lit8 v10, v9, 0x2

    .line 585
    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .end local v0    # "destination":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5, v12, v0}, Lcom/android/ex/chips/MTKRecipientList;->addRecipient(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    add-int/lit8 v11, v11, 0x1

    .line 587
    goto :goto_1

    .line 553
    .end local v1    # "doRestore":Z
    .end local v5    # "recipientList":Lcom/android/ex/chips/MTKRecipientList;
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "textLen":I
    .end local v9    # "tokenEnd":I
    .end local v10    # "tokenStart":I
    .end local v11    # "x":I
    :cond_2
    invoke-virtual {v6}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v12

    invoke-super {p0, v12}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 585
    .restart local v0    # "destination":Ljava/lang/String;
    .restart local v1    # "doRestore":Z
    .restart local v5    # "recipientList":Lcom/android/ex/chips/MTKRecipientList;
    .restart local v7    # "text":Ljava/lang/String;
    .restart local v8    # "textLen":I
    .restart local v9    # "tokenEnd":I
    .restart local v10    # "tokenStart":I
    .restart local v11    # "x":I
    :cond_3
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 589
    .end local v0    # "destination":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->appendList(Lcom/android/ex/chips/MTKRecipientList;)V

    .line 591
    if-ge v10, v9, :cond_5

    .line 592
    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 593
    .local v4, "lastToken":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/ex/chips/MTKRecipientList;->getRecipientCount()I

    move-result v12

    if-eqz v12, :cond_7

    .line 594
    iput-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mStringToBeRestore:Ljava/lang/String;

    .line 600
    .end local v4    # "lastToken":Ljava/lang/String;
    :cond_5
    :goto_3
    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v13, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 603
    .end local v5    # "recipientList":Lcom/android/ex/chips/MTKRecipientList;
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "textLen":I
    .end local v9    # "tokenEnd":I
    .end local v10    # "tokenStart":I
    .end local v11    # "x":I
    :cond_6
    return-void

    .line 596
    .restart local v4    # "lastToken":Ljava/lang/String;
    .restart local v5    # "recipientList":Lcom/android/ex/chips/MTKRecipientList;
    .restart local v7    # "text":Ljava/lang/String;
    .restart local v8    # "textLen":I
    .restart local v9    # "tokenEnd":I
    .restart local v10    # "tokenStart":I
    .restart local v11    # "x":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_3
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 607
    const-string v2, "RecipientEditTextView"

    const-string v3, "[onSaveInstanceState]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 611
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 612
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 613
    .local v0, "ss":Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;->frozenWithFocus:Z

    .line 618
    :goto_0
    const-string v2, "RecipientEditTextView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onSave] Text ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-object v0

    .line 616
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;->frozenWithFocus:Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 4359
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectionChanged(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v3, 0x0

    .line 484
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLastChip()Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 485
    .local v0, "last":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setSelection(I)V

    .line 490
    :cond_0
    iget-boolean v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mJustExpanded:Z

    if-eqz v2, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 492
    .local v1, "text":Landroid/text/Editable;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setSelection(I)V

    .line 493
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mJustExpanded:Z

    .line 496
    .end local v1    # "text":Landroid/text/Editable;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onSelectionChanged(II)V

    .line 497
    return-void

    .restart local v1    # "text":Landroid/text/Editable;
    :cond_2
    move v2, v3

    .line 492
    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 4365
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 4370
    const/4 v0, 0x0

    return v0
.end method

.method public onSizeChanged(IIII)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1296
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/MultiAutoCompleteTextView;->onSizeChanged(IIII)V

    .line 1297
    const-string v1, "RecipientEditTextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onSizeChanged] w: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", h: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1299
    iget v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    if-lez v1, :cond_1

    .line 1300
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->postHandlePendingChips()V

    .line 1306
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 1307
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->bringPointIntoView(I)Z

    .line 1311
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTriedGettingScrollView:Z

    if-nez v1, :cond_4

    .line 1312
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1313
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-nez v1, :cond_2

    .line 1314
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 1302
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->checkChipWidths()V

    goto :goto_0

    .line 1316
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_2
    if-eqz v0, :cond_3

    .line 1317
    check-cast v0, Landroid/widget/ScrollView;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    .line 1319
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTriedGettingScrollView:Z

    .line 1321
    :cond_4
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 3614
    const v2, 0x1020022

    if-ne p1, v2, :cond_0

    .line 3616
    iput-boolean v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->bPasted:Z

    .line 3618
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3620
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handlePasteClip(Landroid/content/ClipData;)V

    .line 3623
    .end local v0    # "clipboard":Landroid/content/ClipboardManager;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2142
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 2154
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isFocused()Z

    move-result v13

    if-nez v13, :cond_2

    .line 2156
    invoke-super/range {p0 .. p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 2284
    :cond_1
    :goto_1
    return v4

    .line 2144
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDownPosY:F

    .line 2145
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasScrolled:Z

    goto :goto_0

    .line 2148
    :pswitch_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDownPosY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 2149
    .local v12, "yDelta":F
    const/high16 v13, 0x40a00000

    cmpl-float v13, v12, v13

    if-lez v13, :cond_0

    .line 2150
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasScrolled:Z

    goto :goto_0

    .line 2160
    .end local v12    # "yDelta":F
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->bPasted:Z

    if-eqz v13, :cond_3

    .line 2161
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->bTouchedAfterPasted:Z

    .line 2162
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->dismissDropDown()V

    .line 2166
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mForceEnableBringPointIntoView:Z

    if-eqz v13, :cond_4

    .line 2167
    const-string v13, "RecipientEditTextView"

    const-string v14, "[onTouchEvent] blocked by mForceEnableBringPointIntoView"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    invoke-super/range {p0 .. p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_1

    .line 2172
    :cond_4
    const/high16 v10, -0x40800000

    .line 2173
    .local v10, "x":F
    const/high16 v11, -0x40800000

    .line 2174
    .local v11, "y":F
    const/4 v7, -0x1

    .line 2175
    .local v7, "offset":I
    const/4 v3, 0x0

    .line 2176
    .local v3, "currentChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 2177
    .local v1, "action":I
    const/4 v9, 0x1

    .line 2180
    .local v9, "shouldShowSoftInput":Z
    const/4 v8, 0x0

    .line 2181
    .local v8, "outOfView":Z
    const/4 v13, 0x1

    if-ne v1, v13, :cond_9

    .line 2182
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 2183
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 2185
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getTotalPaddingLeft()I

    move-result v13

    int-to-float v13, v13

    cmpg-float v13, v10, v13

    if-ltz v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getTotalPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    cmpg-float v13, v13, v10

    if-ltz v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getTotalPaddingTop()I

    move-result v13

    int-to-float v13, v13

    cmpg-float v13, v11, v13

    if-ltz v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getTotalPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    cmpg-float v13, v13, v11

    if-gez v13, :cond_6

    .line 2187
    :cond_5
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 2188
    const/4 v8, 0x1

    .line 2189
    const-string v13, "RecipientEditTextView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[onTouchEvent] out of view, X: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Y: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    if-nez v13, :cond_9

    if-nez v8, :cond_9

    .line 2193
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->putOffsetInRange(FF)I

    move-result v7

    .line 2195
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isTouchPointInChip(FF)Z

    move-result v5

    .line 2196
    .local v5, "inChipHor":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isTouchPointInChipVertical(F)Z

    move-result v6

    .line 2197
    .local v6, "inChipVer":Z
    if-eqz v5, :cond_b

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    .line 2199
    :goto_2
    if-eqz v3, :cond_7

    .line 2200
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v9

    .line 2201
    if-nez v9, :cond_7

    .line 2202
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v13}, Landroid/widget/MultiAutoCompleteTextView;->setShowSoftInputOnFocus(Z)V

    .line 2207
    :cond_7
    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v13, :cond_c

    :cond_8
    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 2212
    .end local v5    # "inChipHor":Z
    .end local v6    # "inChipVer":Z
    :cond_9
    invoke-super/range {p0 .. p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 2213
    .local v4, "handled":Z
    const/4 v2, 0x0

    .line 2214
    .local v2, "chipWasSelected":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-nez v13, :cond_a

    .line 2215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2221
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getEnableDiscardNextActionUp()Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x1

    if-ne v1, v13, :cond_d

    .line 2222
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setEnableDiscardNextActionUp(Z)V

    .line 2224
    if-nez v9, :cond_1

    .line 2225
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-super {v0, v13}, Landroid/widget/MultiAutoCompleteTextView;->setShowSoftInputOnFocus(Z)V

    goto/16 :goto_1

    .line 2197
    .end local v2    # "chipWasSelected":Z
    .end local v4    # "handled":Z
    .restart local v5    # "inChipHor":Z
    .restart local v6    # "inChipVer":Z
    :cond_b
    const/4 v3, 0x0

    goto :goto_2

    .line 2207
    :cond_c
    const/4 v13, 0x0

    goto :goto_3

    .line 2232
    .end local v5    # "inChipHor":Z
    .end local v6    # "inChipVer":Z
    .restart local v2    # "chipWasSelected":Z
    .restart local v4    # "handled":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    if-nez v13, :cond_11

    const/4 v13, 0x1

    if-ne v1, v13, :cond_11

    .line 2233
    const-string v13, "RecipientEditTextView"

    const-string v14, "[onTouchEvent] ACTION_UP"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoveCursorToVisible:Z

    if-eqz v13, :cond_f

    .line 2236
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoveCursorToVisible:Z

    .line 2238
    if-nez v9, :cond_e

    .line 2239
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-super {v0, v13}, Landroid/widget/MultiAutoCompleteTextView;->setShowSoftInputOnFocus(Z)V

    .line 2242
    :cond_e
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 2246
    :cond_f
    if-nez v8, :cond_17

    if-eqz v3, :cond_17

    .line 2247
    const/4 v13, 0x1

    if-ne v1, v13, :cond_10

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasScrolled:Z

    if-nez v13, :cond_10

    .line 2248
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eq v13, v3, :cond_15

    .line 2249
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 2250
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->selectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2259
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v13, :cond_10

    .line 2260
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLineOfChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLineOfSelectedChip:I

    .line 2263
    :cond_10
    const/4 v2, 0x1

    .line 2264
    const/4 v4, 0x1

    .line 2269
    :cond_11
    :goto_5
    const/4 v13, 0x1

    if-ne v1, v13, :cond_12

    if-nez v2, :cond_12

    .line 2270
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 2273
    :cond_12
    const/4 v13, 0x3

    if-eq v1, v13, :cond_13

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasScrolled:Z

    if-eqz v13, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v13, :cond_14

    .line 2275
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 2280
    :cond_14
    if-nez v9, :cond_1

    .line 2281
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-super {v0, v13}, Landroid/widget/MultiAutoCompleteTextView;->setShowSoftInputOnFocus(Z)V

    goto/16 :goto_1

    .line 2251
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-nez v13, :cond_16

    .line 2252
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setSelection(I)V

    .line 2253
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitDefault()Z

    .line 2254
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->selectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    goto :goto_4

    .line 2256
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->onClick(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;IFF)V

    goto :goto_4

    .line 2265
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 2266
    const/4 v2, 0x1

    goto :goto_5

    .line 2142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    .prologue
    .line 2071
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    sget-object v6, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    if-eq v5, v6, :cond_0

    .line 2094
    :goto_0
    return-void

    .line 2075
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 2076
    .local v2, "isCompletedToken":Z
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->enoughToFilter()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    if-nez v2, :cond_1

    .line 2077
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 2078
    .local v1, "end":I
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, p1, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 2081
    .local v4, "start":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v3

    .line 2082
    .local v3, "span":Landroid/text/Spannable;
    const-class v5, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v3, v4, v1, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2083
    .local v0, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_2

    array-length v5, v0

    if-lez v5, :cond_2

    .line 2085
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->dismissDropDown()V

    goto :goto_0

    .line 2088
    .end local v0    # "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v1    # "end":I
    .end local v3    # "span":Landroid/text/Spannable;
    .end local v4    # "start":I
    :cond_1
    if-eqz v2, :cond_2

    .line 2090
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->dismissDropDown()V

    goto :goto_0

    .line 2093
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 738
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public performValidation()V
    .locals 0

    .prologue
    .line 793
    return-void
.end method

.method removeChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 13
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 3112
    const-string v11, "RecipientEditTextView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[removeChip] "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez p1, :cond_1

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v11, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3116
    .local v6, "spannable":Landroid/text/Spannable;
    invoke-interface {v6, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 3117
    .local v5, "spanStart":I
    invoke-interface {v6, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .local v4, "spanEnd":I
    move-object v7, v6

    .line 3119
    check-cast v7, Landroid/text/SpannableStringBuilder;

    .line 3120
    .local v7, "text":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getScrollY()I

    move-result v3

    .line 3122
    .local v3, "scrollY":I
    move v8, v4

    .line 3124
    .local v8, "toDelete":I
    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v4, v10, :cond_2

    sget-object v10, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REMOVE_LAST:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    :goto_1
    invoke-direct {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 3127
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 3128
    .local v2, "preLineCount":I
    :goto_2
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-ne p1, v10, :cond_4

    const/4 v9, 0x1

    .line 3130
    .local v9, "wasSelected":Z
    :goto_3
    if-eqz v9, :cond_0

    .line 3131
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3134
    :cond_0
    :goto_4
    if-ltz v8, :cond_5

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v8, v10, :cond_5

    invoke-interface {v7, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_5

    .line 3135
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 3112
    .end local v2    # "preLineCount":I
    .end local v3    # "scrollY":I
    .end local v4    # "spanEnd":I
    .end local v5    # "spanStart":I
    .end local v6    # "spannable":Landroid/text/Spannable;
    .end local v7    # "text":Landroid/text/Editable;
    .end local v8    # "toDelete":I
    .end local v9    # "wasSelected":Z
    :cond_1
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v10

    goto :goto_0

    .line 3124
    .restart local v3    # "scrollY":I
    .restart local v4    # "spanEnd":I
    .restart local v5    # "spanStart":I
    .restart local v6    # "spannable":Landroid/text/Spannable;
    .restart local v7    # "text":Landroid/text/Editable;
    .restart local v8    # "toDelete":I
    :cond_2
    sget-object v10, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REMOVE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    goto :goto_1

    .line 3127
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 3128
    .restart local v2    # "preLineCount":I
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 3137
    .restart local v9    # "wasSelected":Z
    :cond_5
    invoke-interface {v6, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3138
    if-ltz v5, :cond_6

    if-lez v8, :cond_6

    .line 3139
    const-string v10, "MTKRecip"

    const-string v11, "[removeChip] delete"

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3140
    invoke-interface {v7, v5, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 3142
    :cond_6
    if-eqz v9, :cond_7

    .line 3143
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 3149
    iget v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLineOfSelectedChip:I

    add-int/lit8 v11, v2, -0x2

    if-lt v10, v11, :cond_7

    .line 3150
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 3151
    .local v1, "postLineCount":I
    :goto_5
    if-eq v2, v1, :cond_7

    .line 3152
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 3153
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->scrollBottomIntoView()V

    .line 3159
    .end local v1    # "postLineCount":I
    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3160
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLineCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 3161
    .local v0, "h":I
    if-ge v0, v3, :cond_8

    .line 3162
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/ex/chips/MTKRecipientEditTextView$12;

    invoke-direct {v11, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$12;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3173
    :cond_8
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShowAlternatesTask:Landroid/os/AsyncTask;

    if-eqz v10, :cond_9

    .line 3174
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShowAlternatesTask:Landroid/os/AsyncTask;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3178
    :cond_9
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v10}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 3179
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v10}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 3182
    :cond_a
    sget-object v10, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    invoke-direct {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 3184
    sget v10, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_b

    .line 3185
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3187
    :cond_b
    return-void

    .line 3150
    .end local v0    # "h":I
    :cond_c
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public removeChipChangedListener(Lcom/android/ex/chips/MTKRecipientEditTextView$ChipWatcher;)V
    .locals 2
    .param p1, "watcher"    # Lcom/android/ex/chips/MTKRecipientEditTextView$ChipWatcher;

    .prologue
    .line 5235
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipChangedListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 5236
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 5237
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 5238
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5241
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method removeMoreChip()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 2867
    const-string v11, "RecipientEditTextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[removeMoreChip], more chip span count: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-nez v9, :cond_1

    move-object v9, v10

    :goto_0
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v11, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2868
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    if-eqz v9, :cond_0

    .line 2869
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2873
    .local v7, "span":Landroid/text/Editable;
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    invoke-interface {v7, v9}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 2875
    .local v4, "fromIndex":I
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    invoke-interface {v7, v9}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 2876
    iput-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 2878
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 2880
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v6

    .line 2883
    .local v6, "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v6, :cond_0

    array-length v9, v6

    if-nez v9, :cond_2

    .line 2912
    .end local v4    # "fromIndex":I
    .end local v6    # "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v7    # "span":Landroid/text/Editable;
    :cond_0
    :goto_1
    return-void

    .line 2867
    :cond_1
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 2886
    .restart local v4    # "fromIndex":I
    .restart local v6    # "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v7    # "span":Landroid/text/Editable;
    :cond_2
    move-object v3, v7

    .line 2887
    .local v3, "editable":Landroid/text/Editable;
    const-string v9, "RecipientEditTextView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[removeMoreChip], text = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2888
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2893
    .local v0, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2894
    .local v8, "token":Ljava/lang/String;
    const-string v9, "RecipientEditTextView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[removeMoreChip], token = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 2900
    .local v2, "chipStart":I
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "chipEnd":I
    move v4, v1

    .line 2902
    const/4 v9, -0x1

    if-eq v2, v9, :cond_3

    .line 2903
    const-string v9, "MTKRecip"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[removeMoreChip] setSpan chipStart = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " chipEnd ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2904
    const/16 v9, 0x21

    invoke-interface {v3, v0, v2, v1, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 2908
    .end local v0    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v1    # "chipEnd":I
    .end local v2    # "chipStart":I
    .end local v8    # "token":Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2910
    .end local v3    # "editable":Landroid/text/Editable;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 3306
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    if-ne p1, v0, :cond_0

    .line 3307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 3309
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3310
    return-void
.end method

.method replaceChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V
    .locals 18
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "entry"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    .line 3195
    const-string v15, "RecipientEditTextView"

    const-string v16, "[replaceChip] start"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3196
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p1

    if-ne v0, v15, :cond_5

    const/4 v14, 0x1

    .line 3197
    .local v14, "wasSelected":Z
    :goto_0
    if-eqz v14, :cond_0

    .line 3198
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3200
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v12

    .line 3201
    .local v12, "start":I
    invoke-direct/range {p0 .. p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v6

    .line 3202
    .local v6, "end":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v4

    .line 3203
    .local v4, "currChips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    const-string v15, "RecipientEditTextView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[replaceChip] start: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", end: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", chip: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3206
    const/4 v15, -0x1

    if-eq v12, v15, :cond_1

    const/4 v15, -0x1

    if-ne v6, v15, :cond_7

    .line 3207
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v7

    .line 3208
    .local v7, "entry1":Lcom/android/ex/chips/RecipientEntry;
    if-eqz v4, :cond_2

    array-length v15, v4

    if-lez v15, :cond_2

    .line 3209
    const/4 v15, 0x0

    aget-object v15, v4, v15

    invoke-interface {v15}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v8

    .line 3210
    .local v8, "entry2":Lcom/android/ex/chips/RecipientEntry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->compareEntries(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEntry;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 3211
    const-string v15, "RecipientEditTextView"

    const-string v16, "[replaceChip] The first chip is changed, update to the new one"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3212
    const/4 v15, 0x0

    aget-object p1, v4, v15

    .line 3213
    invoke-direct/range {p0 .. p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v12

    .line 3214
    invoke-direct/range {p0 .. p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v6

    .line 3220
    .end local v8    # "entry2":Lcom/android/ex/chips/RecipientEntry;
    :cond_2
    const/4 v15, -0x1

    if-eq v12, v15, :cond_3

    const/4 v15, -0x1

    if-ne v6, v15, :cond_7

    .line 3221
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_7

    .line 3222
    const/4 v2, 0x5

    .line 3223
    .local v2, "MAX_SEARCH_COUNT":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 3224
    .local v11, "searchCount":I
    const/4 v10, 0x0

    .local v10, "idx":I
    :goto_1
    if-ge v10, v11, :cond_7

    .line 3225
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v15}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v9

    .line 3226
    .local v9, "entry3":Lcom/android/ex/chips/RecipientEntry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->compareEntries(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEntry;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 3227
    const-string v15, "RecipientEditTextView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[replaceChip] Found in mRemovedSpans, index:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", ignore this replacing action"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3272
    .end local v2    # "MAX_SEARCH_COUNT":I
    .end local v7    # "entry1":Lcom/android/ex/chips/RecipientEntry;
    .end local v9    # "entry3":Lcom/android/ex/chips/RecipientEntry;
    .end local v10    # "idx":I
    .end local v11    # "searchCount":I
    :cond_4
    :goto_2
    return-void

    .line 3196
    .end local v4    # "currChips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v6    # "end":I
    .end local v12    # "start":I
    .end local v14    # "wasSelected":Z
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 3224
    .restart local v2    # "MAX_SEARCH_COUNT":I
    .restart local v4    # "currChips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v6    # "end":I
    .restart local v7    # "entry1":Lcom/android/ex/chips/RecipientEntry;
    .restart local v9    # "entry3":Lcom/android/ex/chips/RecipientEntry;
    .restart local v10    # "idx":I
    .restart local v11    # "searchCount":I
    .restart local v12    # "start":I
    .restart local v14    # "wasSelected":Z
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3235
    .end local v2    # "MAX_SEARCH_COUNT":I
    .end local v7    # "entry1":Lcom/android/ex/chips/RecipientEntry;
    .end local v9    # "entry3":Lcom/android/ex/chips/RecipientEntry;
    .end local v10    # "idx":I
    .end local v11    # "searchCount":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3236
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 3237
    .local v5, "editable":Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringReplaceDupChips:Z

    if-nez v15, :cond_8

    .line 3238
    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v6, v15, :cond_c

    sget-object v15, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REPLACE_LAST:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 3241
    :cond_8
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3242
    .local v3, "chipText":Ljava/lang/CharSequence;
    const-string v15, "RecipientEditTextView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[replaceChip] start: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", end: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", chip: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", chipText: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    if-eqz v3, :cond_a

    .line 3244
    const/4 v15, -0x1

    if-eq v12, v15, :cond_9

    const/4 v15, -0x1

    if-ne v6, v15, :cond_d

    .line 3245
    :cond_9
    const-string v15, "RecipientEditTextView"

    const-string v16, "[WARNING] The chip to replace does not exist but should."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    :cond_a
    :goto_4
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setCursorVisible(Z)V

    .line 3263
    if-eqz v14, :cond_b

    .line 3264
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 3266
    :cond_b
    sget-object v15, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 3267
    const-string v15, "RecipientEditTextView"

    const-string v16, "[replaceChip] end"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3269
    sget v15, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_4

    .line 3270
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3238
    .end local v3    # "chipText":Ljava/lang/CharSequence;
    :cond_c
    sget-object v15, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REPLACE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    goto/16 :goto_3

    .line 3249
    .restart local v3    # "chipText":Ljava/lang/CharSequence;
    :cond_d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 3252
    move v13, v6

    .line 3254
    .local v13, "toReplace":I
    :goto_5
    if-ltz v13, :cond_e

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v15

    if-ge v13, v15, :cond_e

    invoke-interface {v5, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v15

    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 3255
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 3257
    :cond_e
    const-string v15, "MTKRecip"

    const-string v16, "[replaceChip] replace"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3258
    invoke-interface {v5, v12, v13, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_4
.end method

.method replaceChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/text/Editable;)V
    .locals 10
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "replacement"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p3, "text"    # Landroid/text/Editable;

    .prologue
    .line 5786
    move-object v5, p1

    .line 5788
    .local v5, "targetChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->convertToVisibleChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 5794
    invoke-interface {p3, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 5795
    .local v4, "start":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    .line 5798
    invoke-interface {p3, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5800
    .local v3, "end":I
    invoke-interface {p3, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 5803
    invoke-interface {p2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v0

    .line 5804
    .local v0, "addressText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5805
    new-instance v1, Landroid/text/SpannableString;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5807
    .local v1, "displayText":Landroid/text/SpannableString;
    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    const/16 v9, 0x21

    invoke-virtual {v1, p2, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5815
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v3, 0x1

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 5817
    .local v6, "toReplace":I
    :goto_0
    const-string v7, "RecipientEditTextView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[run] replace text, start: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", end: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", text: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5818
    invoke-interface {p3, v4, v6, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 5819
    const-string v7, "RecipientEditTextView"

    const-string v8, "[run] replace text, end"

    invoke-direct {p0, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5820
    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 5821
    sget v7, Lcom/android/ex/chips/MTKRecipientEditTextView;->mFeatureSet:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_0

    .line 5822
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->changedChipAddresses:Ljava/util/ArrayList;

    invoke-interface {p2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5825
    .end local v0    # "addressText":Ljava/lang/String;
    .end local v1    # "displayText":Landroid/text/SpannableString;
    .end local v3    # "end":I
    .end local v4    # "start":I
    .end local v6    # "toReplace":I
    :cond_0
    :goto_1
    return-void

    .line 5789
    :catch_0
    move-exception v2

    .line 5790
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "addressText":Ljava/lang/String;
    .restart local v1    # "displayText":Landroid/text/SpannableString;
    .restart local v3    # "end":I
    .restart local v4    # "start":I
    :cond_1
    move v6, v3

    .line 5815
    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1708
    return-void
.end method

.method sanitizeBetween()V
    .locals 9

    .prologue
    .line 1923
    iget v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    if-lez v6, :cond_1

    .line 1958
    :cond_0
    :goto_0
    return-void

    .line 1927
    :cond_1
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    if-nez v6, :cond_0

    .line 1932
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    .line 1933
    .local v3, "recips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    .line 1934
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v2, v3, v6

    .line 1935
    .local v2, "last":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v0, 0x0

    .line 1936
    .local v0, "beforeLast":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v6, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 1937
    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    aget-object v0, v3, v6

    .line 1939
    :cond_2
    const/4 v4, 0x0

    .line 1940
    .local v4, "startLooking":I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 1941
    .local v1, "end":I
    if-eqz v0, :cond_3

    .line 1942
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1943
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1944
    .local v5, "text":Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-gt v4, v6, :cond_0

    .line 1948
    invoke-interface {v5, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_3

    .line 1949
    add-int/lit8 v4, v4, 0x1

    .line 1952
    .end local v5    # "text":Landroid/text/Editable;
    :cond_3
    if-ltz v4, :cond_0

    if-ltz v1, :cond_0

    if-ge v4, v1, :cond_0

    .line 1953
    const-string v6, "MTKRecip"

    const-string v7, "[sanitizeBetween] delete"

    invoke-direct {p0, v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    const-string v6, "RecipientEditTextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[sanitizeBetween] delete, start: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", end: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v4, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method sanitizeEnd()V
    .locals 8

    .prologue
    .line 1499
    iget v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    if-lez v5, :cond_1

    .line 1525
    :cond_0
    :goto_0
    return-void

    .line 1503
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 1504
    .local v0, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v4

    .line 1505
    .local v4, "spannable":Landroid/text/Spannable;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lez v5, :cond_0

    .line 1507
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v5

    iput-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 1508
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    if-eqz v5, :cond_3

    .line 1509
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    invoke-interface {v4, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1513
    .local v2, "end":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1514
    .local v1, "editable":Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1515
    .local v3, "length":I
    if-le v3, v2, :cond_0

    .line 1517
    const-string v5, "RecipientEditTextView"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1518
    const-string v5, "RecipientEditTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There were extra characters after the last tokenizable entry."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_2
    const-string v5, "MTKRecip"

    const-string v6, "[sanitizeEnd] delete"

    invoke-direct {p0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1, v5, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1511
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v2    # "end":I
    .end local v3    # "length":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLastChip()Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .restart local v2    # "end":I
    goto :goto_1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 754
    .local p1, "adapter":Landroid/widget/ListAdapter;, "TT;"
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 755
    check-cast p1, Lcom/android/ex/chips/BaseRecipientAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;, "TT;"
    new-instance v0, Lcom/android/ex/chips/MTKRecipientEditTextView$7;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$7;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->registerUpdateObserver(Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;)V

    .line 764
    return-void
.end method

.method setChipBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "chipBackground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 1276
    return-void
.end method

.method setChipHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 1280
    int-to-float v0, p1

    iput v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    .line 1281
    return-void
.end method

.method public setChipProcessListener(Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;

    .prologue
    .line 4048
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessListener:Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;

    .line 4049
    return-void
.end method

.method protected setEnableDiscardNextActionUp(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 4419
    iput-boolean p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRETVDiscardNextActionUp:Z

    .line 4420
    return-void
.end method

.method protected setIsAutoTesting()V
    .locals 1

    .prologue
    .line 5199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mIsAutoTesting:Z

    .line 5200
    return-void
.end method

.method setMoreItem(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "moreItem"    # Landroid/widget/TextView;

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    .line 1270
    return-void
.end method

.method public setOnFocusListShrinkRecipients(Z)V
    .locals 0
    .param p1, "shrink"    # Z

    .prologue
    .line 1291
    iput-boolean p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShouldShrink:Z

    .line 1292
    return-void
.end method

.method public setScrollAddText(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 4399
    iput-boolean p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mEnableScrollAddText:Z

    .line 4400
    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 1
    .param p1, "tokenizer"    # Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .prologue
    .line 1691
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 1692
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1693
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 0
    .param p1, "validator"    # Landroid/widget/AutoCompleteTextView$Validator;

    .prologue
    .line 1697
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 1698
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1699
    return-void
.end method

.method public showDropDown()V
    .locals 1

    .prologue
    .line 4674
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4675
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isEndChip()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4676
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->showDropDown()V

    .line 4683
    :goto_0
    return-void

    .line 4678
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->dismissDropDown()V

    goto :goto_0

    .line 4681
    :cond_1
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->showDropDown()V

    goto :goto_0
.end method
