.class public Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;
.super Lcom/mediatek/contacts/ext/ContactAccountExtension;
.source "ContactAccountExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactAccountExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/contacts/ext/ContactAccountExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/mediatek/contacts/ext/ContactAccountExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/contacts/ext/ContactAccountExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public buildOperation(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 9
    .param p1, "accountType"    # Ljava/lang/String;
    .param p3, "anrList"    # Ljava/util/ArrayList;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "backRef"    # I
    .param p6, "type"    # I
    .param p7, "commd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/ArrayList;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 247
    .local p2, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v1, "ContactAccountExtensionContainer"

    const-string v2, "[buildOperation()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .local v0, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 250
    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->buildOperation(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const/4 v1, 0x1

    .line 256
    .end local v0    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    .end local v8    # "i$":Ljava/util/Iterator;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public buildOperationFromCursor(Ljava/lang/String;Ljava/util/ArrayList;Landroid/database/Cursor;ILjava/lang/String;)Z
    .locals 7
    .param p1, "accountType"    # Ljava/lang/String;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "index"    # I
    .param p5, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/database/Cursor;",
            "I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 291
    .local p2, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .local v0, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 293
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->buildOperationFromCursor(Ljava/lang/String;Ljava/util/ArrayList;Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const/4 v1, 0x1

    .line 299
    .end local v0    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    .end local v6    # "i$":Ljava/util/Iterator;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public buildValuesForSim(Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;)Z
    .locals 11
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p6, "maxAnrCount"    # I
    .param p7, "dstSlotId"    # I
    .param p8, "anrsList"    # Ljava/util/ArrayList;
    .param p9, "commd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;II",
            "Ljava/util/ArrayList;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 275
    .local p4, "additionalNumberArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "phoneTypeArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "ContactAccountExtensionContainer"

    const-string v2, "[buildValuesForSim()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .local v0, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 278
    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->buildValuesForSim(Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    const/4 v1, 0x1

    .line 285
    .end local v0    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    .end local v10    # "i$":Ljava/util/Iterator;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkOperationBuilder(Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;Landroid/database/Cursor;ILjava/lang/String;)Z
    .locals 7
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "builder"    # Landroid/content/ContentProviderOperation$Builder;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "type"    # I
    .param p5, "commd"    # Ljava/lang/String;

    .prologue
    .line 261
    const-string v1, "ContactAccountExtensionContainer"

    const-string v2, "[checkOperationBuilder()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .local v0, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 264
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->checkOperationBuilder(Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const/4 v1, 0x1

    .line 269
    .end local v0    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    .end local v6    # "i$":Ljava/util/Iterator;
    :goto_0
    return v1

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->checkOperationBuilder(Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCurrentSlot(Ljava/lang/String;)I
    .locals 6
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 128
    const-string v4, "ContactAccountExtensionContainer"

    const-string v5, "[getCurrentSlot()]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v4, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v4, :cond_1

    .line 130
    iget-object v4, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .line 131
    .local v2, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    invoke-virtual {v2, p1}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->getCurrentSlot(Ljava/lang/String;)I

    move-result v1

    .line 132
    .local v1, "result":I
    if-eq v3, v1, :cond_0

    .line 137
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "result":I
    .end local v2    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    :goto_0
    return v1

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public getCustomTypeLabel(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "type"    # I
    .param p2, "customColumn"    # Ljava/lang/String;
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 193
    const-string v3, "ContactAccountExtensionContainer"

    const-string v4, "[getCustomTypeLabel()]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .line 196
    .local v2, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    invoke-virtual {v2, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->getCustomTypeLabel(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 202
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProjection(I[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "type"    # I
    .param p2, "defaultProjection"    # [Ljava/lang/String;
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v3, "ContactAccountExtensionContainer"

    const-string v4, "[getProjection()]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .line 156
    .local v2, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    invoke-virtual {v2, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->getProjection(I[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "result":[Ljava/lang/String;
    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 162
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "result":[Ljava/lang/String;
    .end local v2    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    :goto_0
    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "type"    # I
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "slotId"    # I
    .param p5, "commd"    # Ljava/lang/String;

    .prologue
    .line 179
    const-string v1, "ContactAccountExtensionContainer"

    const-string v2, "[getTypeLabel()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {p1, p2, p3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 181
    .local v6, "def":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .local v0, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 183
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 184
    .local v8, "result":Ljava/lang/CharSequence;
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    .end local v0    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "result":Ljava/lang/CharSequence;
    :goto_0
    return-object v8

    :cond_1
    move-object v8, v6

    goto :goto_0
.end method

.method public hidePhoneLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v2, "ContactAccountExtensionContainer"

    const-string v3, "[hidePhoneLabel()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .line 144
    .local v1, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->hidePhoneLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const/4 v2, 0x1

    .line 149
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v2, "ContactAccountExtensionContainer"

    const-string v3, "[isFeatureAccount()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .line 110
    .local v1, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    invoke-virtual {v1, p1, p2}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const/4 v2, 0x1

    .line 115
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isFeatureEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v2, "ContactAccountExtensionContainer"

    const-string v3, "[isFeatureEnabled()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .line 98
    .local v1, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    invoke-virtual {v1, p1}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    const/4 v2, 0x1

    .line 103
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isPhone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v2, "ContactAccountExtensionContainer"

    const-string v3, "[isPhone()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .line 169
    .local v1, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    invoke-virtual {v1, p1, p2}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->isPhone(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const/4 v2, 0x1

    .line 174
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTextValid(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "feature"    # I
    .param p4, "cmd"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .line 236
    .local v1, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->isTextValid(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    const/4 v2, 0x0

    .line 241
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public needNewDataKind(Ljava/lang/String;)Z
    .locals 6
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "i":I
    const-string v3, "ContactAccountExtensionContainer"

    const-string v5, "[needNewDataKind()]"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    move v2, v4

    .line 89
    :goto_0
    return v2

    .line 81
    :cond_0
    iget-object v3, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 82
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactAccountExtension;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    invoke-virtual {v3, p1}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->needNewDataKind(Ljava/lang/String;)Z

    move-result v2

    .line 84
    .local v2, "result":Z
    if-eqz v2, :cond_1

    goto :goto_0

    .end local v2    # "result":Z
    :cond_2
    move v2, v4

    .line 89
    goto :goto_0
.end method

.method public remove(Lcom/mediatek/contacts/ext/ContactAccountExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCurrentSlot(ILjava/lang/String;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v2, "ContactAccountExtensionContainer"

    const-string v3, "[setCurrentSlot()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .line 122
    .local v1, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    invoke-virtual {v1, p1, p2}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->setCurrentSlot(ILjava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    :cond_0
    return-void
.end method

.method public setVcsAppGuideVisibility(Landroid/app/Activity;ZLcom/mediatek/contacts/ext/ContactAccountExtension$OnGuideFinishListener;Ljava/lang/String;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "visibility"    # Z
    .param p3, "listener"    # Lcom/mediatek/contacts/ext/ContactAccountExtension$OnGuideFinishListener;
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .line 326
    .local v1, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->setVcsAppGuideVisibility(Landroid/app/Activity;ZLcom/mediatek/contacts/ext/ContactAccountExtension$OnGuideFinishListener;Ljava/lang/String;)Z

    move-result v2

    .line 329
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public switchSimGuide(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .line 312
    .local v1, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->switchSimGuide(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    :cond_0
    return-void
.end method

.method public updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "updatevalues"    # Landroid/content/ContentValues;
    .param p3, "anrsList"    # Ljava/util/ArrayList;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "commd"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string v1, "ContactAccountExtensionContainer"

    const-string v2, "[updateContentValues()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .local v0, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 210
    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const/4 v1, 0x1

    .line 216
    .end local v0    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    .end local v7    # "i$":Ljava/util/Iterator;
    :goto_0
    return v1

    :cond_1
    invoke-super/range {p0 .. p6}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public updateDataToDb(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;JILjava/lang/String;)Z
    .locals 10
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "newArr"    # Ljava/util/ArrayList;
    .param p4, "oldArr"    # Ljava/util/ArrayList;
    .param p5, "rawId"    # J
    .param p7, "type"    # I
    .param p8, "commd"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string v1, "ContactAccountExtensionContainer"

    const-string v2, "[updateDataToDb()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactAccountExtension;

    .local v0, "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 224
    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->updateDataToDb(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;JILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    const/4 v1, 0x1

    .line 230
    .end local v0    # "subExtension":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    .end local v9    # "i$":Ljava/util/Iterator;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
