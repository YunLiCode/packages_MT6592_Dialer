.class public Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;
.super Landroid/widget/FrameLayout;
.source "PhoneFavoritesTileAdapter.java"

# interfaces
.implements Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactTileRow"
.end annotation


# static fields
.field public static final CONTACT_ENTRY_INDEX_TAG:I = 0x7f0d001c


# instance fields
.field private mItemViewType:I

.field private mLayoutResId:I

.field private mOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

.field private mPosition:I

.field private final mRowPaddingBottom:I

.field private final mRowPaddingEnd:I

.field private final mRowPaddingStart:I

.field private final mRowPaddingTop:I

.field private mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;Landroid/content/Context;II)V
    .locals 9
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "itemViewType"    # I
    .param p4, "position"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 706
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    .line 707
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 708
    iput p3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mItemViewType:I

    .line 709
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mItemViewType:I

    # invokes: Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getLayoutResourceId(I)I
    invoke-static {p1, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->access$000(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mLayoutResId:I

    .line 710
    iput p4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mPosition:I

    .line 712
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 714
    .local v6, "resources":Landroid/content/res/Resources;
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mItemViewType:I

    if-ne v0, v8, :cond_1

    .line 717
    const v0, 0x7f0800c8

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mRowPaddingTop:I

    .line 719
    const v0, 0x7f0800c9

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mRowPaddingBottom:I

    .line 721
    const v0, 0x7f0800ca

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mRowPaddingStart:I

    .line 723
    const v0, 0x7f0800cb

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mRowPaddingEnd:I

    .line 726
    const v0, 0x7f020008

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->setBackgroundResource(I)V

    .line 735
    :goto_0
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mRowPaddingStart:I

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mRowPaddingTop:I

    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mRowPaddingEnd:I

    iget v7, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mRowPaddingBottom:I

    invoke-virtual {p0, v0, v1, v3, v7}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->setPaddingRelative(IIII)V

    .line 739
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->setImportantForAccessibility(I)V

    .line 741
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mItemViewType:I

    if-nez v0, :cond_2

    .line 743
    invoke-static {p0, v8}, Lcom/android/dialer/list/SwipeHelper;->setSwipeable(Landroid/view/View;Z)V

    .line 757
    :cond_0
    :goto_1
    return-void

    .line 729
    :cond_1
    iput v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mRowPaddingTop:I

    .line 730
    iput v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mRowPaddingBottom:I

    .line 731
    iput v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mRowPaddingStart:I

    .line 732
    iput v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mRowPaddingEnd:I

    goto :goto_0

    .line 744
    :cond_2
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mItemViewType:I

    if-ne v0, v8, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 748
    .local v4, "densityScale":F
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v5, v0

    .line 750
    .local v5, "pagingTouchSlop":F
    new-instance v0, Lcom/android/dialer/list/SwipeHelper;

    move-object v1, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/list/SwipeHelper;-><init>(Landroid/content/Context;ILcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;FF)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    .line 753
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    const v1, 0x3f666666

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/SwipeHelper;->setChildSwipedFarEnoughFactor(F)V

    .line 754
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    const v1, 0x3dcccccd

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/SwipeHelper;->setChildSwipedFastEnoughFactor(F)V

    .line 755
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    goto :goto_1
.end method

.method private addTileFromEntry(Lcom/android/contacts/common/list/ContactEntry;IZ)V
    .locals 10
    .param p1, "entry"    # Lcom/android/contacts/common/list/ContactEntry;
    .param p2, "childIndex"    # I
    .param p3, "isLastRow"    # Z

    .prologue
    const v9, 0x7f08004f

    const/4 v8, -0x2

    const/4 v5, 0x0

    .line 784
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getChildCount()I

    move-result v4

    if-gt v4, p2, :cond_1

    .line 786
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mLayoutResId:I

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/PhoneFavoriteTileView;

    .line 789
    .local v0, "contactTile":Lcom/android/dialer/list/PhoneFavoriteTileView;
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 790
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 794
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 797
    invoke-virtual {v0, v2}, Lcom/android/dialer/list/PhoneFavoriteTileView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 798
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;
    invoke-static {v4}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->access$100(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/dialer/list/PhoneFavoriteTileView;->setPhotoManager(Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 799
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;
    invoke-static {v4}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->access$200(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)Lcom/android/contacts/common/list/ContactTileView$Listener;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/dialer/list/PhoneFavoriteTileView;->setListener(Lcom/android/contacts/common/list/ContactTileView$Listener;)V

    .line 800
    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->addView(Landroid/view/View;)V

    .line 804
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "resources":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/dialer/list/PhoneFavoriteTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V

    .line 806
    const/4 v1, -0x1

    .line 807
    .local v1, "entryIndex":I
    iget v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v4, :pswitch_data_0

    .line 825
    :goto_1
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 826
    const v4, 0x7f0d001c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/dialer/list/PhoneFavoriteTileView;->setTag(ILjava/lang/Object;)V

    .line 828
    :cond_0
    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->setupFavoriteContactCard()V

    .line 829
    return-void

    .line 802
    .end local v0    # "contactTile":Lcom/android/dialer/list/PhoneFavoriteTileView;
    .end local v1    # "entryIndex":I
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/PhoneFavoriteTileView;

    .restart local v0    # "contactTile":Lcom/android/dialer/list/PhoneFavoriteTileView;
    goto :goto_0

    .line 810
    .restart local v1    # "entryIndex":I
    :pswitch_0
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    iget v4, v4, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt p2, v4, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {v0, v5, v5, v4, v5}, Lcom/android/dialer/list/PhoneFavoriteTileView;->setPaddingRelative(IIII)V

    .line 812
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    iget v6, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mPosition:I

    # invokes: Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getFirstContactEntryIndexForPosition(I)I
    invoke-static {v4, v6}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->access$400(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;I)I

    move-result v4

    add-int v1, v4, p2

    .line 813
    invoke-static {v0, v5}, Lcom/android/dialer/list/SwipeHelper;->setSwipeable(Landroid/view/View;Z)V

    goto :goto_1

    .line 810
    :cond_2
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPaddingInPixels:I
    invoke-static {v4}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->access$300(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)I

    move-result v4

    goto :goto_2

    .line 816
    :pswitch_1
    if-eqz p3, :cond_3

    const/16 v5, 0x8

    :cond_3
    invoke-virtual {v0, v5}, Lcom/android/dialer/list/PhoneFavoriteTileView;->setHorizontalDividerVisibility(I)V

    .line 818
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    iget v5, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mPosition:I

    # invokes: Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getFirstContactEntryIndexForPosition(I)I
    invoke-static {v4, v5}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->access$400(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;I)I

    move-result v1

    .line 819
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/android/dialer/list/SwipeHelper;->setSwipeable(Landroid/view/View;Z)V

    goto :goto_1

    .line 807
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onLayoutForTiles()V
    .locals 9

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getChildCount()I

    move-result v3

    .line 847
    .local v3, "count":I
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getPaddingStart()I

    move-result v1

    .line 848
    .local v1, "childLeft":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 849
    invoke-virtual {p0, v4}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 852
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 853
    .local v2, "childWidth":I
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getPaddingTop()I

    move-result v5

    add-int v6, v1, v2

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getPaddingTop()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 855
    add-int/2addr v1, v2

    .line 848
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 857
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childWidth":I
    :cond_0
    return-void
.end method

.method private onMeasureForTiles(I)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I

    .prologue
    const/high16 v12, 0x40000000

    const/4 v10, 0x0

    .line 872
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 874
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getChildCount()I

    move-result v1

    .line 875
    .local v1, "childCount":I
    if-nez v1, :cond_0

    .line 877
    invoke-virtual {p0, v8, v10}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    .line 911
    :goto_0
    return-void

    .line 891
    :cond_0
    iget-object v9, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    iget v9, v9, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    add-int/lit8 v9, v9, -0x1

    iget-object v11, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPaddingInPixels:I
    invoke-static {v11}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->access$300(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)I

    move-result v11

    mul-int/2addr v9, v11

    iget v11, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mRowPaddingStart:I

    add-int/2addr v9, v11

    iget v11, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mRowPaddingEnd:I

    add-int v7, v9, v11

    .line 896
    .local v7, "totalPaddingsInPixels":I
    sub-int v9, v8, v7

    iget-object v11, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    iget v11, v11, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    div-int v5, v9, v11

    .line 897
    .local v5, "imageSize":I
    iget-object v9, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    iget v9, v9, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    mul-int/2addr v9, v5

    sub-int v9, v8, v9

    sub-int v6, v9, v7

    .line 899
    .local v6, "remainder":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 900
    invoke-virtual {p0, v4}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 901
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int v11, v5, v9

    if-ge v4, v6, :cond_1

    const/4 v9, 0x1

    :goto_2
    add-int v3, v11, v9

    .line 904
    .local v3, "childWidth":I
    move v2, v5

    .line 905
    .local v2, "childHeight":I
    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v9, v11}, Landroid/view/View;->measure(II)V

    .line 899
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "childHeight":I
    .end local v3    # "childWidth":I
    :cond_1
    move v9, v10

    .line 901
    goto :goto_2

    .line 910
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    goto :goto_0
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1006
    const/4 v0, 0x1

    return v0
.end method

.method public configureRow(Ljava/util/ArrayList;IZ)V
    .locals 6
    .param p2, "position"    # I
    .param p3, "isLastRow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactEntry;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 763
    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mItemViewType:I

    if-nez v3, :cond_0

    move v0, v4

    .line 764
    .local v0, "columnCount":I
    :goto_0
    iput p2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mPosition:I

    .line 767
    const/4 v1, 0x0

    .local v1, "columnCounter":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 768
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/ContactEntry;

    move-object v2, v3

    .line 770
    .local v2, "entry":Lcom/android/contacts/common/list/ContactEntry;
    :goto_2
    invoke-direct {p0, v2, v1, p3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->addTileFromEntry(Lcom/android/contacts/common/list/ContactEntry;IZ)V

    .line 767
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 763
    .end local v0    # "columnCount":I
    .end local v1    # "columnCounter":I
    .end local v2    # "entry":Lcom/android/contacts/common/list/ContactEntry;
    :cond_0
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    iget v0, v3, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    goto :goto_0

    .line 768
    .restart local v0    # "columnCount":I
    .restart local v1    # "columnCounter":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 772
    :cond_2
    if-ne v0, v4, :cond_3

    .line 773
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/common/list/ContactEntry;->BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;

    if-ne v3, v4, :cond_4

    .line 774
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->setVisibility(I)V

    .line 779
    :cond_3
    :goto_3
    return-void

    .line 776
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->setVisibility(I)V

    goto :goto_3
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 984
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getViewAtPosition(II)Landroid/view/View;

    move-result-object v0

    .line 985
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/dialer/list/SwipeHelper;->isSwipeable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 993
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
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 998
    const v0, 0x7f0d017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemIndex(FF)I
    .locals 8
    .param p1, "itemX"    # F
    .param p2, "itemY"    # F

    .prologue
    .line 921
    iget v6, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mPosition:I

    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mMaxTiledRows:I
    invoke-static {v7}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->access$500(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 925
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 928
    invoke-virtual {p0, v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 931
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getLeft()I

    move-result v7

    add-int v4, v6, v7

    .line 932
    .local v4, "xInListView":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getTop()I

    move-result v7

    add-int v5, v6, v7

    .line 933
    .local v5, "yInListView":I
    float-to-int v6, p1

    sub-int v1, v6, v4

    .line 934
    .local v1, "distanceX":I
    float-to-int v6, p2

    sub-int v2, v6, v5

    .line 935
    .local v2, "distanceY":I
    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    if-ge v1, v6, :cond_0

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 939
    iget v6, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mPosition:I

    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    iget v7, v7, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v3

    .line 946
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "distanceX":I
    .end local v2    # "distanceY":I
    .end local v3    # "i":I
    .end local v4    # "xInListView":I
    .end local v5    # "yInListView":I
    :goto_1
    return v6

    .line 925
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "distanceX":I
    .restart local v2    # "distanceY":I
    .restart local v3    # "i":I
    .restart local v4    # "xInListView":I
    .restart local v5    # "yInListView":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 944
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "distanceX":I
    .end local v2    # "distanceY":I
    .end local v3    # "i":I
    .end local v4    # "xInListView":I
    .end local v5    # "yInListView":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getRegularRowItemIndex()I

    move-result v6

    goto :goto_1

    .line 946
    .restart local v3    # "i":I
    :cond_2
    const/4 v6, -0x1

    goto :goto_1
.end method

.method public getItemViewType()I
    .locals 1

    .prologue
    .line 1056
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mItemViewType:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mPosition:I

    return v0
.end method

.method public getRegularRowItemIndex()I
    .locals 3

    .prologue
    .line 955
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mPosition:I

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mMaxTiledRows:I
    invoke-static {v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->access$500(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    iget v1, v1, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mMaxTiledRows:I
    invoke-static {v2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->access$500(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getTileAdapter()Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    return-object v0
.end method

.method public getViewAtPosition(II)Landroid/view/View;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getChildCount()I

    move-result v1

    .line 973
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "childIdx":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 974
    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 975
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 979
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    return-object v2

    .line 973
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 979
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1011
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->removePendingContactEntry()Z

    .line 1012
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1022
    .local v0, "index":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->requestDisallowInterceptTouchEvent(Z)V

    .line 1023
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1027
    if-eqz p1, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    invoke-interface {v0, p1}, Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;->onSwipe(Landroid/view/View;)V

    .line 1032
    :cond_0
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1035
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isSwipeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1040
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/dialer/list/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1042
    :goto_0
    return v0

    .line 1040
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1042
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 833
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    .line 838
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 839
    :goto_0
    return-void

    .line 835
    :pswitch_0
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->onLayoutForTiles()V

    goto :goto_0

    .line 833
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 861
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    .line 866
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 867
    :goto_0
    return-void

    .line 863
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->onMeasureForTiles(I)V

    goto :goto_0

    .line 861
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onScroll()V
    .locals 0

    .prologue
    .line 1002
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isSwipeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1049
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/dialer/list/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1051
    :goto_0
    return v0

    .line 1049
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1051
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnItemSwipeListener(Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->mOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    .line 1061
    return-void
.end method
