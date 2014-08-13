.class Lcom/mediatek/dialer/activities/SpeedDialManageActivity$2;
.super Ljava/lang/Object;
.source "SpeedDialManageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->confirmRemovePosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/activities/SpeedDialManageActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$2;->this$0:Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 686
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$2;->this$0:Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    const/4 v1, -0x1

    # setter for: Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemovePosition:I
    invoke-static {v0, v1}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->access$202(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;I)I

    .line 687
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$2;->this$0:Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->access$302(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 688
    return-void
.end method
