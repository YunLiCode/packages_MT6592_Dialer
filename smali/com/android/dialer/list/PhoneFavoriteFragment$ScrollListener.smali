.class Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;
.super Ljava/lang/Object;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/PhoneFavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/list/PhoneFavoriteFragment;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoriteFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;
    .param p2, "x1"    # Lcom/android/dialer/list/PhoneFavoriteFragment$1;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 187
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$300(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/OnListFragmentScrolledListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/dialer/list/OnListFragmentScrolledListener;->onListFragmentScrollStateChange(I)V

    .line 192
    return-void
.end method
