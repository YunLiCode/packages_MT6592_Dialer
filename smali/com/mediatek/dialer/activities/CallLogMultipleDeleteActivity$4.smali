.class Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$4;
.super Ljava/lang/Object;
.source "CallLogMultipleDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$4;->this$0:Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$4;->this$0:Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    iget-object v0, v0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->mFragment:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->deleteSelectedCallItems()V

    .line 215
    iget-object v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$4;->this$0:Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->updateSelectedItemsView(I)V

    .line 216
    return-void
.end method
