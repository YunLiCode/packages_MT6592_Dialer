.class Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$8;
.super Ljava/lang/Object;
.source "CallLogMultipleDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->getClickListenerOfActionBarOKButton()Landroid/view/View$OnClickListener;
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
    .line 281
    iput-object p1, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$8;->this$0:Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$8;->this$0:Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    iget-object v0, v0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->mFragment:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getSelectedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0404

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 290
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$8;->this$0:Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    # invokes: Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->showDeleteDialog()V
    invoke-static {v0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->access$300(Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;)V

    goto :goto_0
.end method
