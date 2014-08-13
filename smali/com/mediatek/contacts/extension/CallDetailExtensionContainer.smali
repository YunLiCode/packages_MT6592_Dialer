.class public Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;
.super Lcom/mediatek/contacts/ext/CallDetailExtension;
.source "CallDetailExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallDetailExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/contacts/ext/CallDetailExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/mediatek/contacts/ext/CallDetailExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/contacts/ext/CallDetailExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/CallDetailExtension;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public doInBackgroundForUpdateData([Landroid/net/Uri;[Lcom/mediatek/dialer/PhoneCallDetailsEx;)[Lcom/mediatek/dialer/PhoneCallDetailsEx;
    .locals 6
    .param p1, "callUris"    # [Landroid/net/Uri;
    .param p2, "phoneCallDetails"    # [Lcom/mediatek/dialer/PhoneCallDetailsEx;

    .prologue
    .line 240
    const-string v3, "CallDetailExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackgroundForUpdateData(), callUris = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phoneCallDetails = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 243
    const-string v3, "CallDetailExtensionContainer"

    const-string v4, "[doInBackgroundForUpdateData]mSubExtensionList is null."

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local p2    # "phoneCallDetails":[Lcom/mediatek/dialer/PhoneCallDetailsEx;
    :goto_0
    return-object p2

    .line 247
    .restart local p2    # "phoneCallDetails":[Lcom/mediatek/dialer/PhoneCallDetailsEx;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 248
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallDetailExtension;>;"
    move-object v2, p2

    .line 249
    .local v2, "resultPhoneCallDetails":[Lcom/mediatek/dialer/PhoneCallDetailsEx;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/CallDetailExtension;

    .line 251
    .local v0, "extension":Lcom/mediatek/contacts/ext/CallDetailExtension;
    invoke-virtual {v0, p1, v2}, Lcom/mediatek/contacts/ext/CallDetailExtension;->doInBackgroundForUpdateData([Landroid/net/Uri;[Lcom/mediatek/dialer/PhoneCallDetailsEx;)[Lcom/mediatek/dialer/PhoneCallDetailsEx;

    move-result-object v2

    .line 252
    goto :goto_1

    .end local v0    # "extension":Lcom/mediatek/contacts/ext/CallDetailExtension;
    :cond_1
    move-object p2, v2

    .line 254
    goto :goto_0
.end method

.method public isNeedAutoRejectedMenu(ZLjava/lang/String;)Z
    .locals 6
    .param p1, "isAutoRejectedFilterMode"    # Z
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 90
    const-string v2, "CallDetailExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isNeedAutoRejectedMenu],isAutoRejectedFilterMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",command:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    .line 93
    const-string v2, "CallDetailExtensionContainer"

    const-string v4, "[isNeedAutoRejectedMenu]mSubExtensionList is null."

    invoke-static {v2, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 106
    :goto_0
    return v2

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 97
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallDetailExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/ext/CallDetailExtension;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/contacts/ext/CallDetailExtension;->isNeedAutoRejectedMenu(ZLjava/lang/String;)Z

    move-result v1

    .line 100
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 101
    const/4 v2, 0x1

    goto :goto_0

    .end local v1    # "result":Z
    :cond_2
    move v2, v3

    .line 106
    goto :goto_0
.end method

.method public onCreate(Landroid/app/Activity;Lcom/mediatek/contacts/ext/IPhoneNumberHelper;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "phoneNumberHelper"    # Lcom/mediatek/contacts/ext/IPhoneNumberHelper;

    .prologue
    .line 164
    const-string v1, "CallDetailExtensionContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate(), activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneNumberHelper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 166
    const-string v1, "CallDetailExtensionContainer"

    const-string v2, "[onCreate]mSubExtensionList is null."

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 170
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallDetailExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/CallDetailExtension;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/contacts/ext/CallDetailExtension;->onCreate(Landroid/app/Activity;Lcom/mediatek/contacts/ext/IPhoneNumberHelper;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 189
    const-string v3, "CallDetailExtensionContainer"

    const-string v4, "onCreateOptionsMenu()"

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 191
    const-string v3, "CallDetailExtensionContainer"

    const-string v4, "[onCreateOptionsMenu]mSubExtensionList is null."

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    return v2

    .line 194
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 195
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallDetailExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/CallDetailExtension;

    .line 197
    .local v0, "extension":Lcom/mediatek/contacts/ext/CallDetailExtension;
    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/ext/CallDetailExtension;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 198
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 176
    const-string v1, "CallDetailExtensionContainer"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 178
    const-string v1, "CallDetailExtensionContainer"

    const-string v2, "[onDestroy]mSubExtensionList is null."

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 183
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallDetailExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/CallDetailExtension;

    invoke-virtual {v1}, Lcom/mediatek/contacts/ext/CallDetailExtension;->onDestroy()V

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 222
    const-string v3, "CallDetailExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMenuItemSelected(), feature id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", item = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 224
    const-string v3, "CallDetailExtensionContainer"

    const-string v4, "[onMenuItemSelected]mSubExtensionList is null."

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_0
    :goto_0
    return v2

    .line 228
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 229
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallDetailExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/CallDetailExtension;

    .line 231
    .local v0, "extension":Lcom/mediatek/contacts/ext/CallDetailExtension;
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/contacts/ext/CallDetailExtension;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 206
    const-string v3, "CallDetailExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareOptionsMenu(), menu = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 208
    const-string v3, "CallDetailExtensionContainer"

    const-string v4, "[onPrepareOptionsMenu]mSubExtensionList is null."

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    :goto_0
    return v2

    .line 211
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 212
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallDetailExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/CallDetailExtension;

    .line 214
    .local v0, "extension":Lcom/mediatek/contacts/ext/CallDetailExtension;
    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/ext/CallDetailExtension;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public remove(Lcom/mediatek/contacts/ext/CallDetailExtension;)V
    .locals 2
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/CallDetailExtension;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 68
    const-string v0, "CallDetailExtensionContainer"

    const-string v1, "[CallDetailExtension]mSubExtensionList is null."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setChar(ZLjava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "notSPChar"    # Z
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "spChar"    # Ljava/lang/String;
    .param p4, "charType"    # I
    .param p5, "secondSelection"    # Z
    .param p6, "commd"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "CallDetailExtensionContainer"

    const-string v1, "[setChar]"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 113
    const-string v0, "CallDetailExtensionContainer"

    const-string v1, "[setChar]mSubExtensionList is null."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v8, 0x0

    .line 126
    :goto_0
    return-object v8

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 117
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallDetailExtension;>;"
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/CallDetailExtension;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/contacts/ext/CallDetailExtension;->setChar(ZLjava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, "result":Ljava/lang/String;
    if-eqz v8, :cond_1

    goto :goto_0

    .line 126
    .end local v8    # "result":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public setSimInfo(ILandroid/widget/TextView;)Z
    .locals 6
    .param p1, "simId"    # I
    .param p2, "simIndicator"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    .line 258
    const-string v3, "CallDetailExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSimInfo(), simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 260
    const-string v3, "CallDetailExtensionContainer"

    const-string v4, "[setSimInfo]mSubExtensionList is null."

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    :goto_0
    return v2

    .line 263
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 264
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallDetailExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/CallDetailExtension;

    .line 266
    .local v0, "extension":Lcom/mediatek/contacts/ext/CallDetailExtension;
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/contacts/ext/CallDetailExtension;->setSimInfo(ILandroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 267
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setTextView(ILandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callType"    # I
    .param p2, "durationView"    # Landroid/widget/TextView;
    .param p3, "formatDuration"    # Ljava/lang/String;
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v2, "CallDetailExtensionContainer"

    const-string v3, "[setTextView]"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 78
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallDetailExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/CallDetailExtension;

    .line 80
    .local v0, "extension":Lcom/mediatek/contacts/ext/CallDetailExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/CallDetailExtension;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/CallDetailExtension;->setTextView(ILandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/CallDetailExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallDetailExtension;>;"
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/CallDetailExtension;->setTextView(ILandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewVisible(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IIIIIII)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "commd1"    # Ljava/lang/String;
    .param p3, "commd2"    # Ljava/lang/String;
    .param p4, "rse1"    # I
    .param p5, "res2"    # I
    .param p6, "res3"    # I
    .param p7, "res4"    # I
    .param p8, "res5"    # I
    .param p9, "res6"    # I
    .param p10, "res7"    # I

    .prologue
    .line 151
    const-string v0, "CallDetailExtensionContainer"

    const-string v1, "[setViewVisible]"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 153
    const-string v0, "CallDetailExtensionContainer"

    const-string v1, "[setViewVisible]mSubExtensionList is null."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 157
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallDetailExtension;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/CallDetailExtension;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/mediatek/contacts/ext/CallDetailExtension;->setViewVisible(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IIIIIII)V

    goto :goto_0
.end method

.method public setViewVisibleByActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/lang/String;)V
    .locals 13
    .param p1, "activiy"    # Landroid/app/Activity;
    .param p2, "commd1"    # Ljava/lang/String;
    .param p3, "commd2"    # Ljava/lang/String;
    .param p4, "rse1"    # I
    .param p5, "res2"    # I
    .param p6, "res3"    # I
    .param p7, "res4"    # I
    .param p8, "res5"    # I
    .param p9, "res6"    # I
    .param p10, "res7"    # I
    .param p11, "commd"    # Ljava/lang/String;

    .prologue
    .line 134
    const-string v0, "CallDetailExtensionContainer"

    const-string v1, "[setViewVisibleByActivity]"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 136
    const-string v0, "CallDetailExtensionContainer"

    const-string v1, "[setViewVisibleByActivity]mSubExtensionList is null."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 140
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallDetailExtension;>;"
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/CallDetailExtension;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/mediatek/contacts/ext/CallDetailExtension;->setViewVisibleByActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/lang/String;)V

    goto :goto_0
.end method
