.class public Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;
.super Ljava/lang/Object;
.source "PhoneNumberHelperEx.java"

# interfaces
.implements Lcom/mediatek/contacts/ext/IPhoneNumberHelper;


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->mResources:Landroid/content/res/Resources;

    .line 45
    return-void
.end method

.method public static getVoiceMailNumber()V
    .locals 0

    .prologue
    .line 190
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->updateVoiceMailNumber()V

    .line 191
    return-void
.end method

.method public static isECCNumber(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/CharSequence;
    .param p1, "simId"    # I

    .prologue
    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSimVoiceMailNumber(Ljava/lang/CharSequence;I)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/CharSequence;
    .param p1, "simId"    # I

    .prologue
    .line 162
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v0

    .line 164
    .local v0, "slotId":I
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->updateVoiceMailNumber()V

    .line 166
    invoke-static {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getVoiceMailNumberForSlot(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "voiceMailNumber":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isVoicemailUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 194
    if-nez p0, :cond_0

    .line 195
    const/4 v1, 0x0

    .line 199
    :goto_0
    return v1

    .line 198
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "voicemail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public canPlaceCallsTo(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-2"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-3"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSendSmsTo(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isVoiceMailNumberForMtk(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "voicemail:x"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 206
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    const-string v0, "tel"

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    const-string v0, "sip"

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_2
    const-string v0, "tel"

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const-string p1, ""

    .line 93
    .end local p1    # "number":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 75
    .restart local p1    # "number":Ljava/lang/CharSequence;
    :cond_1
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 78
    :cond_2
    const-string v0, "-2"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 81
    :cond_3
    const-string v0, "-3"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 90
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p1, p2

    .line 93
    goto :goto_0
.end method

.method public isEmergencyNumber(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEmergencyNumber(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "simId"    # I

    .prologue
    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSipNumber(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVoiceMailNumberForMtk(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "simId"    # I

    .prologue
    .line 152
    invoke-static {p1, p2}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isSimVoiceMailNumber(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public isVoicemailNumber(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVoicemailNumber(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "simId"    # I

    .prologue
    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
