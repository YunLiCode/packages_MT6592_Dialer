.class public Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;
.super Lcom/mediatek/contacts/ext/ContactDetailExtension;
.source "ContactDetailExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactDetailExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/contacts/ext/ContactDetailExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/contacts/ext/ContactDetailExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public TextChanged(ILandroid/text/Editable;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "inputType"    # I
    .param p2, "s"    # Landroid/text/Editable;
    .param p3, "phoneText"    # Ljava/lang/String;
    .param p4, "location"    # I
    .param p5, "commd"    # Ljava/lang/String;

    .prologue
    .line 129
    const-string v1, "ContactDetailExtensionContainer"

    const-string v2, "[TextChanged()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 143
    .end local p3    # "phoneText":Ljava/lang/String;
    :goto_0
    return-object p3

    .line 133
    .restart local p3    # "phoneText":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 134
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    .line 136
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 137
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->TextChanged(ILandroid/text/Editable;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "result":Ljava/lang/String;
    move-object p3, v7

    .line 139
    goto :goto_0

    .line 143
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    .end local v7    # "result":Ljava/lang/String;
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->TextChanged(ILandroid/text/Editable;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public add(Lcom/mediatek/contacts/ext/ContactDetailExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/ContactDetailExtension;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public canSetExtensionIcon(JLjava/lang/String;)Z
    .locals 5
    .param p1, "contactId"    # J
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 379
    const-string v2, "ContactDetailExtensionContainer"

    const-string v4, "[canSetExtensionIcon()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 391
    :goto_0
    return v1

    .line 383
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 384
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 385
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    invoke-virtual {v2, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->canSetExtensionIcon(JLjava/lang/String;)Z

    move-result v1

    .line 386
    .local v1, "result":Z
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1    # "result":Z
    :cond_2
    move v1, v3

    .line 391
    goto :goto_0
.end method

.method public checkMenuItem(ZZZLjava/lang/String;)Z
    .locals 4
    .param p1, "mtkGeminiSupport"    # Z
    .param p2, "hasPhoneEntry"    # Z
    .param p3, "notMe"    # Z
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string v2, "ContactDetailExtensionContainer"

    const-string v3, "[checkMenuItem()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 151
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    .line 153
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->checkMenuItem(ZZZLjava/lang/String;)Z

    move-result v2

    .line 158
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->checkMenuItem(ZZZLjava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public checkPluginSupport(Ljava/lang/String;)Z
    .locals 5
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 341
    const-string v2, "ContactDetailExtensionContainer"

    const-string v4, "[checkPluginSupport()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 353
    :goto_0
    return v1

    .line 345
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 346
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    invoke-virtual {v2, p1}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->checkPluginSupport(Ljava/lang/String;)Z

    move-result v1

    .line 348
    .local v1, "result":Z
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1    # "result":Z
    :cond_2
    move v1, v3

    .line 353
    goto :goto_0
.end method

.method public collapsePhoneEntries(Ljava/lang/String;)Z
    .locals 5
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 325
    const-string v2, "ContactDetailExtensionContainer"

    const-string v4, "[collapsePhoneEntries()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 337
    :goto_0
    return v1

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 330
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    invoke-virtual {v2, p1}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->collapsePhoneEntries(Ljava/lang/String;)Z

    move-result v1

    .line 332
    .local v1, "result":Z
    if-nez v1, :cond_1

    goto :goto_0

    .end local v1    # "result":Z
    :cond_2
    move v1, v3

    .line 337
    goto :goto_0
.end method

.method public getAdditionNumberCount(ILjava/lang/String;)I
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 475
    const-string v3, "ContactDetailExtensionContainer"

    const-string v4, "[getAdditionNumberCount()]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v3, :cond_1

    .line 477
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    .line 478
    .local v2, "subExtension":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    invoke-virtual {v2, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->getAdditionNumberCount(ILjava/lang/String;)I

    move-result v1

    .line 479
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 484
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "result":I
    .end local v2    # "subExtension":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExtensionTitles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
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
    .line 358
    .local p4, "mPhoneAndSubtitle":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ContactDetailExtensionContainer"

    const-string v1, "[getExtensionTitles()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 375
    .end local p3    # "kind":Ljava/lang/String;
    :goto_0
    return-object p3

    .line 362
    .restart local p3    # "kind":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 363
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->getExtensionTitles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 366
    .local v7, "str":Ljava/lang/String;
    const-string v0, "ContactDetailExtensionContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "str ,data, kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    const-string v0, "ContactDetailExtensionContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "str1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v7

    .line 369
    goto :goto_0

    .line 374
    .end local v7    # "str":Ljava/lang/String;
    :cond_2
    const-string v0, "ContactDetailExtensionContainer"

    const-string v1, "return null too"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getExtentionIntent(IILjava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "action01"    # I
    .param p2, "action02"    # I
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 292
    const-string v2, "ContactDetailExtensionContainer"

    const-string v4, "[getExtentionIntent()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move-object v1, v3

    .line 304
    :goto_0
    return-object v1

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 297
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    invoke-virtual {v2, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->getExtentionIntent(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 299
    .local v1, "result":Landroid/content/Intent;
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1    # "result":Landroid/content/Intent;
    :cond_2
    move-object v1, v3

    .line 304
    goto :goto_0
.end method

.method public getExtentionKind(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "needSetName"    # Z
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 308
    const-string v2, "ContactDetailExtensionContainer"

    const-string v4, "[getExtentionKind()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 321
    :goto_0
    return v1

    .line 312
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 313
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->getExtentionKind(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 316
    .local v1, "result":Z
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1    # "result":Z
    :cond_2
    move v1, v3

    .line 321
    goto :goto_0
.end method

.method public getExtentionMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 208
    const-string v2, "ContactDetailExtensionContainer"

    const-string v4, "[getExtentionMimeType()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move-object v1, v3

    .line 220
    :goto_0
    return-object v1

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 213
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    invoke-virtual {v2, p1}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->getExtentionMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    move-object v1, v3

    .line 220
    goto :goto_0
.end method

.method public getMaxEmptyEditors(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 462
    const-string v4, "ContactDetailExtensionContainer"

    const-string v5, "[getMaxEmptyEditors()]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v4, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v4, :cond_1

    .line 464
    iget-object v4, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    .line 465
    .local v2, "subExtension":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    invoke-virtual {v2, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->getMaxEmptyEditors(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 466
    .local v1, "result":I
    if-eq v3, v1, :cond_0

    .line 471
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "result":I
    .end local v2    # "subExtension":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    :goto_0
    return v1

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public getRCSIcon(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 550
    const-string v2, "ContactDetailExtensionContainer"

    const-string v4, "[updateRCSIconWithActionBar()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move-object v0, v3

    .line 561
    :goto_0
    return-object v0

    .line 554
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 555
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->getRCSIcon(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 557
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    goto :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object v0, v3

    .line 561
    goto :goto_0
.end method

.method public isDoublePhoneNumber([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "buffer"    # [Ljava/lang/String;
    .param p2, "bufferName"    # [Ljava/lang/String;
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 488
    const-string v4, "ContactDetailExtensionContainer"

    const-string v5, "[isDoublePhoneNumber()]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    aget-object v4, p1, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, p2, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 490
    .local v0, "def":Z
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v4, :cond_3

    .line 491
    iget-object v4, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    .line 492
    .local v3, "subExtension":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    invoke-virtual {v3, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->isDoublePhoneNumber([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 493
    .local v2, "result":Z
    if-eq v0, v2, :cond_1

    .line 498
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "result":Z
    .end local v3    # "subExtension":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    :goto_1
    return v2

    .line 489
    .end local v0    # "def":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "def":Z
    :cond_3
    move v2, v0

    .line 498
    goto :goto_1
.end method

.method public isMimeTypeSupported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 506
    const-string v3, "ContactDetailExtensionContainer"

    const-string v4, "[isMimeTypeSupported()]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 519
    :cond_0
    :goto_0
    return v2

    .line 510
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 512
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 513
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    .line 514
    .local v0, "cde":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 515
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->isMimeTypeSupported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public layoutExtentionIcon(IIIIILandroid/widget/ImageView;Ljava/lang/String;)I
    .locals 10
    .param p1, "leftBound"    # I
    .param p2, "topBound"    # I
    .param p3, "bottomBound"    # I
    .param p4, "rightBound"    # I
    .param p5, "mGapBetweenImageAndText"    # I
    .param p6, "mExtentionIcon"    # Landroid/widget/ImageView;
    .param p7, "commd"    # Ljava/lang/String;

    .prologue
    .line 225
    const-string v0, "ContactDetailExtensionContainer"

    const-string v1, "[layoutExtentionIcon()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 238
    .end local p4    # "rightBound":I
    :cond_0
    :goto_0
    return p4

    .line 229
    .restart local p4    # "rightBound":I
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 230
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->layoutExtentionIcon(IIIIILandroid/widget/ImageView;Ljava/lang/String;)I

    move-result v9

    .line 233
    .local v9, "result":I
    if-eq v9, p4, :cond_2

    move p4, v9

    .line 234
    goto :goto_0
.end method

.method public layoutExtentionText(IIIIILandroid/widget/TextView;Ljava/lang/String;)I
    .locals 10
    .param p1, "leftBound"    # I
    .param p2, "topBound"    # I
    .param p3, "bottomBound"    # I
    .param p4, "rightBound"    # I
    .param p5, "mGapBetweenImageAndText"    # I
    .param p6, "mExtentionText"    # Landroid/widget/TextView;
    .param p7, "commd"    # Ljava/lang/String;

    .prologue
    .line 250
    const-string v0, "ContactDetailExtensionContainer"

    const-string v1, "[layoutExtentionText()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 252
    const-string v0, "ContactDetailExtensionContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[layoutExtentionText() mSubExtesionList is null] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local p4    # "rightBound":I
    :goto_0
    return p4

    .line 255
    .restart local p4    # "rightBound":I
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 256
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->layoutExtentionText(IIIIILandroid/widget/TextView;Ljava/lang/String;)I

    move-result v9

    .line 259
    .local v9, "result":I
    if-eq v9, p4, :cond_1

    .line 260
    const-string v0, "ContactDetailExtensionContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[layoutExtentionText() result is not equal to rightBound] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p4, v9

    .line 261
    goto :goto_0

    .line 265
    .end local v9    # "result":I
    :cond_2
    const-string v0, "ContactDetailExtensionContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[layoutExtentionText()] end reached "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public measureExtentionIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "mExtentionIcon"    # Landroid/widget/ImageView;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 270
    const-string v1, "ContactDetailExtensionContainer"

    const-string v2, "[measureExtentionIcon()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 278
    :cond_0
    return-void

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 275
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->measureExtentionIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public measureExtentionText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3
    .param p1, "mExtentionText"    # Landroid/widget/TextView;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string v1, "ContactDetailExtensionContainer"

    const-string v2, "[measureExtentionText()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 289
    :cond_0
    return-void

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 286
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->measureExtentionText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onContactDetailOpen(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "contactLookupUri"    # Landroid/net/Uri;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string v1, "ContactDetailExtensionContainer"

    const-string v2, "[onContactDetailOpen()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 205
    :cond_0
    return-void

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 202
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->onContactDetailOpen(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public remove(Lcom/mediatek/contacts/ext/ContactDetailExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/ContactDetailExtension;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public repChar(Ljava/lang/String;CCCCLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "pause"    # C
    .param p3, "p"    # C
    .param p4, "wait"    # C
    .param p5, "w"    # C
    .param p6, "commd"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string v1, "ContactDetailExtensionContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 193
    .end local p1    # "phoneNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 182
    .restart local p1    # "phoneNumber":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 183
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    .line 185
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 186
    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->repChar(Ljava/lang/String;CCCCLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 187
    .local v8, "result":Ljava/lang/String;
    if-eqz v8, :cond_2

    move-object p1, v8

    .line 188
    goto :goto_0
.end method

.method public setExtensionImageView(Landroid/widget/ImageView;JLjava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "contactId"    # J
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    .line 395
    const-string v1, "ContactDetailExtensionContainer"

    const-string v2, "[setExtensionImageView()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 404
    :cond_0
    return-void

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 400
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->setExtensionImageView(Landroid/widget/ImageView;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public setExtensionTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 407
    const-string v1, "ContactDetailExtensionContainer"

    const-string v2, "[setExtensionTextView()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 416
    :cond_0
    return-void

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 412
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->setExtensionTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMenu(Landroid/view/ContextMenu;ZIZIILandroid/app/Activity;IILjava/lang/String;)V
    .locals 13
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
    .line 82
    const-string v2, "ContactDetailExtensionContainer"

    const-string v3, "[setMenu()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 85
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    .line 87
    .local v1, "extension":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    invoke-virtual {v1}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    .line 88
    invoke-virtual/range {v1 .. v11}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->setMenu(Landroid/view/ContextMenu;ZIZIILandroid/app/Activity;IILjava/lang/String;)V

    .line 96
    .end local v1    # "extension":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-super/range {p0 .. p10}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->setMenu(Landroid/view/ContextMenu;ZIZIILandroid/app/Activity;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public setMenuVisible(Landroid/view/MenuItem;ZZLjava/lang/String;)V
    .locals 4
    .param p1, "associationMenuItem"    # Landroid/view/MenuItem;
    .param p2, "mOptionsMenuOptions"    # Z
    .param p3, "isEnabled"    # Z
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string v2, "ContactDetailExtensionContainer"

    const-string v3, "[setMenuVisible()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 166
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    .line 168
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->setMenuVisible(Landroid/view/MenuItem;ZZLjava/lang/String;)V

    .line 175
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->setMenuVisible(Landroid/view/MenuItem;ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method public setSPChar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v2, "ContactDetailExtensionContainer"

    const-string v3, "[setSPChar()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    .line 113
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 103
    .restart local p1    # "string":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 104
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->setSPChar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object p1, v1

    .line 107
    goto :goto_0

    .line 108
    :cond_3
    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object p1, v1

    .line 109
    goto :goto_0
.end method

.method public setViewKeyListener(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 3
    .param p1, "fieldView"    # Landroid/widget/EditText;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v1, "ContactDetailExtensionContainer"

    const-string v2, "[setViewKeyListener]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 125
    :cond_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 122
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->setViewKeyListener(Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewVisible(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIJLandroid/content/Context;IIIII)V
    .locals 25
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
    .line 420
    const-string v1, "ContactDetailExtensionContainer"

    const-string v2, "[setViewVisible()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 430
    :cond_0
    return-void

    .line 424
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 425
    .local v24, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-wide/from16 v16, p15

    move-object/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move/from16 v23, p22

    invoke-virtual/range {v1 .. v23}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->setViewVisible(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIJLandroid/content/Context;IIIII)V

    goto :goto_0
.end method

.method public setViewVisibleWithBundle(Landroid/view/View;Landroid/app/Activity;Landroid/os/Bundle;IIIIIIIILjava/lang/String;)V
    .locals 15
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
    .line 527
    const-string v2, "ContactDetailExtensionContainer"

    const-string v3, "[setViewVisibleWithBundle()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    .line 541
    :cond_0
    return-void

    .line 531
    :cond_1
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 533
    .local v14, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :cond_2
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 534
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    .line 535
    .local v1, "cde":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    invoke-virtual {v1}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    .line 536
    invoke-virtual/range {v1 .. v13}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->setViewVisibleWithBundle(Landroid/view/View;Landroid/app/Activity;Landroid/os/Bundle;IIIIIIIILjava/lang/String;)V

    goto :goto_0
.end method

.method public setViewVisibleWithCharSequence(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IIIIII)V
    .locals 14
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
    .line 435
    const-string v0, "ContactDetailExtensionContainer"

    const-string v1, "[setViewVisibleWithCharSequence()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 445
    :cond_0
    return-void

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 440
    .local v13, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailExtension;>;"
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->setViewVisibleWithCharSequence(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IIIIII)V

    goto :goto_0
.end method

.method public updateView(Landroid/view/View;IILjava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I
    .param p3, "action"    # I
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    .line 450
    const-string v2, "ContactDetailExtensionContainer"

    const-string v3, "[updateView()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactDetailExtension;

    .line 453
    .local v1, "subExtension":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->updateView(Landroid/view/View;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    const/4 v2, 0x1

    .line 458
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subExtension":Lcom/mediatek/contacts/ext/ContactDetailExtension;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
