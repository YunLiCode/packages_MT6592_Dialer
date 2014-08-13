.class public Lcom/mediatek/contacts/ext/SpeedDialExtension;
.super Ljava/lang/Object;
.source "SpeedDialExtension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeedDialExtension"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPrefStateIfNecessary(Ljava/lang/String;)Z
    .locals 2
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v0, "SpeedDialExtension"

    const-string v1, "SpeedDialManageActivity: [clearPrefStateIfNecessary]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public needCheckContacts(Ljava/lang/String;)Z
    .locals 2
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "SpeedDialExtension"

    const-string v1, "SpeedDialManageActivity: [needCheckContacts()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public needClearPreState(Ljava/lang/String;)Z
    .locals 1
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public needClearSharedPreferences(Ljava/lang/String;)Z
    .locals 1
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public setAddPosition(IZLjava/lang/String;)I
    .locals 0
    .param p1, "mAddPosition"    # I
    .param p2, "mNeedRemovePosition"    # Z
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 15
    return p1
.end method

.method public setView(Landroid/view/View;IZILjava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "mPrefNumContactState"    # Z
    .param p4, "sdNumber"    # I
    .param p5, "commd"    # Ljava/lang/String;

    .prologue
    .line 12
    return-void
.end method

.method public showSpeedInputDialog(Ljava/lang/String;)Z
    .locals 1
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method
