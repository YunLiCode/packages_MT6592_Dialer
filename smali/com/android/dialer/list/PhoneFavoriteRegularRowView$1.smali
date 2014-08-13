.class Lcom/android/dialer/list/PhoneFavoriteRegularRowView$1;
.super Ljava/lang/Object;
.source "PhoneFavoriteRegularRowView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/PhoneFavoriteRegularRowView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteRegularRowView;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/PhoneFavoriteRegularRowView;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteRegularRowView$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteRegularRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteRegularRowView$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteRegularRowView;

    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoriteRegularRowView;->performLongClick()Z

    move-result v0

    return v0
.end method
