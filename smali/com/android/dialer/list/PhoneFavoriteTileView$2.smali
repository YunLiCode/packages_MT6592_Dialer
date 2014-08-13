.class Lcom/android/dialer/list/PhoneFavoriteTileView$2;
.super Ljava/lang/Object;
.source "PhoneFavoriteTileView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/PhoneFavoriteTileView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteTileView;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/PhoneFavoriteTileView;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 104
    move-object v1, p1

    check-cast v1, Lcom/android/dialer/list/PhoneFavoriteTileView;

    .line 106
    .local v1, "view":Lcom/android/dialer/list/PhoneFavoriteTileView;
    instance-of v2, v1, Lcom/android/dialer/list/PhoneFavoriteRegularRowView;

    if-eqz v2, :cond_1

    .line 107
    invoke-virtual {v1}, Lcom/android/dialer/list/PhoneFavoriteTileView;->getParentRow()Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;

    move-result-object v0

    .line 110
    .local v0, "parent":Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;
    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->getRegularRowItemIndex()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 111
    # getter for: Lcom/android/dialer/list/PhoneFavoriteTileView;->EMPTY_CLIP_DATA:Landroid/content/ClipData;
    invoke-static {}, Lcom/android/dialer/list/PhoneFavoriteTileView;->access$000()Landroid/content/ClipData;

    move-result-object v2

    new-instance v3, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v3}, Landroid/view/View$DragShadowBuilder;-><init>()V

    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 117
    .end local v0    # "parent":Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 115
    :cond_1
    # getter for: Lcom/android/dialer/list/PhoneFavoriteTileView;->EMPTY_CLIP_DATA:Landroid/content/ClipData;
    invoke-static {}, Lcom/android/dialer/list/PhoneFavoriteTileView;->access$000()Landroid/content/ClipData;

    move-result-object v2

    new-instance v3, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v3}, Landroid/view/View$DragShadowBuilder;-><init>()V

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/dialer/list/PhoneFavoriteTileView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0
.end method
