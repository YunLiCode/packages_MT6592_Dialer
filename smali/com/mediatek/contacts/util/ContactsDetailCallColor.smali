.class public Lcom/mediatek/contacts/util/ContactsDetailCallColor;
.super Ljava/lang/Object;
.source "ContactsDetailCallColor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactsDetailCallColor"

.field private static sInstance:Lcom/mediatek/contacts/util/ContactsDetailCallColor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/mediatek/contacts/util/ContactsDetailCallColor;

    invoke-direct {v0}, Lcom/mediatek/contacts/util/ContactsDetailCallColor;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/util/ContactsDetailCallColor;->sInstance:Lcom/mediatek/contacts/util/ContactsDetailCallColor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static getInstance()Lcom/mediatek/contacts/util/ContactsDetailCallColor;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/contacts/util/ContactsDetailCallColor;->sInstance:Lcom/mediatek/contacts/util/ContactsDetailCallColor;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/mediatek/contacts/util/ContactsDetailCallColor;

    invoke-direct {v0}, Lcom/mediatek/contacts/util/ContactsDetailCallColor;-><init>()V

    .line 74
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mediatek/contacts/util/ContactsDetailCallColor;->sInstance:Lcom/mediatek/contacts/util/ContactsDetailCallColor;

    goto :goto_0
.end method


# virtual methods
.method public getDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 6
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 91
    const-string v3, "voice_call_sim_setting"

    const-wide/16 v4, -0x5

    invoke-static {p1, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 93
    .local v0, "mDefaultSim":J
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v3

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoById(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 95
    .local v2, "simInfoOfDefaultSim":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    return-object v2
.end method

.method public getDefaultSlot(Landroid/content/ContentResolver;)I
    .locals 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/util/ContactsDetailCallColor;->getDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 80
    .local v0, "mSimInfoOfDefaultSim":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    return v1
.end method

.method public getNotDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/util/ContactsDetailCallColor;->getDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 100
    .local v0, "defaultInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-nez v1, :cond_0

    .line 101
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    goto :goto_0
.end method

.method public getNotDefaultSlot(Landroid/content/ContentResolver;)I
    .locals 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/util/ContactsDetailCallColor;->getDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 86
    .local v0, "mSimInfoOfDefaultSim":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCDMAPhoneTypeBySlot(I)Z
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 108
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    .line 109
    .local v0, "telephony":Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
