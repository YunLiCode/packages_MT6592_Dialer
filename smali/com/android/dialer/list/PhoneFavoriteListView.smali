.class public Lcom/android/dialer/list/PhoneFavoriteListView;
.super Landroid/widget/ListView;
.source "PhoneFavoriteListView.java"

# interfaces
.implements Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/PhoneFavoriteListView$OnDragDropListener;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final BOUND_GAP_RATIO:F

.field private final DRAG_SCROLL_PX_UNIT:I

.field private final DRAG_SHADOW_ALPHA:F

.field private final SCROLL_HANDLER_DELAY_MILLIS:J

.field private mAnimationDuration:I

.field private mBottomScrollBound:I

.field private mDensityScale:F

.field private final mDragScroller:Ljava/lang/Runnable;

.field private mDragShadowBitmap:Landroid/graphics/Bitmap;

.field private mDragShadowLeft:I

.field private final mDragShadowOverAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDragShadowOverlay:Landroid/widget/ImageView;

.field private mDragShadowTop:I

.field private mEnableSwipe:Z

.field private mIsDragScrollerRunning:Z

.field private mLastDragY:I

.field private mOnDragDropListener:Lcom/android/dialer/list/PhoneFavoriteListView$OnDragDropListener;

.field private mOnItemGestureListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

.field private mScrollHandler:Landroid/os/Handler;

.field private mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

.field private mTopScrollBound:I

.field private mTouchDownForDragStartX:I

.field private mTouchDownForDragStartY:I

.field private mTouchOffsetToChildLeft:I

.field private mTouchOffsetToChildTop:I

