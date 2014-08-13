.class public Lcom/android/dialer/list/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;,
        Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;
    }
.end annotation


# static fields
.field static final ALPHA_FADE_END:F = 0.7f

.field public static ALPHA_FADE_START:F = 0.0f

.field private static final CONSTRAIN_SWIPE:Z = true

.field private static final DEBUG_INVALIDATE:Z = false

.field private static DEFAULT_ESCAPE_ANIMATION_DURATION:I = 0x0

.field private static final DISMISS_IF_SWIPED_FAR_ENOUGH:Z = true

.field private static final FACTOR:F = 1.2f

.field private static final FADE_OUT_DURING_SWIPE:Z = true

.field public static final IS_SWIPEABLE:Ljava/lang/Object;

.field public static final IS_SWIPEABLE_TAG:I = 0x7f0d001b

.field private static final LOG_SWIPE_DISMISS_VELOCITY:Z = false

.field private static MAX_DISMISS_VELOCITY:I = 0x0

.field private static MAX_ESCAPE_ANIMATION_DURATION:I = 0x0

.field private static MIN_LOCK:F = 0.0f

.field private static MIN_SWIPE:F = 0.0f

.field private static MIN_VERT:F = 0.0f

.field private static final PROTECTION_PADDING:I = 0x32

.field private static SNAP_ANIM_LEN:I = 0x0

.field private static SWIPE_ESCAPE_VELOCITY:I = 0x0

.field private static SWIPE_SCROLL_SLOP:I = 0x0

.field static final TAG:Ljava/lang/String;

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private final mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

.field private mCanCurrViewBeDimissed:Z

.field private mChildSwipedFarEnoughFactor:F

.field private mChildSwipedFastEnoughFactor:F

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDragging:Z

.field private mInitialTouchPosX:F

.field private mInitialTouchPosY:F

.field private mLastY:F

.field private mMinAlpha:F

.field private mPagingTouchSlop:F

.field private mProtected:Z

.field private mStartAlpha:F

.field private final mSwipeDirection:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/dialer/list/SwipeHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/SwipeHelper;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/dialer/list/SwipeHelper;->IS_SWIPEABLE:Ljava/lang/Object;

    .line 53
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/dialer/list/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 55
    const/4 v0, -0x1

    sput v0, Lcom/android/dialer/list/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/android/dialer/list/SwipeHelper;->ALPHA_FADE_START:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;FF)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "swipeDirection"    # I
    .param p3, "callback"    # Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;
    .param p4, "densityScale"    # F
    .param p5, "pagingTouchSlop"    # F

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const v1, 0x3e99999a

    iput v1, p0, Lcom/android/dialer/list/SwipeHelper;->mMinAlpha:F

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/dialer/list/SwipeHelper;->mProtected:Z

    .line 92
    const v1, 0x3ecccccd

    iput v1, p0, Lcom/android/dialer/list/SwipeHelper;->mChildSwipedFarEnoughFactor:F

    .line 93
    const v1, 0x3d4ccccd

    iput v1, p0, Lcom/android/dialer/list/SwipeHelper;->mChildSwipedFastEnoughFactor:F

    .line 97
    iput-object p3, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    .line 98
    iput p2, p0, Lcom/android/dialer/list/SwipeHelper;->mSwipeDirection:I

    .line 99
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/list/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 100
    iput p4, p0, Lcom/android/dialer/list/SwipeHelper;->mDensityScale:F

    .line 101
    iput p5, p0, Lcom/android/dialer/list/SwipeHelper;->mPagingTouchSlop:F

    .line 102
    sget v1, Lcom/android/dialer/list/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    .line 105
    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 106
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 107
    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 108
    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->SNAP_ANIM_LEN:I

    .line 109
    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->SWIPE_SCROLL_SLOP:I

    .line 110
    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->MIN_SWIPE:F

    .line 111
    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->MIN_VERT:F

    .line 112
    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->MIN_LOCK:F

    .line 114
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/list/SwipeHelper;)Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/SwipeHelper;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/list/SwipeHelper;Landroid/view/View;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/dialer/list/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/dialer/list/SwipeHelper;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/SwipeHelper;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/dialer/list/SwipeHelper;->mStartAlpha:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/dialer/list/SwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/SwipeHelper;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method private createDismissAnimation(Landroid/view/View;FI)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F
    .param p3, "duration"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/list/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 145
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/dialer/list/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 146
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 147
    return-object v0
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    .line 138
    iget v1, p0, Lcom/android/dialer/list/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    const-string v1, "translationX"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 140
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 138
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    const-string v1, "translationY"

    goto :goto_0
