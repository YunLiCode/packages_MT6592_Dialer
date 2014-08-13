.class public Lcom/mediatek/dialer/util/DialerUtils;
.super Ljava/lang/Object;
.source "DialerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dialer/util/DialerUtils$ProviderNames;
    }
.end annotation


# static fields
.field public static final CALL_TYPE_NONE:I = 0x0

.field public static final CALL_TYPE_SIP:I = -0x2

.field private static final LEFT_TO_RIGHT_EMBEDDING:C = '\u202a'

.field private static final POP_DIRECTIONAL_FORMATTING:C = '\u202c'

.field private static final TAG:Ljava/lang/String; = "DialerUtils"

.field private static final WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

.field public static isServiceRunning:[Z

.field private static sCurrentCountryIso:Ljava/lang/String;

.field private static sThumbnailSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/dialer/util/DialerUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    .line 61
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/dialer/util/DialerUtils;->sThumbnailSize:I

    .line 402
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/dialer/util/DialerUtils;->isServiceRunning:[Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static final areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "a"    # Landroid/content/Intent;
    .param p1, "b"    # Landroid/content/Intent;

    .prologue
    .line 185
    if-ne p0, p1, :cond_0

    .line 186
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    .line 188
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 189
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;
    .annotation build Lcom/android/contacts/common/test/NeededForTesting;
    .end annotation

    .prologue
    .line 121
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static forceLeftToRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x202a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 413
    const/16 v1, 0x202c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/dialer/util/DialerUtils;->getCallIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "callOrigin"    # Ljava/lang/String;

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/dialer/util/DialerUtils;->getCallIntent(Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallIntent(Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "callOrigin"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x1

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 305
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 306
    if-eqz p1, :cond_0

    .line 307
    const-string v1, "com.android.phone.CALL_ORIGIN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 310
    const-string v1, "com.android.phone.extra.ip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    :cond_1
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    .line 314
    const-string v1, "com.android.phone.extra.video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    :cond_2
    return-object v0
.end method

.method public static getCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/dialer/util/DialerUtils;->getCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "callOrigin"    # Ljava/lang/String;

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/dialer/util/DialerUtils;->getCallIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "callOrigin"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 286
    invoke-static {p0}, Lcom/mediatek/dialer/util/DialerUtils;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/mediatek/dialer/util/DialerUtils;->getCallIntent(Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "tel"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    .line 252
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    const-string v0, "sip"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_1
    const-string v0, "tel"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVoicemailIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 325
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 326
    return-object v0
.end method

.method public static isDialerSearchEnabled()Z
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lookupProviderNameFromId(I)Ljava/lang/String;
    .locals 1
    .param p0, "protocol"    # I

    .prologue
    .line 87
    packed-switch p0, :pswitch_data_0

    .line 105
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 89
    :pswitch_0
    const-string v0, "GTalk"

    goto :goto_0

    .line 91
    :pswitch_1
    const-string v0, "AIM"

    goto :goto_0

    .line 93
    :pswitch_2
    const-string v0, "MSN"

    goto :goto_0

    .line 95
    :pswitch_3
    const-string v0, "Yahoo"

    goto :goto_0

    .line 97
    :pswitch_4
    const-string v0, "ICQ"

    goto :goto_0

    .line 99
    :pswitch_5
    const-string v0, "JABBER"

    goto :goto_0

    .line 101
    :pswitch_6
    const-string v0, "SKYPE"

    goto :goto_0

    .line 103
    :pswitch_7
    const-string v0, "QQ"

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "mimetype1"    # Ljava/lang/CharSequence;
    .param p1, "data1"    # Ljava/lang/CharSequence;
    .param p2, "mimetype2"    # Ljava/lang/CharSequence;
    .param p3, "data2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 138
    :cond_2
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 142
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/dialer/util/DialerUtils;->shouldCollapsePhoneNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static final shouldCollapsePhoneNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "number1WithLetters"    # Ljava/lang/String;
    .param p1, "number2WithLetters"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 149
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "number1":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "number2":Ljava/lang/String;
    const/4 v0, 0x0

    .line 153
    .local v0, "index1":I
    const/4 v1, 0x0

    .line 156
    .local v1, "index2":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v8

    if-nez v8, :cond_0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v8

    if-nez v8, :cond_1

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 165
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v0, v8, :cond_3

    move v3, v6

    .line 166
    .local v3, "number1End":Z
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v1, v8, :cond_4

    move v5, v6

    .line 167
    .local v5, "number2End":Z
    :goto_3
    if-eqz v3, :cond_5

    move v7, v5

    .line 173
    :cond_2
    return v7

    .end local v3    # "number1End":Z
    .end local v5    # "number2End":Z
    :cond_3
    move v3, v7

    .line 165
    goto :goto_2

    .restart local v3    # "number1End":Z
    :cond_4
    move v5, v7

    .line 166
    goto :goto_3

    .line 170
    .restart local v5    # "number2End":Z
    :cond_5
    if-nez v5, :cond_2

    .line 173
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_2

    .line 176
    add-int/lit8 v0, v0, 0x1

    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 178
    goto :goto_0
.end method
