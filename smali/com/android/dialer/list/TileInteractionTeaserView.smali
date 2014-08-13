.class public Lcom/android/dialer/list/TileInteractionTeaserView;
.super Landroid/widget/FrameLayout;
.source "TileInteractionTeaserView.java"


# static fields
.field private static final KEY_TILE_INTERACTION_TEASER_SHOWN:Ljava/lang/String; = "key_tile_interaction_teaser_shown"

.field private static sShrinkAnimationDuration:I


# instance fields
.field private mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

.field private mAnimatedHeight:I

.field private mNeedLayout:Z

.field private mTextTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/list/TileInteractionTeaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/dialer/list/TileInteractionTeaserView;->mAnimatedHeight:I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    .local v0, "resources":Landroid/content/res/Resources;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dialer/list/TileInteractionTeaserView;->mNeedLayout:Z

    .line 45
    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/dialer/list/TileInteractionTeaserView;->sShrinkAnimationDuration:I

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/list/TileInteractionTeaserView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/list/TileInteractionTeaserView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/dialer/list/TileInteractionTeaserView;->startDestroyAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/dialer/list/TileInteractionTeaserView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/TileInteractionTeaserView;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/dialer/list/TileInteractionTeaserView;->mNeedLayout:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/dialer/list/TileInteractionTeaserView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/list/TileInteractionTeaserView;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/dialer/list/TileInteractionTeaserView;->mNeedLayout:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/dialer/list/TileInteractionTeaserView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/TileInteractionTeaserView;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/dialer/list/TileInteractionTeaserView;->mTextTop:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/dialer/list/TileInteractionTeaserView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/list/TileInteractionTeaserView;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/android/dialer/list/TileInteractionTeaserView;->mTextTop:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/dialer/list/TileInteractionTeaserView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/list/TileInteractionTeaserView;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/android/dialer/list/TileInteractionTeaserView;->mAnimatedHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/dialer/list/TileInteractionTeaserView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/list/TileInteractionTeaserView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/dialer/list/TileInteractionTeaserView;->setDismissed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/list/TileInteractionTeaserView;)Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/TileInteractionTeaserView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/dialer/list/TileInteractionTeaserView;->mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    return-object v0
.end method

.method private setDismissed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/android/dialer/list/TileInteractionTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.dialer_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_tile_interaction_teaser_shown"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    return-void
.end method

.method private startDestroyAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/android/dialer/list/TileInteractionTeaserView;->getHeight()I

    move-result v2

    .line 100
    .local v2, "start":I
    const/4 v0, 0x0

    .line 101
    .local v0, "end":I
    iput v2, p0, Lcom/android/dialer/list/TileInteractionTeaserView;->mAnimatedHeight:I

    .line 102
    const-string v3, "Interaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start from"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v6

    const/4 v4, 0x1

    aput v6, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 105
    .local v1, "heightAnimator":Landroid/animation/ValueAnimator;
    sget v3, Lcom/android/dialer/list/TileInteractionTeaserView;->sShrinkAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 106
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40000000

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    new-instance v3, Lcom/android/dialer/list/TileInteractionTeaserView$3;

    invoke-direct {v3, p0}, Lcom/android/dialer/list/TileInteractionTeaserView$3;-><init>(Lcom/android/dialer/list/TileInteractionTeaserView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 113
    new-instance v3, Lcom/android/dialer/list/TileInteractionTeaserView$4;

    invoke-direct {v3, p0}, Lcom/android/dialer/list/TileInteractionTeaserView$4;-><init>(Lcom/android/dialer/list/TileInteractionTeaserView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 137
    return-void
.end method


# virtual methods
.method public getShouldDisplayInList()Z
    .locals 4

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/dialer/list/TileInteractionTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.dialer_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "key_tile_interaction_teaser_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 50
    const v0, 0x7f0d009f

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/TileInteractionTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/list/TileInteractionTeaserView$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/list/TileInteractionTeaserView$1;-><init>(Lcom/android/dialer/list/TileInteractionTeaserView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 60
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 62
    const v2, 0x7f0d00cf

    invoke-virtual {p0, v2}, Lcom/android/dialer/list/TileInteractionTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    .local v1, "text":Landroid/widget/TextView;
    const v2, 0x7f0d01a8

    invoke-virtual {p0, v2}, Lcom/android/dialer/list/TileInteractionTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 66
    .local v0, "arrow":Landroid/widget/ImageView;
    new-instance v2, Lcom/android/dialer/list/TileInteractionTeaserView$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/dialer/list/TileInteractionTeaserView$2;-><init>(Lcom/android/dialer/list/TileInteractionTeaserView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 147
    iget v0, p0, Lcom/android/dialer/list/TileInteractionTeaserView;->mAnimatedHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 148
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/dialer/list/TileInteractionTeaserView;->mAnimatedHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/list/TileInteractionTeaserView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/dialer/list/TileInteractionTeaserView;->mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    .line 96
    return-void
.end method
