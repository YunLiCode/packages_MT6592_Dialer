.class Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;
.super Landroid/widget/FrameLayout;
.source "PhoneFavoriteMergedAdapter.java"

# interfaces
.implements Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipeableCallLogRow"
.end annotation


# instance fields
.field private mOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

.field private mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;


# direct methods
.method public constructor <init>(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    .line 332
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 334
    .local v4, "densityScale":F
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v5, v0

    .line 336
    .local v5, "pagingTouchSlop":F
    new-instance v0, Lcom/android/dialer/list/SwipeHelper;

    const/4 v2, 0x0

    move-object v1, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/list/SwipeHelper;-><init>(Landroid/content/Context;ILcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;FF)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    .line 338
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 342
    const v1, 0x7f020070

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 344
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 347
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogPadding:I
    invoke-static {v1}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->access$600(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogPadding:I
    invoke-static {v2}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->access$600(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)I

    move-result v2

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogPadding:I
    invoke-static {v3}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->access$600(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)I

    move-result v3

    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogPadding:I
    invoke-static {v4}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->access$600(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 349
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 352
    return-void
.end method

.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 361
    const v0, 0x7f0d0090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 376
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->requestDisallowInterceptTouchEvent(Z)V

    .line 377
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 381
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->mOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->mOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    invoke-interface {v0, p1}, Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;->onSwipe(Landroid/view/View;)V

    .line 384
    :cond_0
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 387
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/dialer/list/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 394
    :goto_0
    return v0

    .line 392
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 394
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onScroll()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/dialer/list/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 403
    :goto_0
    return v0

    .line 401
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 403
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnItemSwipeListener(Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->mOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    .line 409
    return-void
.end method
