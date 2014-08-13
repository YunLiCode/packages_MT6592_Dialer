.class Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;
.super Ljava/lang/Object;
.source "ShareContactViaSMSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/ShareContactViaSMSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextVCardContact"
.end annotation


# instance fields
.field protected mName:Ljava/lang/String;

.field protected mNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mOmails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mOrganizations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/contacts/ShareContactViaSMSActivity;)V
    .locals 1

    .prologue
    .line 349
    iput-object p1, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mName:Ljava/lang/String;

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mNumbers:Ljava/util/List;

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mOmails:Ljava/util/List;

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mOrganizations:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/contacts/ShareContactViaSMSActivity;Lcom/mediatek/contacts/ShareContactViaSMSActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/contacts/ShareContactViaSMSActivity;
    .param p2, "x1"    # Lcom/mediatek/contacts/ShareContactViaSMSActivity$1;

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;-><init>(Lcom/mediatek/contacts/ShareContactViaSMSActivity;)V

    return-void
.end method


# virtual methods
.method protected reset()V
    .locals 1

    .prologue
    .line 356
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mName:Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 358
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mOmails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 359
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mOrganizations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 360
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    const v13, 0x7f0a04de

    const v12, 0x7f0a04d0

    const v11, 0x7f0a04cc

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 364
    const-string v5, ""

    .line 365
    .local v5, "textVCardString":Ljava/lang/String;
    const/4 v1, 0x1

    .line 366
    .local v1, "i":I
    iget-object v6, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mName:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mName:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 367
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    const v8, 0x7f0a04c0

    invoke-virtual {v7, v8}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 370
    :cond_0
    iget-object v6, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mNumbers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 371
    iget-object v6, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mNumbers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v10, :cond_1

    .line 372
    const/4 v1, 0x1

    .line 373
    iget-object v6, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mNumbers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 375
    .local v3, "number":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    invoke-virtual {v7, v11}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "number":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    invoke-virtual {v7, v11}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mNumbers:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 387
    :cond_2
    iget-object v6, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mOmails:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 388
    iget-object v6, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mOmails:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v10, :cond_3

    .line 389
    const/4 v1, 0x1

    .line 390
    iget-object v6, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mOmails:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 391
    .local v0, "email":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    invoke-virtual {v7, v13}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 396
    .end local v0    # "email":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    invoke-virtual {v7, v13}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mOmails:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 400
    :cond_4
    iget-object v6, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mOrganizations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 401
    iget-object v6, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mOrganizations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v10, :cond_5

    .line 402
    const/4 v1, 0x1

    .line 403
    iget-object v6, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mOrganizations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 404
    .local v4, "organization":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    invoke-virtual {v7, v12}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 409
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "organization":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    invoke-virtual {v7, v12}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mOrganizations:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 413
    :cond_6
    return-object v5
.end method
