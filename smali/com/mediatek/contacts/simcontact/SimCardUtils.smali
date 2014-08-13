.class public Lcom/mediatek/contacts/simcontact/SimCardUtils;
.super Ljava/lang/Object;
.source "SimCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;,
        Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;,
        Lcom/mediatek/contacts/simcontact/SimCardUtils$SimType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NO_SLOT:Ljava/lang/String;

.field private static final SIM_KEY_SIMINFO_READY:Ljava/lang/String; = "isSimInfoReady"

.field private static final SIM_KEY_WITHSLOT_FDN_ENABLED:Ljava/lang/String; = "isFdnEnabed"

.field private static final SIM_KEY_WITHSLOT_GET_SIM_INDICATOR_STATE:Ljava/lang/String; = "getSimIndicatorState"

.field private static final SIM_KEY_WITHSLOT_HAS_ICC_CARD:Ljava/lang/String; = "hasIccCard"

.field private static final SIM_KEY_WITHSLOT_IS_USIM:Ljava/lang/String; = "isSimUsimType"

.field private static final SIM_KEY_WITHSLOT_PHB_READY:Ljava/lang/String; = "isPhoneBookReady"

.field private static final SIM_KEY_WITHSLOT_PIN_REQUEST:Ljava/lang/String; = "isSimPinRequest"

.field private static final SIM_KEY_WITHSLOT_PUK_REQUEST:Ljava/lang/String; = "isSimPukRequest"

.field private static final SIM_KEY_WITHSLOT_RADIO_ON:Ljava/lang/String; = "isRadioOn"

.field private static final SIM_KEY_WITHSLOT_SET_RADIO_ON:Ljava/lang/String; = "isSetRadioOn"

.field private static final SIM_KEY_WITHSLOT_SIM_INSERTED:Ljava/lang/String; = "isSimInserted"

.field private static final SIM_KEY_WITHSLOT_SIM_TYPE:Ljava/lang/String; = "getSimTypeBySlot"

.field private static final SIM_KEY_WITHSLOT_STATE_READY:Ljava/lang/String; = "isSimStateReady"

.field private static final TAG:Ljava/lang/String; = "SimCardUtils"

.field private static sPresetSimData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/mediatek/contacts/simcontact/SimCardUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/contacts/simcontact/SimCardUtils;->$assertionsDisabled:Z

    .line 421
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    .line 442
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    return-void
.end method

