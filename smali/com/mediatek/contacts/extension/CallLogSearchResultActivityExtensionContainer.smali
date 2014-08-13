.class public Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;
.super Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;
.source "CallLogSearchResultActivityExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogSearchResultActivityExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 69
    const-string v1, "CallLogSearchResultActivityExtensionContainer"

    const-string v2, "onCreate(), sub extension list is null, just return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return-void

    .line 72
    :cond_1
    const-string v1, "CallLogSearchResultActivityExtensionContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate(), activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 74
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;

    invoke-virtual {v1, p1}, Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;->onCreate(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 81
    const-string v1, "CallLogSearchResultActivityExtensionContainer"

    const-string v2, "onDestroy(), sub extension list is null, just return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    return-void

    .line 84
    :cond_1
    const-string v1, "CallLogSearchResultActivityExtensionContainer"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 86
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;

    invoke-virtual {v1}, Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;->onDestroy()V

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)Z
    .locals 8
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v7, 0x0

    .line 92
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 93
    const-string v1, "CallLogSearchResultActivityExtensionContainer"

    const-string v2, "onListItemClick(), sub extension list is null, just return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 105
    :goto_0
    return v1

    .line 96
    :cond_0
    const-string v1, "CallLogSearchResultActivityExtensionContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick(), listView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 99
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;

    .local v0, "extension":Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 101
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const/4 v1, 0x1

    goto :goto_0

    .end local v0    # "extension":Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;
    :cond_2
    move v1, v7

    .line 105
    goto :goto_0
.end method

.method public remove(Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
