.class public Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;
.super Ljava/lang/Object;
.source "PhoneNumberUtilsWrapper.java"


# static fields
.field private static final LEGACY_UNKNOWN_NUMBERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-3"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->LEGACY_UNKNOWN_NUMBERS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canPlaceCallsTo(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/CharSequence;
    .param p1, "presentation"    # I

    .prologue
    const/4 v0, 0x1

    .line 36
    if-ne p1, v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isLegacyUnknownNumbers(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLegacyUnknownNumbers(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 87
    sget-object v0, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->LEGACY_UNKNOWN_NUMBERS:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSipNumber(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUnknownNumberThatCanBeLookedUp(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/CharSequence;
    .param p1, "presentation"    # I

    .prologue
    const/4 v0, 0x0

    .line 65
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 71
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    invoke-direct {v1}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;-><init>()V

    invoke-virtual {v1, p0}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isLegacyUnknownNumbers(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public canSendSmsTo(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "presentation"    # I

    .prologue
    .line 44
    invoke-static {p1, p2}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoicemailNumber(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
