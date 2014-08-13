.class public Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;
.super Lcom/mediatek/contacts/ext/CallLogAdapterExtension;
.source "CallLogAdapterExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogAdapterExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/contacts/ext/CallLogAdapterExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mediatek/contacts/ext/CallLogAdapterExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/contacts/ext/CallLogAdapterExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/CallLogAdapterExtension;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public bindViewPre(Landroid/view/View;Landroid/database/Cursor;ILcom/mediatek/dialer/calllogex/ContactInfoEx;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "count"    # I
    .param p4, "contactInfo"    # Lcom/mediatek/dialer/calllogex/ContactInfoEx;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 94
    :cond_0
    return-void

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 91
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallLogAdapterExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/CallLogAdapterExtension;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/CallLogAdapterExtension;->bindViewPre(Landroid/view/View;Landroid/database/Cursor;ILcom/mediatek/dialer/calllogex/ContactInfoEx;)V

    goto :goto_0
.end method

.method public remove(Lcom/mediatek/contacts/ext/CallLogAdapterExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/CallLogAdapterExtension;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setListItemViewTag(Landroid/view/View;Lcom/mediatek/dialer/calllogex/ContactInfoEx;Landroid/database/Cursor;Landroid/content/Intent;)Z
    .locals 6
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "contactInfo"    # Lcom/mediatek/dialer/calllogex/ContactInfoEx;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "callDetailIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 71
    const-string v3, "CallLogAdapterExtensionContainer"

    const-string v4, "setListItemViewTag(), sub extension list is null, just return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    :goto_0
    return v2

    .line 74
    :cond_1
    const-string v3, "CallLogAdapterExtensionContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setListItemViewTag(), item view = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", contactInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cursor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callDetailIntent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v3, p0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 77
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/CallLogAdapterExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/CallLogAdapterExtension;

    .line 79
    .local v0, "extension":Lcom/mediatek/contacts/ext/CallLogAdapterExtension;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/CallLogAdapterExtension;->setListItemViewTag(Landroid/view/View;Lcom/mediatek/dialer/calllogex/ContactInfoEx;Landroid/database/Cursor;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    const/4 v2, 0x1

    goto :goto_0
.end method
