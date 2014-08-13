.class public Lcom/android/incallui/CallCardPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoExpiredListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;
.implements Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardPresenter$CallCardUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;",
        "Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;",
        "Lcom/android/incallui/ContactInfoCache$ContactInfoExpiredListener;"
    }
.end annotation


# static fields
.field private static final CALL_TIME_UPDATE_INTERVAL:J = 0x3e8L

.field private static final NO_PHONE_ID:I = -0x1

.field private static final PRIMARY:I = 0x0

.field private static final SECONDARY:I = 0x1

.field private static final SECONDARY_INCOMING:I = 0x3

.field private static final SECONDARY_ONHOLD:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallTimer:Lcom/android/incallui/CallTimer;

.field private mContext:Landroid/content/Context;

.field private mPrimary:Lcom/android/services/telephony/common/Call;

.field private mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mSecondary:Lcom/android/services/telephony/common/Call;

.field private mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

.field private mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

.field private mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 79
    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/CallCardPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardPresenter$1;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallCardPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardPresenter;
    .param p1, "x1"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/CallCardPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardPresenter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardPresenter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardPresenter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method private areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z
    .locals 4
    .param p1, "call1"    # Lcom/android/services/telephony/common/Call;
    .param p2, "call2"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 348
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v0

    .line 350
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    .line 351
    goto :goto_0

    .line 355
    :cond_3
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getCallDuration(Lcom/android/services/telephony/common/Call;)J
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const-wide/16 v0, 0x0

    .line 1093
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVT()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1094
    sget-object v2, Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;->VT_TIMING_NONE:Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/incallui/vt/VTUtils;->checkVTTimingMode(Ljava/lang/String;)Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return-wide v0

    .line 1096
    :cond_1
    sget-object v2, Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/incallui/vt/VTUtils;->checkVTTimingMode(Ljava/lang/String;)Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1097
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    .line 1100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 1115
    :cond_2
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getDurationMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method static getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;
    .locals 3
    .param p0, "callList"    # Lcom/android/incallui/CallList;
    .param p1, "ignore"    # Lcom/android/services/telephony/common/Call;
    .param p2, "skipDisconnected"    # Z

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 448
    .local v0, "retval":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->isGsmPhoneFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getGsmActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 453
    :cond_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    move-object v1, v0

    .line 491
    .end local v0    # "retval":Lcom/android/services/telephony/common/Call;
    .local v1, "retval":Lcom/android/services/telephony/common/Call;
    :goto_0
    return-object v1

    .line 460
    .end local v1    # "retval":Lcom/android/services/telephony/common/Call;
    .restart local v0    # "retval":Lcom/android/services/telephony/common/Call;
    :cond_1
    if-nez p2, :cond_3

    .line 461
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    move-object v1, v0

    .line 463
    .end local v0    # "retval":Lcom/android/services/telephony/common/Call;
    .restart local v1    # "retval":Lcom/android/services/telephony/common/Call;
    goto :goto_0

    .line 465
    .end local v1    # "retval":Lcom/android/services/telephony/common/Call;
    .restart local v0    # "retval":Lcom/android/services/telephony/common/Call;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 466
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    move-object v1, v0

    .line 467
    .end local v0    # "retval":Lcom/android/services/telephony/common/Call;
    .restart local v1    # "retval":Lcom/android/services/telephony/common/Call;
    goto :goto_0

    .line 473
    .end local v1    # "retval":Lcom/android/services/telephony/common/Call;
    .restart local v0    # "retval":Lcom/android/services/telephony/common/Call;
    :cond_3
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/InCallPresenter;->mDualtalkCallInfo:Lcom/android/services/telephony/common/DualtalkCallInfo;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/InCallPresenter;->mDualtalkCallInfo:Lcom/android/services/telephony/common/DualtalkCallInfo;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/DualtalkCallInfo;->getIsCdmaAndGsmActive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 476
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 477
    if-nez v0, :cond_4

    .line 478
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getCdmaActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 484
    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, p1, :cond_6

    move-object v1, v0

    .line 485
    .end local v0    # "retval":Lcom/android/services/telephony/common/Call;
    .restart local v1    # "retval":Lcom/android/services/telephony/common/Call;
    goto :goto_0

    .line 481
    .end local v1    # "retval":Lcom/android/services/telephony/common/Call;
    .restart local v0    # "retval":Lcom/android/services/telephony/common/Call;
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    goto :goto_1

    .line 489
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    move-object v1, v0

    .line 491
    .end local v0    # "retval":Lcom/android/services/telephony/common/Call;
    .restart local v1    # "retval":Lcom/android/services/telephony/common/Call;
    goto :goto_0