.method public static checkPHBState(Landroid/content/Context;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x1

    .line 877
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 878
    .local v2, "startTime":J
    const/4 v1, 0x0

    .line 879
    .local v1, "hitError":Z
    const/4 v0, -0x1

    .line 880
    .local v0, "errorToastId":I
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 881
    const/4 v1, 0x1

    .line 882
    const v0, 0x7f0a0466

    .line 887
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 888
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 889
    const-string v5, "SimCardUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkPHBState] hitError="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_1
    if-nez v1, :cond_3

    :goto_1
    return v4

    .line 883
    :cond_2
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->getSurplugCount(I)I

    move-result v5

    if-nez v5, :cond_0

    .line 884
    const/4 v1, 0x1

    .line 885
    const v0, 0x7f0a03c4

    goto :goto_0

    .line 891
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static clearPreSetSimData()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 425
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    .line 426
    return-void
.end method

.method public static getAnrCount(I)I
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 856
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getUsimAnrCountBySlot(I)I

    move-result v0

    return v0
.end method

.method public static getIccCardEmailCount(I)I
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 865
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getUsimEmailCountBySlot(I)I

    move-result v0

    return v0
.end method

.method private static getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "key1"    # Ljava/lang/String;
    .param p1, "key2"    # Ljava/lang/String;

    .prologue
    .line 429
    sget-object v2, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 430
    sget-object v2, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 431
    .local v1, "values":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 433
    .local v0, "v":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 439
    .end local v0    # "v":Ljava/lang/Object;
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSimIndicatorState(I)I
    .locals 8
    .param p0, "slotId"    # I

    .prologue
    .line 749
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getSimIndicatorState"

    invoke-static {v5, v6}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 750
    .local v4, "v":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 751
    const-string v5, "SimCardUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getSimIndicatorState]slotId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",v:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 779
    :goto_0
    return v3

    .line 756
    :cond_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 757
    .local v1, "iTel":Lcom/android/internal/telephony/ITelephony;
    const-string v5, "phoneEx"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v2

    .line 758
    .local v2, "iTelEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 759
    const-string v5, "SimCardUtils"

    const-string v6, "[getSimIndicatorState]iTel is null."

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const/4 v3, -0x1

    goto :goto_0

    .line 763
    :cond_1
    const/4 v3, -0x1

    .line 765
    .local v3, "simIndicatorState":I
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 767
    invoke-interface {v2, p0}, Lcom/mediatek/common/telephony/ITelephonyEx;->getSimIndicatorState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 776
    :goto_1
    const-string v5, "SimCardUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getSimIndicatorState]slotId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|simIndicatorState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :cond_2
    :try_start_1
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_1

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "SimCardUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getSimIndicatorState] failed to get sim indicator state for slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSimTagBySlot(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 822
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 823
    const-string v3, "SimCardUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getSimTagBySlot]slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is invalid!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    :goto_0
    return-object v2

    .line 826
    :cond_0
    const-string v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    .line 828
    .local v1, "iTel":Lcom/mediatek/common/telephony/ITelephonyEx;
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 829
    invoke-interface {v1, p0}, Lcom/mediatek/common/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 831
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/mediatek/common/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SimCardUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catched exception. slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSimTypeBySlot(I)I
    .locals 7
    .param p0, "slotId"    # I

    .prologue
    .line 319
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getSimTypeBySlot"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 320
    .local v3, "v":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 321
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSimTypeBySlot]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",v:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 360
    :goto_0
    return v2

    .line 325
    :cond_0
    const/4 v2, -0x1

    .line 327
    .local v2, "simType":I
    const-string v4, "phoneEx"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    .line 329
    .local v1, "iTel":Lcom/mediatek/common/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 330
    const-string v4, "SimCardUtils"

    const-string v5, "[getSimTypeBySlot]iTel == null"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 336
    const-string v4, "USIM"

    invoke-interface {v1, p0}, Lcom/mediatek/common/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 337
    const/4 v2, 0x1

    .line 357
    :cond_2
    :goto_1
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSimTypeBySlot]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",simType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_3
    :try_start_1
    const-string v4, "UIM"

    invoke-interface {v1, p0}, Lcom/mediatek/common/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 339
    const/4 v2, 0x2

    goto :goto_1

    .line 340
    :cond_4
    const-string v4, "SIM"

    invoke-interface {v1, p0}, Lcom/mediatek/common/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 341
    const/4 v2, 0x0

    goto :goto_1

    .line 344
    :cond_5
    const-string v4, "USIM"

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lcom/mediatek/common/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 345
    const/4 v2, 0x1

    goto :goto_1

    .line 346
    :cond_6
    const-string v4, "UIM"

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lcom/mediatek/common/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 347
    const/4 v2, 0x2

    goto :goto_1

    .line 348
    :cond_7
    const-string v4, "SIM"

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lcom/mediatek/common/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 349
    const/4 v2, 0x0

    goto :goto_1

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SimCardUtils"

    const-string v5, "[getSimTypeBySlot]catch exception:"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static handlePinMmi(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 791
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 792
    .local v2, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v4, "phoneEx"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v3

    .line 793
    .local v3, "phoneEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    if-nez v2, :cond_0

    .line 794
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handlePinMmi] fail to get phone for slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const/4 v1, 0x0

    .line 812
    :goto_0
    return v1

    .line 799
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 800
    invoke-interface {v3, p0, p1}, Lcom/mediatek/common/telephony/ITelephonyEx;->handlePinMmi(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 809
    .local v1, "isHandled":Z
    :goto_1
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handlePinMmi]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|input:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|isHandled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 802
    .end local v1    # "isHandled":Z
    :cond_1
    :try_start_1
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .restart local v1    # "isHandled":Z
    goto :goto_1

    .line 804
    .end local v1    # "isHandled":Z
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SimCardUtils"

    const-string v5, "[handlePinMmi]exception : "

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 807
    const/4 v1, 0x0

    .restart local v1    # "isHandled":Z
    goto :goto_1
.end method

