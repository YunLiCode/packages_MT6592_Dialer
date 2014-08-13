.class public Lcom/mediatek/contacts/ext/ContactListExtension;
.super Ljava/lang/Object;
.source "ContactListExtension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactListExtension"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOptionsMenu(Landroid/view/Menu;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 111
    return-void
.end method

.method public buildSimNickname(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p4, "slotId"    # I
    .param p5, "defSimNickname"    # Ljava/lang/String;
    .param p6, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, "nicknameArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object p5
.end method

.method public checkPhoneTypeArray(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p1, "accountType"    # Ljava/lang/String;
    .param p3, "commd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "phoneTypeArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public generateDataBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/content/ContentProviderOperation$Builder;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataCursor"    # Landroid/database/Cursor;
    .param p3, "builder"    # Landroid/content/ContentProviderOperation$Builder;
    .param p4, "columnNames"    # [Ljava/lang/String;
    .param p5, "accountType"    # Ljava/lang/String;
    .param p6, "mimeType"    # Ljava/lang/String;
    .param p7, "slotId"    # I
    .param p8, "index"    # I
    .param p9, "commd"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, ""

    return-object v0
.end method

.method public getMultiChoiceLimitCount(Ljava/lang/String;)I
    .locals 2
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string v0, "ContactListExtension"

    const-string v1, "getMultiChoiceLimitCount"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, -0x1

    return v0
.end method

.method public getPresenceIcon(Landroid/database/Cursor;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "statusResPackageColumn"    # I
    .param p3, "statusIconColumn"    # I
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReplaceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v0, "ContactListExtension"

    const-string v1, "AbstractStartSIMService: [getReplaceString()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/16 v0, 0x70

    const/16 v1, 0x2c

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x77

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusString(Landroid/database/Cursor;IILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "statusResPackageColumn"    # I
    .param p3, "contactsStatusColumn"    # I
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerHostContext(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 115
    return-void
.end method

.method public setExtentionImageView(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 65
    return-void
.end method

.method public setExtentionTextView(Landroid/widget/TextView;JLjava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "contactId"    # J
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    .line 69
    return-void
.end method

.method public setLookSimStorageMenuVisible(Landroid/view/MenuItem;ZLjava/lang/String;)V
    .locals 2
    .param p1, "lookSimStorageMenu"    # Landroid/view/MenuItem;
    .param p2, "flag"    # Z
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "ContactListExtension"

    const-string v1, "PeopleActivity: [setLookSimStorageMenuVisible()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 38
    return-void
.end method

.method public setMenuItem(Landroid/view/MenuItem;ZLjava/lang/String;)V
    .locals 3
    .param p1, "blockVoiceCallmenu"    # Landroid/view/MenuItem;
    .param p2, "mOptionsMenuOptions"    # Z
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string v0, "ContactListExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMenuItem] mOptionsMenuOptions : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 29
    return-void
.end method
