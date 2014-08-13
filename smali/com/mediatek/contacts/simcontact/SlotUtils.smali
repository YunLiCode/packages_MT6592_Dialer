.class public final Lcom/mediatek/contacts/simcontact/SlotUtils;
.super Ljava/lang/Object;
.source "SlotUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;,
        Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;
    }
.end annotation


# static fields
.field private static final FIRST_SLOT_ID:I = 0x0

.field private static final PHONE_SLOT_NUM:I

.field private static final TAG:Ljava/lang/String; = "SlotUtils"

.field private static sSlotInfoMap:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 30
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    sput v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->PHONE_SLOT_NUM:I

    .line 259
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->PHONE_SLOT_NUM:I

    if-ge v0, v2, :cond_0

    .line 262
    add-int/lit8 v1, v0, 0x0

    .line 263
    .local v1, "slotId":I
    sget-object v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    invoke-direct {v4, v1}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "slotId":I
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getAllSlotIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getFirstSlotId()I
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public static getNonSlotId()I
    .locals 1

    .prologue
    .line 406
    const/4 v0, -0x1

    return v0
.end method

.method public static getResIdForSlot(I)I
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 425
    sget-object v1, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    .line 426
    .local v0, "slotInfo":Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->getResId()I

    move-result v1

    .line 430
    :goto_0
    return v1

    .line 429
    :cond_0
    const-string v1, "SlotUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getResIdForSlot],slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getSimPhoneBookServiceNameForSlot(I)Ljava/lang/String;
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 370
    sget-object v1, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    .line 371
    .local v0, "slotInfo":Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;
    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->getSimPhoneBookServiceName()Ljava/lang/String;

    move-result-object v1

    .line 375
    :goto_0
    return-object v1

    .line 374
    :cond_0
    const-string v1, "SlotUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSimPhoneBookServiceNameForSlot],slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSingleSlotId()I
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public static getSlotCount()I
    .locals 1

    .prologue
    .line 361
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static getSlotIccUri(I)Landroid/net/Uri;
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 273
    sget-object v1, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    .line 274
    .local v0, "slotInfo":Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->getIccUri()Landroid/net/Uri;

    move-result-object v1

    .line 278
    :goto_0
    return-object v1

    .line 277
    :cond_0
    const-string v1, "SlotUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSlotIccUri],slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSlotIdFromSimResId(I)I
    .locals 4
    .param p0, "resId"    # I

    .prologue
    .line 440
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getAllSlotIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 441
    .local v1, "slotId":I
    sget-object v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    iget v2, v2, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mResId:I

    if-ne v2, p0, :cond_0

    .line 445
    .end local v1    # "slotId":I
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getNonSlotId()I

    move-result v1

    goto :goto_0
.end method

.method public static getSlotSdnUri(I)Landroid/net/Uri;
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 288
    sget-object v1, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    .line 289
    .local v0, "slotInfo":Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->getSdnUri()Landroid/net/Uri;

    move-result-object v1

    .line 293
    :goto_0
    return-object v1

    .line 292
    :cond_0
    const-string v1, "SlotUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSlotSdnUri],slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUsimAnrCountBySlot(I)I
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 465
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    iget-object v0, v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mPhbInfo:Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->getUsimAnrCount()I

    move-result v0

    return v0
.end method

.method public static getUsimEmailCountBySlot(I)I
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 469
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    iget-object v0, v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mPhbInfo:Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->getUsimEmailCount()I

    move-result v0

    return v0
.end method

.method public static getUsimGroupMaxCountBySlot(I)I
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 461
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    iget-object v0, v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mPhbInfo:Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->getUsimGroupMaxCount()I

    move-result v0

    return v0
.end method

.method public static getUsimGroupMaxNameLengthBySlot(I)I
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 457
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    iget-object v0, v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mPhbInfo:Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->getUsimGroupMaxNameLength()I

    move-result v0

    return v0
.end method

.method public static getVoiceMailNumberForSlot(I)Ljava/lang/String;
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 311
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    sget-object v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    .line 313
    .local v0, "slotInfo":Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 322
    .end local v0    # "slotInfo":Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;
    :goto_0
    return-object v1

    .line 316
    .restart local v0    # "slotInfo":Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;
    :cond_0
    const-string v2, "SlotUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getVoiceMailNumberForSlot],slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    .end local v0    # "slotInfo":Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;
    :cond_1
    const-string v2, "SlotUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getVoiceMailNumberForSlot] slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isGeminiEnabled()Z
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public static isSlotValid(I)Z
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 385
    sget-object v1, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 386
    .local v0, "isValid":Z
    if-nez v0, :cond_0

    .line 387
    const-string v1, "SlotUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSlotValid]slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is invalid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_0
    return v0
.end method

.method public static listenAllSlots(Landroid/content/Context;Landroid/telephony/PhoneStateListener;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 346
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getAllSlotIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 348
    .local v1, "slotId":I
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    goto :goto_0

    .line 351
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "slotId":I
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 352
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 354
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    return-void
.end method

.method public static refreshPhbInfoBySlot(I)V
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 480
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    iget-object v0, v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mPhbInfo:Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->refreshPhbInfo()V

    .line 481
    return-void
.end method

.method public static resetPhbInfoBySlot(I)V
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 491
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    iget-object v0, v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mPhbInfo:Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->resetPhbInfo()V

    .line 492
    return-void
.end method

.method public static updateVoiceMailNumber()V
    .locals 3

    .prologue
    .line 329
    sget-object v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    .line 330
    .local v1, "slot":Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;
    invoke-virtual {v1}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->updateVoiceMailNumber()V

    goto :goto_0

    .line 332
    .end local v1    # "slot":Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;
    :cond_0
    return-void
.end method
