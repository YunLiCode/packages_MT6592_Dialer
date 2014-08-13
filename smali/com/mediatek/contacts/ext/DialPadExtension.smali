.class public Lcom/mediatek/contacts/ext/DialPadExtension;
.super Ljava/lang/Object;
.source "DialPadExtension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DialPadExtension"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeChar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "string2"    # Ljava/lang/String;
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 20
    const-string v0, "DialPadExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[changeChar] string : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | string2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-object p2
.end method

.method public constructPopupMenu(Landroid/widget/PopupMenu;Landroid/view/View;Landroid/view/Menu;)V
    .locals 0
    .param p1, "popupMenu"    # Landroid/widget/PopupMenu;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 49
    return-void
.end method

.method public handleChars(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Ljava/lang/String;
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/app/Fragment;Lcom/mediatek/contacts/ext/IDialpadFragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "dialpadFragment"    # Lcom/mediatek/contacts/ext/IDialpadFragment;

    .prologue
    .line 29
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;
    .param p4, "resultView"    # Landroid/view/View;

    .prologue
    .line 32
    return-object p4
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 42
    return-void
.end method

.method public updateDialAndDeleteButtonEnabledState(Ljava/lang/String;)Z
    .locals 1
    .param p1, "lastNumberDialed"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
