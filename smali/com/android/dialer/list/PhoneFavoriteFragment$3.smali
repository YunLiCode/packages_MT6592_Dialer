.class Lcom/android/dialer/list/PhoneFavoriteFragment$3;
.super Ljava/lang/Object;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/PhoneFavoriteFragment;->animateListView([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

.field final synthetic val$idsInPlace:[J

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$removedItemHeight:I


# direct methods
.method constructor <init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Landroid/view/ViewTreeObserver;[JI)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    iput-object p2, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->val$observer:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->val$idsInPlace:[J

    iput p4, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->val$removedItemHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 21

    .prologue
    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->val$observer:Landroid/view/ViewTreeObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;
    invoke-static/range {v17 .. v17}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$900(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoriteListView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/dialer/list/PhoneFavoriteListView;->getFirstVisiblePosition()I

    move-result v8

    .line 632
    .local v8, "firstVisiblePosition":I
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 633
    .local v4, "animSet":Landroid/animation/AnimatorSet;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v5, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;
    invoke-static/range {v17 .. v17}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$900(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoriteListView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_1

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;
    invoke-static/range {v17 .. v17}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$900(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoriteListView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 636
    .local v6, "child":Landroid/view/View;
    add-int v14, v8, v9

    .line 637
    .local v14, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;
    invoke-static/range {v17 .. v17}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1000(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->getItemViewType(I)I

    move-result v13

    .line 638
    .local v13, "itemViewType":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_0

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-object/from16 v19, v0

    move-object/from16 v17, v6

    check-cast v17, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;
    invoke-static/range {v18 .. v18}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1000(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->val$idsInPlace:[J

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    # invokes: Lcom/android/dialer/list/PhoneFavoriteFragment;->performHorizontalAnimations(Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;Ljava/util/ArrayList;[J)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1100(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;Ljava/util/ArrayList;[J)V

    .line 644
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;
    invoke-static/range {v17 .. v17}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1000(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->getItemId(I)J

    move-result-wide v11

    .line 646
    .local v11, "itemId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->val$idsInPlace:[J

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    # invokes: Lcom/android/dialer/list/PhoneFavoriteFragment;->containsId([JJ)Z
    invoke-static {v0, v1, v11, v12}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1200(Lcom/android/dialer/list/PhoneFavoriteFragment;[JJ)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 647
    const-string v17, "alpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v6, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    .end local v6    # "child":Landroid/view/View;
    .end local v11    # "itemId":J
    .end local v13    # "itemViewType":I
    .end local v14    # "position":I
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_2

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mAnimationDuration:I
    invoke-static/range {v17 .. v17}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1500(Lcom/android/dialer/list/PhoneFavoriteFragment;)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 692
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 695
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mItemIdTopMap:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1300(Lcom/android/dialer/list/PhoneFavoriteFragment;)Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mItemIdLeftMap:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1400(Lcom/android/dialer/list/PhoneFavoriteFragment;)Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 697
    const/16 v17, 0x1

    return v17

    .line 651
    .restart local v6    # "child":Landroid/view/View;
    .restart local v11    # "itemId":J
    .restart local v13    # "itemViewType":I
    .restart local v14    # "position":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mItemIdTopMap:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1300(Lcom/android/dialer/list/PhoneFavoriteFragment;)Ljava/util/HashMap;

    move-result-object v17

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 652
    .local v15, "startTop":Ljava/lang/Integer;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v16

    .line 653
    .local v16, "top":I
    const/4 v7, 0x0

    .line 654
    .local v7, "delta":I
    if-eqz v15, :cond_6

    .line 655
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    .line 656
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v7, v17, v16

    .line 683
    :cond_4
    :goto_1
    if-eqz v7, :cond_5

    .line 684
    const-string v17, "translationY"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    int-to-float v0, v7

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x0

    aput v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v6, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 658
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mItemIdLeftMap:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1400(Lcom/android/dialer/list/PhoneFavoriteFragment;)Ljava/util/HashMap;

    move-result-object v17

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 664
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->val$removedItemHeight:I

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 665
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;
    invoke-static/range {v18 .. v18}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$900(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoriteListView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/dialer/list/PhoneFavoriteListView;->getDividerHeight()I

    move-result v18

    add-int v10, v17, v18

    .line 669
    .local v10, "itemHeight":I
    :goto_2
    if-lez v9, :cond_8

    .end local v10    # "itemHeight":I
    :goto_3
    add-int v17, v16, v10

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 670
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v7, v17, v16

    .line 671
    goto :goto_1

    .line 667
    :cond_7
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/dialer/list/PhoneFavoriteFragment$3;->val$removedItemHeight:I

    .restart local v10    # "itemHeight":I
    goto :goto_2

    .line 669
    :cond_8
    neg-int v10, v10

    goto :goto_3

    .line 674
    .end local v10    # "itemHeight":I
    :cond_9
    const-string v17, "alpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v6, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 647
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 674
    :array_1
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
