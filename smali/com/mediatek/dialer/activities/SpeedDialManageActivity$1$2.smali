.class Lcom/mediatek/dialer/activities/SpeedDialManageActivity$1$2;
.super Ljava/lang/Object;
.source "SpeedDialManageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/dialer/activities/SpeedDialManageActivity$1;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$1;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/activities/SpeedDialManageActivity$1;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$1$2;->this$1:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$1;

    iput-object p2, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$1$2;->val$parent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$1$2;->val$parent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 438
    return-void
.end method
