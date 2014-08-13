.class Lcom/mediatek/dialer/list/DropMenu$DropDownMenu$1;
.super Ljava/lang/Object;
.source "DropMenu.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/dialer/list/DropMenu$DropDownMenu$1;->this$0:Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/dialer/list/DropMenu$DropDownMenu$1;->this$0:Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;->mIsPopupMenuShown:Z
    invoke-static {v0, v1}, Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;->access$002(Lcom/mediatek/dialer/list/DropMenu$DropDownMenu;Z)Z

    .line 42
    return-void
.end method
