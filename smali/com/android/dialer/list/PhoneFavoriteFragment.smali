.class public Lcom/android/dialer/list/PhoneFavoriteFragment;
.super Landroid/app/Fragment;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;
.implements Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;,
        Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileAdapterListener;,
        Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileLoaderListener;,
        Lcom/android/dialer/list/PhoneFavoriteFragment$MissedCallLogLoaderListener;,
        Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;,
        Lcom/android/dialer/list/PhoneFavoriteFragment$OnShowAllContactsListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_LAST_DISMISSED_CALL_SHORTCUT_DATE:Ljava/lang/String; = "key_last_dismissed_call_shortcut_date"

.field private static final KEY_REMOVED_ITEM_HEIGHT:J = 0x7fffffffffffffffL

.field private static LOADER_ID_CONTACT_TILE:I

.field private static MISSED_CALL_LOADER:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;

.field private mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

.field private mAnimationDuration:I

.field private mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

.field private mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

.field private mCallType:I

.field private mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

.field private final mContactTileAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private mContactTileFrame:Landroid/view/View;

.field private final mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCallShortcutDate:J

.field private mEmptyView:Landroid/view/View;

.field private final mItemIdLeftMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemIdTopMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCallShortcutDate:J

.field private mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

.field private mListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

.field private mNoFavouriteImage:Landroid/widget/ImageView;

.field private mParentView:Landroid/view/View;

.field private final mScrollListener:Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;

.field private mShowAllContactsButton:Landroid/view/View;

.field private mShowAllContactsInEmptyViewButton:Landroid/view/View;

.field private mShowAllContactsListener:Lcom/android/dialer/list/PhoneFavoriteFragment$OnShowAllContactsListener;

.field private mShowImage:Z

