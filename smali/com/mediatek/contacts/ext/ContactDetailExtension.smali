.class public Lcom/mediatek/contacts/ext/ContactDetailExtension;
.super Ljava/lang/Object;
.source "ContactDetailExtension.java"


# static fields
.field public static final STRING_ADDITINAL:C = '\u0001'

.field public static final STRING_PRIMART:C = '\u0000'

.field private static final TAG:Ljava/lang/String; = "ContactDetailExtension"

.field public static final VIEW_UPDATE_HINT:I = 0x1

.field public static final VIEW_UPDATE_NONE:I = 0x0

.field public static final VIEW_UPDATE_VISIBILITY:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public TextChanged(ILandroid/text/Editable;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "inputType"    # I
    .param p2, "s"    # Landroid/text/Editable;
    .param p3, "phoneText"    # Ljava/lang/String;
    .param p4, "location"    # I
    .param p5, "commd"    # Ljava/lang/String;

    .prologue
    .line 71
    return-object p3
.end method

.method public canSetExtensionIcon(JLjava/lang/String;)Z
    .locals 1
    .param p1, "contactId"    # J
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public checkMenuItem(ZZZLjava/lang/String;)Z
    .locals 3
    .param p1, "mtkGeminiSupport"    # Z
    .param p2, "hasPhoneEntry"    # Z
    .param p3, "notMe"    # Z
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "ContactDetailExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[checkMenuItem]mtkGeminiSupport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | hasPhoneEntry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | notMe : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkPluginSupport(Ljava/lang/String;)Z
    .locals 1
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public collapsePhoneEntries(Ljava/lang/String;)Z
    .locals 2
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v0, "ContactDetailExtension"

    const-string v1, "[collapsePhoneEntries()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public getAdditionNumberCount(ILjava/lang/String;)I
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, ""

    return-object v0
.end method

.method public getExtensionTitles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "kind"    # Ljava/lang/String;
    .param p5, "commd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 136
    .local p4, "mPhoneAndSubtitle":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-object p3
.end method

.method public getExtentionIntent(IILjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "action01"    # I
    .param p2, "action02"    # I
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtentionKind(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "needSetName"    # Z
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public getExtentionMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxEmptyEditors(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public getRCSIcon(J)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDoublePhoneNumber([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "buffer"    # [Ljava/lang/String;
    .param p2, "bufferName"    # [Ljava/lang/String;
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 126
    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p2, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMimeTypeSupported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 213
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
    .line 145
    return p4
.end method

.method public layoutExtentionText(IIIIILandroid/widget/TextView;Ljava/lang/String;)I
    .locals 0
    .param p1, "leftBound"    # I
    .param p2, "topBound"    # I
    .param p3, "bottomBound"    # I
    .param p4, "rightBound"    # I
    .param p5, "mGapBetweenImageAndText"    # I
    .param p6, "mExtentionText"    # Landroid/widget/TextView;
    .param p7, "commd"    # Ljava/lang/String;

    .prologue
    .line 150
    return p4
.end method

.method public measureExtentionIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p1, "mExtentionIcon"    # Landroid/widget/ImageView;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 154
    return-void
.end method

.method public measureExtentionText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "mExtentionIcon"    # Landroid/widget/TextView;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 157
    return-void
.end method

.method public onContactDetailOpen(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "contactLookupUri"    # Landroid/net/Uri;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 132
    return-void
.end method

.method public repChar(Ljava/lang/String;CCCCLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "pause"    # C
    .param p3, "p"    # C
    .param p4, "wait"    # C
    .param p5, "w"    # C
    .param p6, "commd"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v0, "ContactDetailExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-object p1
.end method

.method public setExtensionImageView(Landroid/widget/ImageView;JLjava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "contactId"    # J
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    .line 177
    return-void
.end method

.method public setExtensionTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 181
    return-void
.end method

.method public setMenu(Landroid/view/ContextMenu;ZIZIILandroid/app/Activity;IILjava/lang/String;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "isNotDirectoryEntry"    # Z
    .param p3, "simId"    # I
    .param p4, "mOptionsMenuOptions"    # Z
    .param p5, "delSim"    # I
    .param p6, "newSim"    # I
    .param p7, "activity"    # Landroid/app/Activity;
    .param p8, "removeAssociation"    # I
    .param p9, "menuAssociation"    # I
    .param p10, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 41
    const-string v1, "ContactDetailExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setMenu]  | isNotDirectoryEntry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | simId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | mOptionsMenuOptions : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | delSim : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | newSim : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | activity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | removeAssociation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | menuAssociation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-eqz p7, :cond_0

    .line 47
    if-eqz p2, :cond_0

    .line 48
    const/4 v1, -0x1

    if-le p3, v1, :cond_1

    .line 49
    invoke-virtual {p7, p8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, p5, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p7, p9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, p6, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 54
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setMenuVisible(Landroid/view/MenuItem;ZZLjava/lang/String;)V
    .locals 3
    .param p1, "associationMenuItem"    # Landroid/view/MenuItem;
    .param p2, "mOptionsMenuOptions"    # Z
    .param p3, "isEnabled"    # Z
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "ContactDetailExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMenuVisible] associationMenuItem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mOptionsMenuOptions : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | isEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 89
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "ContactDetailExtension"

    const-string v1, "[setMenuVisible] associationMenuItem is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSPChar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "ContactDetailExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSPChar] string : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-object p1
.end method

.method public setViewKeyListener(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 2
    .param p1, "fieldView"    # Landroid/widget/EditText;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "ContactDetailExtension"

    const-string v1, "[setViewKeyListener]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public setViewVisible(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "data1"    # Ljava/lang/String;
    .param p4, "data2"    # Ljava/lang/String;
    .param p5, "data3"    # Ljava/lang/String;
    .param p6, "commd"    # Ljava/lang/String;
    .param p7, "res1"    # I
    .param p8, "res2"    # I
    .param p9, "res3"    # I
    .param p10, "res4"    # I
    .param p11, "res5"    # I
    .param p12, "res6"    # I

    .prologue
    .line 186
    return-void
.end method

.method public setViewVisible(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIJLandroid/content/Context;IIIII)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "data1"    # Ljava/lang/String;
    .param p4, "data2"    # Ljava/lang/String;
    .param p5, "data3"    # Ljava/lang/String;
    .param p6, "commd"    # Ljava/lang/String;
    .param p7, "res1"    # I
    .param p8, "res2"    # I
    .param p9, "res3"    # I
    .param p10, "res4"    # I
    .param p11, "res5"    # I
    .param p12, "res6"    # I
    .param p13, "res7"    # I
    .param p14, "res8"    # I
    .param p15, "contactId"    # J
    .param p17, "context"    # Landroid/content/Context;
    .param p18, "res9"    # I
    .param p19, "res10"    # I
    .param p20, "res11"    # I
    .param p21, "res12"    # I
    .param p22, "res13"    # I

    .prologue
    .line 191
    return-void
.end method

.method public setViewVisibleWithBundle(Landroid/view/View;Landroid/app/Activity;Landroid/os/Bundle;IIIIIIIILjava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "res1"    # I
    .param p5, "res2"    # I
    .param p6, "res3"    # I
    .param p7, "res4"    # I
    .param p8, "res5"    # I
    .param p9, "res6"    # I
    .param p10, "res7"    # I
    .param p11, "res8"    # I
    .param p12, "commd"    # Ljava/lang/String;

    .prologue
    .line 248
    return-void
.end method

.method public setViewVisibleWithCharSequence(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IIIIII)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "data1"    # Ljava/lang/String;
    .param p4, "data2"    # Ljava/lang/String;
    .param p5, "data3"    # Ljava/lang/CharSequence;
    .param p6, "commd"    # Ljava/lang/String;
    .param p7, "res1"    # I
    .param p8, "res2"    # I
    .param p9, "res3"    # I
    .param p10, "res4"    # I
    .param p11, "res5"    # I
    .param p12, "res6"    # I

    .prologue
    .line 197
    return-void
.end method

.method public updateView(Landroid/view/View;IILjava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I
    .param p3, "action"    # I
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method
