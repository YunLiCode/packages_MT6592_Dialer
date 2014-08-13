.class public Lcom/android/ex/chips/RecipientEditTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "RecipientEditTextView.java"

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
        Lcom/android/ex/chips/RecipientEditTextView$RecipientChipShadow;,
        Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;,
        Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;,
        Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;,
        Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;
    }
.end annotation


# static fields
.field static final CHIP_LIMIT:I = 0x2

.field private static final COMMIT_CHAR_COMMA:C = ','

.field private static final COMMIT_CHAR_SEMICOLON:C = ';'

.field private static final COMMIT_CHAR_SPACE:C = ' '

.field private static DISMISS:I = 0x0

.field private static final DISMISS_DELAY:J = 0x12cL

.field private static final MAX_CHIPS_PARSED:I = 0x32

.field private static final PHONE_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "RecipientEditTextView"

.field private static sExcessTopPadding:I

.field private static sSelectedTextColor:I


# instance fields
.field private mActionBarHeight:I

.field private final mAddTextWatcher:Ljava/lang/Runnable;

.field private mAddressPopup:Landroid/widget/ListPopupWindow;

.field private mAlternatesLayout:I

.field private mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAlternatesPopup:Landroid/widget/ListPopupWindow;

.field private mAttachedToWindow:Z

.field private mCheckedItem:I

.field private mChipBackground:Landroid/graphics/drawable/Drawable;

.field private mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

.field private mChipDelete:Landroid/graphics/drawable/Drawable;

.field private mChipFontSize:F

.field private mChipHeight:F

.field private mChipPadding:I

.field private mCopyAddress:Ljava/lang/String;

.field private mCopyDialog:Landroid/app/Dialog;

.field private mDefaultContactPhoto:Landroid/graphics/Bitmap;

.field private mDelayedShrink:Ljava/lang/Runnable;

.field private mDragEnabled:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandlePendingChips:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

.field private mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

.field private mLineSpacingExtra:F

.field private mMaxLines:I

.field private mMoreChip:Landroid/text/style/ImageSpan;

.field private mMoreItem:Landroid/widget/TextView;

.field private mNoChips:Z

.field final mPendingChips:Ljava/util/ArrayList;
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

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

.field private mShouldShrink:Z

