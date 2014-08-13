.class public Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;
.super Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;
.source "CallLogSimInfoHelperExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogSimInfoHelperExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public getSimBackgroundDarkResByColorId(I[I)Z
    .locals 6
    .param p1, "colorId"    # I
    .param p2, "simBackgroundDarkRes"    # [I

    .prologue
    const/4 v2, 0x0

    .line 117
    const-string v3, "CallLogSimInfoHelperExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimBackgroundDarkResByColorId(), mSubExtensionList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v2

    .line 121
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 122
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;

    .line 124
    .local v0, "extension":Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;->getSimBackgroundDarkResByColorId(I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getSimColorDrawableById(ILandroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p1, "simId"    # I
    .param p2, "simColorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 95
    const-string v3, "CallLogSimInfoHelperExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimColorDrawableById(), simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v2

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 100
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;

    .line 102
    .local v0, "extension":Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;->getSimColorDrawableById(ILandroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getSimDisplayNameById(ILjava/lang/StringBuffer;)Z
    .locals 6
    .param p1, "simId"    # I
    .param p2, "callDisplayName"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v2

    .line 76
    :cond_1
    const-string v3, "CallLogSimInfoHelperExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimDisplayNameById(), simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 78
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;

    .line 80
    .local v0, "extension":Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;->getSimDisplayNameById(ILjava/lang/StringBuffer;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public remove(Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