.field private mTileInteractionTeaserView:Lcom/android/dialer/list/TileInteractionTeaserView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-class v0, Lcom/android/dialer/list/PhoneFavoriteFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    .line 106
    const/4 v0, 0x1

    sput v0, Lcom/android/dialer/list/PhoneFavoriteFragment;->LOADER_ID_CONTACT_TILE:I

    .line 107
    const/4 v0, 0x2

    sput v0, Lcom/android/dialer/list/PhoneFavoriteFragment;->MISSED_CALL_LOADER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mItemIdTopMap:Ljava/util/HashMap;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mItemIdLeftMap:Ljava/util/HashMap;

    .line 227
    iput-wide v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mLastCallShortcutDate:J

    .line 232
    iput-wide v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCurrentCallShortcutDate:J

    .line 234
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileAdapterListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileAdapterListener;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    .line 236
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileLoaderListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileLoaderListener;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 238
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mScrollListener:Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;

    .line 771
    iput v2, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCallType:I

    .line 772
    iput-boolean v2, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mShowImage:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/calllog/CallLogAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;Ljava/util/ArrayList;[J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;
    .param p1, "x1"    # Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # [J

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/list/PhoneFavoriteFragment;->performHorizontalAnimations(Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;Ljava/util/ArrayList;[J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/dialer/list/PhoneFavoriteFragment;[JJ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;
    .param p1, "x1"    # [J
    .param p2, "x2"    # J

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/list/PhoneFavoriteFragment;->containsId([JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/dialer/list/PhoneFavoriteFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mItemIdTopMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/dialer/list/PhoneFavoriteFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mItemIdLeftMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/dialer/list/PhoneFavoriteFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 85
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/OnListFragmentScrolledListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/dialer/list/PhoneFavoriteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->showAllContacts()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoriteListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    return-object v0
.end method

.method private varargs animateListView([J)V
    .locals 5
    .param p1, "idsInPlace"    # [J

    .prologue
    .line 616
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mItemIdTopMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 700
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mItemIdTopMap:Ljava/util/HashMap;

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 625
    .local v1, "removedItemHeight":I
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v2}, Lcom/android/dialer/list/PhoneFavoriteListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 626
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/android/dialer/list/PhoneFavoriteFragment$3;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/android/dialer/list/PhoneFavoriteFragment$3;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Landroid/view/ViewTreeObserver;[JI)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private containsId([JJ)Z
    .locals 3
    .param p1, "ids"    # [J
    .param p2, "target"    # J

    .prologue
    .line 704
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 705
    aget-wide v1, p1, v0

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    .line 706
    const/4 v1, 0x1

    .line 709
    :goto_1
    return v1

    .line 704
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private performHorizontalAnimations(Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;Ljava/util/ArrayList;[J)V
    .locals 15
    .param p1, "row"    # Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;
    .param p3, "idsInPlace"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;[J)V"
        }
    .end annotation

    .prologue
    .line 570
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactEntry;>;"
    iget-object v11, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mItemIdLeftMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 574
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_2

    .line 576
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 577
    .local v3, "child":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactEntry;

    .line 578
    .local v5, "entry":Lcom/android/contacts/common/list/ContactEntry;
    iget-object v11, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    iget-wide v12, v5, Lcom/android/contacts/common/list/ContactEntry;->id:J

    invoke-virtual {v11, v12, v13}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getAdjustedItemId(J)J

    move-result-wide v7

    .line 580
    .local v7, "itemId":J
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v7, v8}, Lcom/android/dialer/list/PhoneFavoriteFragment;->containsId([JJ)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 581
    const-string v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-static {v3, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "entry":Lcom/android/contacts/common/list/ContactEntry;
    .end local v7    # "itemId":J
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 606
    iget v11, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAnimationDuration:I

    int-to-long v11, v11

    invoke-virtual {v1, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 607
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 585
    .restart local v3    # "child":Landroid/view/View;
    .restart local v5    # "entry":Lcom/android/contacts/common/list/ContactEntry;
    .restart local v7    # "itemId":J
    :cond_3
    iget-object v11, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mItemIdLeftMap:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 586
    .local v10, "startLeft":Ljava/lang/Integer;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 587
    .local v9, "left":I
    if-eqz v10, :cond_5

    .line 588
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v11, v9, :cond_4

    .line 589
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v4, v11, v9

    .line 595
    .local v4, "delta":I
    const-string v11, "translationX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    int-to-float v14, v4

    aput v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v3, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    .end local v4    # "delta":I
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 600
    :cond_5
    const-string v11, "translationX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    int-to-float v14, v9

    aput v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v3, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 581
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private saveHorizontalOffsets(Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "row"    # Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 553
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactEntry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 554
    invoke-virtual {p1, v2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 555
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactEntry;

    .line 556
    .local v1, "entry":Lcom/android/contacts/common/list/ContactEntry;
    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    iget-wide v6, v1, Lcom/android/contacts/common/list/ContactEntry;->id:J

    invoke-virtual {v5, v6, v7}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getAdjustedItemId(J)J

    move-result-wide v3

    .line 561
    .local v3, "itemId":J
    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mItemIdLeftMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 563
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "entry":Lcom/android/contacts/common/list/ContactEntry;
    .end local v3    # "itemId":J
    :cond_0
    return-void
.end method

.method private saveOffsets(I)V
    .locals 10
    .param p1, "removedItemHeight"    # I

    .prologue
    .line 528
    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v7}, Lcom/android/dialer/list/PhoneFavoriteListView;->getFirstVisiblePosition()I

    move-result v1

    .line 532
    .local v1, "firstVisiblePosition":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v7}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 533
    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v7, v2}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 534
    .local v0, "child":Landroid/view/View;
    add-int v6, v1, v2

    .line 535
    .local v6, "position":I
    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {v7, v6}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->getItemId(I)J

    move-result-wide v3

    .line 536
    .local v3, "itemId":J
    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {v7, v6}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->getItemViewType(I)I

    move-result v5

    .line 537
    .local v5, "itemViewType":I
    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    move-object v7, v0

    .line 539
    check-cast v7, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;

    iget-object v8, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {v8, v6}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {p0, v7, v8}, Lcom/android/dialer/list/PhoneFavoriteFragment;->saveHorizontalOffsets(Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;Ljava/util/ArrayList;)V

    .line 546
    :cond_0
    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mItemIdTopMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 549
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "itemId":J
    .end local v5    # "itemViewType":I
    .end local v6    # "position":I
    :cond_1
    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mItemIdTopMap:Ljava/util/HashMap;

    const-wide v8, 0x7fffffffffffffffL

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    return-void
.end method

.method private setNoFavoriteImageVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 775
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mNoFavouriteImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 777
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 778
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mNoFavouriteImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 780
    .end local v0    # "visibility":I
    :cond_0
    return-void

    .line 777
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private showAllContacts()V
    .locals 2

    .prologue
    .line 424
    sget-object v0, Lcom/android/dialer/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    const-string v1, "---showAllContacts---"

    invoke-static {v0, v1}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mShowAllContactsListener:Lcom/android/dialer/list/PhoneFavoriteFragment$OnShowAllContactsListener;

    invoke-interface {v0}, Lcom/android/dialer/list/PhoneFavoriteFragment$OnShowAllContactsListener;->onShowAllContacts()V

    .line 427
    return-void
.end method


# virtual methods
.method public cacheOffsetsForDatasetChange()V
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->saveOffsets(I)V

    .line 720
    return-void
.end method

.method public dismissShortcut(I)V
    .locals 6
    .param p1, "height"    # I

    .prologue
    .line 723
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoriteFragment;->saveOffsets(I)V

    .line 724
    iget-wide v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCurrentCallShortcutDate:J

    iput-wide v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mLastCallShortcutDate:J

    .line 725
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.dialer_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 727
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_last_dismissed_call_shortcut_date"

    iget-wide v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mLastCallShortcutDate:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 733
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    const/16 v2, 0x4e21

    const/16 v3, 0x4e2b

    iget-wide v4, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mLastCallShortcutDate:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->fetchCallsJionDataView(IIJ)V

    .line 735
    return-void
.end method

.method public fetchCalls()V
    .locals 8

    .prologue
    const/16 v7, 0x4e2b

    const/16 v6, 0x4e21

    .line 485
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 486
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 487
    sget-object v3, Lcom/android/dialer/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    const-string v4, " fetchCalls(), but this.getActivity() is null, use default value"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    iget-wide v4, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mLastCallShortcutDate:J

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->fetchCallsJionDataView(IIJ)V

    .line 504
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 493
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "calllog_sim_filter"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 501
    .local v2, "simFilter":I
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    iget-wide v4, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mLastCallShortcutDate:J

    invoke-virtual {v3, v2, v7, v4, v5}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->fetchCallsJionDataView(IIJ)V

    goto :goto_0
.end method

.method public hasFrequents()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 361
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    if-nez v1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getNumFrequents()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 248
    new-instance v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;II)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    .line 252
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-static {p1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 253
    return-void
.end method

.method public onCallsDeleted()V
    .locals 2

    .prologue
    .line 509
    sget-object v0, Lcom/android/dialer/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCallsDeleted(), do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 444
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    :cond_0
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 477
    :goto_0
    return-void

    .line 450
    :cond_1
    new-array v0, v1, [J

    invoke-direct {p0, v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->animateListView([J)V

    .line 451
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    .line 454
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCallType:I

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mShowImage:Z

    .line 458
    sget-object v0, Lcom/android/dialer/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCurrentCallShortcutDate:J

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 476
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 460
    :cond_3
    iput v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCallType:I

    .line 461
    iput-boolean v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mShowImage:Z

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 258
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAnimationDuration:I

    .line 265
    new-instance v1, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2, p0, v4}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;-><init>(Landroid/content/ContentResolver;Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;I)V

    iput-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    .line 267
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "currentCountryIso":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/dialer/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, p0, v2, v4, v3}, Lcom/android/dialerbind/ObjectFactory;->newCallLogAdapter(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;ZZ)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    .line 270
    invoke-virtual {p0, v4}, Lcom/android/dialer/list/PhoneFavoriteFragment;->setHasOptionsMenu(Z)V

    .line 271
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 289
    const v0, 0x7f040065

    invoke-virtual {p1, v0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mParentView:Landroid/view/View;

    .line 291
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f0d0183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/PhoneFavoriteListView;

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    .line 292
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->setItemsCanFocus(Z)V

    .line 293
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v0, p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v0, v8}, Lcom/android/dialer/list/PhoneFavoriteListView;->setVerticalScrollBarEnabled(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->setVerticalScrollbarPosition(I)V

    .line 296
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->setScrollBarStyle(I)V

    .line 297
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->setOnItemSwipeListener(Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;)V

    .line 298
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->setOnDragDropListener(Lcom/android/dialer/list/PhoneFavoriteListView$OnDragDropListener;)V

    .line 300
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f0d0184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 302
    .local v7, "dragShadowOverlay":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v0, v7}, Lcom/android/dialer/list/PhoneFavoriteListView;->setDragShadowOverlay(Landroid/widget/ImageView;)V

    .line 304
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f0d0185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mEmptyView:Landroid/view/View;

    .line 307
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0d0188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mNoFavouriteImage:Landroid/widget/ImageView;

    .line 310
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f0d0186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mShowAllContactsInEmptyViewButton:Landroid/view/View;

    .line 318
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mShowAllContactsInEmptyViewButton:Landroid/view/View;

    new-instance v1, Lcom/android/dialer/list/PhoneFavoriteFragment$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/list/PhoneFavoriteFragment$1;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    const v0, 0x7f04006c

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {p1, v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mShowAllContactsButton:Landroid/view/View;

    .line 333
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mShowAllContactsButton:Landroid/view/View;

    new-instance v1, Lcom/android/dialer/list/PhoneFavoriteFragment$2;

    invoke-direct {v1, p0}, Lcom/android/dialer/list/PhoneFavoriteFragment$2;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f0d0182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileFrame:Landroid/view/View;

    .line 343
    const v0, 0x7f04006e

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {p1, v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/TileInteractionTeaserView;

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mTileInteractionTeaserView:Lcom/android/dialer/list/TileInteractionTeaserView;

    .line 346
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mShowAllContactsButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mTileInteractionTeaserView:Lcom/android/dialer/list/TileInteractionTeaserView;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;-><init>(Landroid/content/Context;Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoritesTileAdapter;Lcom/android/dialer/calllog/CallLogAdapter;Landroid/view/View;Lcom/android/dialer/list/TileInteractionTeaserView;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    .line 349
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mTileInteractionTeaserView:Lcom/android/dialer/list/TileInteractionTeaserView;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/TileInteractionTeaserView;->setAdapter(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)V

    .line 351
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 353
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mScrollListener:Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 354
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v0, v8}, Lcom/android/dialer/list/PhoneFavoriteListView;->setFastScrollEnabled(Z)V

    .line 355
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v0, v8}, Lcom/android/dialer/list/PhoneFavoriteListView;->setFastScrollAlwaysVisible(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs onDataSetChangedForAnimation([J)V
    .locals 0
    .param p1, "idsInPlace"    # [J

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoriteFragment;->animateListView([J)V

    .line 715
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 786
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 787
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    if-eqz v0, :cond_0

    .line 788
    sget-object v0, Lcom/android/dialer/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    const-string v1, "---Close cursor---"

    invoke-static {v0, v1}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 792
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 413
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result v0

    .line 414
    .local v0, "contactTileAdapterCount":I
    if-gt p3, v0, :cond_0

    .line 415
    sget-object v1, Lcom/android/dialer/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick() event for unexpected position. The position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is before \"all\" section. Ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->removePendingContactEntry()Z

    .line 519
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->invalidateCache()V

    .line 520
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 521
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 275
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 276
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.dialer_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 279
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "key_last_dismissed_call_shortcut_date"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mLastCallShortcutDate:J

    .line 281
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->fetchCalls()V

    .line 282
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    .line 283
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    sget v2, Lcom/android/dialer/list/PhoneFavoriteFragment;->LOADER_ID_CONTACT_TILE:I

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Loader;->forceLoad()V

    .line 284
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 380
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 382
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 385
    .local v1, "activity":Landroid/app/Activity;
    :try_start_0
    move-object v0, v1

    check-cast v0, Lcom/android/dialer/list/OnListFragmentScrolledListener;

    move-object v3, v0

    iput-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/android/dialer/list/PhoneFavoriteFragment$OnShowAllContactsListener;

    move-object v3, v0

    iput-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mShowAllContactsListener:Lcom/android/dialer/list/PhoneFavoriteFragment$OnShowAllContactsListener;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 401
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    sget v4, Lcom/android/dialer/list/PhoneFavoriteFragment;->LOADER_ID_CONTACT_TILE:I

    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v4, v6, v5}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 402
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    sget v4, Lcom/android/dialer/list/PhoneFavoriteFragment;->MISSED_CALL_LOADER:I

    new-instance v5, Lcom/android/dialer/list/PhoneFavoriteFragment$MissedCallLogLoaderListener;

    invoke-direct {v5, p0, v6}, Lcom/android/dialer/list/PhoneFavoriteFragment$MissedCallLogLoaderListener;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoriteFragment$1;)V

    invoke-virtual {v3, v4, v6, v5}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 403
    return-void

    .line 386
    :catch_0
    move-exception v2

    .line 387
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/ClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must implement OnListFragmentScrolledListener"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 393
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    .line 394
    .restart local v2    # "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/ClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must implement OnShowAllContactsListener"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    .line 437
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 439
    return-void
.end method

.method setEmptyViewVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 366
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 367
    .local v2, "previousVisibility":I
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 369
    .local v0, "newVisibility":I
    :goto_0
    if-eq v2, v0, :cond_0

    .line 370
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileFrame:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 372
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_2

    const/4 v3, -0x2

    :goto_1
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 373
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileFrame:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 376
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 367
    .end local v0    # "newVisibility":I
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 372
    .restart local v0    # "newVisibility":I
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setListener(Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

    .line 431
    return-void
.end method
