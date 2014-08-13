.class public Lcom/mediatek/contacts/util/CommonSimUtils;
.super Ljava/lang/Object;
.source "CommonSimUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonSimUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureAASKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 17
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 57
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/mediatek/contacts/ext/ContactAccountExtension;

    move-result-object v3

    .line 59
    .local v3, "cae":Lcom/mediatek/contacts/ext/ContactAccountExtension;
    if-eqz p3, :cond_8

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    const-string v15, "ExtensionForAAS"

    invoke-virtual {v3, v14, v15}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "ExtensionForAAS"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v14}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->isPhone(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 61
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 62
    .local v13, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/mediatek/contacts/ext/ContactAccountExtension;

    move-result-object v14

    const-string v15, "ExtensionForAAS"

    invoke-virtual {v14, v15}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->getCurrentSlot(Ljava/lang/String;)I

    move-result v11

    .line 63
    .local v11, "slotId":I
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/mediatek/contacts/ext/ContactDetailExtension;

    move-result-object v14

    const-string v15, "ExtensionForAAS"

    invoke-virtual {v14, v11, v15}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->getAdditionNumberCount(ILjava/lang/String;)I

    move-result v9

    .line 65
    .local v9, "slotAnrSize":I
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v15, v9, 0x1

    if-ne v14, v15, :cond_0

    .line 67
    const-string v14, "CommonSimUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ensureAASKindExists() size="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " slotAnrSize="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v14, 0x1

    .line 108
    .end local v9    # "slotAnrSize":I
    .end local v11    # "slotId":I
    .end local v13    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :goto_0
    return v14

    .line 70
    .restart local v9    # "slotAnrSize":I
    .restart local v11    # "slotId":I
    .restart local v13    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_0
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 71
    :cond_1
    const-string v14, "CommonSimUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ensureAASKindExists() Empty, insert primary:1 and anr:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    .line 74
    .local v4, "child":Lcom/android/contacts/common/model/ValuesDelta;
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v15, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 75
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    .line 78
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v9, :cond_7

    .line 79
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v10

    .line 80
    .local v10, "slotChild":Lcom/android/contacts/common/model/ValuesDelta;
    const-string v14, "is_additional_number"

    const/4 v15, 0x1

    invoke-virtual {v10, v14, v15}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 78
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 83
    .end local v4    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v5    # "i":I
    .end local v10    # "slotChild":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_3
    const/4 v8, 0x0

    .line 84
    .local v8, "pnrSize":I
    const/4 v2, 0x0

    .line 85
    .local v2, "anrSize":I
    if-eqz v13, :cond_5

    .line 86
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/common/model/ValuesDelta;

    .line 87
    .local v12, "value":Lcom/android/contacts/common/model/ValuesDelta;
    const-string v14, "is_additional_number"

    invoke-virtual {v12, v14}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 88
    .local v7, "isAnr":Ljava/lang/Integer;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 91
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 95
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "isAnr":Ljava/lang/Integer;
    .end local v12    # "value":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_5
    const-string v14, "CommonSimUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ensureAASKindExists() pnrSize="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", anrSize="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v14, 0x1

    if-ge v8, v14, :cond_6

    .line 98
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 100
    :cond_6
    :goto_3
    if-ge v2, v9, :cond_7

    .line 102
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v10

    .line 103
    .restart local v10    # "slotChild":Lcom/android/contacts/common/model/ValuesDelta;
    const-string v14, "is_additional_number"

    const/4 v15, 0x1

    invoke-virtual {v10, v14, v15}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 106
    .end local v2    # "anrSize":I
    .end local v8    # "pnrSize":I
    .end local v10    # "slotChild":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_7
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 108
    .end local v9    # "slotAnrSize":I
    .end local v11    # "slotId":I
    .end local v13    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public static getAasEditType(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 8
    .param p0, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "phoneType"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0x65

    .line 116
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/mediatek/contacts/ext/ContactAccountExtension;

    move-result-object v4

    const-string v5, "ExtensionForAAS"

    invoke-virtual {v4, v5}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne p2, v7, :cond_2

    .line 119
    const-string v4, "data3"

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "customColumn":Ljava/lang/String;
    const-string v4, "CommonSimUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAasEditType() customColumn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    if-eqz v0, :cond_1

    .line 122
    iget-object v4, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 123
    .local v2, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v4, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne v4, v7, :cond_0

    iget-object v4, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    const-string v3, "CommonSimUtils"

    const-string v4, "getAasEditType() type"

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .end local v0    # "customColumn":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :goto_0
    return-object v2

    .restart local v0    # "customColumn":Ljava/lang/String;
    :cond_1
    move-object v2, v3

    .line 129
    goto :goto_0

    .line 131
    .end local v0    # "customColumn":Ljava/lang/String;
    :cond_2
    const-string v4, "CommonSimUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAasEditType() error Not Anr.TYPE_AAS, type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 132
    goto :goto_0
.end method

.method public static getPhoneNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    .line 137
    if-eqz p0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u202a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u202c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 140
    :cond_0
    return-object p0
.end method

.method public static isAasPhoneType(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 112
    const/16 v0, 0x65

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
