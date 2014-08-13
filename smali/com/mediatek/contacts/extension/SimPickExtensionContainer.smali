.class public Lcom/mediatek/contacts/extension/SimPickExtensionContainer;
.super Lcom/mediatek/contacts/ext/SimPickExtension;
.source "SimPickExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimPickExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/contacts/ext/SimPickExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mediatek/contacts/ext/SimPickExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/contacts/ext/SimPickExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/SimPickExtension;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public remove(Lcom/mediatek/contacts/ext/SimPickExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/SimPickExtension;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSimSignal(Landroid/widget/TextView;II)V
    .locals 3
    .param p1, "mSimSignal"    # Landroid/widget/TextView;
    .param p2, "mSlot"    # I
    .param p3, "m3GCapabilitySIM"    # I

    .prologue
    .line 66
    const-string v1, "SimPickExtensionContainer"

    const-string v2, "[setSimSignal()]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 74
    :cond_0
    return-void

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 71
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/SimPickExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/SimPickExtension;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/contacts/ext/SimPickExtension;->setSimSignal(Landroid/widget/TextView;II)V

    goto :goto_0
.end method
