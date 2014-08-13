.class public abstract Lcom/android/dialer/list/PhoneFavoriteTileView;
.super Lcom/android/contacts/common/list/ContactTileView;
.source "PhoneFavoriteTileView.java"


# static fields
.field private static final DEBUG:Z

.field private static final EMPTY_CLIP_DATA:Landroid/content/ClipData;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationDuration:I

.field private mFavoriteContactCard:Landroid/view/View;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mParentRow:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;

.field private mPhoneNumberString:Ljava/lang/String;

.field private mRemovalDialogue:Landroid/view/View;

.field protected mStarView:Landroid/widget/ImageView;

.field private mUndoRemovalButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-class v0, Lcom/android/dialer/list/PhoneFavoriteTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoriteTileView;->TAG:Ljava/lang/String;

    .line 74
    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoriteTileView;->EMPTY_CLIP_DATA:Landroid/content/ClipData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/ContactTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mAnimationDuration:I

    .line 79
    return-void
.end method

.method static synthetic access$000()Landroid/content/ClipData;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/dialer/list/PhoneFavoriteTileView;->EMPTY_CLIP_DATA:Landroid/content/ClipData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/list/PhoneFavoriteTileView;)Lcom/android/contacts/common/list/ContactTileView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteTileView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dialer/list/PhoneFavoriteTileView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteTileView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mRemovalDialogue:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dialer/list/PhoneFavoriteTileView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteTileView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mPhoneNumberString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/dialer/list/PhoneFavoriteTileView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteTileView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/dialer/list/PhoneFavoriteTileView;)Lcom/android/contacts/common/list/ContactTileView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteTileView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dialer/list/PhoneFavoriteTileView;)Lcom/android/contacts/common/list/ContactTileView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteTileView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-object v0
.end method


# virtual methods
.method protected createClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteTileView$5;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/PhoneFavoriteTileView$5;-><init>(Lcom/android/dialer/list/PhoneFavoriteTileView;)V

    return-object v0
.end method

.method public displayRemovalDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 143
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mRemovalDialogue:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mRemovalDialogue:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 145
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mRemovalDialogue:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/high16 v4, 0x3f800000

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 148
    .local v0, "fadeIn":Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/android/dialer/list/PhoneFavoriteTileView$3;

    invoke-direct {v1, p0}, Lcom/android/dialer/list/PhoneFavoriteTileView$3;-><init>(Lcom/android/dialer/list/PhoneFavoriteTileView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 160
    return-void
.end method

.method public getParentRow()Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mParentRow:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;

    return-object v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/contacts/common/list/ContactEntry;

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mPhoneNumberString:Ljava/lang/String;

    .line 126
    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p1, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mPhoneNumberString:Ljava/lang/String;

    .line 130
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mStarView:Landroid/widget/ImageView;

    iget-boolean v0, p1, Lcom/android/contacts/common/list/ContactEntry;->isFavorite:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    sget-object v0, Lcom/android/contacts/common/list/ContactEntry;->BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;

    if-ne p1, v0, :cond_2

    .line 135
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->setVisibility(I)V

    .line 140
    :cond_0
    :goto_1
    return-void

    .line 130
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/dialer/list/PhoneFavoriteTileView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mParentRow:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;

    .line 215
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactTileView;->onFinishInflate()V

    .line 88
    const v0, 0x7f0d017b

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mFavoriteContactCard:Landroid/view/View;

    .line 89
    const v0, 0x7f0d017d

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mRemovalDialogue:Landroid/view/View;

    .line 90
    const v0, 0x7f0d0180

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mUndoRemovalButton:Landroid/view/View;

    .line 92
    const v0, 0x7f0d017c

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mStarView:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mUndoRemovalButton:Landroid/view/View;

    new-instance v1, Lcom/android/dialer/list/PhoneFavoriteTileView$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/list/PhoneFavoriteTileView$1;-><init>(Lcom/android/dialer/list/PhoneFavoriteTileView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteTileView$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/PhoneFavoriteTileView$2;-><init>(Lcom/android/dialer/list/PhoneFavoriteTileView;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    return-void
.end method

.method public setupFavoriteContactCard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mRemovalDialogue:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mRemovalDialogue:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mRemovalDialogue:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mFavoriteContactCard:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 209
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mFavoriteContactCard:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 210
    return-void
.end method

.method public undoRemove()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 167
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mRemovalDialogue:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setAlpha(F)V

    .line 168
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mRemovalDialogue:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mFavoriteContactCard:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v8, [F

    const/high16 v6, 0x3f800000

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 173
    .local v1, "fadeIn":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mFavoriteContactCard:Landroid/view/View;

    const-string v4, "translationX"

    new-array v5, v8, [F

    aput v9, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 176
    .local v2, "moveBack":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 178
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v7

    aput-object v2, v3, v8

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 180
    new-instance v3, Lcom/android/dialer/list/PhoneFavoriteTileView$4;

    invoke-direct {v3, p0}, Lcom/android/dialer/list/PhoneFavoriteTileView$4;-><init>(Lcom/android/dialer/list/PhoneFavoriteTileView;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 195
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 197
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mParentRow:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;

    invoke-virtual {v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getTileAdapter()Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->undoPotentialRemoveEntryIndex()V

    .line 198
    return-void
.end method
