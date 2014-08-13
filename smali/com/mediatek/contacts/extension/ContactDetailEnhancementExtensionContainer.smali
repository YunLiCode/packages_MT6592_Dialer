.class public Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;
.super Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
.source "ContactDetailEnhancementExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactDetailEnhancementExtension"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public addHistoryTransaction(Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;Ljava/lang/String;)V
    .locals 5
    .param p1, "mFragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "transaction"    # Landroid/app/FragmentTransaction;
    .param p3, "commond"    # Ljava/lang/String;

    .prologue
    .line 506
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addHistoryTransaction] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 508
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 510
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 511
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 512
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->addHistoryTransaction(Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;Ljava/lang/String;)V

    .line 519
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-void

    .line 518
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->addHistoryTransaction(Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bindDetailEnhancementView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "firstActionViewContainer"    # Landroid/view/View;
    .param p4, "firstActionButtonView"    # Landroid/widget/ImageView;
    .param p5, "vewVtCallDivider"    # Landroid/view/View;
    .param p6, "btnVtCallAction"    # Landroid/widget/ImageView;
    .param p7, "vtcallActionViewContainer"    # Landroid/view/View;
    .param p8, "visibility"    # I
    .param p9, "secondaryActionDescription"    # Ljava/lang/String;
    .param p10, "mInsertedSimCount"    # I
    .param p11, "commond"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[bindDetailEnhancementView] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 104
    .local v13, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 106
    .local v1, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v1}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    .line 107
    invoke-virtual/range {v1 .. v12}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->bindDetailEnhancementView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v2

    .line 116
    .end local v1    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v13    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super/range {p0 .. p11}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->bindDetailEnhancementView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public bindDetailEnhancementViewForQuickContact(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;ILjava/lang/String;)Z
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "firstActionViewButton"    # Landroid/widget/ImageView;
    .param p4, "firstDivider"    # Landroid/view/View;
    .param p5, "btnVtCallAction"    # Landroid/widget/ImageView;
    .param p6, "mInsertedSimCount"    # I
    .param p7, "commond"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[bindDetailEnhancementViewForQuickContact] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 130
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 132
    .local v1, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v1}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 133
    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->bindDetailEnhancementViewForQuickContact(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;ILjava/lang/String;)Z

    move-result v2

    .line 140
    .end local v1    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super/range {p0 .. p7}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->bindDetailEnhancementViewForQuickContact(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;ILjava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public childMeasureEx(ZLandroid/view/View;IIIILjava/lang/String;)V
    .locals 10
    .param p1, "mEnableSwipe"    # Z
    .param p2, "child"    # Landroid/view/View;
    .param p3, "mMinFragmentWidth"    # I
    .param p4, "visibleFragmentViewCount"    # I
    .param p5, "screenHeight"    # I
    .param p6, "screenWidth"    # I
    .param p7, "commond"    # Ljava/lang/String;

    .prologue
    .line 403
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[childMeasureEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 405
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 407
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 409
    .local v1, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v1}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 410
    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->childMeasureEx(ZLandroid/view/View;IIIILjava/lang/String;)V

    .line 419
    .end local v1    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-super/range {p0 .. p7}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->childMeasureEx(ZLandroid/view/View;IIIILjava/lang/String;)V

    goto :goto_0
.end method

.method public configActionBarExt(Landroid/app/ActionBar;Ljava/lang/String;)V
    .locals 5
    .param p1, "bar"    # Landroid/app/ActionBar;
    .param p2, "commond"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configActionBarExt] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 227
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 229
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->configActionBarExt(Landroid/app/ActionBar;Ljava/lang/String;)V

    .line 236
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->configActionBarExt(Landroid/app/ActionBar;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentPageIndexEx(Landroid/support/v4/view/ViewPager;ZILjava/lang/String;)I
    .locals 5
    .param p1, "mViewPager"    # Landroid/support/v4/view/ViewPager;
    .param p2, "fragmentCarouselIsNull"    # Z
    .param p3, "currentPage"    # I
    .param p4, "commond"    # Ljava/lang/String;

    .prologue
    .line 474
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getCurrentPageIndexEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 476
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 478
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 480
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    invoke-virtual {v0, p1, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCurrentPageIndexEx(Landroid/support/v4/view/ViewPager;ILjava/lang/String;)I

    move-result v2

    .line 486
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCurrentPageIndexEx(Landroid/support/v4/view/ViewPager;ILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getDesiredPageHistoryEx(IIILjava/lang/String;)I
    .locals 5
    .param p1, "mLastScrollPosition"    # I
    .param p2, "mUpperThreshold"    # I
    .param p3, "updatePageIndex"    # I
    .param p4, "commond"    # Ljava/lang/String;

    .prologue
    .line 441
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDesiredPageHistoryEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 443
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 445
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 447
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getDesiredPageHistoryEx(IIILjava/lang/String;)I

    move-result v2

    .line 453
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getDesiredPageHistoryEx(IIILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getDesiredPageUpdatesEx(IIZLjava/lang/String;)I
    .locals 5
    .param p1, "mLastScrollPosition"    # I
    .param p2, "mUpperThreshold"    # I
    .param p3, "enableSwipe"    # Z
    .param p4, "commond"    # Ljava/lang/String;

    .prologue
    .line 423
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDesiredPageUpdatesEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 425
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 427
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 429
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getDesiredPageUpdatesEx(IIZLjava/lang/String;)I

    move-result v2

    .line 435
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getDesiredPageUpdatesEx(IIZLjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getDetailUpdateIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "commond"    # Ljava/lang/String;

    .prologue
    .line 289
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDetailUpdateIndex] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 293
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 295
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getDetailUpdateIndex(Ljava/lang/String;)I

    move-result v2

    .line 300
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getDetailUpdateIndex(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "simInfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .param p2, "commond"    # Ljava/lang/String;

    .prologue
    .line 146
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDrawableCorG] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 150
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 152
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 157
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getEnhancementAccountSimIndicator(IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "i"    # I
    .param p2, "slot"    # I
    .param p3, "commond"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getEnhancementAccountSimIndicator] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 212
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 214
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getEnhancementAccountSimIndicator(IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 219
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getEnhancementAccountSimIndicator(IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getEnhancementPhotoId(IIILjava/lang/String;)J
    .locals 5
    .param p1, "isSdnContact"    # I
    .param p2, "colorId"    # I
    .param p3, "slot"    # I
    .param p4, "commond"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getEnhancementPhotoId] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 182
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 184
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getEnhancementPhotoId(IIILjava/lang/String;)J

    move-result-wide v2

    .line 189
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-wide v2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getEnhancementPhotoId(IIILjava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getEnhancementPhotoUri(IIILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "isSdnContact"    # I
    .param p2, "colorId"    # I
    .param p3, "slot"    # I
    .param p4, "commond"    # Ljava/lang/String;

    .prologue
    .line 193
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getEnhancementPhotoUri] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 197
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 199
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getEnhancementPhotoUri(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getEnhancementPhotoUri(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getMaxFragmentViewCountEx(ILjava/lang/String;)I
    .locals 5
    .param p1, "maxFragmentViewCount"    # I
    .param p2, "commond"    # Ljava/lang/String;

    .prologue
    .line 323
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getMaxFragmentViewCountEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 327
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 329
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getMaxFragmentViewCountEx(ILjava/lang/String;)I

    move-result v2

    .line 334
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getMaxFragmentViewCountEx(ILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getViewPagerViewEx(Landroid/support/v4/view/ViewPager;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "mViewPager"    # Landroid/support/v4/view/ViewPager;
    .param p2, "commond"    # Ljava/lang/String;

    .prologue
    .line 458
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getViewPagerViewEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 460
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 462
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 464
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 465
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getViewPagerViewEx(Landroid/support/v4/view/ViewPager;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 469
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getViewPagerViewEx(Landroid/support/v4/view/ViewPager;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public getVisibleFragmentViewCountEx(ZLjava/lang/String;)I
    .locals 5
    .param p1, "enableSwipe"    # Z
    .param p2, "commond"    # Ljava/lang/String;

    .prologue
    .line 338
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getVisibleFragmentViewCountEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 342
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 344
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getVisibleFragmentViewCountEx(ZLjava/lang/String;)I

    move-result v2

    .line 349
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getVisibleFragmentViewCountEx(ZLjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public initActionBarExt(Landroid/app/ActionBar;ZLjava/lang/String;)V
    .locals 5
    .param p1, "bar"    # Landroid/app/ActionBar;
    .param p2, "withUpdatePage"    # Z
    .param p3, "commond"    # Ljava/lang/String;

    .prologue
    .line 239
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initActionBarExt] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 243
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 245
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->initActionBarExt(Landroid/app/ActionBar;ZLjava/lang/String;)V

    .line 252
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->initActionBarExt(Landroid/app/ActionBar;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public initContactDetailHistoryFragment(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 5
    .param p1, "mFragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "commond"    # Ljava/lang/String;

    .prologue
    .line 490
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initContactDetailHistoryFragment] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 492
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 494
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 495
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 496
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->initContactDetailHistoryFragment(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 501
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->initContactDetailHistoryFragment(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    goto :goto_0
.end method

.method public isUseOperation(Ljava/lang/String;)Z
    .locals 5
    .param p1, "commond"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isUseOperation] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 85
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 87
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->isUseOperation(Ljava/lang/String;)Z

    move-result v2

    .line 92
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->isUseOperation(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public onFragmentPageChange(ILjava/lang/String;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "commond"    # Ljava/lang/String;

    .prologue
    .line 255
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onFragmentPageChange] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 259
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 261
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->onFragmentPageChange(ILjava/lang/String;)V

    .line 268
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->onFragmentPageChange(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onMeasureEx(IIIFLjava/lang/String;)Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "fragmentViewCount"    # I
    .param p4, "fragmentWidthScreenWidthFraction"    # F
    .param p5, "commond"    # Ljava/lang/String;

    .prologue
    .line 384
    const-string v1, "ContactDetailEnhancementExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onMeasureEx] commond : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 388
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 390
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 391
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->onMeasureEx(IIIFLjava/lang/String;)Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;

    move-result-object v1

    .line 396
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-object v1

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->onMeasureEx(IIIFLjava/lang/String;)Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public onScrollChangedEx(Ljava/lang/String;)Z
    .locals 5
    .param p1, "commond"    # Ljava/lang/String;

    .prologue
    .line 368
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onScrollChangedEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 370
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 372
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 374
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->onScrollChangedEx(Ljava/lang/String;)Z

    move-result v2

    .line 379
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->onScrollChangedEx(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public onTouchEx(Ljava/lang/String;)Z
    .locals 5
    .param p1, "commond"    # Ljava/lang/String;

    .prologue
    .line 353
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onTouchEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 357
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 359
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->onTouchEx(Ljava/lang/String;)Z

    move-result v2

    .line 364
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->onTouchEx(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public registeChangeDefaultSim(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Ljava/lang/String;)Landroid/content/BroadcastReceiver;
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "commond"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[registeChangeDefaultSim] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 167
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 169
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->registeChangeDefaultSim(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Ljava/lang/String;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    .line 174
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->registeChangeDefaultSim(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Ljava/lang/String;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    goto :goto_0
.end method

.method public registerDetailUIController(Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;IILjava/lang/String;)V
    .locals 5
    .param p1, "detailUIController"    # Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;
    .param p2, "val"    # I
    .param p3, "mLayoutMode"    # I
    .param p4, "commond"    # Ljava/lang/String;

    .prologue
    .line 272
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[registerDetailUIController] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 276
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 278
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->registerDetailUIController(Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;IILjava/lang/String;)V

    .line 286
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->registerDetailUIController(Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public remove(Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setPhoneNumbersToFragmentEx(Landroid/net/Uri;Ljava/util/List;JLjava/lang/String;)V
    .locals 7
    .param p1, "mContactUri"    # Landroid/net/Uri;
    .param p3, "contactId"    # J
    .param p5, "commond"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 523
    .local p2, "mPhoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ContactDetailEnhancementExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setPhoneNumbersToFragmentEx] commond : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 527
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 529
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 530
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->setPhoneNumbersToFragmentEx(Landroid/net/Uri;Ljava/util/List;JLjava/lang/String;)V

    .line 536
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-void

    .line 535
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->setPhoneNumbersToFragmentEx(Landroid/net/Uri;Ljava/util/List;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public setViewPagerCurrentItemEx(Landroid/support/v4/view/ViewPager;IZLjava/lang/String;)V
    .locals 5
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
    .param p2, "mCurrentPageIndex"    # I
    .param p3, "smoothScroll"    # Z
    .param p4, "commond"    # Ljava/lang/String;

    .prologue
    .line 305
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setViewPagerCurrentItemEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 309
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    .line 311
    .local v0, "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->setViewPagerCurrentItemEx(Landroid/support/v4/view/ViewPager;IZLjava/lang/String;)V

    .line 320
    .end local v0    # "extension":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->setViewPagerCurrentItemEx(Landroid/support/v4/view/ViewPager;IZLjava/lang/String;)V

    goto :goto_0
.end method
