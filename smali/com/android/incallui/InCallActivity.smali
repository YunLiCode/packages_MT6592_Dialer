.class public Lcom/android/incallui/InCallActivity;
.super Landroid/app/Activity;
.source "InCallActivity.java"


# static fields
.field private static ACTION_LOCKED:Ljava/lang/String; = null

.field private static ACTION_UNLOCK:Ljava/lang/String; = null

.field private static final INVALID_RES_ID:I = -0x1

.field private static NOTIFY_LOCKED:Ljava/lang/String; = null

.field private static NOTIFY_UNLOCK:Ljava/lang/String; = null

.field public static final SHOW_DIALPAD_EXTRA:Ljava/lang/String; = "InCallActivity.show_dialpad"

.field public static final VT_CALL_EXTRA:Ljava/lang/String; = "com.android.phone.extra.video"

.field private static final VT_VOICE_ANSWER_OVER:I = 0xa1


# instance fields
.field private final LOW_BATTERY_VALUE:I

.field public isFloatingWindow:Z

.field private mAnswerFragment:Lcom/android/incallui/AnswerFragment;

.field private mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

.field private mCallCardFragment:Lcom/android/incallui/CallCardFragment;

.field private mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

.field private final mDMLockReceiver:Landroid/content/BroadcastReceiver;

.field private mDdelayShowErrorDialogRequest:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialpadFragment:Lcom/android/incallui/DialpadFragment;

.field private mErrorDialogResID:I

.field private mHandler:Landroid/os/Handler;

.field private mInVoiceAnswerVideoCall:Z

.field private mIsForegroundActivity:Z

.field private mNavigationBarHeight:I

.field private mPendingPostCharWaitDialogCallId:I

.field private mPendingPostCharWaitDialogChars:Ljava/lang/String;

.field private mPowerReceiver:Landroid/content/BroadcastReceiver;

.field private mShowDialpadRequested:Z

.field private mStatusBarHeight:I

.field private mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

.field private mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

.field private mVTVoiceAnswerTimer:Ljava/util/Timer;

.field private mVoLteConfManagerFragment:Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;

.field private mhasPendingWaitDialog:Z

.field private oldLowPowerRemindTime:J

.field private showDialog_Level10:Z

.field private showDialog_Level15:Z

.field private showDialog_Level5:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1253
    const-string v0, "com.mediatek.dm.LAWMO_LOCK"

    sput-object v0, Lcom/android/incallui/InCallActivity;->ACTION_LOCKED:Ljava/lang/String;

    .line 1254
    const-string v0, "com.mediatek.dm.LAWMO_UNLOCK"

    sput-object v0, Lcom/android/incallui/InCallActivity;->ACTION_UNLOCK:Ljava/lang/String;

    .line 1258
    const-string v0, "com.mediatek.ppl.NOTIFY_LOCK"

    sput-object v0, Lcom/android/incallui/InCallActivity;->NOTIFY_LOCKED:Ljava/lang/String;

    .line 1259
    const-string v0, "com.mediatek.ppl.NOTIFY_UNLOCK"

    sput-object v0, Lcom/android/incallui/InCallActivity;->NOTIFY_UNLOCK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mDdelayShowErrorDialogRequest:Z

    .line 114
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mhasPendingWaitDialog:Z

    .line 120
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->isFloatingWindow:Z

    .line 808
    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    .line 1121
    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    .line 1169
    new-instance v0, Lcom/android/incallui/InCallActivity$15;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$15;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    .line 1262
    new-instance v0, Lcom/android/incallui/InCallActivity$16;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$16;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDMLockReceiver:Landroid/content/BroadcastReceiver;

    .line 1324
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/incallui/InCallActivity;->LOW_BATTERY_VALUE:I

    .line 1325
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/InCallActivity;->oldLowPowerRemindTime:J

    .line 1326
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->showDialog_Level5:Z

    .line 1327
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->showDialog_Level10:Z

    .line 1328
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->showDialog_Level15:Z

    .line 1329
    new-instance v0, Lcom/android/incallui/InCallActivity$17;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$17;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->onDialogDismissed()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->showLowPowerDialog()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/incallui/InCallActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/incallui/InCallActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->showDialog_Level10:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/incallui/InCallActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->showDialog_Level10:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/incallui/InCallActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->showDialog_Level15:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/incallui/InCallActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->showDialog_Level15:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/incallui/InCallActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mInVoiceAnswerVideoCall:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/InCallActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/incallui/InCallActivity;->NOTIFY_LOCKED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/incallui/InCallActivity;->NOTIFY_UNLOCK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/incallui/InCallActivity;->ACTION_LOCKED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/incallui/InCallActivity;->ACTION_UNLOCK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/InCallActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->showDialog_Level5:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/incallui/InCallActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->showDialog_Level5:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/incallui/InCallActivity;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->playLowBatterySound(Landroid/content/Context;)V

    return-void