.end method

.method private determineDuration(Landroid/view/View;FF)I
    .locals 3
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "newPos"    # F
    .param p3, "velocity"    # F

    .prologue
    .line 301
    sget v0, Lcom/android/dialer/list/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 302
    .local v0, "duration":I
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x447a0000

    mul-float/2addr v1, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 310
    :goto_0
    return v0

    .line 308
    :cond_0
    sget v0, Lcom/android/dialer/list/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_0
.end method

.method private determinePos(Landroid/view/View;F)F
    .locals 3
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v2, 0x0

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "newPos":F
    cmpg-float v1, p2, v2

    if-ltz v1, :cond_1

    cmpl-float v1, p2, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    :cond_0
    cmpl-float v1, p2, v2

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/dialer/list/SwipeHelper;->mSwipeDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 318
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/dialer/list/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v1

    neg-float v0, v1

    .line 322
    :goto_0
    return v0

    .line 320
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/dialer/list/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method private dismissChild(Landroid/view/View;F)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    .line 274
    iget-object v5, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    invoke-interface {v5, p1}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 275
    .local v1, "animView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    invoke-interface {v5, p1}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 276
    .local v2, "canAnimViewBeDismissed":Z
    invoke-direct {p0, v1, p2}, Lcom/android/dialer/list/SwipeHelper;->determinePos(Landroid/view/View;F)F

    move-result v4

    .line 277
    .local v4, "newPos":F
    invoke-direct {p0, v1, v4, p2}, Lcom/android/dialer/list/SwipeHelper;->determineDuration(Landroid/view/View;FF)I

    move-result v3

    .line 279
    .local v3, "duration":I
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 280
    invoke-direct {p0, v1, v4, v3}, Lcom/android/dialer/list/SwipeHelper;->createDismissAnimation(Landroid/view/View;FI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 281
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    new-instance v5, Lcom/android/dialer/list/SwipeHelper$1;

    invoke-direct {v5, p0, p1, v1}, Lcom/android/dialer/list/SwipeHelper$1;-><init>(Lcom/android/dialer/list/SwipeHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 288
    new-instance v5, Lcom/android/dialer/list/SwipeHelper$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/dialer/list/SwipeHelper$2;-><init>(Lcom/android/dialer/list/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 297
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 298
    return-void
.end method

.method private getAlphaForOffset(Landroid/view/View;)F
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/dialer/list/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 174
    .local v3, "viewSize":F
    const v4, 0x3f333333

    mul-float v0, v4, v3

    .line 175
    .local v0, "fadeSize":F
    iget v2, p0, Lcom/android/dialer/list/SwipeHelper;->mStartAlpha:F

    .line 176
    .local v2, "result":F
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 177
    .local v1, "pos":F
    sget v4, Lcom/android/dialer/list/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 178
    iget v4, p0, Lcom/android/dialer/list/SwipeHelper;->mStartAlpha:F

    sget v5, Lcom/android/dialer/list/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v5, v3

    sub-float v5, v1, v5

    div-float/2addr v5, v0

    sub-float v2, v4, v5

    .line 182
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/dialer/list/SwipeHelper;->mMinAlpha:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    .line 179
    :cond_1
    iget v4, p0, Lcom/android/dialer/list/SwipeHelper;->mStartAlpha:F

    sget v5, Lcom/android/dialer/list/SwipeHelper;->ALPHA_FADE_START:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 180
    iget v4, p0, Lcom/android/dialer/list/SwipeHelper;->mStartAlpha:F

    sget v5, Lcom/android/dialer/list/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v5, v3

    add-float/2addr v5, v1

    div-float/2addr v5, v0

    add-float v2, v4, v5

    goto :goto_0
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/dialer/list/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    iget v0, p0, Lcom/android/dialer/list/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 133
    iget v0, p0, Lcom/android/dialer/list/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 187
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v0}, Lcom/android/dialer/list/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 190
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "childBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 198
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .line 200
    .restart local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 201
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method public static isSwipeable(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 443
    sget-object v0, Lcom/android/dialer/list/SwipeHelper;->IS_SWIPEABLE:Ljava/lang/Object;

    const v1, 0x7f0d001b

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSwipeable(Landroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "swipeable"    # Z

    .prologue
    .line 439
    const v1, 0x7f0d001b

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/dialer/list/SwipeHelper;->IS_SWIPEABLE:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 440
    return-void

    .line 439
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    .line 156
    iget v0, p0, Lcom/android/dialer/list/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 216
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/dialer/list/SwipeHelper;->mDragging:Z

    :goto_1
    return v7

    .line 218
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/android/dialer/list/SwipeHelper;->mLastY:F

    .line 219
    iput-boolean v7, p0, Lcom/android/dialer/list/SwipeHelper;->mDragging:Z

    .line 220
    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    invoke-interface {v7, p1}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 221
    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    .line 222
    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 223
    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    iget-object v8, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 224
    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    iput v7, p0, Lcom/android/dialer/list/SwipeHelper;->mStartAlpha:F

    .line 225
    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    iget-object v8, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 226
    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosX:F

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosY:F

    goto :goto_0

    .line 232
    :pswitch_1
    iget-object v8, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v8, :cond_2

    .line 234
    iget v8, p0, Lcom/android/dialer/list/SwipeHelper;->mLastY:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    iget-boolean v8, p0, Lcom/android/dialer/list/SwipeHelper;->mDragging:Z

    if-nez v8, :cond_1

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 236
    .local v2, "currY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 237
    .local v1, "currX":F
    iget v8, p0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosY:F

    sub-float v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 238
    .local v5, "deltaY":F
    iget v8, p0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosX:F

    sub-float v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 239
    .local v4, "deltaX":F
    sget v8, Lcom/android/dialer/list/SwipeHelper;->SWIPE_SCROLL_SLOP:I

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_1

    const v8, 0x3f99999a

    mul-float/2addr v8, v4

    cmpl-float v8, v5, v8

    if-lez v8, :cond_1

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/android/dialer/list/SwipeHelper;->mLastY:F

    .line 241
    iget-object v8, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    invoke-interface {v8}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->onScroll()V

    goto/16 :goto_1

    .line 245
    .end local v1    # "currX":F
    .end local v2    # "currY":F
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    :cond_1
    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 247
    .local v6, "pos":F
    iget v7, p0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosX:F

    sub-float v3, v6, v7

    .line 248
    .local v3, "delta":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/dialer/list/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 249
    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    iget-object v8, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    iget-object v9, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v8, v9}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->onBeginDrag(Landroid/view/View;)V

    .line 250
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/dialer/list/SwipeHelper;->mDragging:Z

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v8

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosX:F

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosY:F

    .line 255
    .end local v3    # "delta":F
    .end local v6    # "pos":F
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/dialer/list/SwipeHelper;->mLastY:F

    goto/16 :goto_0

    .line 259
    :pswitch_2
    iput-boolean v7, p0, Lcom/android/dialer/list/SwipeHelper;->mDragging:Z

    .line 260
    iput-object v8, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 261
    iput-object v8, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 262
    const/high16 v7, -0x40800000

    iput v7, p0, Lcom/android/dialer/list/SwipeHelper;->mLastY:F

    goto/16 :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 351
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/list/SwipeHelper;->mDragging:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/list/SwipeHelper;->mProtected:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 352
    :cond_0
    const/16 v18, 0x0

    .line 435
    :goto_0
    return v18

    .line 354
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 356
    .local v3, "action":I
    packed-switch v3, :pswitch_data_0

    .line 435
    :cond_2
    :goto_1
    const/16 v18, 0x1

    goto :goto_0

    .line 359
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosX:F

    move/from16 v19, v0

    sub-float v7, v18, v19

    .line 361
    .local v7, "deltaX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 365
    .local v8, "deltaY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/list/SwipeHelper;->mDragging:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    sget v18, Lcom/android/dialer/list/SwipeHelper;->MIN_VERT:F

    cmpl-float v18, v8, v18

    if-lez v18, :cond_3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v18

    sget v19, Lcom/android/dialer/list/SwipeHelper;->MIN_LOCK:F

    cmpg-float v18, v18, v19

    if-gez v18, :cond_3

    const v18, 0x3f99999a

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v19

    mul-float v18, v18, v19

    cmpl-float v18, v8, v18

    if-lez v18, :cond_3

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->onScroll()V

    .line 368
    const/16 v18, 0x0

    goto :goto_0

    .line 370
    :cond_3
    sget v13, Lcom/android/dialer/list/SwipeHelper;->MIN_SWIPE:F

    .line 371
    .local v13, "minDistance":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpg-float v18, v18, v13

    if-gez v18, :cond_4

    .line 374
    const/16 v18, 0x1

    goto :goto_0

    .line 378
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/dialer/list/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v15

    .line 380
    .local v15, "size":F
    const v18, 0x3e19999a

    mul-float v11, v18, v15

    .line 381
    .local v11, "maxScrollDistance":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpl-float v18, v18, v15

    if-ltz v18, :cond_8

    .line 382
    const/16 v18, 0x0

    cmpl-float v18, v7, v18

    if-lez v18, :cond_7

    move v7, v11

    .line 388
    .end local v11    # "maxScrollDistance":F
    .end local v15    # "size":F
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Lcom/android/dialer/list/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 389
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCanCurrViewBeDimissed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/dialer/list/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setAlpha(F)V

    .line 392
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/dialer/list/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    goto/16 :goto_1

    .line 382
    .restart local v11    # "maxScrollDistance":F
    .restart local v15    # "size":F
    :cond_7
    neg-float v7, v11

    goto :goto_2

    .line 384
    :cond_8
    div-float v18, v7, v15

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff921fb54442d18L

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    mul-float v7, v11, v18

    goto :goto_2

    .line 397
    .end local v7    # "deltaX":F
    .end local v8    # "deltaY":F
    .end local v11    # "maxScrollDistance":F
    .end local v13    # "minDistance":F
    .end local v15    # "size":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 398
    sget v18, Lcom/android/dialer/list/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/SwipeHelper;->mDensityScale:F

    move/from16 v19, v0

    mul-float v12, v18, v19

    .line 399
    .local v12, "maxVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x3e8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 400
    sget v18, Lcom/android/dialer/list/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/SwipeHelper;->mDensityScale:F

    move/from16 v19, v0

    mul-float v10, v18, v19

    .line 401
    .local v10, "escapeVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/dialer/list/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v17

    .line 402
    .local v17, "velocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/dialer/list/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v14

    .line 407
    .local v14, "perpendicularVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTranslationX()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 408
    .local v16, "translation":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/dialer/list/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v6

    .line 410
    .local v6, "currAnimViewSize":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/SwipeHelper;->mChildSwipedFarEnoughFactor:F

    move/from16 v18, v0

    mul-float v18, v18, v6

    cmpl-float v18, v16, v18

    if-lez v18, :cond_a

    const/4 v4, 0x1

    .line 414
    .local v4, "childSwipedFarEnough":Z
    :goto_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpl-float v18, v18, v10

    if-lez v18, :cond_d

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v18

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v19

    cmpl-float v18, v18, v19

    if-lez v18, :cond_d

    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-lez v18, :cond_b

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTranslationX()F

    move-result v19

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_c

    const/16 v19, 0x1

    :goto_5
    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/SwipeHelper;->mChildSwipedFastEnoughFactor:F

    move/from16 v18, v0

    mul-float v18, v18, v6

    cmpl-float v18, v16, v18

    if-lez v18, :cond_d

    const/4 v5, 0x1

    .line 424
    .local v5, "childSwipedFastEnough":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_e

    if-nez v5, :cond_9

    if-eqz v4, :cond_e

    :cond_9
    const/4 v9, 0x1

    .line 427
    .local v9, "dismissChild":Z
    :goto_7
    if-eqz v9, :cond_10

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v5, :cond_f

    .end local v17    # "velocity":F
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/list/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 410
    .end local v4    # "childSwipedFarEnough":Z
    .end local v5    # "childSwipedFastEnough":Z
    .end local v9    # "dismissChild":Z
    .restart local v17    # "velocity":F
    :cond_a
    const/4 v4, 0x0

    goto :goto_3

    .line 414
    .restart local v4    # "childSwipedFarEnough":Z
    :cond_b
    const/16 v18, 0x0

    goto :goto_4

    :cond_c
    const/16 v19, 0x0

    goto :goto_5

    :cond_d
    const/4 v5, 0x0

    goto :goto_6

    .line 424
    .restart local v5    # "childSwipedFastEnough":Z
    :cond_e
    const/4 v9, 0x0

    goto :goto_7

    .line 428
    .restart local v9    # "dismissChild":Z
    :cond_f
    const/16 v17, 0x0

    goto :goto_8

    .line 430
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/list/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setChildSwipedFarEnoughFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 125
    iput p1, p0, Lcom/android/dialer/list/SwipeHelper;->mChildSwipedFarEnoughFactor:F

    .line 126
    return-void
.end method

.method public setChildSwipedFastEnoughFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 129
    iput p1, p0, Lcom/android/dialer/list/SwipeHelper;->mChildSwipedFastEnoughFactor:F

    .line 130
    return-void
.end method

.method public setDensityScale(F)V
    .locals 0
    .param p1, "densityScale"    # F

    .prologue
    .line 117
    iput p1, p0, Lcom/android/dialer/list/SwipeHelper;->mDensityScale:F

    .line 118
    return-void
.end method

.method public setMinAlpha(F)V
    .locals 0
    .param p1, "minAlpha"    # F

    .prologue
    .line 169
    iput p1, p0, Lcom/android/dialer/list/SwipeHelper;->mMinAlpha:F

    .line 170
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0
    .param p1, "pagingTouchSlop"    # F

    .prologue
    .line 121
    iput p1, p0, Lcom/android/dialer/list/SwipeHelper;->mPagingTouchSlop:F

    .line 122
    return-void
.end method

.method public snapChild(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    .line 326
    iget-object v4, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    invoke-interface {v4, p1}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 327
    .local v1, "animView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    invoke-interface {v4, p1}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 328
    .local v2, "canAnimViewBeDismissed":Z
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/dialer/list/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 329
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget v3, Lcom/android/dialer/list/SwipeHelper;->SNAP_ANIM_LEN:I

    .line 330
    .local v3, "duration":I
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 331
    new-instance v4, Lcom/android/dialer/list/SwipeHelper$3;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/dialer/list/SwipeHelper$3;-><init>(Lcom/android/dialer/list/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 340
    new-instance v4, Lcom/android/dialer/list/SwipeHelper$4;

    invoke-direct {v4, p0, v1}, Lcom/android/dialer/list/SwipeHelper$4;-><init>(Lcom/android/dialer/list/SwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 347
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 348
    return-void
.end method