.method public static hasIccCard(I)Z
    .locals 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 676
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hasIccCard"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 677
    .local v3, "v":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 678
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[hasIccCard]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",v:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 705
    :goto_0
    return v1

    .line 683
    :cond_0
    const-string v4, "phoneEx"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v2

    .line 684
    .local v2, "iTel":Lcom/mediatek/common/telephony/ITelephonyEx;
    if-nez v2, :cond_1

    .line 685
    const-string v4, "SimCardUtils"

    const-string v5, "[hasIccCard]iTel is null."

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_1
    const/4 v1, 0x0

    .line 691
    .local v1, "hasIccCard":Z
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 692
    invoke-interface {v2, p0}, Lcom/mediatek/common/telephony/ITelephonyEx;->hasIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 702
    :goto_1
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[hasIccCard]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|hasIccCard:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 694
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v2, v4}, Lcom/mediatek/common/telephony/ITelephonyEx;->hasIccCard(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[hasIccCard] failed to check icc card state for slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 699
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isDualSimModeOn(II)Z
    .locals 2
    .param p0, "slotId"    # I
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 849
    sget-boolean v1, Lcom/mediatek/contacts/simcontact/SimCardUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 850
    :cond_0
    sget-boolean v1, Lcom/mediatek/contacts/simcontact/SimCardUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-ltz p1, :cond_1

    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSlotCount()I

    move-result v1

    shl-int v1, v0, v1

    if-lt p1, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 851
    :cond_2
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getFirstSlotId()I

    move-result v1

    sub-int v1, p0, v1

    shl-int v1, v0, v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFdnEnabed(I)Z
    .locals 7
    .param p0, "slotId"    # I

    .prologue
    .line 211
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isFdnEnabed"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 212
    .local v3, "v":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 213
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isFdnEnabed]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",v:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 238
    :goto_0
    return v2

    .line 218
    :cond_0
    const-string v4, "phoneEx"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    .line 220
    .local v1, "iTel":Lcom/mediatek/common/telephony/ITelephonyEx;
    const/4 v2, 0x0

    .line 222
    .local v2, "isFdnEnabled":Z
    if-eqz v1, :cond_1

    .line 223
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    invoke-interface {v1, p0}, Lcom/mediatek/common/telephony/ITelephonyEx;->isFdnEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 235
    :cond_1
    :goto_1
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isFdnEnabed]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",isFdnEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v1, v4}, Lcom/mediatek/common/telephony/ITelephonyEx;->isFdnEnabled(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SimCardUtils"

    const-string v5, "[isFdnEnabed]catch exception:"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 232
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isPhoneBookReady(I)Z
    .locals 7
    .param p0, "slotId"    # I

    .prologue
    .line 275
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isPhoneBookReady"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 276
    .local v3, "v":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 277
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isPhoneBookReady]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",v:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 309
    :goto_0
    return v2

    .line 282
    :cond_0
    const-string v4, "phoneEx"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    .line 285
    .local v1, "iPhbEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 286
    const-string v4, "SimCardUtils"

    const-string v5, "[isPhoneBookReady]phoneEx == null"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v2, 0x0

    goto :goto_0

    .line 290
    :cond_1
    const/4 v2, 0x0

    .line 292
    .local v2, "isPbReady":Z
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 294
    invoke-interface {v1, p0}, Lcom/mediatek/common/telephony/ITelephonyEx;->isPhbReady(I)Z

    move-result v2

    .line 295
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isPhoneBookReady]isPbReady:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "||slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_1
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isPhoneBookReady]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",isPbReady:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSingleSlotId()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/mediatek/common/telephony/ITelephonyEx;->isPhbReady(I)Z

    move-result v2

    .line 300
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isPhoneBookReady]isPbReady:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "||slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SimCardUtils"

    const-string v5, "[isPhoneBookReady]catch exception:"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isRadioOn(I)Z
    .locals 8
    .param p0, "slotId"    # I

    .prologue
    .line 635
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "isRadioOn"

    invoke-static {v5, v6}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 636
    .local v4, "v":Ljava/lang/Boolean;
    if-eqz v4, :cond_0

    .line 637
    const-string v5, "SimCardUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[isRadioOn]slotId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",v:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 666
    :goto_0
    return v3

    .line 642
    :cond_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 643
    .local v1, "iTel":Lcom/android/internal/telephony/ITelephony;
    const-string v5, "phoneEx"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v2

    .line 644
    .local v2, "iTelEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 645
    const-string v5, "SimCardUtils"

    const-string v6, "[isRadioOn]iTel is null!"

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const/4 v3, 0x0

    goto :goto_0

    .line 649
    :cond_1
    const/4 v3, 0x0

    .line 651
    .local v3, "isRadioOn":Z
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 653
    invoke-interface {v2, p0}, Lcom/mediatek/common/telephony/ITelephonyEx;->isRadioOn(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 663
    :goto_1
    const-string v5, "SimCardUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[isRadioOn]slotId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|isRadioOn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :cond_2
    :try_start_1
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_1

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "SimCardUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[isRadioOn] failed to get radio state for slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 660
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isSetRadioOn(Landroid/content/ContentResolver;I)Z
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 242
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "isSetRadioOn"

    invoke-static {v6, v7}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 243
    .local v3, "v":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 244
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isSetRadioOn]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",v:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 265
    :goto_0
    return v2

    .line 249
    :cond_0
    const/4 v2, 0x0

    .line 250
    .local v2, "isRadioOn":Z
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 253
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSlotCount()I

    move-result v6

    shl-int v6, v4, v6

    add-int/lit8 v1, v6, -0x1

    .line 254
    .local v1, "flagAllSimOn":I
    const-string v6, "dual_sim_mode_setting"

    invoke-static {p0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 255
    .local v0, "dualSimSet":I
    const-string v6, "airplane_mode_on"

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getFirstSlotId()I

    move-result v6

    sub-int v6, p1, v6

    shl-int v6, v4, v6

    and-int/2addr v6, v0

    if-eqz v6, :cond_1

    move v2, v4

    .line 262
    .end local v0    # "dualSimSet":I
    .end local v1    # "flagAllSimOn":I
    :goto_1
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isSetRadioOn]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",isRadioOn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "dualSimSet":I
    .restart local v1    # "flagAllSimOn":I
    :cond_1
    move v2, v5

    .line 255
    goto :goto_1

    .line 258
    .end local v0    # "dualSimSet":I
    .end local v1    # "flagAllSimOn":I
    :cond_2
    const-string v6, "airplane_mode_on"

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_3

    move v2, v4

    :goto_2
    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_2