.end method

.method private getResIdForDisconnectCause(Lcom/android/services/telephony/common/Call$DisconnectCause;)I
    .locals 2
    .param p1, "cause"    # Lcom/android/services/telephony/common/Call$DisconnectCause;

    .prologue
    .line 780
    const/4 v0, -0x1

    .line 782
    .local v0, "resId":I
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->CALL_BARRED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p1, v1, :cond_1

    .line 783
    const v0, 0x7f0a0162

    .line 794
    :cond_0
    :goto_0
    return v0

    .line 784
    :cond_1
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->FDN_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p1, v1, :cond_2

    .line 785
    const v0, 0x7f0a0161

    goto :goto_0

    .line 786
    :cond_2
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p1, v1, :cond_3

    .line 787
    const v0, 0x7f0a0163

    goto :goto_0

    .line 788
    :cond_3
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p1, v1, :cond_4

    .line 789
    const v0, 0x7f0a0164

    goto :goto_0

    .line 790
    :cond_4
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p1, v1, :cond_0

    .line 791
    const v0, 0x7f0a0165

    goto :goto_0
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDialerKeyDown: keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0, p2}, Lcom/android/incallui/DialpadFragment;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 539
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasPendingErrorDialog()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeInCall()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 585
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-nez v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d00fe

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    .line 588
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-nez v0, :cond_1

    .line 592
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d00fc

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-nez v0, :cond_2

    .line 597
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d00ff

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-nez v0, :cond_3

    .line 602
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d00fd

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    .line 604
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 607
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    if-nez v0, :cond_4

    .line 608
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d0100

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    .line 610
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 614
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initializeInCallMTK()V

    .line 615
    return-void
.end method

.method private initializeInCallMTK()V
    .locals 3

    .prologue
    .line 813
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVT()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    if-nez v1, :cond_0

    .line 814
    const-string v1, "[initializeInCallMTK]on VT call, init the VTCallFragment"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d00f9

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/vt/VTCallFragment;

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    .line 819
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/incallui/InCallActivity;->ACTION_LOCKED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 820
    .local v0, "lockFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/incallui/InCallActivity;->ACTION_UNLOCK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 822
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportPrivacyProtect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 823
    const-string v1, "register ppl lock message"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 824
    sget-object v1, Lcom/android/incallui/InCallActivity;->NOTIFY_LOCKED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 825
    sget-object v1, Lcom/android/incallui/InCallActivity;->NOTIFY_UNLOCK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDMLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 831
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVoLte()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mVoLteConfManagerFragment:Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;

    if-nez v1, :cond_2

    .line 832
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d0101

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mVoLteConfManagerFragment:Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;

    .line 834
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mVoLteConfManagerFragment:Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;

    invoke-virtual {v1}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 837
    :cond_2
    return-void
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 548
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    const-string v2, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    const-string v2, "InCallActivity.show_dialpad"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 562
    .local v1, "showDialpad":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->relaunchedFromDialer(Z)V

    .line 569
    .end local v1    # "showDialpad":Z
    :cond_0
    return-void
.end method

.method private onDialogDismissed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 799
    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    .line 801
    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 802
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    .line 803
    return-void
.end method

