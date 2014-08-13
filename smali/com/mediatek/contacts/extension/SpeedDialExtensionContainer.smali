.class public Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;
.super Lcom/mediatek/contacts/ext/SpeedDialExtension;
.source "SpeedDialExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeedDialExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/contacts/ext/SpeedDialExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mediatek/contacts/ext/SpeedDialExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/contacts/ext/SpeedDialExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/SpeedDialExtension;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public clearPrefStateIfNecessary(Ljava/lang/String;)Z
    .locals 5
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 146
    const-string v2, "SpeedDialExtensionContainer"

    const-string v4, "SpeedDialManageActivity: [clearPrefStateIfNecessary]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 158
    :goto_0
    return v1

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 151
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/SpeedDialExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/SpeedDialExtension;

    invoke-virtual {v2, p1}, Lcom/mediatek/contacts/ext/SpeedDialExtension;->clearPrefStateIfNecessary(Ljava/lang/String;)Z

    move-result v1

    .line 153
    .local v1, "result":Z
    if-nez v1, :cond_1

    goto :goto_0

    .end local v1    # "result":Z
    :cond_2
    move v1, v3

    .line 158
    goto :goto_0
.end method

.method public needCheckContacts(Ljava/lang/String;)Z
    .locals 5
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 162
    const-string v2, "SpeedDialExtensionContainer"

    const-string v4, "SpeedDialManageActivity: [needCheckContacts]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 174
    :goto_0
    return v1

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 167
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/SpeedDialExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/SpeedDialExtension;

    invoke-virtual {v2, p1}, Lcom/mediatek/contacts/ext/SpeedDialExtension;->needCheckContacts(Ljava/lang/String;)Z

    move-result v1

    .line 169
    .local v1, "result":Z
    if-nez v1, :cond_1

    goto :goto_0

    .end local v1    # "result":Z
    :cond_2
    move v1, v3

    .line 174
    goto :goto_0
.end method

.method public needClearPreState(Ljava/lang/String;)Z
    .locals 5
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 95
    const-string v2, "SpeedDialExtensionContainer"

    const-string v4, "[needClearPreState()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 107
    :goto_0
    return v1

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 100
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/SpeedDialExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/SpeedDialExtension;

    invoke-virtual {v2, p1}, Lcom/mediatek/contacts/ext/SpeedDialExtension;->needClearPreState(Ljava/lang/String;)Z

    move-result v1

    .line 102
    .local v1, "result":Z
    if-nez v1, :cond_1

    goto :goto_0

    .end local v1    # "result":Z
    :cond_2
    move v1, v3

    .line 107
    goto :goto_0
.end method

.method public needClearSharedPreferences(Ljava/lang/String;)Z
    .locals 5
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 127
    const-string v2, "SpeedDialExtensionContainer"

    const-string v4, "needClearSharedPreferences()"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    .line 129
    const-string v2, "SpeedDialExtensionContainer"

    const-string v4, "[needClearSharedPreferences()"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 142
    :goto_0
    return v1

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 133
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/SpeedDialExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/SpeedDialExtension;

    invoke-virtual {v2, p1}, Lcom/mediatek/contacts/ext/SpeedDialExtension;->needClearSharedPreferences(Ljava/lang/String;)Z

    move-result v1

    .line 135
    .local v1, "result":Z
    if-nez v1, :cond_1

    .line 136
    const-string v2, "SpeedDialExtensionContainer"

    const-string v3, "needClearSharedPreferences()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    .end local v1    # "result":Z
    :cond_2
    const-string v2, "SpeedDialExtensionContainer"

    const-string v4, "[needClearSharedPreferences()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 142
    goto :goto_0
.end method

.method public remove(Lcom/mediatek/contacts/ext/SpeedDialExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/SpeedDialExtension;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAddPosition(IZLjava/lang/String;)I
    .locals 4
    .param p1, "mAddPosition"    # I
    .param p2, "mNeedRemovePosition"    # Z
    .param p3, "commd"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v2, "SpeedDialExtensionContainer"

    const-string v3, "[setAddPosition()]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    .line 91
    .end local p1    # "mAddPosition":I
    :cond_0
    :goto_0
    return p1

    .line 82
    .restart local p1    # "mAddPosition":I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 83
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/SpeedDialExtension;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/SpeedDialExtension;

    invoke-virtual {v2, p1, p2, p3}, Lcom/mediatek/contacts/ext/SpeedDialExtension;->setAddPosition(IZLjava/lang/String;)I

    move-result v1

    .line 86
    .local v1, "result":I
    if-eq v1, p1, :cond_2

    move p1, v1

    .line 87
    goto :goto_0
.end method

.method public setView(Landroid/view/View;IZILjava/lang/String;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "mPrefNumContactState"    # Z
    .param p4, "sdNumber"    # I
    .param p5, "commd"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "SpeedDialExtensionContainer"

    const-string v1, "[setView()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 75
    :cond_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 72
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/SpeedDialExtension;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/SpeedDialExtension;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/contacts/ext/SpeedDialExtension;->setView(Landroid/view/View;IZILjava/lang/String;)V

    goto :goto_0
.end method

.method public showSpeedInputDialog(Ljava/lang/String;)Z
    .locals 5
    .param p1, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 111
    const-string v2, "SpeedDialExtensionContainer"

    const-string v4, "[showSpeedInputDialog()]"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move v1, v3

    .line 123
    :goto_0
    return v1

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 116
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/SpeedDialExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/SpeedDialExtension;

    invoke-virtual {v2, p1}, Lcom/mediatek/contacts/ext/SpeedDialExtension;->showSpeedInputDialog(Ljava/lang/String;)Z

    move-result v1

    .line 118
    .local v1, "result":Z
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1    # "result":Z
    :cond_2
    move v1, v3

    .line 123
    goto :goto_0
.end method
