.class public Lcom/mediatek/contacts/ext/CallListExtension;
.super Ljava/lang/Object;
.source "CallListExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPluginSupport(Ljava/lang/String;)Z
    .locals 1
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public layoutExtentionIcon(IIIIILandroid/widget/ImageView;Ljava/lang/String;)I
    .locals 0
    .param p1, "leftBound"    # I
    .param p2, "topBound"    # I
    .param p3, "bottomBound"    # I
    .param p4, "rightBound"    # I
    .param p5, "mGapBetweenImageAndText"    # I
    .param p6, "mExtentionIcon"    # Landroid/widget/ImageView;
    .param p7, "commd"    # Ljava/lang/String;

    .prologue
    .line 16
    return p4
.end method

.method public measureExtention(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p1, "mExtentionIcon"    # Landroid/widget/ImageView;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 20
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/app/ListFragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/ListFragment;

    .prologue
    .line 35
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    return-void
.end method

.method public setExtentionIcon(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public setExtentionImageView(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 24
    return-void
.end method