.end method

.method private getGatewayLabel()Ljava/lang/String;
    .locals 7

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 564
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 566
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getGatewayPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 567
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a02f0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 572
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v2

    .line 569
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 572
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getGatewayNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getGatewayNumber()Ljava/lang/String;

    move-result-object v0

    .line 556
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    invoke-static {p0}, Lcom/android/incallui/CallCardPresenter;->getNumberForVolTE(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v0

    .line 600
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const-string v0, ""

    .line 617
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/CallCardPresenter;->getNumberForVolTE(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getNumberForVolTE(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 5
    .param p0, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 1044
    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 1045
    .local v2, "number":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVoLte()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->pau:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 1047
    .local v0, "nameInCache":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->pau:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/incallui/volte/VoLteUtils;->getNameFromPAU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1048
    .local v1, "nameInPAU":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1050
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1051
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1060
    .end local v0    # "nameInCache":Ljava/lang/String;
    .end local v1    # "nameInPAU":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 1055
    .restart local v0    # "nameInCache":Ljava/lang/String;
    .restart local v1    # "nameInPAU":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1056
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getSecondaryCallToShow(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Lcom/android/services/telephony/common/Call;
    .locals 3
    .param p1, "fgCall"    # Lcom/android/services/telephony/common/Call;
    .param p2, "bgCall"    # Lcom/android/services/telephony/common/Call;
    .param p3, "bgSecondCall"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 975
    const/4 v0, 0x0

    .line 977
    .local v0, "secondaryCall":Lcom/android/services/telephony/common/Call;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 978
    :cond_0
    const/4 v0, 0x0

    .line 980
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->isSamePhone(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 981
    move-object v0, p2

    .line 986
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecondaryCallToShow()...secondaryCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 987
    return-object v0

    .line 982
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/incallui/CallCardPresenter;->isSamePhone(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 983
    move-object v0, p3

    goto :goto_0
.end method

.method private getSecondaryHoldCallToShow(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Lcom/android/services/telephony/common/Call;
    .locals 3
    .param p1, "fgCall"    # Lcom/android/services/telephony/common/Call;
    .param p2, "bgCall"    # Lcom/android/services/telephony/common/Call;
    .param p3, "bgSecondCall"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 991
    const/4 v0, 0x0

    .line 993
    .local v0, "secondaryHoldCall":Lcom/android/services/telephony/common/Call;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 994
    :cond_0
    const/4 v0, 0x0

    .line 996
    :cond_1
    if-eqz p2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->isSamePhone(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 997
    move-object v0, p2

    .line 1001
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecondaryHoldCallToShow()...secondaryHoldCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1002
    return-object v0

    .line 998
    :cond_3
    if-eqz p3, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/android/incallui/CallCardPresenter;->isSamePhone(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 999
    move-object v0, p3

    goto :goto_0
.end method

.method private hasOutgoingGatewayCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 581
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-nez v1, :cond_1

    .line 584
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getGatewayNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getGatewayPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isConference(Lcom/android/services/telephony/common/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 417
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isGenericConference(Lcom/android/services/telephony/common/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 421
    if-eqz p0, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSamePhone(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z
    .locals 4
    .param p1, "call1"    # Lcom/android/services/telephony/common/Call;
    .param p2, "call2"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v3, -0x1

    .line 1006
    const/4 v2, 0x0

    .line 1008
    .local v2, "result":Z
    const/4 v0, -0x1

    .line 1009
    .local v0, "phoneId1":I
    const/4 v1, -0x1

    .line 1010
    .local v1, "phoneId2":I
    if-eqz p1, :cond_0

    .line 1011
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getPhoneId()I

    move-result v0

    .line 1013
    :cond_0
    if-eqz p2, :cond_1

    .line 1014
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getPhoneId()I

    move-result v1

    .line 1017
    :cond_1
    if-eq v0, v3, :cond_2

    if-ne v1, v3, :cond_3

    .line 1018
    :cond_2
    const/4 v2, 0x0

    .line 1023
    :goto_0
    return v2

    .line 1020
    :cond_3
    if-ne v0, v1, :cond_4

    const/4 v2, 0x1

    :goto_1
    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private maybeStartSearch(Lcom/android/services/telephony/common/Call;I)V
    .locals 3
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "type"    # I

    .prologue
    .line 748
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeStartSearch, call =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, p2, v0}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;IZ)V

    .line 753
    :cond_0
    return-void

    .line 750
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;IZ)V
    .locals 2
    .param p1, "identification"    # Lcom/android/services/telephony/common/CallIdentification;
    .param p2, "type"    # I
    .param p3, "isIncoming"    # Z

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 382
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    new-instance v1, Lcom/android/incallui/CallCardPresenter$2;

    invoke-direct {v1, p0, p2}, Lcom/android/incallui/CallCardPresenter$2;-><init>(Lcom/android/incallui/CallCardPresenter;I)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/services/telephony/common/CallIdentification;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 414
    return-void
.end method

.method private updateCallForDualtalk()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 820
    const/4 v5, 0x0

    .line 821
    .local v5, "phoneType":I
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    .line 822
    .local v4, "fgCall":Lcom/android/services/telephony/common/Call;
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    .line 823
    .local v0, "bgCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 824
    .local v1, "bgSecondCall":Lcom/android/services/telephony/common/Call;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[updateCallForDualtalk], fgCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "bgCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "bgSecondCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardPresenter;->areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 827
    const/4 v1, 0x0

    .line 829
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    iget-object v3, v8, Lcom/android/incallui/InCallPresenter;->mDualtalkCallInfo:Lcom/android/services/telephony/common/DualtalkCallInfo;

    .line 830
    .local v3, "dualtalkCallInfo":Lcom/android/services/telephony/common/DualtalkCallInfo;
    if-nez v3, :cond_2

    .line 831
    const-string v8, "[updateCallForDualtalk], dualtalkCallInfo is null"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 864
    :cond_1
    :goto_0
    return-void

    .line 834
    :cond_2
    if-eqz v4, :cond_3

    .line 835
    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v5

    .line 836
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[updateCallForDualtalk], phoneType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    :cond_3
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Lcom/android/services/telephony/common/DualtalkCallInfo;->getIsCdmaAndGsmActive()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 839
    if-eq v5, v10, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v8

    if-eq v8, v10, :cond_4

    .line 841
    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryCall(Lcom/android/services/telephony/common/Call;)V

    .line 842
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getCdmaActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    .line 843
    .local v2, "cdmaCall":Lcom/android/services/telephony/common/Call;
    invoke-virtual {p0, v2}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryHoldCall(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 845
    .end local v2    # "cdmaCall":Lcom/android/services/telephony/common/Call;
    :cond_4
    invoke-direct {p0, v11}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryCall(Lcom/android/services/telephony/common/Call;)V

    .line 846
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryHoldCall(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 848
    :cond_5
    if-ne v5, v10, :cond_7

    .line 849
    invoke-virtual {v3}, Lcom/android/services/telephony/common/DualtalkCallInfo;->getCdmaPhoneCallState()I

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v3}, Lcom/android/services/telephony/common/DualtalkCallInfo;->getIsThreeWayCallOrigStateDialing()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 851
    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryCall(Lcom/android/services/telephony/common/Call;)V

    .line 857
    :goto_1
    invoke-virtual {p0, v11}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryHoldCall(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 855
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryCall(Lcom/android/services/telephony/common/Call;)V

    goto :goto_1

    .line 858
    :cond_7
    const/4 v8, 0x1

    if-eq v5, v8, :cond_8

    const/4 v8, 0x3

    if-ne v5, v8, :cond_1

    .line 859
    :cond_8
    invoke-direct {p0, v4, v0, v1}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCallToShow(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Lcom/android/services/telephony/common/Call;

    move-result-object v6

    .line 860
    .local v6, "secondaryCall":Lcom/android/services/telephony/common/Call;
    invoke-direct {p0, v4, v0, v1}, Lcom/android/incallui/CallCardPresenter;->getSecondaryHoldCallToShow(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Lcom/android/services/telephony/common/Call;

    move-result-object v7

    .line 861
    .local v7, "secondaryHoldCall":Lcom/android/services/telephony/common/Call;
    invoke-direct {p0, v6}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryCall(Lcom/android/services/telephony/common/Call;)V

    .line 862
    invoke-virtual {p0, v7}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryHoldCall(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0
.end method

.method private updateCallerInfoPresentation()V
    .locals 3

    .prologue
    .line 1032
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    .line 1033
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v1, v2}, Lcom/android/incallui/ContactInfoCache;->updateCallerInformation(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 1034
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 1035
    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 1036
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 1039
    .end local v0    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_0
    return-void
.end method

.method private updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V
    .locals 2
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "type"    # I
    .param p3, "isConference"    # Z

    .prologue
    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateContactEntry, type ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; entry = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 728
    if-nez p2, :cond_1

    .line 729
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 730
    invoke-direct {p0, p1, p3}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 732
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 733
    invoke-direct {p0, p3}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    goto :goto_0

    .line 736
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 737
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 738
    invoke-direct {p0, p3}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryHoldCallDisplayInfo(Z)V

    goto :goto_0

    .line 739
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 740
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 741
    invoke-direct {p0, p3}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryIncomingCallDisplayInfo(Z)V

    goto :goto_0
.end method

.method private updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V
    .locals 0
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "isPrimary"    # Z
    .param p3, "isConference"    # Z

    .prologue
    .line 426
    if-eqz p2, :cond_0

    .line 427
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 428
    invoke-direct {p0, p1, p3}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 433
    :goto_0
    return-void

    .line 430
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 431
    invoke-direct {p0, p3}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    goto :goto_0
.end method

.method private updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 20
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "isConference"    # Z

    .prologue
    .line 495
    sget-object v5, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update primary display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 497
    .local v1, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v1, :cond_0

    .line 500
    sget-object v5, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v6, "updatePrimaryDisplayInfo called but ui is null!"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :goto_0
    return-void

    .line 504
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v5}, Lcom/android/incallui/CallCardPresenter;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v8

    .line 505
    .local v8, "isGenericConf":Z
    if-eqz p1, :cond_2

    .line 506
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, "name":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/CallCardPresenter;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, "number":Ljava/lang/String;
    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .line 509
    .local v4, "nameIsNumber":Z
    :goto_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    move/from16 v7, p2

    invoke-interface/range {v1 .. v10}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZLjava/lang/String;)V

    .line 516
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameIsNumber":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v5, :cond_3

    .line 517
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getSlotId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v19

    .line 518
    .local v19, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/incallui/ext/ExtensionManager;->getCallCardExtension()Lcom/mediatek/incallui/ext/CallCardExtension;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    move-object/from16 v0, v19

    invoke-virtual {v5, v6, v0}, Lcom/mediatek/incallui/ext/CallCardExtension;->updatePrimaryDisplayInfo(Lcom/android/services/telephony/common/Call;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    goto :goto_0

    .line 508
    .end local v19    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .restart local v2    # "number":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 512
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v9, v1

    move/from16 v15, p2

    move/from16 v16, v8

    invoke-interface/range {v9 .. v18}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZLjava/lang/String;)V

    goto :goto_2

    .line 521
    :cond_3
    const-string v5, "[updatePrimaryDisplayInfo]mPrimary is null, abort calling Plugin"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSecondRingCallForDualTalk()V
    .locals 2

    .prologue
    .line 870
    const-string v1, "updateSecondRingCallForDualTalk: "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 871
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    iget-object v0, v1, Lcom/android/incallui/InCallPresenter;->mDualtalkCallInfo:Lcom/android/services/telephony/common/DualtalkCallInfo;

    .line 874
    .local v0, "dualtalkCallInfo":Lcom/android/services/telephony/common/DualtalkCallInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/DualtalkCallInfo;->getHasMultipleRingingCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 875
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getSecondIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryIncomingCall(Lcom/android/services/telephony/common/Call;)V

    .line 880
    .end local v0    # "dualtalkCallInfo":Lcom/android/services/telephony/common/DualtalkCallInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->disableSecondHoldCallView()V

    .line 881
    return-void

    .line 877
    .restart local v0    # "dualtalkCallInfo":Lcom/android/services/telephony/common/DualtalkCallInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->disableSecondIncomingCallView()V

    goto :goto_0
.end method

.method private updateSecondaryCall(Lcom/android/services/telephony/common/Call;)V
    .locals 7
    .param p1, "secondary"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 756
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v3, p1}, Lcom/android/incallui/CallCardPresenter;->areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    .line 757
    .local v0, "secondaryChanged":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSecondaryCall, secondary =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; secondaryChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 759
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    .line 761
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    if-nez v3, :cond_1

    .line 763
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 764
    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    .line 773
    :goto_1
    return-void

    .end local v0    # "secondaryChanged":Z
    :cond_0
    move v0, v1

    .line 756
    goto :goto_0

    .line 767
    .restart local v0    # "secondaryChanged":Z
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 769
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    .line 770
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getSlotId()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getCallType()I

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateSecondaryCallBannerBackground(II)V

    .line 771
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/services/telephony/common/Call;I)V

    goto :goto_1
.end method

.method private updateSecondaryDisplayInfo(Z)V
    .locals 17
    .param p1, "isConference"    # Z

    .prologue
    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 529
    .local v1, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v1, :cond_0

    .line 546
    :goto_0
    return-void

    .line 533
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v8

    .line 534
    .local v8, "isGenericConf":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_2

    .line 535
    sget-object v2, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSecondaryDisplayInfo() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, "nameForCall":Ljava/lang/String;
    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 540
    .local v4, "nameIsNumber":Z
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v6, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move/from16 v7, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_0

    .line 538
    .end local v4    # "nameIsNumber":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 544
    .end local v3    # "nameForCall":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    move/from16 v15, p1

    move/from16 v16, v8

    invoke-interface/range {v9 .. v16}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_0
.end method

.method private updateSecondaryHoldCallDisplayInfo(Z)V
    .locals 17
    .param p1, "isConference"    # Z

    .prologue
    .line 798
    const-string v2, "Update SecondaryHoldCall display "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 800
    .local v1, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v1, :cond_0

    .line 817
    :goto_0
    return-void

    .line 804
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v8

    .line 805
    .local v8, "isGenericConf":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_2

    .line 806
    sget-object v2, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSecondaryHoldCallDisplayInfo() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v3

    .line 809
    .local v3, "nameForCall":Ljava/lang/String;
    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 811
    .local v4, "nameIsNumber":Z
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v6, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move/from16 v7, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryHold(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_0

    .line 809
    .end local v4    # "nameIsNumber":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 815
    .end local v3    # "nameForCall":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    move/from16 v15, p1

    move/from16 v16, v8

    invoke-interface/range {v9 .. v16}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryHold(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_0
.end method

.method private updateSecondaryIncomingCallDisplayInfo(Z)V
    .locals 17
    .param p1, "isConference"    # Z

    .prologue
    .line 905
    const-string v2, "Update SecondaryIncomingCall display "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 906
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 907
    .local v1, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v1, :cond_0

    .line 924
    :goto_0
    return-void

    .line 911
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v8

    .line 912
    .local v8, "isGenericConf":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_2

    .line 913
    sget-object v2, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSecondaryHoldCallDisplayInfo() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v3

    .line 916
    .local v3, "nameForCall":Ljava/lang/String;
    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 918
    .local v4, "nameIsNumber":Z
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v6, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move/from16 v7, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryIncoming(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_0

    .line 916
    .end local v4    # "nameIsNumber":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 922
    .end local v3    # "nameForCall":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    move/from16 v15, p1

    move/from16 v16, v8

    invoke-interface/range {v9 .. v16}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryIncoming(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_0
.end method

.method private updateVoiceCallRecordState()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 686
    const-string v2, "[updateVoiceCallRecordState]..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "ringCall":Lcom/android/services/telephony/common/Call;
    const/4 v1, -0x1

    .line 689
    .local v1, "ringCallState":I
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    .line 693
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_2

    .line 695
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateVoiceRecordIcon(Z)V

    .line 701
    :cond_1
    :goto_0
    return-void

    .line 696
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq v1, v3, :cond_3

    if-ne v1, v4, :cond_1

    .line 699
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateVoiceRecordIcon(Z)V

    goto :goto_0
.end method


# virtual methods
.method public answerVTCallPre()V
    .locals 0

    .prologue
    .line 1143
    return-void
.end method

.method public dialVTCallSuccess()V
    .locals 0

    .prologue
    .line 1148
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    .line 93
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/ContactInfoCache;->addContactInfoUpdateListener(Lcom/android/incallui/ContactInfoCache$ContactInfoExpiredListener;)V

    .line 97
    if-eqz p2, :cond_0

    .line 98
    iput-object p2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    .line 100
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v0

    .line 103
    .local v0, "identification":Lcom/android/services/telephony/common/CallIdentification;
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {p0, v0, v3, v1}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;IZ)V

    .line 123
    .end local v0    # "identification":Lcom/android/services/telephony/common/CallIdentification;
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "identification":Lcom/android/services/telephony/common/CallIdentification;
    :cond_1
    move v1, v3

    .line 110
    goto :goto_0

    .line 119
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V

    goto :goto_1
.end method

.method public isCallWaiting()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1067
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    .line 1068
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isWaitingCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1070
    :cond_0
    return v0
.end method

.method public isUpdatingVoLteConferenceCall()Z
    .locals 3

    .prologue
    .line 1076
    const/4 v0, 0x0

    .line 1077
    .local v0, "isVoLteConf":Z
    const/4 v1, 0x0

    .line 1078
    .local v1, "ringCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 1079
    if-eqz v1, :cond_0

    .line 1080
    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isVoLteConferenceCall()Z

    move-result v0

    .line 1082
    :cond_0
    return v0
.end method

.method public isVTCall()Z
    .locals 5

    .prologue
    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, "isVT":Z
    const/4 v1, 0x0

    .line 706
    .local v1, "ringCall":Lcom/android/services/telephony/common/Call;
    const/4 v2, -0x1

    .line 707
    .local v2, "ringCallState":I
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 708
    if-eqz v1, :cond_0

    .line 709
    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v0

    .line 711
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVTCall()... mCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    return v0
.end method

.method public onAudioMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-ne v0, p1, :cond_1

    const/4 v3, 0x1

    .line 315
    .local v3, "bluetoothOn":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayLabel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    .line 318
    .end local v3    # "bluetoothOn":Z
    :cond_0
    return-void

    .line 313
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onContactInfoExpired(I)V
    .locals 4
    .param p1, "callId"    # I

    .prologue
    .line 1163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onContactInfoExpired, callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1164
    const/4 v1, -0x1

    .line 1165
    .local v1, "type":I
    const/4 v0, 0x0

    .line 1166
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 1167
    const/4 v1, 0x0

    .line 1168
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    .line 1179
    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 1180
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isIncoming()Z

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;IZ)V

    .line 1182
    :cond_1
    return-void

    .line 1169
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 1170
    const/4 v1, 0x1

    .line 1171
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    goto :goto_0

    .line 1172
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    if-ne v2, p1, :cond_4

    .line 1173
    const/4 v1, 0x2

    .line 1174
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    goto :goto_0

    .line 1175
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1176
    const/4 v1, 0x3

    .line 1177
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    goto :goto_0
.end method

.method public onDualtalkSecondaryPhotoClicked()V
    .locals 1

    .prologue
    .line 960
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->secondaryHoldPhotoClicked()V

    .line 961
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 1
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 181
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 182
    return-void
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "muted"    # Z

    .prologue
    .line 326
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 15
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChange() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 188
    .local v1, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/incallui/InCallUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateCallInfoLayout(Lcom/android/incallui/InCallPresenter$InCallState;)V

    .line 198
    :cond_1
    const/4 v11, 0x0

    .line 199
    .local v11, "primary":Lcom/android/services/telephony/common/Call;
    const/4 v13, 0x0

    .line 201
    .local v13, "secondary":Lcom/android/services/telephony/common/Call;
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 202
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v11

    .line 219
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Secondary call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v2, v11}, Lcom/android/incallui/CallCardPresenter;->areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v12, 0x1

    .line 223
    .local v12, "primaryChanged":Z
    :goto_2
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v2, v13}, Lcom/android/incallui/CallCardPresenter;->areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v14, 0x1

    .line 224
    .local v14, "secondaryChanged":Z
    :goto_3
    iput-object v13, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    .line 225
    iput-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    .line 230
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateCallerInfoPresentation()V

    .line 233
    if-eqz v12, :cond_3

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_3

    .line 235
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v5

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_8

    const/4 v2, 0x1

    :goto_4
    invoke-static {v3, v5, v2}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 237
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v3}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 243
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/services/telephony/common/Call;I)V

    .line 264
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 265
    const-string v2, "Starting the calltime timer"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_9

    .line 271
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v5, v6}, Lcom/android/incallui/CallTimer;->start(J)Z

    .line 286
    :goto_5
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_d

    .line 287
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v2

    sget v3, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-ne v2, v3, :cond_c

    const/4 v4, 0x1

    .line 289
    .local v4, "bluetoothOn":Z
    :goto_6
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayLabel()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayNumber()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getSlotId()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getCallType()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSimIndicator(II)V

    .line 295
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/ext/ExtensionManager;->getCallCardExtension()Lcom/mediatek/incallui/ext/CallCardExtension;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2, v3}, Lcom/mediatek/incallui/ext/CallCardExtension;->onStateChange(Lcom/android/services/telephony/common/Call;)V

    .line 302
    .end local v4    # "bluetoothOn":Z
    :goto_7
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateVoiceCallRecordState()V

    .line 306
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updateCallDisplayForMTK()V

    goto/16 :goto_0

    .line 203
    .end local v12    # "primaryChanged":Z
    .end local v14    # "secondaryChanged":Z
    :cond_4
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 204
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v11

    .line 208
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v13

    .line 210
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 211
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v13

    goto/16 :goto_1

    .line 214
    :cond_5
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 215
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v11

    .line 216
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v11, v2}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v13

    goto/16 :goto_1

    .line 222
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 223
    .restart local v12    # "primaryChanged":Z
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 235
    .restart local v14    # "secondaryChanged":Z
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 273
    :cond_9
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-ltz v2, :cond_a

    .line 274
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v5, v6}, Lcom/android/incallui/CallTimer;->start(J)Z

    goto/16 :goto_5

    .line 276
    :cond_a
    const-string v2, "VT Call, do not start the calltime timer"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 280
    :cond_b
    const-string v2, "Canceling the calltime timer"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v2}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 282
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    goto/16 :goto_5

    .line 287
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 297
    :cond_d
    const/4 v6, 0x1

    sget-object v7, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-interface/range {v5 .. v10}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public onSupportedAudioMode(I)V
    .locals 0
    .param p1, "mask"    # I

    .prologue
    .line 322
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 2
    .param p1, "ui"    # Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 129
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 132
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v1}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateVoiceCallRecordState()V

    .line 142
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 143
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 145
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addPhoneRecorderListener(Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;)V

    .line 149
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->addVTListener(Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;)V

    .line 151
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 60
    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 2
    .param p1, "ui"    # Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 158
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 159
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 161
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removePhoneRecorderListener(Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;)V

    .line 165
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->removeVTListener(Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;)V

    .line 168
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 170
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    .line 171
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 172
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 174
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/ContactInfoCache;->removeContactInfoUpdateListener(Lcom/android/incallui/ContactInfoCache$ContactInfoExpiredListener;)V

    .line 176
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 60
    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public onUpdateRecordState(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 680
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportPhoneVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateVoiceCallRecordState()V

    .line 683
    :cond_0
    return-void
.end method

.method public onVTStateChanged(I)V
    .locals 3
    .param p1, "msgVT"    # I

    .prologue
    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVTStateChanged()... msgVT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1127
    packed-switch p1, :pswitch_data_0

    .line 1138
    :goto_0
    return-void

    .line 1131
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallTimer;->start(J)Z

    goto :goto_0

    .line 1127
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public secondaryPhotoClicked()V
    .locals 1

    .prologue
    .line 627
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->secondaryPhotoClicked()V

    .line 629
    return-void
.end method

.method public switchCalls()V
    .locals 1

    .prologue
    .line 968
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->switchCalls()V

    .line 969
    return-void
.end method

.method public switchRingtoneForDualTalk()V
    .locals 1

    .prologue
    .line 964
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->switchRingtoneForDualTalk()V

    .line 965
    return-void
.end method

.method public updateCallDisplayForMTK()V
    .locals 6

    .prologue
    .line 929
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    .line 930
    .local v2, "fgCall":Lcom/android/services/telephony/common/Call;
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    .line 932
    .local v0, "bgCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    .line 935
    .local v3, "ringingCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    iget-object v1, v4, Lcom/android/incallui/InCallPresenter;->mDualtalkCallInfo:Lcom/android/services/telephony/common/DualtalkCallInfo;

    .line 936
    .local v1, "dualtalkCallInfo":Lcom/android/services/telephony/common/DualtalkCallInfo;
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/services/telephony/common/DualtalkCallInfo;->getHasMultipleRingingCall()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/services/telephony/common/DualtalkCallInfo;->getIsRingingWhenOutgoing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 945
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondRingCallForDualTalk()V

    .line 957
    :cond_2
    :goto_0
    return-void

    .line 946
    :cond_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_2

    .line 955
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateCallForDualtalk()V

    goto :goto_0
.end method

.method public updateCallTime()V
    .locals 6

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 331
    .local v2, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 332
    :cond_0
    if-eqz v2, :cond_1

    .line 333
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    .line 335
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v3}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 345
    :goto_0
    return-void

    .line 341
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v3}, Lcom/android/incallui/CallCardPresenter;->getCallDuration(Lcom/android/services/telephony/common/Call;)J

    move-result-wide v0

    .line 343
    .local v0, "duration":J
    const/4 v3, 0x1

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public updateSecondaryHoldCall(Lcom/android/services/telephony/common/Call;)V
    .locals 7
    .param p1, "secondaryHoldCall"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 776
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v3, p1}, Lcom/android/incallui/CallCardPresenter;->areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 777
    .local v0, "secondaryHoldChanged":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSecondaryHoldCall, secondaryHoldCall =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; secondaryHoldChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    .line 780
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    if-nez v3, :cond_1

    .line 781
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 782
    invoke-direct {p0, v2}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryHoldCallDisplayInfo(Z)V

    .line 795
    :goto_1
    return-void

    .end local v0    # "secondaryHoldChanged":Z
    :cond_0
    move v0, v2

    .line 776
    goto :goto_0

    .line 785
    .restart local v0    # "secondaryHoldChanged":Z
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    :goto_2
    invoke-static {v3, v4, v1}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 788
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryHoldCallDisplayInfo(Z)V

    .line 790
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getSlotId()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getCallType()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateSecondaryHoldCallBannerBackground(II)V

    .line 793
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/services/telephony/common/Call;I)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 785
    goto :goto_2
.end method

.method public updateSecondaryIncomingCall(Lcom/android/services/telephony/common/Call;)V
    .locals 5
    .param p1, "secondaryIncomingCall"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateSecondaryIncomingCall],  secondaryIncomingCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 886
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    .line 887
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    if-nez v1, :cond_0

    .line 888
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 889
    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryHoldCallDisplayInfo(Z)V

    .line 902
    :goto_0
    return-void

    .line 892
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v2, v0}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 895
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryIncomingCallDisplayInfo(Z)V

    .line 897
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getSlotId()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateSecondaryIncomingCallBannerBackground(II)V

    .line 900
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/services/telephony/common/Call;I)V

    goto :goto_0
.end method

.method public updateVTCallButton()V
    .locals 0

    .prologue
    .line 1158
    return-void
.end method

.method public updateVTCallFragment()V
    .locals 0

    .prologue
    .line 1153
    return-void
.end method
