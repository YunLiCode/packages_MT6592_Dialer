.class Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$6;
.super Ljava/lang/Object;
.source "CallLogMultipleDeleteActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->updateSelectionMenu(Landroid/view/View;)Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;
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
    .line 257
    iput-object p1, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$6;->this$0:Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$6;->this$0:Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    # invokes: Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->configureActionBar()V
    invoke-static {v0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->access$200(Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;)V

    .line 260
    iget-object v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$6;->this$0:Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    iget-object v0, v0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->mFragment:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->unSelectAllItems()V

    .line 261
    iget-object v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$6;->this$0:Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->updateSelectedItemsView(I)V

    .line 262
    return v1
.end method
