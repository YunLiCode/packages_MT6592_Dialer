.class Lcom/mediatek/dialer/activities/SpeedDialManageActivity$ContactsProviderObserver;
.super Landroid/database/ContentObserver;
.source "SpeedDialManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/activities/SpeedDialManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsProviderObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/activities/SpeedDialManageActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$ContactsProviderObserver;->this$0:Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    .line 1466
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1467
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 1471
    iget-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$ContactsProviderObserver;->this$0:Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    # getter for: Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v1}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->access$1400(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1472
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1478
    :cond_0
    :goto_0
    return-void

    .line 1476
    :cond_1
    const-string v1, "SpeedDialManageActivity"

    const-string v2, "Refresh photo cache as contacts\' data had been changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    iget-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$ContactsProviderObserver;->this$0:Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    # getter for: Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;
    invoke-static {v1}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->access$100(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/ContactPhotoManager;->refreshCache()V

    goto :goto_0
.end method