.field mTemporaryRecipients:Ljava/util/ArrayList;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 118
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

    sput-object v0, Lcom/android/ex/chips/RecipientEditTextView;->SEPARATOR:Ljava/lang/String;

    .line 123
    const-string v0, "dismiss"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/ex/chips/RecipientEditTextView;->DISMISS:I

    .line 133
    sput v2, Lcom/android/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    .line 213
    const-string v0, "(\\+[0-9]+[\\- \\.]*)?(1?[ ]*\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.][0-9\\- \\.]+[0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/ex/chips/RecipientEditTextView;->PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 251
    sput v2, Lcom/android/ex/chips/RecipientEditTextView;->sExcessTopPadding:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 258
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 138
    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    .line 171
    iput v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 173
    iput-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    .line 209
    iput-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDragEnabled:Z

    .line 219
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$1;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$1;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    .line 231
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$2;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$2;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    .line 240
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$3;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$3;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->setChipDimensions(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 260
    sget v0, Lcom/android/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    .line 263
    :cond_0
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    .line 264
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    .line 265
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    .line 266
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$4;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$4;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 279
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setInputType(I)V

    .line 280
    invoke-virtual {p0, p0}, Lcom/android/ex/chips/RecipientEditTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 281
    invoke-virtual {p0, p0}, Lcom/android/ex/chips/RecipientEditTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 282
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$5;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$5;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    .line 292
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;

    invoke-direct {v0, p0, v2}, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 293
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 294
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 295
    invoke-virtual {p0, p0}, Lcom/android/ex/chips/RecipientEditTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 296
    return-void
.end method

.method static synthetic access$000(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;
    .param p1, "x1"    # Landroid/text/TextWatcher;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createAlternatesAdapter(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/ex/chips/RecipientEditTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAttachedToWindow:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/ex/chips/RecipientEditTextView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    return v0
.end method

.method static synthetic access$1400(Lcom/android/ex/chips/RecipientEditTextView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mLineSpacingExtra:F

    return v0
.end method

.method static synthetic access$1500(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/ex/chips/RecipientEditTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/ex/chips/RecipientEditTextView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;
    .param p1, "x1"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->unselectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/style/ImageSpan;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/ex/chips/RecipientEditTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->chipsPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->shrink()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitByCharacter()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/AutoCompleteTextView$Validator;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/ex/chips/RecipientEditTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/RecipientEntry;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    return-object v0
.end method

.method static synthetic access$2800(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/android/ex/chips/RecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;
    .param p1, "x1"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/android/ex/chips/RecipientEditTextView;->DISMISS:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->scrollBottomIntoView()V

    return-void
.end method

.method private alreadyHasChip(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v1, 0x1

    .line 1282
    iget-boolean v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-eqz v2, :cond_1

    .line 1290
    :cond_0
    :goto_0
    return v1

    .line 1285
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    const-class v3, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v2, p1, p2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 1287
    .local v0, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_0

    .line 1288
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private calculateAvailableWidth()F
    .locals 2

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private calculateOffsetFromBottom(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    sub-int v0, v1, v2

    .line 717
    .local v0, "actualLine":I
    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    float-to-int v1, v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getDropDownVerticalOffset()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private checkChipWidths()V
    .locals 8

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    .line 844
    .local v3, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v3, :cond_1

    .line 846
    move-object v0, v3

    .local v0, "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 847
    .local v2, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 848
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v6

    if-lez v6, :cond_0

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 850
    invoke-interface {v2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/android/ex/chips/RecipientEditTextView;->replaceChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    .line 846
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 854
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
    .line 2211
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

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
    .line 1405
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->unselectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 1407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 1409
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1410
    return-void
.end method

.method private commitByCharacter()V
    .locals 4

    .prologue
    .line 1191
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v3, :cond_0

    .line 1201
    :goto_0
    return-void

    .line 1194
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1195
    .local v0, "editable":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 1196
    .local v1, "end":I
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1197
    .local v2, "start":I
    invoke-direct {p0, v2, v1}, Lcom/android/ex/chips/RecipientEditTextView;->shouldCreateChip(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1198
    invoke-direct {p0, v2, v1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 1200
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    goto :goto_0
.end method

.method private commitChip(IILandroid/text/Editable;)Z
    .locals 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v6, 0x1

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 1204
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1205
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v8

    if-ne p2, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1208
    invoke-direct {p0, v7}, Lcom/android/ex/chips/RecipientEditTextView;->submitItemAtPosition(I)V

    .line 1209
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 1241
    :goto_0
    return v6

    .line 1212
    :cond_0
    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v8, p3, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1213
    .local v5, "tokenEnd":I
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v8

    add-int/lit8 v9, v5, 0x1

    if-le v8, v9, :cond_2

    .line 1214
    add-int/lit8 v8, v5, 0x1

    invoke-interface {p3, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    .line 1215
    .local v1, "charAt":C
    const/16 v8, 0x2c

    if-eq v1, v8, :cond_1

    const/16 v8, 0x3b

    if-ne v1, v8, :cond_2

    .line 1216
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 1219
    .end local v1    # "charAt":C
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1220
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 1221
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1222
    invoke-virtual {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    .line 1223
    .local v3, "entry":Lcom/android/ex/chips/RecipientEntry;
    if-eqz v3, :cond_3

    .line 1224
    const-string v8, ""

    invoke-static {p3, p1, p2, v8}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1225
    invoke-direct {p0, v3, v7}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1226
    .local v2, "chipText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_3

    if-le p1, v10, :cond_3

    if-le p2, v10, :cond_3

    .line 1227
    invoke-interface {p3, p1, p2, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1234
    .end local v2    # "chipText":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v7

    if-ne p2, v7, :cond_4

    .line 1235
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 1237
    :cond_4
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->sanitizeBetween()V

    goto :goto_0

    .end local v3    # "entry":Lcom/android/ex/chips/RecipientEntry;
    :cond_5
    move v6, v7

    .line 1241
    goto :goto_0
.end method

.method private commitDefault()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1168
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v5, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return v4

    .line 1171
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1172
    .local v0, "editable":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 1173
    .local v1, "end":I
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1175
    .local v2, "start":I
    invoke-direct {p0, v2, v1}, Lcom/android/ex/chips/RecipientEditTextView;->shouldCreateChip(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1176
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1179
    .local v3, "whatEnd":I
    invoke-virtual {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v3

    .line 1180
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1181
    invoke-direct {p0, v2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->handleEdit(II)V

    .line 1182
    const/4 v4, 0x1

    goto :goto_0

    .line 1184
    :cond_2
    invoke-direct {p0, v2, v1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    move-result v4

    goto :goto_0
.end method

.method private constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 9
    .param p1, "contact"    # Lcom/android/ex/chips/RecipientEntry;
    .param p2, "pressed"    # Z
    .param p3, "leaveIconSpace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 681
    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 682
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Unable to render any chips as setChipDimensions was not called."

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 686
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 687
    .local v2, "paint":Landroid/text/TextPaint;
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    .line 688
    .local v1, "defaultSize":F
    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    .line 691
    .local v0, "defaultColor":I
    if-eqz p2, :cond_1

    .line 692
    invoke-direct {p0, p1, v2}, Lcom/android/ex/chips/RecipientEditTextView;->createSelectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 699
    .local v5, "tmpBitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 700
    .local v4, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v4, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 701
    new-instance v3, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;

    invoke-direct {v3, v4, p1}, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/ex/chips/RecipientEntry;)V

    .line 703
    .local v3, "recipientChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 704
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 705
    return-object v3

    .line 695
    .end local v3    # "recipientChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v4    # "result":Landroid/graphics/drawable/Drawable;
    .end local v5    # "tmpBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0, p1, v2, p3}, Lcom/android/ex/chips/RecipientEditTextView;->createUnselectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5    # "tmpBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private createAlternatesAdapter(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;
    .locals 8
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 1514
    new-instance v0, Lcom/android/ex/chips/RecipientAlternatesAdapter;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getDataId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v6}, Lcom/android/ex/chips/BaseRecipientAdapter;->getQueryType()I

    move-result v6

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/ex/chips/RecipientAlternatesAdapter;-><init>(Landroid/content/Context;JJILcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;)V

    return-object v0
.end method

.method private createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "entry"    # Lcom/android/ex/chips/RecipientEntry;
    .param p2, "pressed"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1643
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v2

    .line 1644
    .local v2, "displayText":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v5

    .line 1663
    :cond_0
    :goto_0
    return-object v1

    .line 1647
    :cond_1
    const/4 v1, 0x0

    .line 1649
    .local v1, "chipText":Landroid/text/SpannableString;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 1650
    .local v4, "textLength":I
    new-instance v1, Landroid/text/SpannableString;

    .end local v1    # "chipText":Landroid/text/SpannableString;
    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1651
    .restart local v1    # "chipText":Landroid/text/SpannableString;
    iget-boolean v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-nez v6, :cond_0

    .line 1653
    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v6}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 1655
    .local v0, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v6, 0x0

    const/16 v7, 0x21

    invoke-virtual {v1, v0, v6, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1657
    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1658
    .end local v0    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :catch_0
    move-exception v3

    .line 1659
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v6, "RecipientEditTextView"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v5

    .line 1660
    goto :goto_0
.end method

.method private createMoreSpan(I)Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;
    .locals 13
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 1801
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

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

    .line 1802
    .local v1, "moreText":Ljava/lang/String;
    new-instance v6, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 1803
    .local v6, "morePaint":Landroid/text/TextPaint;
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1804
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1805
    invoke-virtual {v6, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int v12, v3, v4

    .line 1807
    .local v12, "width":I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineHeight()I

    move-result v9

    .line 1808
    .local v9, "height":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v9, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1809
    .local v8, "drawable":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1810
    .local v0, "canvas":Landroid/graphics/Canvas;
    move v7, v9

    .line 1811
    .local v7, "adjustedHeight":I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    .line 1812
    .local v10, "layout":Landroid/text/Layout;
    if-eqz v10, :cond_0

    .line 1813
    invoke-virtual {v10, v2}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int/2addr v7, v3

    .line 1815
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    int-to-float v5, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1817
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v11, v3, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1818
    .local v11, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11, v2, v2, v12, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1819
    new-instance v2, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    invoke-direct {v2, p0, v11}, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private createSelectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "contact"    # Lcom/android/ex/chips/RecipientEntry;
    .param p2, "paint"    # Landroid/text/TextPaint;

    .prologue
    const/4 v2, 0x0

    .line 550
    iget v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    float-to-int v9, v3

    .line 551
    .local v9, "height":I
    move v8, v9

    .line 552
    .local v8, "deleteWidth":I
    const/4 v3, 0x1

    new-array v12, v3, [F

    .line 553
    .local v12, "widths":[F
    const-string v3, " "

    invoke-virtual {p2, v3, v12}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 554
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->calculateAvailableWidth()F

    move-result v4

    int-to-float v5, v8

    sub-float/2addr v4, v5

    aget v5, v12, v2

    sub-float/2addr v4, v5

    invoke-direct {p0, v3, p2, v4}, Lcom/android/ex/chips/RecipientEditTextView;->ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;

    move-result-object v1

    .line 559
    .local v1, "ellipsizedText":Ljava/lang/CharSequence;
    mul-int/lit8 v3, v8, 0x2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {p2, v1, v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 564
    .local v11, "width":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v9, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 565
    .local v10, "tmpBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 566
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 567
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2, v2, v11, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 568
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 569
    sget v3, Lcom/android/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    invoke-virtual {p2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 571
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    int-to-float v4, v4

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, p2, v9}, Lcom/android/ex/chips/RecipientEditTextView;->getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F

    move-result v5

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 574
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 575
    .local v7, "backgroundPadding":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 576
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

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

    .line 580
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 584
    .end local v7    # "backgroundPadding":Landroid/graphics/Rect;
    :goto_0
    return-object v10

    .line 582
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
    .line 1519
    new-instance v0, Lcom/android/ex/chips/SingleRecipientArrayAdapter;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesLayout:I

    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/chips/SingleRecipientArrayAdapter;-><init>(Landroid/content/Context;ILcom/android/ex/chips/RecipientEntry;)V

    return-object v0
.end method

.method private createUnselectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Z)Landroid/graphics/Bitmap;
    .locals 25
    .param p1, "contact"    # Lcom/android/ex/chips/RecipientEntry;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "leaveBlankIconSpacer"    # Z

    .prologue
    .line 593
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    float-to-int v0, v5

    move/from16 v16, v0

    .line 594
    .local v16, "height":I
    move/from16 v17, v16

    .line 595
    .local v17, "iconWidth":I
    const/4 v5, 0x1

    new-array v0, v5, [F

    move-object/from16 v24, v0

    .line 596
    .local v24, "widths":[F
    const-string v5, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 597
    invoke-virtual/range {p0 .. p1}, Lcom/android/ex/chips/RecipientEditTextView;->createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->calculateAvailableWidth()F

    move-result v6

    move/from16 v0, v17

    int-to-float v7, v0

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    aget v7, v24, v7

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1, v6}, Lcom/android/ex/chips/RecipientEditTextView;->ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;

    move-result-object v4

    .line 601
    .local v4, "ellipsizedText":Ljava/lang/CharSequence;
    mul-int/lit8 v5, v17, 0x2

    const/4 v6, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int v6, v6, v17

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 606
    .local v23, "width":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 607
    .local v22, "tmpBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 608
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipBackground(Lcom/android/ex/chips/RecipientEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 609
    .local v10, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_8

    .line 610
    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v10, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 611
    invoke-virtual {v10, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 614
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v12

    .line 615
    .local v12, "contactId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v5

    if-eqz v5, :cond_3

    const-wide/16 v5, -0x1

    cmp-long v5, v12, v5

    if-eqz v5, :cond_2

    const/4 v14, 0x1

    .line 620
    .local v14, "drawPhotos":Z
    :goto_0
    if-eqz v14, :cond_6

    .line 621
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v20

    .line 624
    .local v20, "photoBytes":[B
    if-nez v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Lcom/android/ex/chips/BaseRecipientAdapter;->fetchPhoto(Lcom/android/ex/chips/RecipientEntry;Landroid/net/Uri;)V

    .line 628
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v20

    .line 632
    :cond_0
    if-eqz v20, :cond_5

    .line 633
    const/4 v5, 0x0

    move-object/from16 v0, v20

    array-length v6, v0

    move-object/from16 v0, v20

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 639
    .local v19, "photo":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v19, :cond_1

    .line 640
    new-instance v21, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, v21

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 641
    .local v21, "src":Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 642
    .local v11, "backgroundPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 643
    new-instance v15, Landroid/graphics/RectF;

    sub-int v5, v23, v17

    iget v6, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v11, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x0

    int-to-float v6, v6

    iget v7, v11, Landroid/graphics/Rect;->right:I

    sub-int v7, v23, v7

    int-to-float v7, v7

    iget v8, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v16, v8

    int-to-float v8, v8

    invoke-direct {v15, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 647
    .local v15, "dst":Landroid/graphics/RectF;
    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    .line 648
    .local v18, "matrix":Landroid/graphics/Matrix;
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 649
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 654
    .end local v11    # "backgroundPadding":Landroid/graphics/Rect;
    .end local v15    # "dst":Landroid/graphics/RectF;
    .end local v18    # "matrix":Landroid/graphics/Matrix;
    .end local v19    # "photo":Landroid/graphics/Bitmap;
    .end local v20    # "photoBytes":[B
    .end local v21    # "src":Landroid/graphics/RectF;
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 656
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    int-to-float v7, v7

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v8, v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F

    move-result v8

    move-object/from16 v9, p2

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 661
    .end local v12    # "contactId":J
    .end local v14    # "drawPhotos":Z
    :goto_3
    return-object v22

    .line 615
    .restart local v12    # "contactId":J
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_3
    const-wide/16 v5, -0x1

    cmp-long v5, v12, v5

    if-eqz v5, :cond_4

    const-wide/16 v5, -0x2

    cmp-long v5, v12, v5

    if-eqz v5, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 636
    .restart local v14    # "drawPhotos":Z
    .restart local v20    # "photoBytes":[B
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/RecipientEditTextView;->mDefaultContactPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    .restart local v19    # "photo":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 651
    .end local v19    # "photo":Landroid/graphics/Bitmap;
    .end local v20    # "photoBytes":[B
    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 652
    :cond_7
    const/16 v17, 0x0

    goto :goto_2

    .line 659
    .end local v12    # "contactId":J
    .end local v14    # "drawPhotos":Z
    :cond_8
    const-string v5, "RecipientEditTextView"

    const-string v6, "Unable to draw a background for the chips as it was never set"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    .locals 6
    .param p1, "item"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    .line 1699
    if-nez p1, :cond_0

    .line 1700
    const/4 v1, 0x0

    .line 1718
    :goto_0
    return-object v1

    .line 1706
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 1707
    .local v0, "destination":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1708
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->isValid()Z

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    .local v1, "entry":Lcom/android/ex/chips/RecipientEntry;
    goto :goto_0

    .line 1710
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

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v2, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1714
    :cond_2
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->isValid()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    .restart local v1    # "entry":Lcom/android/ex/chips/RecipientEntry;
    goto :goto_0

    .line 1716
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
    .line 538
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipFontSize:F

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 539
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    const-string v0, "RecipientEditTextView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
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

    .line 542
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, p2, p3, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private expand()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 522
    iget-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    if-eqz v1, :cond_0

    .line 523
    const v1, 0x7fffffff

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setMaxLines(I)V

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->removeMoreChip()V

    .line 526
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 527
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 528
    .local v0, "text":Landroid/text/Editable;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 531
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 532
    new-instance v1, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    invoke-direct {v1, p0, v3}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 533
    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 535
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 528
    goto :goto_0
.end method

.method private findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 9
    .param p1, "offset"    # I

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    const-class v8, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v5, v6, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 1585
    .local v1, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 1586
    aget-object v0, v1, v3

    .line 1587
    .local v0, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v4

    .line 1588
    .local v4, "start":I
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v2

    .line 1589
    .local v2, "end":I
    if-lt p1, v4, :cond_0

    if-gt p1, v2, :cond_0

    .line 1593
    .end local v0    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v2    # "end":I
    .end local v4    # "start":I
    :goto_1
    return-object v0

    .line 1585
    .restart local v0    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v2    # "end":I
    .restart local v4    # "start":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1593
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
    .line 1575
    invoke-interface {p0, p1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 1578
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
    .line 1151
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 1152
    .local v0, "next":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1153
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1154
    const/4 v1, 0x1

    .line 1156
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
    .line 1359
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    .locals 1
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 1355
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getExcessTopPadding()I
    .locals 2

    .prologue
    .line 427
    sget v0, Lcom/android/ex/chips/RecipientEditTextView;->sExcessTopPadding:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 428
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mLineSpacingExtra:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/ex/chips/RecipientEditTextView;->sExcessTopPadding:I

    .line 430
    :cond_0
    sget v0, Lcom/android/ex/chips/RecipientEditTextView;->sExcessTopPadding:I

    return v0
.end method

.method private static getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "height"    # I

    .prologue
    .line 673
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 674
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, p0, v2, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 675
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 676
    .local v1, "textHeight":I
    sub-int v2, p2, v1

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    return v2
.end method

.method private handleEdit(II)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v6, -0x1

    .line 1294
    if-eq p1, v6, :cond_0

    if-ne p2, v6, :cond_1

    .line 1296
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 1314
    :goto_0
    return-void

    .line 1301
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1302
    .local v1, "editable":Landroid/text/Editable;
    invoke-virtual {p0, p2}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1303
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1304
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1305
    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    .line 1306
    .local v2, "entry":Lcom/android/ex/chips/RecipientEntry;
    const-string v5, ""

    invoke-static {v1, p1, p2, v5}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1307
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1308
    .local v0, "chipText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v3

    .line 1309
    .local v3, "selEnd":I
    if-eqz v0, :cond_2

    if-le p1, v6, :cond_2

    if-le v3, v6, :cond_2

    .line 1310
    invoke-interface {v1, p1, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1313
    .end local v0    # "chipText":Ljava/lang/CharSequence;
    .end local v2    # "entry":Lcom/android/ex/chips/RecipientEntry;
    .end local v3    # "selEnd":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    goto :goto_0
.end method

.method private handlePasteAndReplace()V
    .locals 4

    .prologue
    .line 2384
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->handlePaste()Ljava/util/ArrayList;

    move-result-object v0

    .line 2385
    .local v0, "created":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2387
    new-instance v1, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V

    .line 2388
    .local v1, "replace":Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2390
    .end local v1    # "replace":Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    :cond_0
    return-void
.end method

.method private handlePasteClip(Landroid/content/ClipData;)V
    .locals 7
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 2350
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v5}, Lcom/android/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2352
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    const-string v6, "text/plain"

    invoke-virtual {v5, v6}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2353
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 2354
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 2355
    .local v3, "paste":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 2356
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionStart()I

    move-result v4

    .line 2357
    .local v4, "start":I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 2358
    .local v1, "end":I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2359
    .local v0, "editable":Landroid/text/Editable;
    if-ltz v4, :cond_1

    if-ltz v1, :cond_1

    if-eq v4, v1, :cond_1

    .line 2360
    invoke-interface {v0, v3, v4, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 2364
    :goto_1
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->handlePasteAndReplace()V

    .line 2353
    .end local v0    # "editable":Landroid/text/Editable;
    .end local v1    # "end":I
    .end local v4    # "start":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2362
    .restart local v0    # "editable":Landroid/text/Editable;
    .restart local v1    # "end":I
    .restart local v4    # "start":I
    :cond_1
    invoke-interface {v0, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 2369
    .end local v0    # "editable":Landroid/text/Editable;
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "paste":Ljava/lang/CharSequence;
    .end local v4    # "start":I
    :cond_2
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2370
    return-void
.end method

.method private isInDelete(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;IFF)Z
    .locals 1
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "offset"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 2126
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

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
    .line 1015
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    const/4 v1, 0x0

    .line 1020
    :goto_0
    return v1

    .line 1019
    :cond_0
    sget-object v1, Lcom/android/ex/chips/RecipientEditTextView;->PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1020
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v0, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private postHandlePendingChips()V
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 838
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 839
    return-void
.end method

.method private putOffsetInRange(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1535
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 1536
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1541
    .local v0, "offset":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->putOffsetInRange(I)I

    move-result v1

    return v1

    .line 1538
    .end local v0    # "offset":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->supportGetOffsetForPosition(FF)I

    move-result v0

    .restart local v0    # "offset":I
    goto :goto_0
.end method

.method private putOffsetInRange(I)I
    .locals 9
    .param p1, "o"    # I

    .prologue
    .line 1548
    move v3, p1

    .line 1549
    .local v3, "offset":I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 1550
    .local v6, "text":Landroid/text/Editable;
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1552
    .local v2, "length":I
    move v5, v2

    .line 1553
    .local v5, "realLength":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1554
    invoke-interface {v6, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_0

    .line 1555
    add-int/lit8 v5, v5, -0x1

    .line 1553
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1563
    :cond_0
    if-lt v3, v5, :cond_1

    move v4, v3

    .line 1571
    .end local v3    # "offset":I
    .local v4, "offset":I
    :goto_1
    return v4

    .line 1566
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1567
    .local v0, "editable":Landroid/text/Editable;
    :goto_2
    if-ltz v3, :cond_2

    invoke-static {v0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->findText(Landroid/text/Editable;I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    invoke-direct {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v7

    if-nez v7, :cond_2

    .line 1569
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    move v4, v3

    .line 1571
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_1
.end method

.method private scrollBottomIntoView()V
    .locals 7

    .prologue
    .line 450
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    if-eqz v4, :cond_0

    .line 451
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 452
    .local v3, "location":[I
    invoke-virtual {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->getLocationOnScreen([I)V

    .line 453
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getHeight()I

    move-result v2

    .line 454
    .local v2, "height":I
    const/4 v4, 0x1

    aget v4, v3, v4

    add-int v0, v4, v2

    .line 458
    .local v0, "currentPos":I
    iget v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mActionBarHeight:I

    add-int/2addr v4, v5

    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getExcessTopPadding()I

    move-result v5

    add-int v1, v4, v5

    .line 459
    .local v1, "desiredPos":I
    if-le v0, v1, :cond_0

    .line 460
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v5, 0x0

    sub-int v6, v0, v1

    invoke-virtual {v4, v5, v6}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 463
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
    .line 1463
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->calculateOffsetFromBottom(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1466
    :cond_0
    return-void
.end method

.method private selectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 13
    .param p1, "currentChip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 1976
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1977
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v8

    .line 1978
    .local v8, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1979
    .local v1, "editable":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    .line 1980
    .local v6, "spannable":Landroid/text/Spannable;
    invoke-interface {v6, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 1981
    .local v5, "spanStart":I
    invoke-interface {v6, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1982
    .local v4, "spanEnd":I
    invoke-interface {v6, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1983
    invoke-interface {v1, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1984
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1985
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1986
    invoke-interface {v1, v8}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-object v9, v8

    .line 1987
    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/ex/chips/RecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v9, v10}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    .line 2043
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v4    # "spanEnd":I
    .end local v5    # "spanStart":I
    .end local v6    # "spannable":Landroid/text/Spannable;
    .end local v8    # "text":Ljava/lang/CharSequence;
    :goto_0
    return-object v3

    .line 1990
    :cond_0
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v9

    const-wide/16 v11, -0x2

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->isGalContact()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1992
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v7

    .line 1993
    .local v7, "start":I
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v2

    .line 1994
    .local v2, "end":I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v9

    invoke-interface {v9, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1997
    :try_start_0
    iget-boolean v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-eqz v9, :cond_2

    .line 1998
    const/4 v3, 0x0

    goto :goto_0

    .line 2000
    :cond_2
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2005
    .local v3, "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2006
    .restart local v1    # "editable":Landroid/text/Editable;
    const-string v9, ""

    invoke-static {v1, v7, v2, v9}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2007
    const/4 v9, -0x1

    if-eq v7, v9, :cond_3

    const/4 v9, -0x1

    if-ne v2, v9, :cond_5

    .line 2008
    :cond_3
    const-string v9, "RecipientEditTextView"

    const-string v10, "The chip being selected no longer exists but should."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    :goto_1
    const/4 v9, 0x1

    invoke-interface {v3, v9}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setSelected(Z)V

    .line 2013
    invoke-direct {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2014
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    invoke-direct {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->scrollLineIntoView(I)V

    .line 2016
    :cond_4
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v10

    invoke-direct {p0, v3, v9, v10}, Lcom/android/ex/chips/RecipientEditTextView;->showAddress(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;I)V

    .line 2017
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    goto :goto_0

    .line 2001
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v3    # "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :catch_0
    move-exception v0

    .line 2002
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v9, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2003
    const/4 v3, 0x0

    goto :goto_0

    .line 2010
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "editable":Landroid/text/Editable;
    .restart local v3    # "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_5
    const/16 v9, 0x21

    invoke-interface {v1, v3, v7, v2, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 2020
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v2    # "end":I
    .end local v3    # "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v7    # "start":I
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v7

    .line 2021
    .restart local v7    # "start":I
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v2

    .line 2022
    .restart local v2    # "end":I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v9

    invoke-interface {v9, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2025
    :try_start_1
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 2030
    .restart local v3    # "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2031
    .restart local v1    # "editable":Landroid/text/Editable;
    const-string v9, ""

    invoke-static {v1, v7, v2, v9}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2032
    const/4 v9, -0x1

    if-eq v7, v9, :cond_7

    const/4 v9, -0x1

    if-ne v2, v9, :cond_9

    .line 2033
    :cond_7
    const-string v9, "RecipientEditTextView"

    const-string v10, "The chip being selected no longer exists but should."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    :goto_2
    const/4 v9, 0x1

    invoke-interface {v3, v9}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setSelected(Z)V

    .line 2038
    invoke-direct {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2039
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    invoke-direct {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->scrollLineIntoView(I)V

    .line 2041
    :cond_8
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v10

    invoke-direct {p0, v3, v9, v10}, Lcom/android/ex/chips/RecipientEditTextView;->showAlternates(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;I)V

    .line 2042
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 2026
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v3    # "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :catch_1
    move-exception v0

    .line 2027
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    const-string v9, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2028
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2035
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "editable":Landroid/text/Editable;
    .restart local v3    # "newChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_9
    const/16 v9, 0x21

    invoke-interface {v1, v3, v7, v2, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2
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

    .line 732
    sget-object v3, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView:[I

    invoke-virtual {p1, p2, v3, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 734
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 736
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 737
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 738
    sget v3, Lcom/android/ex/chips/R$drawable;->chip_background:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 740
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    .line 742
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 743
    sget v3, Lcom/android/ex/chips/R$drawable;->chip_background_selected:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    .line 745
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 746
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 747
    sget v3, Lcom/android/ex/chips/R$drawable;->chip_delete:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 749
    :cond_2
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    .line 750
    iget v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    if-ne v3, v6, :cond_3

    .line 751
    sget v3, Lcom/android/ex/chips/R$dimen;->chip_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    .line 753
    :cond_3
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesLayout:I

    .line 755
    iget v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesLayout:I

    if-ne v3, v6, :cond_4

    .line 756
    sget v3, Lcom/android/ex/chips/R$layout;->chips_alternate_item:I

    iput v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesLayout:I

    .line 759
    :cond_4
    sget v3, Lcom/android/ex/chips/R$drawable;->ic_contact_picture:I

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDefaultContactPhoto:Landroid/graphics/Bitmap;

    .line 761
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/ex/chips/R$layout;->more_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    .line 763
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    .line 764
    iget v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_5

    .line 765
    sget v3, Lcom/android/ex/chips/R$dimen;->chip_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    .line 767
    :cond_5
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipFontSize:F

    .line 768
    iget v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipFontSize:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_6

    .line 769
    sget v3, Lcom/android/ex/chips/R$dimen;->chip_text_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipFontSize:F

    .line 771
    :cond_6
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    .line 773
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_7

    .line 774
    sget v3, Lcom/android/ex/chips/R$drawable;->chip_background_invalid:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    .line 776
    :cond_7
    sget v3, Lcom/android/ex/chips/R$dimen;->line_spacing_extra:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mLineSpacingExtra:F

    .line 777
    sget v3, Lcom/android/ex/chips/R$integer;->chips_max_lines:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMaxLines:I

    .line 778
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 779
    .local v2, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10102eb

    invoke-virtual {v3, v4, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 780
    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mActionBarHeight:I

    .line 783
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 784
    return-void
.end method

.method private shouldCreateChip(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1278
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->alreadyHasChip(II)Z

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
    .line 2048
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v0

    .line 2049
    .local v0, "contactId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

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
    .locals 6
    .param p1, "currentChip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "popup"    # Landroid/widget/ListPopupWindow;
    .param p3, "width"    # I

    .prologue
    const/4 v5, 0x1

    .line 2055
    iget-boolean v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAttachedToWindow:Z

    if-nez v3, :cond_0

    .line 2077
    :goto_0
    return-void

    .line 2058
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 2059
    .local v1, "line":I
    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->calculateOffsetFromBottom(I)I

    move-result v0

    .line 2062
    .local v0, "bottom":I
    invoke-virtual {p2, p3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 2063
    invoke-virtual {p2, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 2064
    invoke-virtual {p2, v0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 2065
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createSingleAddressAdapter(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2066
    new-instance v3, Lcom/android/ex/chips/RecipientEditTextView$9;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView$9;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2073
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->show()V

    .line 2074
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 2075
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 2076
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0
.end method

.method private showAlternates(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;I)V
    .locals 2
    .param p1, "currentChip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "alternatesPopup"    # Landroid/widget/ListPopupWindow;
    .param p3, "width"    # I

    .prologue
    .line 1470
    new-instance v1, Lcom/android/ex/chips/RecipientEditTextView$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/ex/chips/RecipientEditTextView$7;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;I)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/ex/chips/RecipientEditTextView$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1511
    return-void
.end method

.method private showCopyDialog(Ljava/lang/String;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 2832
    iget-boolean v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAttachedToWindow:Z

    if-nez v3, :cond_0

    .line 2852
    :goto_0
    return-void

    .line 2835
    :cond_0
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    .line 2836
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v3, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2837
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    sget v4, Lcom/android/ex/chips/R$layout;->copy_chip_dialog_layout:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 2838
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2839
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2840
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    const v4, 0x1020019

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2841
    .local v1, "button":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2843
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2844
    sget v0, Lcom/android/ex/chips/R$string;->copy_number:I

    .line 2848
    .local v0, "btnTitleId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2849
    .local v2, "buttonTitle":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2850
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2851
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 2846
    .end local v0    # "btnTitleId":I
    .end local v2    # "buttonTitle":Ljava/lang/String;
    :cond_1
    sget v0, Lcom/android/ex/chips/R$string;->copy_email:I

    .restart local v0    # "btnTitleId":I
    goto :goto_1
.end method

.method private shrink()V
    .locals 12

    .prologue
    const-wide/16 v9, -0x1

    .line 471
    iget-object v11, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v11, :cond_0

    .line 519
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v11, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v1

    .line 475
    .local v1, "contactId":J
    :goto_1
    iget-object v11, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v11, :cond_2

    cmp-long v9, v1, v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v9

    if-nez v9, :cond_2

    const-wide/16 v9, -0x2

    cmp-long v9, v1, v9

    if-eqz v9, :cond_2

    .line 477
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 518
    :goto_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreChip()V

    goto :goto_0

    .end local v1    # "contactId":J
    :cond_1
    move-wide v1, v9

    .line 474
    goto :goto_1

    .line 479
    .restart local v1    # "contactId":J
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v9

    if-gtz v9, :cond_3

    .line 485
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 486
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 491
    :cond_3
    iget v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v9, :cond_5

    .line 492
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->postHandlePendingChips()V

    .line 516
    :cond_4
    :goto_3
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 494
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 495
    .local v3, "editable":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    .line 496
    .local v4, "end":I
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v9, v3, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 497
    .local v6, "start":I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v9

    const-class v10, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v9, v6, v4, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 499
    .local v0, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_6

    array-length v9, v0

    if-nez v9, :cond_4

    .line 500
    :cond_6
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 501
    .local v7, "text":Landroid/text/Editable;
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v9, v7, v6}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 503
    .local v8, "whatEnd":I
    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v9

    if-ge v8, v9, :cond_7

    invoke-interface {v7, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_7

    .line 504
    invoke-virtual {p0, v8}, Lcom/android/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v8

    .line 508
    :cond_7
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v5

    .line 509
    .local v5, "selEnd":I
    if-eq v8, v5, :cond_8

    .line 510
    invoke-direct {p0, v6, v8}, Lcom/android/ex/chips/RecipientEditTextView;->handleEdit(II)V

    goto :goto_3

    .line 512
    :cond_8
    invoke-direct {p0, v6, v4, v3}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    goto :goto_3
.end method

.method private startDrag(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 5
    .param p1, "currentChip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 2778
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 2779
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

    .line 2782
    .local v1, "data":Landroid/content/ClipData;
    new-instance v2, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipShadow;

    invoke-direct {v2, p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipShadow;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/ex/chips/RecipientEditTextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 2786
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->removeChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 2787
    return-void
.end method

.method private submitItemAtPosition(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 1679
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ex/chips/RecipientEntry;

    invoke-direct {p0, v5}, Lcom/android/ex/chips/RecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    .line 1681
    .local v3, "entry":Lcom/android/ex/chips/RecipientEntry;
    if-nez v3, :cond_0

    .line 1696
    :goto_0
    return-void

    .line 1684
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 1686
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v2

    .line 1687
    .local v2, "end":I
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1689
    .local v4, "start":I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1690
    .local v1, "editable":Landroid/text/Editable;
    const-string v5, ""

    invoke-static {v1, v4, v2, v5}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1691
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1692
    .local v0, "chip":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    if-ltz v4, :cond_1

    if-ltz v2, :cond_1

    .line 1693
    invoke-interface {v1, v4, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1695
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->sanitizeBetween()V

    goto :goto_0
.end method

.method private supportConvertToLocalHorizontalCoordinate(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 2744
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 2746
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2747
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2748
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 2749
    return p1
.end method

.method private supportGetLineAtCoordinate(F)I
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 2753
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 2755
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2756
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2757
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 2758
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

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
    .line 2762
    invoke-direct {p0, p2}, Lcom/android/ex/chips/RecipientEditTextView;->supportConvertToLocalHorizontalCoordinate(F)F

    move-result p2

    .line 2763
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

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
    .line 2737
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    .line 2740
    :goto_0
    return v1

    .line 2738
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/ex/chips/RecipientEditTextView;->supportGetLineAtCoordinate(F)I

    move-result v0

    .line 2739
    .local v0, "line":I
    invoke-direct {p0, v0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->supportGetOffsetAtCoordinate(IF)I

    move-result v1

    .line 2740
    .local v1, "offset":I
    goto :goto_0
.end method

.method private static tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "destination"    # Ljava/lang/String;

    .prologue
    .line 1085
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 1086
    .local v0, "tokens":[Landroid/text/util/Rfc822Token;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1087
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object p0

    .line 1089
    .end local p0    # "destination":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private unselectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 7
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    const/4 v5, -0x1

    .line 2085
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v3

    .line 2086
    .local v3, "start":I
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v2

    .line 2087
    .local v2, "end":I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2088
    .local v1, "editable":Landroid/text/Editable;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2089
    if-eq v3, v5, :cond_0

    if-ne v2, v5, :cond_3

    .line 2090
    :cond_0
    const-string v4, "RecipientEditTextView"

    const-string v5, "The chip doesn\'t exist or may be a chip a user was editing"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 2092
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    .line 2106
    :cond_1
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 2107
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 2108
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2109
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 2111
    :cond_2
    return-void

    .line 2094
    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2095
    const-string v4, ""

    invoke-static {v1, v3, v2, v4}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2096
    invoke-interface {v1, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 2098
    :try_start_0
    iget-boolean v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-nez v4, :cond_1

    .line 2099
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v4

    const/16 v5, 0x21

    invoke-interface {v1, v4, v3, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2102
    :catch_0
    move-exception v0

    .line 2103
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 392
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;II)V

    .line 393
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 394
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "displayString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 398
    sget-object v1, Lcom/android/ex/chips/RecipientEditTextView;->SEPARATOR:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/ex/chips/RecipientEditTextView;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-super {p0, v1, v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;II)V

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/ex/chips/RecipientEditTextView;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 404
    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 405
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .end local v0    # "displayString":Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v1, :cond_3

    .line 411
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->postHandlePendingChips()V

    .line 413
    :cond_3
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    return-void
.end method

.method countTokens(Landroid/text/Editable;)I
    .locals 3
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    .line 1844
    const/4 v1, 0x0

    .line 1845
    .local v1, "tokenCount":I
    const/4 v0, 0x0

    .line 1846
    .local v0, "start":I
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1847
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v0

    .line 1848
    add-int/lit8 v1, v1, 0x1

    .line 1849
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1853
    :cond_1
    return v1
.end method

.method createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;
    .locals 7
    .param p1, "entry"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    .line 1599
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 1600
    .local v1, "display":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 1601
    .local v0, "address":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1602
    :cond_0
    const/4 v1, 0x0

    .line 1605
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1606
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1619
    .local v5, "trimmedDisplayText":Ljava/lang/String;
    :goto_0
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1620
    .local v2, "index":I
    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-eqz v6, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_4

    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v6, v5}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_1
    return-object v6

    .line 1608
    .end local v2    # "index":I
    .end local v5    # "trimmedDisplayText":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 1611
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 1612
    .local v4, "tokenized":[Landroid/text/util/Rfc822Token;
    if-eqz v4, :cond_3

    array-length v6, v4

    if-lez v6, :cond_3

    .line 1613
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1616
    .end local v4    # "tokenized":[Landroid/text/util/Rfc822Token;
    :cond_3
    new-instance v3, Landroid/text/util/Rfc822Token;

    const/4 v6, 0x0

    invoke-direct {v3, v1, v0, v6}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
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

    .line 1620
    goto :goto_1
.end method

.method createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;
    .locals 4
    .param p1, "entry"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    .line 1628
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 1629
    .local v1, "display":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 1630
    .local v0, "address":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1631
    :cond_0
    const/4 v1, 0x0

    .line 1633
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1638
    .end local v1    # "display":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1635
    .restart local v1    # "display":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v1, v0

    .line 1636
    goto :goto_0

    .line 1638
    :cond_3
    new-instance v2, Landroid/text/util/Rfc822Token;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method createMoreChip()V
    .locals 22

    .prologue
    .line 1863
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1864
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreChipPlainText()V

    .line 1917
    :cond_0
    :goto_0
    return-void

    .line 1868
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1871
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->length()I

    move-result v20

    const-class v21, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    invoke-interface/range {v18 .. v21}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/text/style/ImageSpan;

    .line 1872
    .local v14, "tempMore":[Landroid/text/style/ImageSpan;
    array-length v0, v14

    move/from16 v18, v0

    if-lez v18, :cond_2

    .line 1873
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v14, v19

    invoke-interface/range {v18 .. v19}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1875
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v9

    .line 1877
    .local v9, "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v9, :cond_3

    array-length v0, v9

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    .line 1878
    :cond_3
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    goto :goto_0

    .line 1881
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v12

    .line 1882
    .local v12, "spannable":Landroid/text/Spannable;
    array-length v7, v9

    .line 1883
    .local v7, "numRecipients":I
    add-int/lit8 v8, v7, -0x2

    .line 1884
    .local v8, "overage":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreSpan(I)Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    move-result-object v6

    .line 1885
    .local v6, "moreSpan":Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    .line 1886
    const/16 v17, 0x0

    .line 1887
    .local v17, "totalReplaceStart":I
    const/16 v16, 0x0

    .line 1888
    .local v16, "totalReplaceEnd":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v15

    .line 1889
    .local v15, "text":Landroid/text/Editable;
    sub-int v5, v7, v8

    .local v5, "i":I
    :goto_1
    array-length v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_9

    .line 1890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    aget-object v19, v9, v5

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1891
    sub-int v18, v7, v8

    move/from16 v0, v18

    if-ne v5, v0, :cond_5

    .line 1892
    aget-object v18, v9, v5

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v17

    .line 1894
    :cond_5
    array-length v0, v9

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_6

    .line 1895
    aget-object v18, v9, v5

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v16

    .line 1897
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    aget-object v19, v9, v5

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 1898
    :cond_7
    aget-object v18, v9, v5

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 1899
    .local v11, "spanStart":I
    aget-object v18, v9, v5

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 1900
    .local v10, "spanEnd":I
    aget-object v18, v9, v5

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 1902
    .end local v10    # "spanEnd":I
    .end local v11    # "spanStart":I
    :cond_8
    aget-object v18, v9, v5

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1889
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1904
    :cond_9
    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 1905
    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v16

    .line 1907
    :cond_a
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1908
    .local v4, "end":I
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1909
    .local v13, "start":I
    new-instance v3, Landroid/text/SpannableString;

    invoke-interface {v15, v13, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1910
    .local v3, "chipText":Landroid/text/SpannableString;
    const/16 v18, 0x0

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v19

    const/16 v20, 0x21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v3, v6, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1911
    invoke-interface {v15, v13, v4, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1912
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 1914
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/ex/chips/RecipientEditTextView;->mMaxLines:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 1915
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setMaxLines(I)V

    goto/16 :goto_0
.end method

.method createMoreChipPlainText()V
    .locals 10

    .prologue
    .line 1825
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1826
    .local v5, "text":Landroid/text/Editable;
    const/4 v4, 0x0

    .line 1827
    .local v4, "start":I
    move v1, v4

    .line 1828
    .local v1, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v7, 0x2

    if-ge v2, v7, :cond_0

    .line 1829
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v7, v5, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v1

    .line 1830
    move v4, v1

    .line 1828
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1833
    :cond_0
    const/4 v4, 0x0

    .line 1834
    invoke-virtual {p0, v5}, Lcom/android/ex/chips/RecipientEditTextView;->countTokens(Landroid/text/Editable;)I

    move-result v6

    .line 1835
    .local v6, "tokenCount":I
    add-int/lit8 v7, v6, -0x2

    invoke-direct {p0, v7}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreSpan(I)Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    move-result-object v3

    .line 1836
    .local v3, "moreSpan":Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;
    new-instance v0, Landroid/text/SpannableString;

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v5, v1, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1837
    .local v0, "chipText":Landroid/text/SpannableString;
    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v0, v3, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1838
    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v5, v1, v7, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1839
    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 1840
    return-void
.end method

.method createReplacementChip(IILandroid/text/Editable;Z)V
    .locals 9
    .param p1, "tokenStart"    # I
    .param p2, "tokenEnd"    # I
    .param p3, "editable"    # Landroid/text/Editable;
    .param p4, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    .line 969
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->alreadyHasChip(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 975
    .local v5, "token":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 976
    .local v6, "trimmedToken":Ljava/lang/String;
    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 977
    .local v1, "commitCharIndex":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_2

    .line 978
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 980
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/ex/chips/RecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    .line 981
    .local v3, "entry":Lcom/android/ex/chips/RecipientEntry;
    if-eqz v3, :cond_0

    .line 982
    const/4 v0, 0x0

    .line 984
    .local v0, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_start_0
    iget-boolean v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-nez v7, :cond_5

    .line 989
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

    .line 992
    .local v4, "leaveSpace":Z
    :cond_4
    if-eqz p4, :cond_7

    const/4 v7, 0x0

    invoke-direct {p0, v3, v7, v4}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 999
    .end local v4    # "leaveSpace":Z
    :cond_5
    :goto_1
    const/16 v7, 0x21

    invoke-interface {p3, v0, p1, p2, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1001
    if-eqz v0, :cond_0

    .line 1002
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-nez v7, :cond_6

    .line 1003
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 1005
    :cond_6
    invoke-interface {v0, v5}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 1006
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 992
    .restart local v4    # "leaveSpace":Z
    :cond_7
    :try_start_1
    new-instance v7, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;

    invoke-direct {v7, v3}, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;-><init>(Lcom/android/ex/chips/RecipientEntry;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v7

    goto :goto_1

    .line 996
    .end local v4    # "leaveSpace":Z
    :catch_0
    move-exception v2

    .line 997
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v7, "RecipientEditTextView"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 7
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1025
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1026
    const/4 v5, 0x0

    .line 1076
    :goto_0
    return-object v5

    .line 1028
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1029
    const/4 v5, 0x1

    invoke-static {p1, v5}, Lcom/android/ex/chips/RecipientEntry;->constructFakePhoneEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v5

    goto :goto_0

    .line 1031
    :cond_1
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 1032
    .local v3, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v0, 0x0

    .line 1033
    .local v0, "display":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v1

    .line 1034
    .local v1, "isValid":Z
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    array-length v5, v3

    if-lez v5, :cond_3

    .line 1037
    aget-object v5, v3, v6

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1038
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1039
    aget-object v5, v3, v6

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v1}, Lcom/android/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v5

    goto :goto_0

    .line 1042
    :cond_2
    aget-object v5, v3, v6

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1043
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1044
    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v5

    goto :goto_0

    .line 1050
    :cond_3
    const/4 v4, 0x0

    .line 1051
    .local v4, "validatedToken":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v5, :cond_4

    if-nez v1, :cond_4

    .line 1053
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v5, p1}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1054
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1055
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1059
    invoke-static {v4}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 1060
    .local v2, "tokenized":[Landroid/text/util/Rfc822Token;
    array-length v5, v2

    if-lez v5, :cond_4

    .line 1061
    aget-object v5, v2, v6

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1062
    const/4 v1, 0x1

    .line 1076
    .end local v2    # "tokenized":[Landroid/text/util/Rfc822Token;
    :cond_4
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .end local v4    # "validatedToken":Ljava/lang/String;
    :goto_2
    invoke-static {v4, v1}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v5

    goto :goto_0

    .line 1070
    .restart local v4    # "validatedToken":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    .line 1071
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    move-object v4, p1

    .line 1076
    goto :goto_2
.end method

.method public enableDrag()V
    .locals 1

    .prologue
    .line 2771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDragEnabled:Z

    .line 2772
    return-void
.end method

.method getChipBackground(Lcom/android/ex/chips/RecipientEntry;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "contact"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    .line 669
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

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
    .line 1723
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1724
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v2

    .line 1725
    .local v2, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_0

    .line 1726
    move-object v0, v2

    .local v0, "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1727
    .local v1, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1726
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1730
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
    .line 1736
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1737
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v2

    .line 1738
    .local v2, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_0

    .line 1739
    move-object v0, v2

    .local v0, "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1740
    .local v1, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getDataId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1739
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1743
    .end local v0    # "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v1    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-object v5
.end method

.method getLastChip()Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 3

    .prologue
    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, "last":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 346
    .local v0, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 347
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .line 349
    :cond_0
    return-object v1
.end method

.method getMoreChip()Landroid/text/style/ImageSpan;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1795
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    .line 1797
    .local v0, "moreSpans":[Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;
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

.method getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 7

    .prologue
    .line 1748
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    const-class v6, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 1750
    .local v1, "recips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1752
    .local v0, "recipientsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 1753
    .local v2, "spannable":Landroid/text/Spannable;
    new-instance v3, Lcom/android/ex/chips/RecipientEditTextView$8;

    invoke-direct {v3, p0, v2}, Lcom/android/ex/chips/RecipientEditTextView$8;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/Spannable;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1768
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    return-object v3
.end method

.method getSpannable()Landroid/text/Spannable;
    .locals 1

    .prologue
    .line 1351
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method getViewWidth()I
    .locals 1

    .prologue
    .line 926
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v0

    return v0
.end method

.method handlePaste()Ljava/util/ArrayList;
    .locals 12
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
    .line 2394
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2395
    .local v7, "text":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v11

    invoke-interface {v10, v7, v11}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 2396
    .local v5, "originalTokenStart":I
    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2397
    .local v4, "lastAddress":Ljava/lang/String;
    move v9, v5

    .line 2398
    .local v9, "tokenStart":I
    const/4 v6, 0x0

    .line 2399
    .local v6, "prevTokenStart":I
    const/4 v3, 0x0

    .line 2400
    .local v3, "findChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2401
    .local v0, "created":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    if-eqz v9, :cond_3

    .line 2403
    :cond_0
    if-eqz v9, :cond_1

    if-nez v3, :cond_1

    if-eq v9, v6, :cond_1

    .line 2404
    move v6, v9

    .line 2405
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v10, v7, v9}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 2406
    invoke-direct {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    .line 2407
    if-ne v9, v5, :cond_0

    if-nez v3, :cond_0

    .line 2411
    :cond_1
    if-eq v9, v5, :cond_3

    .line 2412
    if-eqz v3, :cond_2

    .line 2413
    move v9, v6

    .line 2417
    :cond_2
    :goto_0
    if-ge v9, v5, :cond_3

    .line 2418
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v8

    .line 2420
    .local v8, "tokenEnd":I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-direct {p0, v9, v8, v10}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 2421
    invoke-direct {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    .line 2422
    .local v1, "createdChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-nez v1, :cond_5

    .line 2433
    .end local v1    # "createdChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v8    # "tokenEnd":I
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2434
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 2435
    .local v2, "editable":Landroid/text/Editable;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 2436
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-direct {p0, v9, v10, v2}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 2437
    invoke-direct {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2439
    .end local v2    # "editable":Landroid/text/Editable;
    :cond_4
    return-object v0

    .line 2426
    .restart local v1    # "createdChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v8    # "tokenEnd":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    invoke-interface {v10, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    add-int/lit8 v9, v10, 0x1

    .line 2427
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method handlePendingChips()V
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/4 v13, 0x2

    const/4 v6, 0x0

    .line 858
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getViewWidth()I

    move-result v5

    if-gtz v5, :cond_1

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v5, :cond_0

    .line 868
    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    monitor-enter v8

    .line 869
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 871
    .local v1, "editable":Landroid/text/Editable;
    iget v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    const/16 v9, 0x32

    if-gt v5, v9, :cond_8

    .line 872
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 873
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 874
    .local v0, "current":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 876
    .local v4, "tokenStart":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    add-int/lit8 v3, v5, -0x1

    .line 877
    .local v3, "tokenEnd":I
    if-ltz v4, :cond_4

    .line 880
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ge v3, v5, :cond_2

    invoke-interface {v1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v9, 0x2c

    if-ne v5, v9, :cond_2

    .line 882
    add-int/lit8 v3, v3, 0x1

    .line 884
    :cond_2
    if-lt v2, v13, :cond_3

    iget-boolean v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    if-nez v5, :cond_5

    :cond_3
    move v5, v7

    :goto_2
    invoke-virtual {p0, v4, v3, v1, v5}, Lcom/android/ex/chips/RecipientEditTextView;->createReplacementChip(IILandroid/text/Editable;Z)V

    .line 887
    :cond_4
    iget v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 872
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v5, v6

    .line 884
    goto :goto_2

    .line 889
    .end local v0    # "current":Ljava/lang/String;
    .end local v3    # "tokenEnd":I
    .end local v4    # "tokenStart":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->sanitizeEnd()V

    .line 894
    .end local v2    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x64

    if-gt v5, v6, :cond_b

    .line 896
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v13, :cond_9

    .line 897
    :cond_7
    new-instance v5, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 898
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 919
    :goto_4
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 920
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 921
    monitor-exit v8

    goto/16 :goto_0

    .end local v1    # "editable":Landroid/text/Editable;
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 891
    .restart local v1    # "editable":Landroid/text/Editable;
    :cond_8
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    goto :goto_3

    .line 901
    :cond_9
    new-instance v5, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V

    iput-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    .line 902
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/util/ArrayList;

    const/4 v7, 0x0

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v9, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 904
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v13, :cond_a

    .line 905
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    const/4 v7, 0x2

    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 911
    :goto_5
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreChip()V

    goto :goto_4

    .line 909
    :cond_a
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    goto :goto_5

    .line 916
    :cond_b
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 917
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreChip()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method isCompletedToken(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 1390
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1401
    :cond_0
    :goto_0
    return v4

    .line 1394
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1395
    .local v1, "end":I
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, p1, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1396
    .local v2, "start":I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1397
    .local v3, "token":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1398
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1399
    .local v0, "atEnd":C
    const/16 v5, 0x2c

    if-eq v0, v5, :cond_2

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isGeneratedContact(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z
    .locals 4
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 2341
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v0

    .line 2342
    .local v0, "contactId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

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

.method protected isPhoneQuery()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2886
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

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

.method public lastCharacterIsCommitCharacter(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 2330
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v3

    .line 2331
    .local v0, "end":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 2332
    .local v2, "len":I
    if-eq v0, v2, :cond_3

    .line 2333
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2337
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

    .line 2330
    .end local v0    # "end":I
    .end local v1    # "last":C
    .end local v2    # "len":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    .line 2335
    .restart local v0    # "end":I
    .restart local v2    # "len":I
    :cond_3
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .restart local v1    # "last":C
    goto :goto_1
.end method

.method movePastTerminators(I)I
    .locals 4
    .param p1, "tokenEnd"    # I

    .prologue
    .line 2444
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v2

    if-lt p1, v2, :cond_0

    move v1, p1

    .line 2456
    .end local p1    # "tokenEnd":I
    .local v1, "tokenEnd":I
    :goto_0
    return v1

    .line 2447
    .end local v1    # "tokenEnd":I
    .restart local p1    # "tokenEnd":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2448
    .local v0, "atEnd":C
    const/16 v2, 0x2c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_2

    .line 2449
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 2453
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v2

    if-ge p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    .line 2454
    add-int/lit8 p1, p1, 0x1

    :cond_3
    move v1, p1

    .line 2456
    .end local p1    # "tokenEnd":I
    .restart local v1    # "tokenEnd":I
    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1773
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAttachedToWindow:Z

    .line 306
    return-void
.end method

.method public onCheckedItemChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1525
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1526
    .local v0, "listView":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1527
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1529
    :cond_0
    iput p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I

    .line 1530
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2879
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2881
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    const-string v1, ""

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 2882
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2883
    return-void
.end method

.method public onClick(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;IFF)V
    .locals 1
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "offset"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 2201
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2202
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/ex/chips/RecipientEditTextView;->isInDelete(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;IFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2203
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->removeChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 2208
    :cond_0
    :goto_0
    return-void

    .line 2205
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1790
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 327
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v2, 0xff

    .line 328
    .local v1, "imeActions":I
    and-int/lit8 v2, v1, 0x6

    if-eqz v2, :cond_0

    .line 330
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    xor-int/2addr v2, v1

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 332
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 334
    :cond_0
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x40000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 335
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v3, -0x40000001

    and-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 338
    :cond_1
    const/4 v2, 0x6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 339
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/ex/chips/R$string;->done:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 340
    return-object v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1778
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAttachedToWindow:Z

    .line 301
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2873
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    .line 2874
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2704
    const/4 v0, 0x0

    return v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v0, 0x1

    .line 2794
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2805
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2797
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 2799
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->requestFocus()Z

    goto :goto_0

    .line 2802
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->handlePasteClip(Landroid/content/ClipData;)V

    goto :goto_0

    .line 2794
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
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "action"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 310
    const/4 v1, 0x6

    if-ne p2, v1, :cond_3

    .line 311
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v1, :cond_2

    .line 315
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 317
    :cond_2
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->focusNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 2710
    const/4 v0, 0x0

    return v0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "hasFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previous"    # Landroid/graphics/Rect;

    .prologue
    .line 418
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 419
    if-nez p1, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->shrink()V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->expand()V

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
    .line 1672
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-gez p3, :cond_0

    .line 1676
    :goto_0
    return-void

    .line 1675
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/ex/chips/RecipientEditTextView;->submitItemAtPosition(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1322
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v1, :cond_1

    const/16 v1, 0x43

    if-ne p1, v1, :cond_1

    .line 1323
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1324
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1326
    :cond_0
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->removeChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 1329
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1346
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_3
    :goto_0
    return v0

    .line 1332
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1333
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1336
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v1, :cond_4

    .line 1337
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 1339
    :cond_4
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->focusNext()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1329
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
    .line 1119
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_0

    .line 1120
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 1121
    const/4 v0, 0x1

    .line 1123
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1136
    packed-switch p1, :pswitch_data_0

    .line 1147
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1138
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_1

    .line 1140
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 1142
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    goto :goto_0

    .line 1136
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2715
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v4, :cond_1

    .line 2731
    :cond_0
    :goto_0
    return-void

    .line 2718
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 2719
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 2720
    .local v3, "y":F
    invoke-direct {p0, v2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->putOffsetInRange(FF)I

    move-result v1

    .line 2721
    .local v1, "offset":I
    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 2722
    .local v0, "currentChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_0

    .line 2723
    iget-boolean v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDragEnabled:Z

    if-eqz v4, :cond_2

    .line 2725
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->startDrag(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    goto :goto_0

    .line 2728
    :cond_2
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->showCopyDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1782
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 371
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 377
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 2857
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectionChanged(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLastChip()Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 357
    .local v0, "last":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 361
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onSelectionChanged(II)V

    .line 362
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2863
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2868
    const/4 v0, 0x0

    return v0
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 815
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/MultiAutoCompleteTextView;->onSizeChanged(IIII)V

    .line 816
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 817
    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v1, :cond_1

    .line 818
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->postHandlePendingChips()V

    .line 824
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTriedGettingScrollView:Z

    if-nez v1, :cond_4

    .line 825
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 826
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-nez v1, :cond_2

    .line 827
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 820
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->checkChipWidths()V

    goto :goto_0

    .line 829
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_2
    if-eqz v0, :cond_3

    .line 830
    check-cast v0, Landroid/widget/ScrollView;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    .line 832
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTriedGettingScrollView:Z

    .line 834
    :cond_4
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 2374
    const v1, 0x1020022

    if-ne p1, v1, :cond_0

    .line 2375
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2377
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->handlePasteClip(Landroid/content/ClipData;)V

    .line 2378
    const/4 v1, 0x1

    .line 2380
    .end local v0    # "clipboard":Landroid/content/ClipboardManager;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 1422
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isFocused()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1424
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1459
    :cond_0
    :goto_0
    return v3

    .line 1426
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1427
    .local v3, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1428
    .local v0, "action":I
    const/4 v1, 0x0

    .line 1429
    .local v1, "chipWasSelected":Z
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-nez v7, :cond_2

    .line 1430
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1432
    :cond_2
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    if-nez v7, :cond_4

    if-ne v0, v8, :cond_4

    .line 1433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1434
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1435
    .local v6, "y":F
    invoke-direct {p0, v5, v6}, Lcom/android/ex/chips/RecipientEditTextView;->putOffsetInRange(FF)I

    move-result v4

    .line 1436
    .local v4, "offset":I
    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v2

    .line 1437
    .local v2, "currentChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_7

    .line 1438
    if-ne v0, v8, :cond_3

    .line 1439
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eq v7, v2, :cond_5

    .line 1440
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 1441
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->selectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v7

    iput-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 1450
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 1451
    const/4 v3, 0x1

    .line 1456
    .end local v2    # "currentChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v4    # "offset":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_4
    :goto_2
    if-ne v0, v8, :cond_0

    if-nez v1, :cond_0

    .line 1457
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 1442
    .restart local v2    # "currentChip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v4    # "offset":I
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :cond_5
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-nez v7, :cond_6

    .line 1443
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1444
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    .line 1445
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->selectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v7

    iput-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    goto :goto_1

    .line 1447
    :cond_6
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-virtual {p0, v7, v4, v5, v6}, Lcom/android/ex/chips/RecipientEditTextView;->onClick(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;IFF)V

    goto :goto_1

    .line 1452
    :cond_7
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0, v7}, Lcom/android/ex/chips/RecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1453
    const/4 v1, 0x1

    goto :goto_2
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    .prologue
    .line 1371
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1372
    .local v2, "isCompletedToken":Z
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_1

    .line 1373
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 1374
    .local v1, "end":I
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, p1, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1377
    .local v4, "start":I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v3

    .line 1378
    .local v3, "span":Landroid/text/Spannable;
    const-class v5, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v3, v4, v1, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 1379
    .local v0, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_2

    array-length v5, v0

    if-lez v5, :cond_2

    .line 1386
    .end local v0    # "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v1    # "end":I
    .end local v3    # "span":Landroid/text/Spannable;
    .end local v4    # "start":I
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    if-nez v2, :cond_0

    .line 1385
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public performValidation()V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method removeChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 8
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 2134
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 2135
    .local v2, "spannable":Landroid/text/Spannable;
    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 2136
    .local v1, "spanStart":I
    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 2137
    .local v0, "spanEnd":I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 2138
    .local v3, "text":Landroid/text/Editable;
    move v4, v0

    .line 2139
    .local v4, "toDelete":I
    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-ne p1, v6, :cond_1

    const/4 v5, 0x1

    .line 2141
    .local v5, "wasSelected":Z
    :goto_0
    if-eqz v5, :cond_0

    .line 2142
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2145
    :cond_0
    :goto_1
    if-ltz v4, :cond_2

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-interface {v3, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    .line 2146
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2139
    .end local v5    # "wasSelected":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2148
    .restart local v5    # "wasSelected":Z
    :cond_2
    invoke-interface {v2, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2149
    if-ltz v1, :cond_3

    if-lez v4, :cond_3

    .line 2150
    invoke-interface {v3, v1, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2152
    :cond_3
    if-eqz v5, :cond_4

    .line 2153
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 2155
    :cond_4
    return-void
.end method

.method removeMoreChip()V
    .locals 11

    .prologue
    .line 1925
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    if-eqz v9, :cond_0

    .line 1926
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v7

    .line 1927
    .local v7, "span":Landroid/text/Spannable;
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    invoke-interface {v7, v9}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1928
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 1930
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1932
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v6

    .line 1935
    .local v6, "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v6, :cond_0

    array-length v9, v6

    if-nez v9, :cond_1

    .line 1961
    .end local v6    # "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v7    # "span":Landroid/text/Spannable;
    :cond_0
    :goto_0
    return-void

    .line 1938
    .restart local v6    # "recipients":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v7    # "span":Landroid/text/Spannable;
    :cond_1
    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v6, v9

    invoke-interface {v7, v9}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1939
    .local v4, "end":I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1940
    .local v3, "editable":Landroid/text/Editable;
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 1945
    .local v0, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1950
    .local v8, "token":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1951
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

    .line 1953
    const/4 v9, -0x1

    if-eq v2, v9, :cond_2

    .line 1954
    const/16 v9, 0x21

    invoke-interface {v3, v0, v2, v1, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 1958
    .end local v0    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v1    # "chipEnd":I
    .end local v2    # "chipStart":I
    .end local v8    # "token":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 2216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 2217
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2218
    return-void
.end method

.method replaceChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V
    .locals 10
    .param p1, "chip"    # Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "entry"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    const/4 v6, 0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    .line 2163
    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-ne p1, v8, :cond_4

    move v5, v6

    .line 2164
    .local v5, "wasSelected":Z
    :goto_0
    if-eqz v5, :cond_0

    .line 2165
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2167
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v3

    .line 2168
    .local v3, "start":I
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v2

    .line 2169
    .local v2, "end":I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v8

    invoke-interface {v8, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2170
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2171
    .local v1, "editable":Landroid/text/Editable;
    invoke-direct {p0, p2, v7}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2172
    .local v0, "chipText":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 2173
    if-eq v3, v9, :cond_1

    if-ne v2, v9, :cond_5

    .line 2174
    :cond_1
    const-string v8, "RecipientEditTextView"

    const-string v9, "The chip to replace does not exist but should."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    invoke-interface {v1, v7, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2189
    :cond_2
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 2190
    if-eqz v5, :cond_3

    .line 2191
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 2193
    :cond_3
    return-void

    .end local v0    # "chipText":Ljava/lang/CharSequence;
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v2    # "end":I
    .end local v3    # "start":I
    .end local v5    # "wasSelected":Z
    :cond_4
    move v5, v7

    .line 2163
    goto :goto_0

    .line 2177
    .restart local v0    # "chipText":Ljava/lang/CharSequence;
    .restart local v1    # "editable":Landroid/text/Editable;
    .restart local v2    # "end":I
    .restart local v3    # "start":I
    .restart local v5    # "wasSelected":Z
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2180
    move v4, v2

    .line 2182
    .local v4, "toReplace":I
    :goto_2
    if-ltz v4, :cond_6

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v7

    if-ge v4, v7, :cond_6

    invoke-interface {v1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_6

    .line 2183
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2185
    :cond_6
    invoke-interface {v1, v3, v4, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1111
    return-void
.end method

.method sanitizeBetween()V
    .locals 8

    .prologue
    .line 1247
    iget v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v6, :cond_1

    .line 1275
    :cond_0
    :goto_0
    return-void

    .line 1251
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    .line 1252
    .local v3, "recips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    .line 1253
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v2, v3, v6

    .line 1254
    .local v2, "last":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v0, 0x0

    .line 1255
    .local v0, "beforeLast":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v6, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 1256
    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    aget-object v0, v3, v6

    .line 1258
    :cond_2
    const/4 v4, 0x0

    .line 1259
    .local v4, "startLooking":I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 1260
    .local v1, "end":I
    if-eqz v0, :cond_3

    .line 1261
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1262
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1263
    .local v5, "text":Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-gt v4, v6, :cond_0

    .line 1267
    invoke-interface {v5, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_3

    .line 1268
    add-int/lit8 v4, v4, 0x1

    .line 1271
    .end local v5    # "text":Landroid/text/Editable;
    :cond_3
    if-ltz v4, :cond_0

    if-ltz v1, :cond_0

    if-ge v4, v1, :cond_0

    .line 1272
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v4, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method sanitizeEnd()V
    .locals 8

    .prologue
    .line 935
    iget v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v5, :cond_1

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 940
    .local v0, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v4

    .line 941
    .local v4, "spannable":Landroid/text/Spannable;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lez v5, :cond_0

    .line 943
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v5

    iput-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 944
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    if-eqz v5, :cond_3

    .line 945
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    invoke-interface {v4, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 949
    .local v2, "end":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 950
    .local v1, "editable":Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 951
    .local v3, "length":I
    if-le v3, v2, :cond_0

    .line 953
    const-string v5, "RecipientEditTextView"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 954
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

    .line 957
    :cond_2
    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1, v5, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 947
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v2    # "end":I
    .end local v3    # "length":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLastChip()Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

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
    .line 435
    .local p1, "adapter":Landroid/widget/ListAdapter;, "TT;"
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 436
    check-cast p1, Lcom/android/ex/chips/BaseRecipientAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;, "TT;"
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$6;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$6;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->registerUpdateObserver(Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;)V

    .line 447
    return-void
.end method

.method setChipBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "chipBackground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 794
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 795
    return-void
.end method

.method setChipHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 799
    int-to-float v0, p1

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    .line 800
    return-void
.end method

.method setMoreItem(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "moreItem"    # Landroid/widget/TextView;

    .prologue
    .line 788
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    .line 789
    return-void
.end method

.method public setOnFocusListShrinkRecipients(Z)V
    .locals 0
    .param p1, "shrink"    # Z

    .prologue
    .line 810
    iput-boolean p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    .line 811
    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 1
    .param p1, "tokenizer"    # Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 1095
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1096
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 0
    .param p1, "validator"    # Landroid/widget/AutoCompleteTextView$Validator;

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 1101
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1102
    return-void
.end method