.field private mTouchSlop:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoriteListView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/list/PhoneFavoriteListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 122
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/list/PhoneFavoriteListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput-boolean v6, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mEnableSwipe:Z

    .line 65
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->SCROLL_HANDLER_DELAY_MILLIS:J

    .line 66
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->DRAG_SCROLL_PX_UNIT:I

    .line 68
    iput-boolean v2, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mIsDragScrollerRunning:Z

    .line 84
    const v0, 0x3f333333

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->DRAG_SHADOW_ALPHA:F

    .line 90
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->BOUND_GAP_RATIO:F

    .line 92
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteListView$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/PhoneFavoriteListView$1;-><init>(Lcom/android/dialer/list/PhoneFavoriteListView;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragScroller:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteListView$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/PhoneFavoriteListView$2;-><init>(Lcom/android/dialer/list/PhoneFavoriteListView;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mAnimationDuration:I

    .line 128
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDensityScale:F

    .line 129
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchSlop:F

    .line 130
    new-instance v0, Lcom/android/dialer/list/SwipeHelper;

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDensityScale:F

    iget v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchSlop:F

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/list/SwipeHelper;-><init>(Landroid/content/Context;ILcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;FF)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    .line 132
    invoke-virtual {p0, v6}, Lcom/android/dialer/list/PhoneFavoriteListView;->setItemsCanFocus(Z)V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/list/PhoneFavoriteListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteListView;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLastDragY:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/dialer/list/PhoneFavoriteListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteListView;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTopScrollBound:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/dialer/list/PhoneFavoriteListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteListView;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mBottomScrollBound:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/dialer/list/PhoneFavoriteListView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteListView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/dialer/list/PhoneFavoriteListView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteListView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/dialer/list/PhoneFavoriteListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteListView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/dialer/list/PhoneFavoriteListView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteListView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createDraggedChildBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 410
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 411
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 413
    .local v1, "cache":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 414
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 416
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 423
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 424
    invoke-virtual {p1, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 426
    return-object v0

    .line 417
    :catch_0
    move-exception v2

    .line 418
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/dialer/list/PhoneFavoriteListView;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Failed to copy bitmap from Drawing cache"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureScrollHandler()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    .line 304
    :cond_0
    return-void
.end method

.method private getViewAtPosition(II)Landroid/view/View;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildCount()I

    move-result v2

    .line 291
    .local v2, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 292
    invoke-virtual {p0, v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 293
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p2, v3, :cond_0

    .line 297
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 291
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleDragFinished(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 393
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchOffsetToChildLeft:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    .line 394
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchOffsetToChildTop:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    .line 396
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 398
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mOnDragDropListener:Lcom/android/dialer/list/PhoneFavoriteListView$OnDragDropListener;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mOnDragDropListener:Lcom/android/dialer/list/PhoneFavoriteListView$OnDragDropListener;

    invoke-interface {v0}, Lcom/android/dialer/list/PhoneFavoriteListView$OnDragDropListener;->onDragFinished()V

    .line 407
    :cond_1
    return-void
.end method

.method private handleDragHovered(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 370
    iget v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchOffsetToChildLeft:I

    sub-int v3, p1, v3

    iput v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    .line 371
    iget v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchOffsetToChildTop:I

    sub-int v3, p2, v3

    iput v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    .line 373
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 374
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 375
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 378
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/list/PhoneFavoriteListView;->getViewAtPosition(II)Landroid/view/View;

    move-result-object v0

    .line 379
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;

    if-nez v3, :cond_2

    .line 389
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v2, v0

    .line 384
    check-cast v2, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;

    .line 385
    .local v2, "tile":Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v3, v4}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getItemIndex(FF)I

    move-result v1

    .line 386
    .local v1, "itemIndex":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mOnDragDropListener:Lcom/android/dialer/list/PhoneFavoriteListView$OnDragDropListener;

    if-eqz v3, :cond_1

    .line 387
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mOnDragDropListener:Lcom/android/dialer/list/PhoneFavoriteListView$OnDragDropListener;

    invoke-interface {v3, v1}, Lcom/android/dialer/list/PhoneFavoriteListView$OnDragDropListener;->onDragHovered(I)V

    goto :goto_0
.end method

.method private handleDragStarted(II)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/list/PhoneFavoriteListView;->getViewAtPosition(II)Landroid/view/View;

    move-result-object v0

    .line 311
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;

    if-nez v5, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v2, v0

    .line 316
    check-cast v2, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;

    .line 318
    .local v2, "tile":Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;
    invoke-virtual {v2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getTileAdapter()Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->hasPotentialRemoveEntryIndex()Z

    move-result v5

    if-nez v5, :cond_0

    .line 322
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {v2, v5, v6}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getItemIndex(FF)I

    move-result v1

    .line 323
    .local v1, "itemIndex":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mOnDragDropListener:Lcom/android/dialer/list/PhoneFavoriteListView$OnDragDropListener;

    if-eqz v5, :cond_2

    .line 324
    invoke-virtual {v2, p1, p2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getViewAtPosition(II)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/list/PhoneFavoriteTileView;

    .line 326
    .local v3, "tileView":Lcom/android/dialer/list/PhoneFavoriteTileView;
    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 330
    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->clearAnimation()V

    .line 331
    invoke-direct {p0, v3}, Lcom/android/dialer/list/PhoneFavoriteListView;->createDraggedChildBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    .line 332
    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 336
    instance-of v5, v3, Lcom/android/dialer/list/PhoneFavoriteRegularRowView;

    if-eqz v5, :cond_3

    .line 337
    invoke-virtual {v2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getLeft()I

    move-result v5

    iput v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    .line 338
    invoke-virtual {v2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getTop()I

    move-result v5

    iput v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    .line 346
    :goto_1
    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 347
    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    const v5, 0x3f333333

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 350
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setX(F)V

    .line 351
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setY(F)V

    .line 356
    iget v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    sub-int v4, p1, v4

    iput v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchOffsetToChildLeft:I

    .line 357
    iget v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    sub-int v4, p2, v4

    iput v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchOffsetToChildTop:I

    .line 360
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->invalidate()V

    .line 362
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mOnDragDropListener:Lcom/android/dialer/list/PhoneFavoriteListView$OnDragDropListener;

    invoke-interface {v4, v1}, Lcom/android/dialer/list/PhoneFavoriteListView$OnDragDropListener;->onDragStarted(I)V

    .line 365
    .end local v3    # "tileView":Lcom/android/dialer/list/PhoneFavoriteTileView;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 342
    .restart local v3    # "tileView":Lcom/android/dialer/list/PhoneFavoriteTileView;
    :cond_3
    invoke-virtual {v3}, Lcom/android/dialer/list/PhoneFavoriteTileView;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/dialer/list/PhoneFavoriteTileView;->getParentRow()Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getLeft()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    .line 343
    invoke-virtual {v3}, Lcom/android/dialer/list/PhoneFavoriteTileView;->getTop()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/dialer/list/PhoneFavoriteTileView;->getParentRow()Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    goto :goto_1
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 211
    invoke-static {p1}, Lcom/android/dialer/list/SwipeHelper;->isSwipeable(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 237
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 238
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 239
    .local v2, "eX":I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 240
    .local v3, "eY":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v4, v5

    .line 278
    :goto_1
    return v4

    .line 242
    :pswitch_0
    iget v6, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchDownForDragStartX:I

    iget v7, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchDownForDragStartY:I

    invoke-direct {p0, v6, v7}, Lcom/android/dialer/list/PhoneFavoriteListView;->handleDragStarted(II)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 247
    :pswitch_1
    iput v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLastDragY:I

    .line 248
    invoke-direct {p0, v2, v3}, Lcom/android/dialer/list/PhoneFavoriteListView;->handleDragHovered(II)V

    .line 250
    iget-boolean v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mIsDragScrollerRunning:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLastDragY:I

    iget v6, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchDownForDragStartY:I

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40800000

    iget v7, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchSlop:F

    mul-float/2addr v6, v7

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    .line 253
    iput-boolean v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mIsDragScrollerRunning:Z

    .line 254
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->ensureScrollHandler()V

    .line 255
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragScroller:Ljava/lang/Runnable;

    const-wide/16 v7, 0x5

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 259
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3e4ccccd

    mul-float/2addr v4, v6

    float-to-int v1, v4

    .line 260
    .local v1, "boundGap":I
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getTop()I

    move-result v4

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTopScrollBound:I

    .line 261
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getBottom()I

    move-result v4

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mBottomScrollBound:I

    goto :goto_0

    .line 266
    .end local v1    # "boundGap":I
    :pswitch_3
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->ensureScrollHandler()V

    .line 267
    iget-object v6, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragScroller:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    iput-boolean v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mIsDragScrollerRunning:Z

    .line 270
    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    .line 271
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/android/dialer/list/PhoneFavoriteListView;->handleDragFinished(II)V

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public enableSwipe(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mEnableSwipe:Z

    .line 149
    return-void
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/dialer/list/PhoneFavoriteListView;->getViewAtPosition(II)Landroid/view/View;

    move-result-object v0

    .line 191
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/dialer/list/SwipeHelper;->isSwipeable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 198
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 203
    const v0, 0x7f0d017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mEnableSwipe:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mOnItemGestureListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    invoke-interface {v0}, Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;->isSwipeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 232
    .local v0, "tileRow":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 233
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mOnItemGestureListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mOnItemGestureListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    invoke-interface {v0, p1}, Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;->onSwipe(Landroid/view/View;)V

    .line 221
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/widget/ListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDensityScale:F

    .line 139
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchSlop:F

    .line 140
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDensityScale:F

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/SwipeHelper;->setDensityScale(F)V

    .line 141
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchSlop:F

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/SwipeHelper;->setPagingTouchSlop(F)V

    .line 142
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchDownForDragStartX:I

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchDownForDragStartY:I

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->isSwipeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/dialer/list/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    .line 170
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onScroll()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mOnItemGestureListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mOnItemGestureListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    invoke-interface {v0}, Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;->onTouch()V

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->isSwipeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/dialer/list/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    .line 182
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDragShadowOverlay(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "overlay"    # Landroid/widget/ImageView;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    .line 283
    return-void
.end method

.method public setOnDragDropListener(Lcom/android/dialer/list/PhoneFavoriteListView$OnDragDropListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/dialer/list/PhoneFavoriteListView$OnDragDropListener;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mOnDragDropListener:Lcom/android/dialer/list/PhoneFavoriteListView$OnDragDropListener;

    .line 161
    return-void
.end method

.method public setOnItemSwipeListener(Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mOnItemGestureListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    .line 157
    return-void
.end method
