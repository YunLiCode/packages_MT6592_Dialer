.class public Lcom/mediatek/contacts/extension/ContactListExtensionContainer;
.super Lcom/mediatek/contacts/ext/ContactListExtension;
.source "ContactListExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactListExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/contacts/ext/ContactListExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/mediatek/contacts/ext/ContactListExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/contacts/ext/ContactListExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/ContactListExtension;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public addOptionsMenu(Landroid/view/Menu;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactListExtension;

    .line 251
    .local v1, "subExtension":Lcom/mediatek/contacts/ext/ContactListExtension;
    invoke-virtual {v1}, Lcom/mediatek/contacts/ext/ContactListExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactListExtension;->addOptionsMenu(Landroid/view/Menu;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 257
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subExtension":Lcom/mediatek/contacts/ext/ContactListExtension;
    :cond_1
    return-void
.end method

.method public buildSimNickname(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
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
    .line 192
    .local p3, "nicknameArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactListExtension;

    .local v0, "subExtension":Lcom/mediatek/contacts/ext/ContactListExtension;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 194
    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/contacts/ext/ContactListExtension;->buildSimNickname(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, "nickName":Ljava/lang/String;
    invoke-static {v8, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    .end local v0    # "subExtension":Lcom/mediatek/contacts/ext/ContactListExtension;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "nickName":Ljava/lang/String;
    :goto_0
    return-object v8

    :cond_1
    move-object v8, p5

    goto :goto_0
.end method

.method public checkPhoneTypeArray(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
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
    .line 165
    .local p2, "phoneTypeArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "ContactListExtensionContainer"

    const-string v2, "[checkPhoneTypeArray]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 173
    :cond_0
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 170
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactListExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactListExtension;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactListExtension;->checkPhoneTypeArray(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public generateDataBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/content/ContentProviderOperation$Builder;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 11
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
    .line 178
    const-string v1, "ContactListExtensionContainer"

    const-string v2, "[generateDataBuilder()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactListExtension;

    .local v0, "subExtension":Lcom/mediatek/contacts/ext/ContactListExtension;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 181
    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/contacts/ext/ContactListExtension;->generateDataBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/content/ContentProviderOperation$Builder;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const/4 v1, 0x1

    .line 187
    .end local v0    # "subExtension":Lcom/mediatek/contacts/ext/ContactListExtension;
    .end local v10    # "i$":Ljava/util/Iterator;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMultiChoiceLimitCount(Ljava/lang/String;)I
    .locals 6
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    .line 273
    const-string v3, "ContactListExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getMultiChoiceLimitCount] commd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v3, :cond_1

    .line 275
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/ContactListExtension;

    .line 276
    .local v2, "subExtension":Lcom/mediatek/contacts/ext/ContactListExtension;
    invoke-virtual {v2}, Lcom/mediatek/contacts/ext/ContactListExtension;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    invoke-virtual {v2, p1}, Lcom/mediatek/contacts/ext/ContactListExtension;->getMultiChoiceLimitCount(Ljava/lang/String;)I

    move-result v1

    .line 282
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "subExtension":Lcom/mediatek/contacts/ext/ContactListExtension;
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/mediatek/contacts/ext/ContactListExtension;->getMultiChoiceLimitCount(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getPresenceIcon(Landroid/database/Cursor;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "statusResPackageColumn"    # I
    .param p3, "statusIconColumn"    # I
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 209
    const-string v3, "ContactListExtensionContainer"

    const-string v4, "[getPresenceIcon]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-object v2

    .line 214
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 215
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactListExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactListExtension;

    .line 217
    .local v0, "cle":Lcom/mediatek/contacts/ext/ContactListExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactListExtension;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactListExtension;->getPresenceIcon(Landroid/database/Cursor;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getReplaceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x77

    const/16 v8, 0x70

    const/16 v7, 0x3b

    const/16 v6, 0x2c

    .line 122
    const-string v3, "ContactListExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getReplaceString] src : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 124
    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 137
    :goto_0
    return-object v2

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactListExtension;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactListExtension;

    .line 129
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactListExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactListExtension;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/contacts/ext/ContactListExtension;->getReplaceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_1

    goto :goto_0

    .line 137
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactListExtension;
    .end local v2    # "result":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getStatusString(Landroid/database/Cursor;IILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "statusResPackageColumn"    # I
    .param p3, "contactsStatusColumn"    # I
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 229
    const-string v3, "ContactListExtensionContainer"

    const-string v4, "[getStatusString]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-object v2

    .line 234
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 235
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactListExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactListExtension;

    .line 237
    .local v0, "cle":Lcom/mediatek/contacts/ext/ContactListExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactListExtension;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactListExtension;->getStatusString(Landroid/database/Cursor;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public registerHostContext(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactListExtension;

    .line 263
    .local v1, "subExtension":Lcom/mediatek/contacts/ext/ContactListExtension;
    invoke-virtual {v1}, Lcom/mediatek/contacts/ext/ContactListExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactListExtension;->registerHostContext(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 269
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subExtension":Lcom/mediatek/contacts/ext/ContactListExtension;
    :cond_1
    return-void
.end method

.method public remove(Lcom/mediatek/contacts/ext/ContactListExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/ContactListExtension;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setExtentionImageView(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v1, "ContactListExtensionContainer"

    const-string v2, "[setExtentionIcon]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 149
    :cond_0
    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 146
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactListExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactListExtension;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/contacts/ext/ContactListExtension;->setExtentionImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtentionTextView(Landroid/widget/TextView;JLjava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "contactId"    # J
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v1, "ContactListExtensionContainer"

    const-string v2, "[setExtentionIcon]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 160
    :cond_0
    return-void

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 157
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactListExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactListExtension;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactListExtension;->setExtentionTextView(Landroid/widget/TextView;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public setLookSimStorageMenuVisible(Landroid/view/MenuItem;ZLjava/lang/String;)V
    .locals 5
    .param p1, "lookSimStorageMenu"    # Landroid/view/MenuItem;
    .param p2, "flag"    # Z
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v2, "ContactListExtensionContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setLookSimStorageMenuVisible] flag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 110
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactListExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactListExtension;

    .line 112
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactListExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactListExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactListExtension;->setLookSimStorageMenuVisible(Landroid/view/MenuItem;ZLjava/lang/String;)V

    .line 119
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactListExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactListExtension;>;"
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactListExtension;->setLookSimStorageMenuVisible(Landroid/view/MenuItem;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public setMenuItem(Landroid/view/MenuItem;ZLjava/lang/String;)V
    .locals 5
    .param p1, "blockVoiceCallmenu"    # Landroid/view/MenuItem;
    .param p2, "mOptionsMenuOptions"    # Z
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v2, "ContactListExtensionContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setMenuItem] mOptionsMenuOptions : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 82
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactListExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactListExtension;

    .line 84
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactListExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactListExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactListExtension;->setMenuItem(Landroid/view/MenuItem;ZLjava/lang/String;)V

    .line 91
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactListExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactListExtension;>;"
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactListExtension;->setMenuItem(Landroid/view/MenuItem;ZLjava/lang/String;)V

    goto :goto_0
.end method