.method private playLowBatterySound(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1393
    const-string v2, "chaoyongan"

    const-string v3, "playing low battery sound..."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1395
    .local v1, "soundUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 1396
    invoke-static {p1, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 1397
    .local v0, "ring":Landroid/media/Ringtone;
    if-eqz v0, :cond_0

    .line 1398
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1399
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 1406
    .end local v0    # "ring":Landroid/media/Ringtone;
    :cond_0
    return-void
.end method

.method private relaunchedFromDialer(Z)V
    .locals 4
    .param p1, "showDialpad"    # Z

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    .line 574
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    if-eqz v1, :cond_0

    .line 577
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 578
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 579
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/CallCommandClient;->hold(IZ)V

    .line 582
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_0
    return-void
.end method

.method private setOrientation()V
    .locals 0

    .prologue
    .line 999
    return-void
.end method

.method private setWindowFlag()V
    .locals 4

    .prologue
    .line 1004
    const v1, 0x288000

    .line 1008
    .local v1, "flags":I
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 1009
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/services/telephony/common/Call$State;->isConnected(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1017
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isDMLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1018
    const/high16 v3, 0x400000

    or-int/2addr v1, v3

    .line 1019
    const-string v3, "set window FLAG_DISMISS_KEYGUARD flag "

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1024
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1025
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1026
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1027
    return-void
.end method

.method private showErrorDialog(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 747
    .local v0, "msg":Ljava/lang/CharSequence;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show Dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 751
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0169

    new-instance v3, Lcom/android/incallui/InCallActivity$3;

    invoke-direct {v3, p0}, Lcom/android/incallui/InCallActivity$3;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/InCallActivity$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$2;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/InCallActivity$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$1;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 775
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 776
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 777
    return-void
.end method

.method private showLowPowerDialog()V
    .locals 3

    .prologue
    .line 1367
    const-string v0, "chaoyongan"

    const-string v1, "Show Dialog..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 1369
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0169

    new-instance v2, Lcom/android/incallui/InCallActivity$20;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$20;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/InCallActivity$19;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$19;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/InCallActivity$18;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$18;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1388
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1389
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1390
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1391
    return-void
.end method

.method private showReCallDialog(ILjava/lang/String;I)V
    .locals 7
    .param p1, "resid"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "slot"    # I

    .prologue
    .line 1059
    const-string v4, "showReCallDialog... "

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 1062
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1063
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1065
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1067
    .local v3, "msg":Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/incallui/InCallActivity$8;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/incallui/InCallActivity$8;-><init>(Lcom/android/incallui/InCallActivity;Ljava/lang/String;I)V

    .line 1081
    .local v1, "clickListener1":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/incallui/InCallActivity$9;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$9;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 1094
    .local v2, "clickListener2":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/incallui/InCallActivity$10;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$10;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 1101
    .local v0, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1105
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 1106
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/incallui/InCallActivity$11;

    invoke-direct {v5, p0}, Lcom/android/incallui/InCallActivity$11;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1113
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1114
    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 618
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 620
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 621
    return-void
.end method

.method private updateInCallUI()V
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-eqz v0, :cond_0

    .line 1242
    const-string v0, "[onResume] call updateSimIndicator"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->updateCallCard()V

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v0, :cond_1

    .line 1247
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->updateVTCallButton()V

    .line 1249
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateInCallActivity()V

    .line 1250
    return-void
.end method


# virtual methods
.method public dismissKeyguard(Z)V
    .locals 2
    .param p1, "dismiss"    # Z

    .prologue
    const/high16 v1, 0x400000

    .line 632
    if-eqz p1, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 637
    :goto_0
    return-void

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public dismissPendingDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 706
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 708
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 713
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->dismissPendingDialogues()V

    .line 720
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v0, :cond_2

    .line 721
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->dismissPopupMenu()V

    .line 726
    :cond_2
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVoLte()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 727
    invoke-static {}, Lcom/mediatek/incallui/volte/VoLteConfUiController;->getInstance()Lcom/mediatek/incallui/volte/VoLteConfUiController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/volte/VoLteConfUiController;->dismissAddConferenceMemberDialog()V

    .line 730
    :cond_3
    return-void
.end method

.method public dismissPendingDialogsAndHideConferenceFragment()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerFragment;->isFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/ConferenceManagerFragment;->setVisible(Z)V

    .line 738
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 740
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 682
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public displayDialpad(Z)V
    .locals 3
    .param p1, "showDialpad"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 640
    if-eqz p1, :cond_1

    .line 641
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0, v1}, Lcom/android/incallui/DialpadFragment;->setVisible(Z)V

    .line 642
    invoke-static {p0}, Lcom/mediatek/incallui/InCallUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isFloatingWindow:Z

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardFragment;->setVisible(Z)V

    .line 652
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/ProximitySensor;->onDialpadVisible(Z)V

    .line 653
    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCardFragment;->setVisible(Z)V

    goto :goto_0

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0, v2}, Lcom/android/incallui/DialpadFragment;->setVisible(Z)V

    .line 649
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardFragment;->setVisible(Z)V

    goto :goto_0
.end method

.method public displayManageConferencePanel(Z)V
    .locals 2
    .param p1, "showPanel"    # Z

    .prologue
    .line 660
    if-eqz p1, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ConferenceManagerFragment;->setVisible(Z)V

    .line 663
    :cond_0
    return-void
.end method

.method public displayVoLteManageConfPanel(Z)V
    .locals 2
    .param p1, "showPanel"    # Z

    .prologue
    .line 1308
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVoLteConfManagerFragment:Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVoLteConfManagerFragment:Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->setVisible(Z)V

    .line 1311
    :cond_0
    return-void
.end method

.method enableHomeKeyDispatched(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableHomeKeyDispatched, enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1195
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1196
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 1197
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1201
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1202
    return-void

    .line 1199
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish().  Dialog showing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->dismissPopupMenu()V

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hasPendingErrorDialog()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->hasPendingDialogs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    const-string v0, "truly finish~~"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->dismissPendingDialogues()V

    .line 369
    return-void

    .line 354
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInVoiceAnswerVideoCall()Z
    .locals 1

    .prologue
    .line 1124
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mInVoiceAnswerVideoCall:Z

    return v0
.end method

.method public handleVTMenuClick(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v0, p1}, Lcom/mediatek/incallui/vt/VTCallFragment;->handleVTMenuClick(Landroid/view/MenuItem;)V

    .line 903
    :cond_0
    return-void
.end method

.method public hideDialpadForDisconnect()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(Z)V

    .line 629
    return-void
.end method

.method public isDialpadVisible()Z
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isFloatingWindow()Z
    .locals 1

    .prologue
    .line 1319
    const/4 v0, 0x0

    return v0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method public maybeShowErrorDialogOnDisconnect(Lcom/android/services/telephony/common/Call$DisconnectCause;)V
    .locals 2
    .param p1, "cause"    # Lcom/android/services/telephony/common/Call$DisconnectCause;

    .prologue
    .line 686
    const-string v1, "maybeShowErrorDialogOnDisconnect"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 689
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->getResIdForDisconnectCause(Lcom/android/services/telephony/common/Call$DisconnectCause;)I

    move-result v0

    .line 690
    .local v0, "resId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 694
    const-string v1, "maybeShowErrorDialogOnDisconnect, activity not resumed"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mDdelayShowErrorDialogRequest:Z

    .line 696
    iput v0, p0, Lcom/android/incallui/InCallActivity;->mErrorDialogResID:I

    .line 703
    .end local v0    # "resId":I
    :cond_0
    :goto_0
    return-void

    .line 700
    .restart local v0    # "resId":I
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->showErrorDialog(I)V

    goto :goto_0
.end method

.method public maybeShowErrorDialogOnDisconnectForVT(Lcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;I)Z
    .locals 5
    .param p1, "cause"    # Lcom/android/services/telephony/common/Call$DisconnectCause;
    .param p2, "isIncoming"    # Z
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "slot"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    .line 1031
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeShowErrorDialogOnDisconnectForVT()... cause / isIncoming / number / slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1035
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1036
    invoke-static {p1}, Lcom/mediatek/incallui/vt/VTUtils;->getResIdForVTErrorDialog(Lcom/android/services/telephony/common/Call$DisconnectCause;)I

    move-result v0

    .line 1037
    .local v0, "resId":I
    if-eq v0, v4, :cond_1

    .line 1038
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->showErrorDialog(I)V

    .line 1055
    .end local v0    # "resId":I
    :cond_0
    :goto_0
    return v1

    .line 1043
    :cond_1
    if-nez p2, :cond_2

    .line 1044
    invoke-static {p1}, Lcom/mediatek/incallui/vt/VTUtils;->getResIdForVTReCallDialog(Lcom/android/services/telephony/common/Call$DisconnectCause;)I

    move-result v0

    .line 1045
    .restart local v0    # "resId":I
    if-eq v0, v4, :cond_2

    .line 1047
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTAutoDropBack:Z

    if-nez v2, :cond_0

    .line 1049
    invoke-direct {p0, v0, p3, p4}, Lcom/android/incallui/InCallActivity;->showReCallDialog(ILjava/lang/String;I)V

    goto :goto_0

    .line 1055
    .end local v0    # "resId":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    const-string v1, "onBackPressed()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    const-string v1, "BACK key while incoming: ignored~~"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(Z)V

    .line 421
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->showManageConferenceCallButton()V

    goto :goto_0

    .line 429
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/ConferenceManagerFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 430
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v1, v2}, Lcom/android/incallui/ConferenceManagerFragment;->setVisible(Z)V

    goto :goto_0

    .line 435
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 436
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_4

    .line 437
    const-string v1, "Consume Back press for an inconing call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCallCardLayoutChange(I)V
    .locals 1
    .param p1, "callCardBottom"    # I

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v0, p1}, Lcom/mediatek/incallui/vt/VTCallFragment;->amendVtLayout(I)V

    .line 1209
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 544
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/ProximitySensor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 545
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate()...  this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/phone/SIMInfoWrapper;->init(Landroid/content/Context;)V

    .line 134
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->setOrientation()V

    .line 149
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->setWindowFlag()V

    .line 152
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->requestWindowFeature(I)Z

    .line 158
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/incallui/ext/ExtensionManager;->initPlugin(Landroid/content/Context;)V

    .line 159
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInCallUIExtension()Lcom/mediatek/incallui/ext/InCallUIExtension;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v1, p1, p0, v2}, Lcom/mediatek/incallui/ext/InCallUIExtension;->onCreate(Landroid/os/Bundle;Landroid/app/Activity;Lcom/mediatek/incallui/ext/IInCallScreen;)V

    .line 163
    const v1, 0x7f04002e

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->setContentView(I)V

    .line 165
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initializeInCall()V

    .line 171
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    .line 184
    const-string v1, "onCreate(): exit"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 871
    const-string v1, "onCreateOptionsMenu()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 872
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 874
    .local v0, "inflate":Landroid/view/MenuInflater;
    const v1, 0x7f110008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 875
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/InCallActivity;)V

    .line 300
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 303
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->release()V

    .line 307
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportPrivacyProtect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/incallui/InCallUtils;->setprivacyProtectEnabled(Z)V

    .line 312
    :cond_0
    const-string v0, "chaoyongan"

    const-string v1, "unregisterReceiver mPowerReceiver"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 316
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDMLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 318
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInCallUIExtension()Lcom/mediatek/incallui/ext/InCallUIExtension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/incallui/ext/InCallUIExtension;->onDestroy(Landroid/app/Activity;)V

    .line 325
    return-void