.end method

.method public static isSimInfoReady()Z
    .locals 5

    .prologue
    .line 406
    sget-object v2, Lcom/mediatek/contacts/simcontact/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isSimInfoReady"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 407
    .local v1, "v":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 408
    const-string v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSimInfoReady]v:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 415
    :goto_0
    return v2

    .line 412
    :cond_0
    const-string v2, "gsm.siminfo.ready"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "simInfoReady":Ljava/lang/String;
    const-string v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSimInfoReady]simInfoReady:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isSimInserted(I)Z
    .locals 7
    .param p0, "slotId"    # I

    .prologue
    .line 180
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isSimInserted"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 181
    .local v3, "v":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 182
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isSimInserted]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",v:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 207
    :goto_0
    return v2

    .line 187
    :cond_0
    const-string v4, "phoneEx"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    .line 189
    .local v1, "iTel":Lcom/mediatek/common/telephony/ITelephonyEx;
    const/4 v2, 0x0

    .line 191
    .local v2, "isSimInsert":Z
    if-eqz v1, :cond_1

    .line 192
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    invoke-interface {v1, p0}, Lcom/mediatek/common/telephony/ITelephonyEx;->hasIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 204
    :cond_1
    :goto_1
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isSimInserted]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",isPukRequest:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v1, v4}, Lcom/mediatek/common/telephony/ITelephonyEx;->hasIccCard(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SimCardUtils"

    const-string v5, "[isSimInserted]catch exception:"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 201
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isSimPinRequest(I)Z
    .locals 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 136
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isSimPinRequest"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 137
    .local v1, "v":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 138
    const-string v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSimPinRequest]slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",v:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 154
    :goto_0
    return v0

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 144
    .local v0, "isPinRequest":Z
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v4

    if-ne v6, v4, :cond_1

    move v0, v2

    .line 151
    :goto_1
    const-string v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSimPinRequest]slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isPukRequest:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v3

    .line 145
    goto :goto_1

    .line 148
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v6, v4, :cond_3

    move v0, v2

    :goto_2
    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method public static isSimPukRequest(I)Z
    .locals 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isSimPukRequest"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 115
    .local v1, "v":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 116
    const-string v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSimPukRequest]slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",v:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 132
    :goto_0
    return v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    .line 122
    .local v0, "isPukRequest":Z
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v4

    if-ne v6, v4, :cond_1

    move v0, v2

    .line 129
    :goto_1
    const-string v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSimPukRequest]slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isPukRequest:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v3

    .line 123
    goto :goto_1

    .line 126
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v6, v4, :cond_3

    move v0, v2

    :goto_2
    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method public static isSimReady(I)Z
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 732
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 733
    const-string v1, "SimCardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSimStateIdle] invalid slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const/4 v0, 0x0

    .line 738
    :goto_0
    return v0

    .line 736
    :cond_0
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v0

    .line 737
    .local v0, "isPhoneBookReady":Z
    const-string v1, "SimCardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSimReady] isPhoneBookReady="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSimStateIdle(I)Z
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 718
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 719
    const-string v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSimStateIdle] invalid slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_0
    :goto_0
    return v1

    .line 723
    :cond_1
    invoke-static {p0}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->isServiceRunning(I)Z

    move-result v0

    .line 724
    .local v0, "isSimServiceRunning":Z
    const-string v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSimStateIdle], isSimServiceRunning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimReady(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSimStateReady(I)Z
    .locals 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 158
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isSimStateReady"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 159
    .local v1, "v":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 160
    const-string v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSimStateReady]slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",v:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 176
    :goto_0
    return v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    .line 166
    .local v0, "isSimStateReady":Z
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 167
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v4

    if-ne v6, v4, :cond_1

    move v0, v2

    .line 173
    :goto_1
    const-string v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSimStateReady]slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isPukRequest:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v3

    .line 167
    goto :goto_1

    .line 170
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v6, v4, :cond_3

    move v0, v2

    :goto_2
    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method public static isSimUsimType(I)Z
    .locals 7
    .param p0, "slotId"    # I

    .prologue
    .line 369
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isSimUsimType"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 370
    .local v3, "v":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 371
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isSimUsimType]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",v:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 402
    :goto_0
    return v2

    .line 376
    :cond_0
    const/4 v2, 0x0

    .line 377
    .local v2, "isUsim":Z
    const-string v4, "phoneEx"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    .line 379
    .local v1, "iTel":Lcom/mediatek/common/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 380
    const-string v4, "SimCardUtils"

    const-string v5, "[isSimUsimType]iTel == null"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 386
    const-string v4, "USIM"

    invoke-interface {v1, p0}, Lcom/mediatek/common/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 387
    const/4 v2, 0x1

    .line 399
    :cond_2
    :goto_1
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isSimUsimType]slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",isUsim:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_3
    :try_start_1
    const-string v4, "USIM"

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lcom/mediatek/common/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 391
    const/4 v2, 0x1

    goto :goto_1

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SimCardUtils"

    const-string v5, "[isSimUsimType]catch exception:"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static preSetSimData(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "slot"    # I
    .param p1, "fdnEnabled"    # Ljava/lang/Boolean;
    .param p2, "isUsim"    # Ljava/lang/Boolean;
    .param p3, "phbReady"    # Ljava/lang/Boolean;
    .param p4, "pinRequest"    # Ljava/lang/Boolean;
    .param p5, "pukRequest"    # Ljava/lang/Boolean;
    .param p6, "isRadioOn"    # Ljava/lang/Boolean;
    .param p7, "isSimInserted"    # Ljava/lang/Boolean;
    .param p8, "simType"    # Ljava/lang/Integer;
    .param p9, "simStateReady"    # Ljava/lang/Boolean;
    .param p10, "simInfoReady"    # Ljava/lang/Boolean;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 462
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 463
    .local v1, "value1":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 464
    const-string v3, "isFdnEnabed"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 466
    :cond_0
    if-eqz p2, :cond_1

    .line 467
    const-string v3, "isSimUsimType"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 469
    :cond_1
    if-eqz p3, :cond_2

    .line 470
    const-string v3, "isPhoneBookReady"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 472
    :cond_2
    if-eqz p4, :cond_3

    .line 473
    const-string v3, "isSimPinRequest"

    invoke-virtual {v1, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 475
    :cond_3
    if-eqz p5, :cond_4

    .line 476
    const-string v3, "isSimPukRequest"

    invoke-virtual {v1, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 478
    :cond_4
    if-eqz p6, :cond_5

    .line 479
    const-string v3, "isSetRadioOn"

    invoke-virtual {v1, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 481
    :cond_5
    if-eqz p7, :cond_6

    .line 482
    const-string v3, "isSimInserted"

    invoke-virtual {v1, v3, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 484
    :cond_6
    if-eqz p8, :cond_7

    .line 485
    const-string v3, "getSimTypeBySlot"

    invoke-virtual {v1, v3, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    :cond_7
    if-eqz p9, :cond_8

    .line 488
    const-string v3, "isSimStateReady"

    invoke-virtual {v1, v3, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 490
    :cond_8
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    if-nez v3, :cond_9

    .line 491
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    .line 493
    :cond_9
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 494
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "key1":Ljava/lang/String;
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 496
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :cond_a
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .end local v0    # "key1":Ljava/lang/String;
    :cond_b
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 502
    .local v2, "value2":Landroid/content/ContentValues;
    if-eqz p10, :cond_c

    .line 503
    const-string v3, "isSimInfoReady"

    invoke-virtual {v2, v3, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 505
    :cond_c
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 506
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    sget-object v4, Lcom/mediatek/contacts/simcontact/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 507
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    sget-object v4, Lcom/mediatek/contacts/simcontact/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    :cond_d
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    sget-object v4, Lcom/mediatek/contacts/simcontact/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_e
    return-void
.end method
