.class Lcom/android/contacts/common/widget/BladeView$2;
.super Ljava/lang/Object;
.source "BladeView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/widget/BladeView;->showPopupWithListView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/widget/BladeView;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/widget/BladeView;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/contacts/common/widget/BladeView$2;->this$0:Lcom/android/contacts/common/widget/BladeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 316
    const-string v0, "bladeview"

    const-string v1, "mPopupListView onKey"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView$2;->this$0:Lcom/android/contacts/common/widget/BladeView;

    # getter for: Lcom/android/contacts/common/widget/BladeView;->mListPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/contacts/common/widget/BladeView;->access$500(Lcom/android/contacts/common/widget/BladeView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 318
    const/4 v0, 0x0

    return v0
.end method
