.class Lcom/android/dialer/list/PhoneFavoriteTileView$1;
.super Ljava/lang/Object;
.source "PhoneFavoriteTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 94
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteTileView$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteTileView;

    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->undoRemove()V

    .line 98
    return-void
.end method
