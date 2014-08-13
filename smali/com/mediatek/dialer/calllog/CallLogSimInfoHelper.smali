.class public Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;
.super Ljava/lang/Object;
.source "CallLogSimInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$1;,
        Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogSimInfoHelper"


# instance fields
.field private mDrawableSimLockedColor:Landroid/graphics/drawable/Drawable;

.field private mDrawableSimSipColor:Landroid/graphics/drawable/Drawable;

.field private mResources:Landroid/content/res/Resources;

.field private mSimColorArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;",
            ">;"
        }
    .end annotation
.end field

.field private mSipCallDisplayName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v2, ""

    iput-object v2, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mSipCallDisplayName:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mResources:Landroid/content/res/Resources;

    .line 36
    new-instance v2, Landroid/util/SparseArray;

    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSlotCount()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mSimColorArray:Landroid/util/SparseArray;

    .line 37
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getAllSlotIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 38
    .local v1, "slotId":I
    iget-object v2, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mSimColorArray:Landroid/util/SparseArray;

    new-instance v3, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;-><init>(Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$1;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 41
    .end local v1    # "slotId":I
    :cond_0
    return-void
.end method

.method public static getSimIdBySlotID(I)I
    .locals 4
    .param p0, "slot"    # I

    .prologue
    const/4 v3, -0x1

    .line 171
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimInfoList()Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, "insertedSIMInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-nez v1, :cond_0

    move v2, v3

    .line 182
    :goto_0
    return v2

    .line 177
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 178
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v2, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne p0, v2, :cond_1

    .line 179
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v2, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    long-to-int v2, v2

    goto :goto_0

    .line 177
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 182
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string v0, "CallLogSimInfoHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method


# virtual methods
.method public getSimColorDrawableById(I)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "simId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimColorDrawableById() simId == ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->log(Ljava/lang/String;)V

    .line 79
    const/4 v6, 0x1

    new-array v3, v6, [I

    aput v9, v3, v9

    .line 80
    .local v3, "simColorRes":[I
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getCallLogSimInfoHelperExtension()Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;

    move-result-object v6

    iget-object v8, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mDrawableSimSipColor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1, v8}, Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;->getSimColorDrawableById(ILandroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mDrawableSimSipColor:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 82
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mDrawableSimSipColor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 146
    :goto_0
    return-object v6

    :cond_0
    move-object v6, v7

    .line 84
    goto :goto_0

    .line 88
    :cond_1
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f08006d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 90
    .local v2, "mCalllogSimnameHeight":I
    const/4 v6, -0x2

    if-ne v6, p1, :cond_4

    .line 92
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mDrawableSimSipColor:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_2

    .line 94
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0201f0

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 96
    .local v1, "dw":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    instance-of v6, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v6, :cond_3

    .line 97
    iput-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mDrawableSimSipColor:Landroid/graphics/drawable/Drawable;

    .line 102
    .end local v1    # "dw":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mDrawableSimSipColor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0

    .restart local v1    # "dw":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object v6, v7

    .line 99
    goto :goto_0

    .line 103
    .end local v1    # "dw":Landroid/graphics/drawable/Drawable;
    :cond_4
    if-nez p1, :cond_5

    move-object v6, v7

    .line 104
    goto :goto_0

    .line 106
    :cond_5
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimColorById(I)I

    move-result v0

    .line 107
    .local v0, "color":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimColorDrawableById() color == ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->log(Ljava/lang/String;)V

    .line 108
    const/4 v6, -0x1

    if-eq v6, v0, :cond_b

    .line 109
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSlotIdBySimId(I)I

    move-result v5

    .line 110
    .local v5, "slotId":I
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mSimColorArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;

    iget-object v6, v6, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;->mDrawableSimColor:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mSimColorArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;

    iget v6, v6, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;->mInsertSimColor:I

    if-eq v6, v0, :cond_7

    .line 112
    :cond_6
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimBackgroundLightResByColorId(I)I

    move-result v4

    .line 113
    .local v4, "simColorResId":I
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mSimColorArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;

    iput v0, v6, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;->mInsertSimColor:I

    .line 115
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getCallLogSimInfoHelperExtension()Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;

    move-result-object v6

    invoke-virtual {v6, v0, v3}, Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;->getSimBackgroundDarkResByColorId(I[I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 117
    aget v4, v3, v9

    .line 118
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 119
    .restart local v1    # "dw":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_8

    .line 120
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mSimColorArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;

    iput-object v1, v6, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;->mDrawableSimColor:Landroid/graphics/drawable/Drawable;

    .line 133
    .end local v1    # "dw":Landroid/graphics/drawable/Drawable;
    .end local v4    # "simColorResId":I
    :cond_7
    :goto_1
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mSimColorArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;

    iget-object v6, v6, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;->mDrawableSimColor:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .restart local v1    # "dw":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "simColorResId":I
    :cond_8
    move-object v6, v7

    .line 122
    goto/16 :goto_0

    .line 125
    .end local v1    # "dw":Landroid/graphics/drawable/Drawable;
    :cond_9
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 126
    .restart local v1    # "dw":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_a

    instance-of v6, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v6, :cond_a

    .line 127
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mSimColorArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;

    iput-object v1, v6, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;->mDrawableSimColor:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_a
    move-object v6, v7

    .line 129
    goto/16 :goto_0

    .line 136
    .end local v1    # "dw":Landroid/graphics/drawable/Drawable;
    .end local v4    # "simColorResId":I
    .end local v5    # "slotId":I
    :cond_b
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mDrawableSimLockedColor:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_c

    .line 137
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0201f1

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 138
    .restart local v1    # "dw":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_d

    instance-of v6, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v6, :cond_d

    .line 139
    iput-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mDrawableSimLockedColor:Landroid/graphics/drawable/Drawable;

    .line 146
    .end local v1    # "dw":Landroid/graphics/drawable/Drawable;
    :cond_c
    iget-object v6, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mDrawableSimLockedColor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto/16 :goto_0

    .restart local v1    # "dw":Landroid/graphics/drawable/Drawable;
    :cond_d
    move-object v6, v7

    .line 141
    goto/16 :goto_0
.end method

.method public getSimDisplayNameById(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    .local v0, "callDisplayName":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getCallLogSimInfoHelperExtension()Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;->getSimDisplayNameById(ILjava/lang/StringBuffer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    :goto_0
    return-object v1

    .line 55
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 59
    :cond_1
    const/4 v1, -0x2

    if-ne v1, p1, :cond_3

    .line 60
    const-string v1, ""

    iget-object v2, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mSipCallDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0397

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mSipCallDisplayName:Ljava/lang/String;

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->mSipCallDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_3
    if-nez p1, :cond_4

    .line 65
    const-string v1, ""

    goto :goto_0

    .line 67
    :cond_4
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimDisplayNameById(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
