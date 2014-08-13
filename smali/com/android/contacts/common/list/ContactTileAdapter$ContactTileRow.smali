.class Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;
.super Landroid/widget/FrameLayout;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileRow"
.end annotation


# instance fields
.field private mItemViewType:I

.field private mLayoutResId:I

.field final synthetic this$0:Lcom/android/contacts/common/list/ContactTileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/list/ContactTileAdapter;Landroid/content/Context;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "itemViewType"    # I

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    .line 573
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 574
    iput p3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    .line 575
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    # invokes: Lcom/android/contacts/common/list/ContactTileAdapter;->getLayoutResourceId(I)I
    invoke-static {p1, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$000(Lcom/android/contacts/common/list/ContactTileAdapter;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    .line 578
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->setImportantForAccessibility(I)V

    .line 579
    return-void
.end method

.method private addTileFromEntry(Lcom/android/contacts/common/list/ContactEntry;IZ)V
    .locals 9
    .param p1, "entry"    # Lcom/android/contacts/common/list/ContactEntry;
    .param p2, "childIndex"    # I
    .param p3, "isLastRow"    # Z

    .prologue
    const v8, 0x7f08004f

    const/4 v7, -0x2

    const/4 v4, 0x0

    .line 598
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v3

    if-gt v3, p2, :cond_0

    .line 599
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactTileView;

    .line 602
    .local v0, "contactTile":Lcom/android/contacts/common/list/ContactTileView;
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 603
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 606
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 611
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactTileView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;
    invoke-static {v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$100(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/ContactTileView;->setPhotoManager(Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 613
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;
    invoke-static {v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$200(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/list/ContactTileView$Listener;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/ContactTileView;->setListener(Lcom/android/contacts/common/list/ContactTileView$Listener;)V

    .line 614
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->addView(Landroid/view/View;)V

    .line 618
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V

    .line 620
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v3, :pswitch_data_0

    .line 635
    :goto_1
    :pswitch_0
    return-void

    .line 616
    .end local v0    # "contactTile":Lcom/android/contacts/common/list/ContactTileView;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactTileView;

    .restart local v0    # "contactTile":Lcom/android/contacts/common/list/ContactTileView;
    goto :goto_0

    .line 624
    :pswitch_1
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v3, v3, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    add-int/lit8 v3, v3, -0x1

    if-lt p2, v3, :cond_1

    move v5, v4

    :goto_2
    if-eqz p3, :cond_2

    move v3, v4

    :goto_3
    invoke-virtual {v0, v4, v4, v5, v3}, Lcom/android/contacts/common/list/ContactTileView;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$300(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v3

    move v5, v3

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$300(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v3

    goto :goto_3

    .line 629
    :pswitch_2
    if-eqz p3, :cond_3

    const/16 v4, 0x8

    :cond_3
    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/ContactTileView;->setHorizontalDividerVisibility(I)V

    goto :goto_1

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onLayoutForTiles()V
    .locals 8

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v3

    .line 654
    .local v3, "count":I
    const/4 v1, 0x0

    .line 655
    .local v1, "childLeft":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 656
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 659
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 660
    .local v2, "childWidth":I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 661
    add-int/2addr v1, v2

    .line 655
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 663
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

    .line 679
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 681
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v1

    .line 682
    .local v1, "childCount":I
    if-nez v1, :cond_0

    .line 684
    invoke-virtual {p0, v8, v10}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    .line 717
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v9, v9, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    add-int/lit8 v9, v9, -0x1

    iget-object v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v11}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$300(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v11

    mul-int v7, v9, v11

    .line 702
    .local v7, "totalPaddingsInPixels":I
    sub-int v9, v8, v7

    iget-object v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v11, v11, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    div-int v5, v9, v11

    .line 703
    .local v5, "imageSize":I
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v9, v9, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    mul-int/2addr v9, v5

    sub-int v9, v8, v9

    sub-int v6, v9, v7

    .line 705
    .local v6, "remainder":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 706
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 707
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int v11, v5, v9

    if-ge v4, v6, :cond_1

    const/4 v9, 0x1

    :goto_2
    add-int v3, v11, v9

    .line 710
    .local v3, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int v2, v5, v9

    .line 711
    .local v2, "childHeight":I
    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v9, v11}, Landroid/view/View;->measure(II)V

    .line 705
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "childHeight":I
    .end local v3    # "childWidth":I
    :cond_1
    move v9, v10

    .line 707
    goto :goto_2

    .line 716
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {p0, v8, v9}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    goto :goto_0
.end method


# virtual methods
.method public configureRow(Ljava/util/ArrayList;Z)V
    .locals 5
    .param p2, "isLastRow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 585
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactEntry;>;"
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 588
    .local v0, "columnCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "columnCounter":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 589
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/ContactEntry;

    move-object v2, v3

    .line 591
    .local v2, "entry":Lcom/android/contacts/common/list/ContactEntry;
    :goto_2
    invoke-direct {p0, v2, v1, p2}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->addTileFromEntry(Lcom/android/contacts/common/list/ContactEntry;IZ)V

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 585
    .end local v0    # "columnCount":I
    .end local v1    # "columnCounter":I
    .end local v2    # "entry":Lcom/android/contacts/common/list/ContactEntry;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v0, v3, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    goto :goto_0

    .line 589
    .restart local v0    # "columnCount":I
    .restart local v1    # "columnCounter":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 593
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 639
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    .line 645
    :pswitch_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 646
    :goto_0
    return-void

    .line 642
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->onLayoutForTiles()V

    goto :goto_0

    .line 639
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 667
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    .line 673
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 674
    :goto_0
    return-void

    .line 670
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->onMeasureForTiles(I)V

    goto :goto_0

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
