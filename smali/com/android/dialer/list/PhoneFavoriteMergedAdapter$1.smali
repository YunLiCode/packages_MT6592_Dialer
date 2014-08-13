.class Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$1;
.super Ljava/lang/Object;
.source "PhoneFavoriteMergedAdapter.java"

# interfaces
.implements Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public onSwipe(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->access$000(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->markNewCallsAsOld()V

    .line 78
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->access$000(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->markNewVoicemailsAsOld()V

    .line 79
    invoke-static {}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->removeMissedCallNotifications()V

    .line 80
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->access$100(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->updateVoicemailNotifications(Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->access$200(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->dismissShortcut(I)V

    .line 82
    return-void
.end method

.method public onTouch()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