.end method

.method public onFinishVtVideoLayout(III)V
    .locals 1
    .param p1, "marginLeft"    # I
    .param p2, "marginBottom"    # I
    .param p3, "height"    # I

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/incallui/CallButtonFragment;->amendCallButtonLayout(III)V

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onFinishLayoutAmend()V

    .line 1218
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 459
    sparse-switch p1, :sswitch_data_0

    .line 515
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallActivity;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 519
    :cond_0
    :goto_0
    :sswitch_1
    return v4

    .line 464
    :sswitch_2
    const-string v3, "ignore KEYCODE_HOME ~~"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :sswitch_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->handleCallKey()Z

    move-result v1

    .line 470
    .local v1, "handled":Z
    if-nez v1, :cond_0

    .line 471
    const-string v3, "InCallActivity should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    .end local v1    # "handled":Z
    :sswitch_4
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/incallui/CallCommandClient;->mute(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 502
    :sswitch_5
    const-string v3, "----------- InCallActivity View dump --------------"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 505
    .local v2, "w":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 506
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->debug()V

    goto :goto_0

    .line 519
    .end local v0    # "decorView":Landroid/view/View;
    .end local v2    # "w":Landroid/view/Window;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 459
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4c -> :sswitch_5
        0x5b -> :sswitch_4
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 448
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1, p2}, Lcom/android/incallui/DialpadFragment;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v0

    .line 450
    :cond_1
    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 454
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/phone/SIMInfoWrapper;->init(Landroid/content/Context;)V

    .line 381
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor;->lightOnScreenForSmartBook()V

    .line 392
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallActivity;->setIntent(Landroid/content/Intent;)V

    .line 398
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    .line 399
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 892
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    .line 893
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 895
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallButtonFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    const-string v0, "onPause()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 260
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    .line 262
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/DialpadFragment;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 264
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 275
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor;->screenOffForSmartBook()V

    .line 277
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 880
    const-string v0, "onPrepareOptionsMenu()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 881
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mediatek/incallui/InCallUtils;->setAllMenuVisible(Landroid/view/Menu;Z)V

    .line 882
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    .line 883
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerFragment;->setupIncomingMenuItems(Landroid/view/Menu;)V

    .line 887
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallButtonFragment;->setupMenuItems(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    const-string v1, "onResume()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 208
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 209
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    .line 210
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    .line 213
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->getShowDialpadButton()Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    .line 214
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->hideExtraRow()V

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1, v3}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(Z)V

    .line 224
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    .line 227
    :cond_2
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mDdelayShowErrorDialogRequest:Z

    if-eqz v1, :cond_4

    .line 228
    iget v1, p0, Lcom/android/incallui/InCallActivity;->mErrorDialogResID:I

    if-eq v1, v4, :cond_3

    .line 229
    iget v1, p0, Lcom/android/incallui/InCallActivity;->mErrorDialogResID:I

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->showErrorDialog(I)V

    .line 230
    :cond_3
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mDdelayShowErrorDialogRequest:Z

    .line 236
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->updateInCallUI()V

    .line 239
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mhasPendingWaitDialog:Z

    if-eqz v1, :cond_5

    .line 240
    new-instance v0, Lcom/android/incallui/PostCharDialogFragment;

    invoke-direct {v0}, Lcom/android/incallui/PostCharDialogFragment;-><init>()V

    .line 241
    .local v0, "fragment":Lcom/android/incallui/PostCharDialogFragment;
    iget v1, p0, Lcom/android/incallui/InCallActivity;->mPendingPostCharWaitDialogCallId:I

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mPendingPostCharWaitDialogChars:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/PostCharDialogFragment;->setParameters(ILjava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v3, "postCharWait"

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/PostCharDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 243
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mhasPendingWaitDialog:Z

    .line 244
    iput v4, p0, Lcom/android/incallui/InCallActivity;->mPendingPostCharWaitDialogCallId:I

    .line 245
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mPendingPostCharWaitDialogChars:Ljava/lang/String;

    .line 249
    .end local v0    # "fragment":Lcom/android/incallui/PostCharDialogFragment;
    :cond_5
    invoke-static {}, Lcom/mediatek/incallui/NotifySTKDisconnect;->getInstance()Lcom/mediatek/incallui/NotifySTKDisconnect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/NotifySTKDisconnect;->clearNotifyStkFlag()V

    .line 251
    return-void

    :cond_6
    move v1, v2

    .line 213
    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 195
    const-string v0, "onStart()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 199
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/InCallActivity;)V

    .line 200
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 281
    const-string v0, "onStop()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 284
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->setVTScreenMode(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V

    .line 290
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/NotifySTKDisconnect;->getInstance()Lcom/mediatek/incallui/NotifySTKDisconnect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/NotifySTKDisconnect;->notifyStkCallDisconnected(Landroid/content/Context;)V

    .line 292
    return-void
.end method

.method public onVTSwapVideoClick()V
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTSwapVideoClick()V

    .line 909
    :cond_0
    return-void
.end method

.method public setInVoiceAnswerVideoCall(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInVoiceAnswerVideoCall() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    if-eqz p1, :cond_1

    .line 1130
    iput-boolean v4, p0, Lcom/android/incallui/InCallActivity;->mInVoiceAnswerVideoCall:Z

    .line 1131
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    .line 1132
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 1133
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1134
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/incallui/InCallActivity$12;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$12;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1140
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/incallui/InCallActivity$13;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$13;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1147
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1149
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    .line 1150
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/incallui/InCallActivity$14;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$14;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 1156
    :cond_1
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mInVoiceAnswerVideoCall:Z

    .line 1157
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/CallCommandClient;->setVTVoiceAnswerRelated(ZLjava/lang/String;)V

    .line 1158
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 1159
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1160
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    .line 1162
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1164
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method public setVTScreenMode(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    .prologue
    .line 1221
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    if-nez v0, :cond_1

    .line 1222
    :cond_0
    const-string v0, "setVTScreenMode()... VT is not support, or not in VTCall, just return."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1232
    :goto_0
    return-void

    .line 1225
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVTScreenMode()... mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1226
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    if-ne v0, p1, :cond_3

    .line 1227
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardFragment;->setPhotoVisible(Z)V

    .line 1231
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v0, p1}, Lcom/mediatek/incallui/vt/VTCallFragment;->setVTScreenMode(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V

    goto :goto_0

    .line 1228
    :cond_3
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_OPEN:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    if-ne v0, p1, :cond_2

    .line 1229
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardFragment;->setPhotoVisible(Z)V

    goto :goto_1
.end method

.method public showPostCharWaitDialog(ILjava/lang/String;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    new-instance v0, Lcom/android/incallui/PostCharDialogFragment;

    invoke-direct {v0}, Lcom/android/incallui/PostCharDialogFragment;-><init>()V

    .line 668
    .local v0, "fragment":Lcom/android/incallui/PostCharDialogFragment;
    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/PostCharDialogFragment;->setParameters(ILjava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "postCharWait"

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/PostCharDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 675
    .end local v0    # "fragment":Lcom/android/incallui/PostCharDialogFragment;
    :goto_0
    return-void

    .line 671
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mhasPendingWaitDialog:Z

    .line 672
    iput p1, p0, Lcom/android/incallui/InCallActivity;->mPendingPostCharWaitDialogCallId:I

    .line 673
    iput-object p2, p0, Lcom/android/incallui/InCallActivity;->mPendingPostCharWaitDialogChars:Ljava/lang/String;

    goto :goto_0
.end method

.method public showStorageFullDialog(IZ)V
    .locals 9
    .param p1, "resid"    # I
    .param p2, "isSDCardExist"    # Z

    .prologue
    .line 933
    const-string v6, "showStorageDialog... "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 934
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 936
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 939
    .local v4, "msg":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 940
    .local v5, "oKClickListener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v1, 0x0

    .line 941
    .local v1, "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/incallui/InCallActivity$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$5;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 946
    .local v2, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    if-eqz p2, :cond_0

    .line 947
    new-instance v5, Lcom/android/incallui/InCallActivity$6;

    .end local v5    # "oKClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v5, p0}, Lcom/android/incallui/InCallActivity$6;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 960
    .restart local v5    # "oKClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    new-instance v1, Lcom/android/incallui/InCallActivity$7;

    .end local v1    # "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$7;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 969
    .restart local v1    # "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a02eb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 971
    .local v0, "cancelButtonText":Ljava/lang/CharSequence;
    :goto_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1080027

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0078

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 976
    .local v3, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_1

    .line 977
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a003f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 981
    :cond_1
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 982
    iget-object v6, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 983
    iget-object v6, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 984
    return-void

    .line 969
    .end local v0    # "cancelButtonText":Ljava/lang/CharSequence;
    .end local v3    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0169

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public showSuppMessageDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 912
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 913
    const-string v0, "- DISMISSING mSuppServiceFailureDialog."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 915
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 916
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 919
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0169

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 921
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/incallui/InCallActivity$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$4;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 927
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 928
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 929
    return-void
.end method

.method public updateInCallActivity()V
    .locals 2

    .prologue
    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInCallActivity()... call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTOutgoing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 849
    :cond_0
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_OPEN:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->setVTScreenMode(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V

    .line 862
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-eqz v0, :cond_2

    .line 864
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->updateIncomingCallMenuButton()V

    .line 867
    :cond_2
    return-void

    .line 850
    :cond_3
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTActive()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->existNonVTCall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 851
    const-string v0, "[updateInCallActivity]Existing non-VT Call while VT not active, should close VT_SCREEN"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->setVTScreenMode(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V

    goto :goto_0

    .line 853
    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_5

    .line 854
    const-string v0, "[updateInCallActivity]InCallState.INCOMING, should close VT_SCREEN"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 855
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->setVTScreenMode(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V

    goto :goto_0

    .line 857
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    if-eqz v0, :cond_1

    .line 858
    const-string v0, "keep current VT Screen Mode."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getVTScreenMode()Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->setVTScreenMode(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V

    goto :goto_0
.end method
