.class public Lcom/android/dialer/dialpad/DialpadFragment;
.super Landroid/app/Fragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/dialer/dialpad/DialpadKeyButton$OnPressedListener;
.implements Lcom/mediatek/contacts/ext/IDialpadFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/dialpad/DialpadFragment$HQSimStateReceive;,
        Lcom/android/dialer/dialpad/DialpadFragment$HQAirplaneModeChangedReceiver;,
        Lcom/android/dialer/dialpad/DialpadFragment$CallLogContentObserver;,
        Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment;,
        Lcom/android/dialer/dialpad/DialpadFragment$FragmentState;,
        Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;,
        Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;,
        Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;,
        Lcom/android/dialer/dialpad/DialpadFragment$HoverIgnoringLinearLayout;,
        Lcom/android/dialer/dialpad/DialpadFragment$DialpadSlidingLinearLayout;,
        Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadFragmentStartedListener;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.mediatek.phone.OutgoingCallReceiver"

.field private static final ADD_CALL_MODE_KEY:Ljava/lang/String; = "add_call_mode"

.field private static final DBG:Z = true

.field private static final DEBUG:Z = false

.field private static final DIALPAD_SLIDE_FRACTION:F = 0.67f

.field private static final DIAL_TONE_STREAM_TYPE:I = 0x8

.field private static final EMPTY_NUMBER:Ljava/lang/String; = ""

.field private static final EXTRA_SEND_EMPTY_FLASH:Ljava/lang/String; = "com.android.phone.extra.SEND_EMPTY_FLASH"

.field private static final MAX_DIGITS_NUMBER_LENGTH:I = 0xff

.field private static final MSG_GET_TEXT_WATCHER:I = 0x1

.field private static final PAUSE:C = ','

.field private static final PREF_DIGITS_FILLED_BY_INTENT:Ljava/lang/String; = "pref_digits_filled_by_intent"

.field private static final TAG:Ljava/lang/String;

.field private static final TONE_LENGTH_INFINITE:I = -0x1

.field private static final TONE_LENGTH_MS:I = 0x64

.field private static final TONE_RELATIVE_VOLUME:I = 0x50

.field private static final WAIT:C = ';'

.field private static mSpeedDial:Lcom/mediatek/dialer/dialpad/SpeedDial;


# instance fields
.field private AirplaneModeChangedReceiver:Lcom/android/dialer/dialpad/DialpadFragment$HQAirplaneModeChangedReceiver;

.field public ISTABLET_LAND:Z

.field private SimStateReceive:Lcom/android/dialer/dialpad/DialpadFragment$HQSimStateReceive;

.field private fragmentView:Landroid/view/View;

.field private mAddToContactListButton:Landroid/widget/Button;

.field private mAdditionalButtonsRow:Landroid/view/View;

.field private mAdjustTranslationForAnimation:Z

.field private mAutoScaleTextSizeWatcher:Lcom/mediatek/dialer/dialpad/AutoScaleTextSizeWatcher;

.field private final mCallLog:Lcom/android/phone/common/CallLogAsync;

.field private final mCallLogObserver:Landroid/database/ContentObserver;

.field private mCallOptionHandler:Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;

.field private mClearDigitsOnStop:Z

.field private mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/view/View;

.field private mDialButtonContainer:Landroid/view/View;

.field private mDialpad:Landroid/view/View;

.field private mDialpadButton:Landroid/widget/ImageView;

.field private mDialpadChooser:Landroid/widget/ListView;

.field private mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

.field private mDialpadDivider:Landroid/view/View;

.field private mDialpadPressCount:I

.field private mDialpadQueryListener:Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;

.field private mDigits:Landroid/widget/EditText;

.field private mDigitsContainer:Landroid/view/View;

.field private mDigitsFilledByIntent:Z

.field private mDivider:Landroid/view/View;

.field private mEccDialButton:Landroid/view/View;

.field private mFirstLaunch:Z

.field private mFragmentState:Lcom/android/dialer/dialpad/DialpadFragment$FragmentState;

.field private mHandler:Landroid/os/Handler;

.field private final mHaptic:Lcom/android/phone/common/HapticFeedback;

.field private mIsNeedClearDialpad:Z

.field private mLastNumber:Ljava/lang/String;

.field private mLastNumberDialed:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mNeedCheckSetting:Z

.field private mOverflowMenuButton:Landroid/view/View;

.field private mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPressedDialpadKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mProhibitedPhoneNumberRegexp:Ljava/lang/String;

.field private mSendMessageButton:Landroid/view/View;

.field private mSimInserted:Z

.field private mSpacer:Landroid/view/View;

.field private mStartedFromNewIntent:Z

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mToneGeneratorLock:Ljava/lang/Object;

.field private mVideoDialButton:Landroid/view/View;

.field private mWasEmptyBeforeTextChange:Z

.field private popup:Landroid/widget/PopupMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    const-class v0, Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 165
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSimInserted:Z

    .line 262
    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    .line 264
    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    .line 288
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    .line 295
    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->ISTABLET_LAND:Z

    .line 301
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    .line 325
    new-instance v0, Lcom/android/phone/common/CallLogAsync;

    invoke-direct {v0}, Lcom/android/phone/common/CallLogAsync;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/common/CallLogAsync;

    .line 326
    const-string v0, ""

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 332
    new-instance v0, Lcom/android/phone/common/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/common/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    .line 354
    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/dialpad/DialpadFragment$1;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 425
    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    .line 426
    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFirstLaunch:Z

    .line 427
    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAdjustTranslationForAnimation:Z

    .line 446
    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mNeedCheckSetting:Z

    .line 2407
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment$FragmentState;->UNKNOWN:Lcom/android/dialer/dialpad/DialpadFragment$FragmentState;

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentState:Lcom/android/dialer/dialpad/DialpadFragment$FragmentState;

    .line 2820
    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$5;

    invoke-direct {v0, p0}, Lcom/android/dialer/dialpad/DialpadFragment$5;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    .line 2895
    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsNeedClearDialpad:Z

    .line 2956
    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$CallLogContentObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/dialpad/DialpadFragment$CallLogContentObserver;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    .line 3007
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/dialpad/DialpadFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDialpadChooserVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/dialer/dialpad/DialpadFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    return-void
.end method

.method static synthetic access$1100()Lcom/mediatek/dialer/dialpad/SpeedDial;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDial:Lcom/mediatek/dialer/dialpad/SpeedDial;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->queryLastOutgoingCall()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialandEccButton()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEccDialButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dialer/dialpad/DialpadFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/dialer/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/dialer/dialpad/DialpadFragment;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;
    .param p1, "x1"    # Landroid/text/TextWatcher;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mTextWatcher:Landroid/text/TextWatcher;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dialer/dialpad/DialpadFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAdjustTranslationForAnimation:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/dialer/dialpad/DialpadFragment;)Lcom/android/phone/common/HapticFeedback;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/dialer/dialpad/DialpadFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/dialer/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    return-object p1
.end method

.method static canAddDigit(Ljava/lang/CharSequence;IIC)Z
    .locals 3
    .param p0, "digits"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "newDigit"    # C
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v2, 0x3b

    const/4 v0, 0x0

    .line 2297
    if-eq p3, v2, :cond_1

    const/16 v1, 0x2c

    if-eq p3, v1, :cond_1

    .line 2298
    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "Should not be called for anything other than PAUSE & WAIT"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    :cond_0
    :goto_0
    return v0

    .line 2303
    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-lt p2, p1, :cond_0

    .line 2308
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 2311
    if-eqz p1, :cond_0

    .line 2313
    if-ne p3, v2, :cond_2

    .line 2315
    add-int/lit8 v1, p1, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 2318
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, p2, :cond_2

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 2321
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkDialButton()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2907
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2908
    .local v1, "mContext":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2909
    iput-boolean v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSimInserted:Z

    .line 2910
    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "yaoyongwei1, mSimInserted ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSimInserted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    :goto_0
    return-void

    .line 2915
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSimInserted:Z

    .line 2916
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimInserted(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 2917
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSimInserted:Z

    .line 2919
    :cond_2
    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "yaoyongwei, mSimInserted ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSimInserted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2920
    :catch_0
    move-exception v0

    .line 2921
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private configureScreenFromIntent(Landroid/app/Activity;)V
    .locals 7
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    .line 822
    instance-of v5, p1, Lcom/android/dialer/DialtactsActivity;

    if-nez v5, :cond_0

    .line 823
    invoke-virtual {p0, v6}, Lcom/android/dialer/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    .line 867
    :goto_0
    return-void

    .line 828
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 830
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v5

    if-nez v5, :cond_1

    .line 835
    sget-object v5, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v6, "Screen configuration is requested before onCreateView() is called. Ignored"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 840
    :cond_1
    const/4 v4, 0x0

    .line 844
    .local v4, "needToShowDialpadChooser":Z
    invoke-static {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->isAddCallMode(Landroid/content/Intent;)Z

    move-result v3

    .line 845
    .local v3, "isAddCallMode":Z
    if-nez v3, :cond_4

    .line 850
    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    move-result v1

    .line 851
    .local v1, "digitsFilled":Z
    iget-boolean v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    if-eqz v5, :cond_2

    if-nez v1, :cond_4

    .line 853
    :cond_2
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.DIAL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 858
    :cond_3
    invoke-static {}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 859
    const/4 v4, 0x1

    .line 865
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "digitsFilled":Z
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    .line 866
    invoke-virtual {p0, v6}, Lcom/android/dialer/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    goto :goto_0
.end method

.method private createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2925
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2926
    const v0, 0x7f0a02ba

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2928
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a02bb

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private fillDigitsIfNecessary(Landroid/content/Intent;)Z
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 741
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFirstLaunch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    if-nez v0, :cond_0

    move v0, v12

    .line 797
    :goto_0
    return v0

    .line 745
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 746
    .local v6, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 747
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 748
    .local v11, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_7

    .line 749
    const-string v0, "tel"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 751
    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 753
    .local v9, "data":Ljava/lang/String;
    iput-boolean v13, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 754
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 756
    .local v8, "converted":Ljava/lang/String;
    invoke-direct {p0, v8, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move v0, v13

    .line 759
    goto :goto_0

    .line 760
    .end local v8    # "converted":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    :cond_2
    const-string v0, "voicemail"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 761
    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 762
    .restart local v9    # "data":Ljava/lang/String;
    invoke-direct {p0, v9, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 765
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 766
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_3
    move v0, v13

    .line 768
    goto :goto_0

    .line 770
    .end local v9    # "data":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    .line 771
    .local v10, "type":Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 774
    :cond_5
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v12

    const-string v4, "number_key"

    aput-object v4, v2, v13

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 777
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_7

    .line 779
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 783
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v13

    .line 786
    goto/16 :goto_0

    .line 789
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "c":Landroid/database/Cursor;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_7
    move v0, v12

    .line 797
    goto/16 :goto_0
.end method

.method private static getAddToContactIntent(Ljava/lang/CharSequence;Z)Landroid/content/Intent;
    .locals 3
    .param p0, "digits"    # Ljava/lang/CharSequence;
    .param p1, "isSipNumber"    # Z

    .prologue
    .line 1224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1225
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1226
    const-string v1, "sip_address"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    :goto_0
    const-string v1, "fromWhere"

    const-string v2, "CALL_LOG"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1232
    const-string v1, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1233
    return-object v0

    .line 1228
    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getCallOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1725
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/dialer/DialtactsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/dialer/DialtactsActivity;->getCallOrigin()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static getVoicemailIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 442
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 443
    return-object v0
.end method

.method private hideAndClearDialpad()V
    .locals 3

    .prologue
    .line 1613
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialtactsActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    .line 1614
    return-void
.end method

.method private static isAddCallMode(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 807
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 810
    :cond_0
    const-string v2, "add_call_mode"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 812
    :cond_1
    return v1
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1463
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isDialpadChooserVisible()Z
    .locals 1

    .prologue
    .line 2817
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDigitsEmpty()Z
    .locals 1

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLayoutReady()Z
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSipNumber(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 2874
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    if-nez v0, :cond_0

    .line 2875
    new-instance v0, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    .line 2877
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2878
    const/4 v0, 0x1

    .line 2880
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoicemailAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2232
    :try_start_0
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 2237
    :cond_0
    :goto_0
    return v1

    .line 2233
    :catch_0
    move-exception v0

    .line 2235
    .local v0, "se":Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "SecurityException is thrown. Maybe privilege isn\'t sufficient."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isVoicemailAvailableProxy()Z
    .locals 1

    .prologue
    .line 2646
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2649
    const/4 v0, 0x1

    .line 2651
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isVoicemailAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 6
    .param p1, "keyCode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1237
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1281
    :goto_1
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v2}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    .line 1282
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v5, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1283
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1286
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 1287
    .local v1, "length":I
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1288
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0

    .line 1242
    .end local v0    # "event":Landroid/view/KeyEvent;
    .end local v1    # "length":I
    :pswitch_0
    const/4 v2, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    .line 1245
    :pswitch_1
    const/4 v2, 0x2

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    .line 1248
    :pswitch_2
    const/4 v2, 0x3

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    .line 1251
    :pswitch_3
    const/4 v2, 0x4

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    .line 1254
    :pswitch_4
    const/4 v2, 0x5

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    .line 1257
    :pswitch_5
    const/4 v2, 0x6

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    .line 1260
    :pswitch_6
    const/4 v2, 0x7

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    .line 1263
    :pswitch_7
    const/16 v2, 0x8

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    .line 1266
    :pswitch_8
    const/16 v2, 0x9

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    .line 1269
    :pswitch_9
    invoke-direct {p0, v5, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    .line 1272
    :pswitch_a
    const/16 v2, 0xb

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    .line 1275
    :pswitch_b
    const/16 v2, 0xa

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    .line 1240
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method private newFlashIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 2360
    const-string v1, ""

    invoke-static {v1}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2361
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2362
    return-object v0
.end method

.method private phoneIsCdma()Z
    .locals 5

    .prologue
    .line 2084
    const/4 v1, 0x0

    .line 2086
    .local v1, "isCdma":Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2087
    .local v2, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2088
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 2093
    .end local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v1

    .line 2088
    .restart local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2090
    .end local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2091
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "phone.getActivePhoneType() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static phoneIsInUse()Z
    .locals 5

    .prologue
    .line 2068
    const/4 v2, 0x0

    .line 2070
    .local v2, "phoneInUse":Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2071
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2072
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 2077
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 2072
    .restart local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2074
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2075
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "phone.isIdle() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneIsOffhook()Z
    .locals 5

    .prologue
    .line 2100
    const/4 v2, 0x0

    .line 2102
    .local v2, "phoneOffhook":Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2103
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2104
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2109
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 2106
    :catch_0
    move-exception v0

    .line 2107
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "phone.isOffhook() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private playTone(I)V
    .locals 1
    .param p1, "tone"    # I

    .prologue
    .line 1765
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    .line 1766
    return-void
.end method

.method private playTone(II)V
    .locals 7
    .param p1, "tone"    # I
    .param p2, "durationMs"    # I

    .prologue
    const/4 v4, 0x1

    .line 1784
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v3}, Lcom/android/dialer/DialtactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1786
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "dtmf_tone"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    .line 1791
    iget-boolean v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v3, :cond_2

    .line 1817
    :cond_0
    :goto_1
    return-void

    .line 1786
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1800
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v5, "audio"

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1802
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 1803
    .local v2, "ringerMode":I
    if-eqz v2, :cond_0

    if-eq v2, v4, :cond_0

    .line 1808
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1809
    :try_start_0
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v3, :cond_3

    .line 1810
    sget-object v3, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    monitor-exit v4

    goto :goto_1

    .line 1816
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1815
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v3, p1, p2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1816
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private queryLastOutgoingCall()V
    .locals 3

    .prologue
    .line 2338
    const-string v1, ""

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 2339
    new-instance v0, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/dialpad/DialpadFragment$4;

    invoke-direct {v2, p0}, Lcom/android/dialer/dialpad/DialpadFragment$4;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;-><init>(Landroid/content/Context;Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;)V

    .line 2356
    .local v0, "lastCallArgs":Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/common/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/common/CallLogAsync;->getLastOutgoingCall(Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;

    .line 2357
    return-void
.end method

.method private removePreviousDigitIfPossible()V
    .locals 4

    .prologue
    .line 1597
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1598
    .local v1, "editable":Landroid/text/Editable;
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1599
    .local v0, "currentPosition":I
    if-lez v0, :cond_0

    .line 1600
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1601
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1603
    :cond_0
    return-void
.end method

.method private returnToInCallScreen(Z)V
    .locals 4
    .param p1, "showDialpad"    # Z

    .prologue
    .line 2046
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2047
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2060
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 2061
    return-void

    .line 2048
    :catch_0
    move-exception v0

    .line 2049
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.showCallScreenWithDialpad() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "normalizedNumber"    # Ljava/lang/String;

    .prologue
    .line 878
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "dialString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v0, p2, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 881
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 882
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 883
    .local v1, "digits":Landroid/text/Editable;
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 886
    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 887
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAutoScaleTextSizeWatcher:Lcom/mediatek/dialer/dialpad/AutoScaleTextSizeWatcher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/dialpad/AutoScaleTextSizeWatcher;->trigger(Z)V

    .line 889
    .end local v1    # "digits":Landroid/text/Editable;
    :cond_0
    return-void
.end method

.method private setupKeypad(Landroid/view/View;)V
    .locals 12
    .param p1, "fragmentView"    # Landroid/view/View;

    .prologue
    const/4 v11, -0x1

    const/16 v9, 0xc

    .line 892
    new-array v0, v9, [I

    fill-array-data v0, :array_0

    .line 895
    .local v0, "buttonIds":[I
    new-array v5, v9, [I

    fill-array-data v5, :array_1

    .line 901
    .local v5, "numberIds":[I
    new-array v3, v9, [I

    fill-array-data v3, :array_2

    .line 907
    .local v3, "letterIds":[I
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 913
    .local v8, "resources":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v0

    if-ge v2, v9, :cond_1

    .line 914
    aget v9, v0, v2

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/dialpad/DialpadKeyButton;

    .line 915
    .local v1, "dialpadKey":Lcom/android/dialer/dialpad/DialpadKeyButton;
    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v9, v11, v11}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v9}, Lcom/android/dialer/dialpad/DialpadKeyButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 917
    invoke-virtual {v1, p0}, Lcom/android/dialer/dialpad/DialpadKeyButton;->setOnPressedListener(Lcom/android/dialer/dialpad/DialpadKeyButton$OnPressedListener;)V

    .line 918
    const v9, 0x7f0d00cd

    invoke-virtual {v1, v9}, Lcom/android/dialer/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 919
    .local v7, "numberView":Landroid/widget/TextView;
    const v9, 0x7f0d00da

    invoke-virtual {v1, v9}, Lcom/android/dialer/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 920
    .local v4, "lettersView":Landroid/widget/TextView;
    aget v9, v5, v2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 921
    .local v6, "numberString":Ljava/lang/String;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    invoke-virtual {v1, v6}, Lcom/android/dialer/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 923
    if-eqz v4, :cond_0

    .line 924
    aget v9, v3, v2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    aget v9, v0, v2

    const v10, 0x7f0d0027

    if-ne v9, v10, :cond_0

    .line 926
    const/4 v9, 0x0

    const v10, 0x7f0800be

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 930
    :cond_0
    aget v9, v0, v2

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 913
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 941
    .end local v1    # "dialpadKey":Lcom/android/dialer/dialpad/DialpadKeyButton;
    .end local v4    # "lettersView":Landroid/widget/TextView;
    .end local v6    # "numberString":Ljava/lang/String;
    .end local v7    # "numberView":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 892
    nop

    :array_0
    .array-data 4
        0x7f0d0027
        0x7f0d001e
        0x7f0d001f
        0x7f0d0020
        0x7f0d0021
        0x7f0d0022
        0x7f0d0023
        0x7f0d0024
        0x7f0d0025
        0x7f0d0026
        0x7f0d0028
        0x7f0d0029
    .end array-data

    .line 895
    :array_1
    .array-data 4
        0x7f0a05b9
        0x7f0a05ba
        0x7f0a05bb
        0x7f0a05bc
        0x7f0a05bd
        0x7f0a05be
        0x7f0a05bf
        0x7f0a05c0
        0x7f0a05c1
        0x7f0a05c2
        0x7f0a05c3
        0x7f0a05c4
    .end array-data

    .line 901
    :array_2
    .array-data 4
        0x7f0a05c5
        0x7f0a05c6
        0x7f0a05c7
        0x7f0a05c8
        0x7f0a05c9
        0x7f0a05ca
        0x7f0a05cb
        0x7f0a05cc
        0x7f0a05cd
        0x7f0a05ce
        0x7f0a05cf
        0x7f0a05d0
    .end array-data
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 18
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1128
    const v17, 0x7f0d01c1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1129
    .local v4, "callSettingsMenuItem":Landroid/view/MenuItem;
    const v17, 0x7f0d01bd

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1130
    .local v3, "addToContactMenuItem":Landroid/view/MenuItem;
    const v17, 0x7f0d01be

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 1131
    .local v14, "twoSecPauseMenuItem":Landroid/view/MenuItem;
    const v17, 0x7f0d01bf

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 1132
    .local v16, "waitMenuItem":Landroid/view/MenuItem;
    const v17, 0x7f0d01ba

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1133
    .local v6, "ipDialMenuItem":Landroid/view/MenuItem;
    const v17, 0x7f0d01b9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 1134
    .local v15, "videoCallMenuItem":Landroid/view/MenuItem;
    const v17, 0x7f0d01bc

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 1136
    .local v10, "sendMessageMenuItem":Landroid/view/MenuItem;
    const v17, 0x7f0d01c0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 1140
    .local v7, "peopleMenuItem":Landroid/view/MenuItem;
    if-nez v4, :cond_0

    .line 1220
    :goto_0
    return-void

    .line 1144
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1145
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1147
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1156
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1157
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1158
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDialpadChooserVisible()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1159
    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1160
    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1161
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1162
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1149
    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1150
    invoke-static {}, Lcom/android/dialer/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    .line 1164
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1169
    .local v5, "digits":Ljava/lang/CharSequence;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1172
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/dialer/dialpad/DialpadFragment;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v17

    move/from16 v0, v17

    invoke-static {v5, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getAddToContactIntent(Ljava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1173
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1176
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v17

    if-nez v17, :cond_5

    .line 1177
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1181
    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1183
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1188
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1190
    .local v11, "strDigits":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    .line 1191
    .local v9, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v8

    .line 1193
    .local v8, "selectionEnd":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_7

    .line 1194
    if-le v9, v8, :cond_4

    .line 1196
    move v13, v9

    .line 1197
    .local v13, "tmp":I
    move v9, v8

    .line 1198
    move v8, v13

    .line 1201
    .end local v13    # "tmp":I
    :cond_4
    if-eqz v9, :cond_6

    .line 1203
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1206
    invoke-static {v9, v8, v11}, Lcom/android/dialer/dialpad/DialpadFragment;->showWait(IILjava/lang/String;)Z

    move-result v17

    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1179
    .end local v8    # "selectionEnd":I
    .end local v9    # "selectionStart":I
    .end local v11    # "strDigits":Ljava/lang/String;
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1209
    .restart local v8    # "selectionEnd":I
    .restart local v9    # "selectionStart":I
    .restart local v11    # "strDigits":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1210
    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1213
    :cond_7
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1216
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 1217
    .local v12, "strLength":I
    invoke-static {v12, v12, v11}, Lcom/android/dialer/dialpad/DialpadFragment;->showWait(IILjava/lang/String;)Z

    move-result v17

    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method private setupPopupMenuItems(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 2655
    const v3, 0x7f0d01c1

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2658
    .local v1, "callSettingsMenuItem":Landroid/view/MenuItem;
    const v3, 0x7f0d01c0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2660
    .local v2, "peopleMenuItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2661
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2662
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2669
    :goto_0
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2671
    return-void

    .line 2664
    :cond_0
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2665
    invoke-static {}, Lcom/android/dialer/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private showDialpadChooser(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1854
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1893
    :goto_0
    return-void

    .line 1858
    :cond_0
    if-eqz p1, :cond_5

    .line 1860
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1861
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1866
    :goto_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1867
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1869
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1873
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    if-nez v0, :cond_3

    .line 1874
    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    .line 1876
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1864
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    .line 1879
    :cond_5
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1880
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1885
    :goto_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1886
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1889
    :cond_6
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1890
    :cond_7
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1891
    :cond_8
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 1882
    :cond_9
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2
.end method

.method private showSpeedDialConfirmDialog()V
    .locals 4

    .prologue
    .line 2887
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialtactsActivity;

    .line 2888
    .local v0, "activity":Lcom/android/dialer/DialtactsActivity;
    invoke-virtual {v0}, Lcom/android/dialer/DialtactsActivity;->isSafeToCommitTransactions()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2889
    invoke-static {}, Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment;->newInstance()Lcom/android/dialer/dialpad/DialpadFragment$ConfirmDialogFragment;

    move-result-object v1

    .line 2890
    .local v1, "speedDialogConfirmDialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "speed_dial"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2892
    .end local v1    # "speedDialogConfirmDialogFragment":Landroid/app/DialogFragment;
    :cond_0
    return-void
.end method

.method private static showWait(IILjava/lang/String;)Z
    .locals 7
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "digits"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2246
    if-ne p0, p1, :cond_5

    .line 2248
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le p0, v1, :cond_1

    .line 2285
    :cond_0
    :goto_0
    return v3

    .line 2252
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/mediatek/contacts/ext/DialPadExtension;

    move-result-object v1

    const-string v4, "w"

    const-string v5, ";"

    const-string v6, "ExtensionForOP01"

    invoke-virtual {v1, v4, v5, v6}, Lcom/mediatek/contacts/ext/DialPadExtension;->changeChar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2255
    .local v0, "cer":[C
    sget-object v4, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cer : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " | cer[0] : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-char v5, v0, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " | digits.charAt(start - 1) == cer[0] : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-char v6, v0, v3

    if-ne v1, v6, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " | (digits.length() > start) && (digits.charAt(start) == cer[0]) : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p0, :cond_4

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-char v6, v0, v3

    if-ne v1, v6, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-char v4, v0, v3

    if-eq v1, v4, :cond_0

    .line 2263
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p0, :cond_2

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-char v4, v0, v3

    if-eq v1, v4, :cond_0

    :cond_2
    move v3, v2

    .line 2285
    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 2255
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    .line 2269
    .end local v0    # "cer":[C
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 2274
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/mediatek/contacts/ext/DialPadExtension;

    move-result-object v1

    const-string v4, "w"

    const-string v5, ";"

    const-string v6, "ExtensionForOP01"

    invoke-virtual {v1, v4, v5, v6}, Lcom/mediatek/contacts/ext/DialPadExtension;->changeChar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2277
    .restart local v0    # "cer":[C
    sget-object v4, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cer : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " | cer[0] : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-char v5, v0, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " | (digits.charAt(start - 1) == cer[0]) : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-char v6, v0, v3

    if-ne v1, v6, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-char v4, v0, v3

    if-ne v1, v4, :cond_2

    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 2277
    goto :goto_3
.end method

.method private stopTone()V
    .locals 3

    .prologue
    .line 1824
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_0

    .line 1834
    :goto_0
    return-void

    .line 1827
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1828
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    .line 1829
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "stopTone: mToneGenerator == null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    monitor-exit v1

    goto :goto_0

    .line 1833
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1832
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1833
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private updateDialAndDeleteButtonEnabledState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2196
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/mediatek/contacts/ext/DialPadExtension;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/contacts/ext/DialPadExtension;->updateDialAndDeleteButtonEnabledState(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2221
    :cond_0
    :goto_0
    return-void

    .line 2200
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 2202
    .local v0, "digitsNotEmpty":Z
    :goto_1
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2206
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2207
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2218
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2219
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .end local v0    # "digitsNotEmpty":Z
    :cond_3
    move v0, v2

    .line 2200
    goto :goto_1

    .line 2213
    .restart local v0    # "digitsNotEmpty":Z
    :cond_4
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    move v2, v1

    :cond_6
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateDialButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 2932
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yaoyongwei, updateDialButton mSimInserted\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSimInserted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2934
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2936
    :cond_0
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSimInserted:Z

    if-nez v0, :cond_3

    .line 2937
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEccDialButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2938
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEccDialButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2940
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2941
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2952
    :cond_2
    :goto_0
    return-void

    .line 2944
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEccDialButton:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2945
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEccDialButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2947
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2948
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2949
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateDialString(C)V
    .locals 7
    .param p1, "newDigit"    # C

    .prologue
    .line 2161
    const/16 v5, 0x3b

    if-eq p1, v5, :cond_1

    const/16 v5, 0x2c

    if-eq p1, v5, :cond_1

    .line 2162
    sget-object v5, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v6, "Not expected for anything other than PAUSE & WAIT"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    :cond_0
    :goto_0
    return-void

    .line 2170
    :cond_1
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 2171
    .local v0, "anchor":I
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 2173
    .local v2, "point":I
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2174
    .local v4, "selectionStart":I
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2176
    .local v3, "selectionEnd":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 2177
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v3

    move v4, v3

    .line 2180
    :cond_2
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2182
    .local v1, "digits":Landroid/text/Editable;
    invoke-static {v1, v4, v3, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->canAddDigit(Ljava/lang/CharSequence;IIC)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2183
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v3, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2185
    if-eq v4, v3, :cond_0

    .line 2187
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method private updateDialandEccButton()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2976
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2978
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEccDialButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2979
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2990
    :cond_0
    :goto_0
    return-void

    .line 2981
    :cond_1
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSimInserted:Z

    if-eqz v0, :cond_2

    .line 2982
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEccDialButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2983
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2985
    :cond_2
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSimInserted:Z

    if-nez v0, :cond_0

    .line 2986
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEccDialButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2987
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method adjustListViewLayoutParameters()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2764
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    move v1, v4

    .line 2765
    .local v1, "dialpadVisible":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getDigitsVisibility()I

    move-result v6

    if-nez v6, :cond_3

    move v2, v4

    .line 2766
    .local v2, "digitsVisible":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustListViewLayoutParameters, dialpadVisible = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " digitsVisible = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2768
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_1

    .line 2769
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2773
    .local v3, "lParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_6

    .line 2774
    if-eqz v2, :cond_4

    .line 2775
    const v0, 0x7f0d00d3

    .line 2792
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2794
    .end local v3    # "lParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void

    .end local v1    # "dialpadVisible":Z
    .end local v2    # "digitsVisible":Z
    :cond_2
    move v1, v5

    .line 2764
    goto :goto_0

    .restart local v1    # "dialpadVisible":Z
    :cond_3
    move v2, v5

    .line 2765
    goto :goto_1

    .line 2777
    .restart local v2    # "digitsVisible":Z
    .restart local v3    # "lParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDivider:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 2778
    const v0, 0x7f0d0123

    .local v0, "above":I
    goto :goto_2

    .line 2780
    .end local v0    # "above":I
    :cond_5
    const v0, 0x7f0d00cc

    .restart local v0    # "above":I
    goto :goto_2

    .line 2784
    .end local v0    # "above":I
    :cond_6
    if-eqz v2, :cond_0

    goto :goto_2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "input"    # Landroid/text/Editable;

    .prologue
    const/4 v5, 0x0

    .line 474
    iget-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {v2, v3, v4}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getDigitsVisibility()I

    move-result v0

    .line 485
    .local v0, "digitsVisibility":I
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    .line 487
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v1

    .line 488
    .local v1, "isDigitsEmpty":Z
    if-eqz v1, :cond_3

    .line 489
    iput-boolean v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 490
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 505
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadQueryListener:Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;

    if-eqz v2, :cond_2

    .line 506
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadQueryListener:Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;->onDialpadQueryChanged(Ljava/lang/String;)V

    .line 508
    :cond_2
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    .line 509
    return-void

    .line 492
    :cond_3
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDialpadChooserVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 493
    const-string v2, "afterTextChanged, show digits"

    invoke-virtual {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 494
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 495
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 497
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 498
    :cond_4
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 499
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 500
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 453
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    .line 454
    return-void
.end method

.method public callVoicemail()V
    .locals 1

    .prologue
    .line 1607
    invoke-static {}, Lcom/android/dialer/dialpad/DialpadFragment;->getVoicemailIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->doCallOptionHandle(Landroid/content/Intent;)V

    .line 1608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    .line 1610
    return-void
.end method

.method public clearDialpad()V
    .locals 1

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 1722
    return-void
.end method

.method public constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 4
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 1469
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1470
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1471
    const/4 v2, 0x0

    .line 1480
    :goto_0
    return-object v2

    .line 1473
    :cond_0
    new-instance v2, Landroid/widget/PopupMenu;

    invoke-direct {v2, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1474
    .local v2, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1475
    .local v1, "menu":Landroid/view/Menu;
    const v3, 0x7f110003

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1476
    invoke-virtual {v2, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1477
    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 1478
    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->setupPopupMenuItems(Landroid/view/Menu;)V

    .line 1479
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/mediatek/contacts/ext/DialPadExtension;

    move-result-object v3

    invoke-virtual {v3, v2, p1, v1}, Lcom/mediatek/contacts/ext/DialPadExtension;->constructPopupMenu(Landroid/widget/PopupMenu;Landroid/view/View;Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public dialButtonPressed()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1683
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1684
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonClickWithEmptyDigits()V

    .line 1718
    :goto_0
    return-void

    .line 1686
    :cond_0
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1691
    .local v2, "number":Ljava/lang/String;
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "persist.radio.otaspdial"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_2

    .line 1695
    sget-object v3, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "The phone number is prohibited explicitly by a rule."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1697
    const v3, 0x7f0a047e

    invoke-static {v3}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 1699
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "phone_prohibited_dialog"

    invoke-virtual {v0, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1703
    .end local v0    # "dialogFragment":Landroid/app/DialogFragment;
    :cond_1
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 1705
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/dialer/DialtactsActivity;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v3}, Lcom/android/dialer/DialtactsActivity;->getCallOrigin()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v2, v3}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1711
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->hideAndClearDialpad()V

    .line 1713
    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->doCallOptionHandle(Landroid/content/Intent;)V

    .line 1714
    iput-boolean v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    .line 1715
    iput-boolean v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsNeedClearDialpad:Z

    goto :goto_0

    .line 1705
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public dialButtonPressed(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->dialButtonPressedInner(Ljava/lang/String;I)V

    .line 2448
    return-void
.end method

.method public dialButtonPressed(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2451
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->dialButtonPressedInner(Ljava/lang/String;I)V

    .line 2452
    return-void
.end method

.method protected dialButtonPressedInner(Ljava/lang/String;I)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x1

    .line 2455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialButtonPressedInner number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2456
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2457
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonClickWithEmptyDigits()V

    .line 2486
    :goto_0
    return-void

    .line 2462
    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "persist.radio.otaspdial"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 2466
    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "The phone number is prohibited explicitly by a rule."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2468
    const v2, 0x7f0a047e

    invoke-static {v2}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 2470
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "phone_prohibited_dialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2474
    .end local v0    # "dialogFragment":Landroid/app/DialogFragment;
    :cond_1
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 2476
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/dialer/DialtactsActivity;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v2}, Lcom/android/dialer/DialtactsActivity;->getCallOrigin()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {p1, v2, p2}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 2480
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->doCallOptionHandle(Landroid/content/Intent;)V

    .line 2481
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->hideAndClearDialpad()V

    .line 2482
    iput-boolean v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    .line 2483
    iput-boolean v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsNeedClearDialpad:Z

    goto :goto_0

    .line 2476
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public doCallOptionHandle(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallOptionHandler:Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;

    if-eqz v0, :cond_0

    .line 2836
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallOptionHandler:Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;

    invoke-virtual {v0, p1}, Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;->doCallOptionHandle(Landroid/content/Intent;)V

    .line 2838
    :cond_0
    return-void
.end method

.method getDigitsVisibility()I
    .locals 1

    .prologue
    .line 2809
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2810
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 2812
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public getDigitsWidget()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method public handleDialButtonClickWithEmptyDigits()V
    .locals 2

    .prologue
    .line 1730
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1734
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->newFlashIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 1759
    :goto_0
    return-void

    .line 1736
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1738
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1748
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1756
    :cond_1
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(I)V

    goto :goto_0
.end method

.method public isNeedVlearDialpad()Z
    .locals 1

    .prologue
    .line 2898
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsNeedClearDialpad:Z

    return v0
.end method

.method isTrackBallEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2803
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2804
    .local v0, "keycode":I
    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2800
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0a02b7

    const v5, 0x104000a

    const/4 v4, 0x1

    .line 1381
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1456
    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected onClick() event from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :cond_0
    :goto_0
    return-void

    .line 1383
    :sswitch_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    if-nez v1, :cond_1

    .line 1384
    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    .line 1385
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 1386
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0

    .line 1389
    :cond_1
    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "dismiss mPopMenuView and reconstruct a new one!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1391
    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    .line 1392
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0

    .line 1399
    :sswitch_1
    const/16 v1, 0x43

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1401
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAutoScaleTextSizeWatcher:Lcom/mediatek/dialer/dialpad/AutoScaleTextSizeWatcher;

    invoke-virtual {v1, v4}, Lcom/mediatek/dialer/dialpad/AutoScaleTextSizeWatcher;->trigger(Z)V

    goto :goto_0

    .line 1405
    :sswitch_2
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    .line 1406
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->dialButtonPressed()V

    goto :goto_0

    .line 1410
    :sswitch_3
    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "onClick() \'dialButtonEcc\'"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    .line 1412
    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "dialButtonEcc check if emergency number, "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumber:Ljava/lang/String;

    .line 1415
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumber:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1416
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1417
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1418
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/android/dialer/dialpad/DialpadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1423
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1425
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_2
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1426
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/android/dialer/dialpad/DialpadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a05dc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/dialpad/DialpadFragment$3;

    invoke-direct {v2, p0}, Lcom/android/dialer/dialpad/DialpadFragment$3;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1438
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1443
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    .line 1444
    const-string v1, "+DialpadFragment.onClick"

    invoke-static {v1}, Lcom/mediatek/contacts/Profiler;->trace(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->dialButtonPressed()V

    .line 1446
    const-string v1, "-DialpadFragment.onClick"

    invoke-static {v1}, Lcom/mediatek/contacts/Profiler;->trace(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1450
    :sswitch_4
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1451
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 1381
    :sswitch_data_0
    .sparse-switch
        0x7f0d001d -> :sswitch_3
        0x7f0d002b -> :sswitch_2
        0x7f0d00d4 -> :sswitch_4
        0x7f0d00d5 -> :sswitch_1
        0x7f0d00d8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 513
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 514
    iput-boolean v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFirstLaunch:Z

    .line 515
    new-instance v1, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 516
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    .line 519
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/common/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0556

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    .line 537
    new-instance v1, Lcom/mediatek/dialer/dialpad/SpeedDial;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/dialer/dialpad/SpeedDial;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDial:Lcom/mediatek/dialer/dialpad/SpeedDial;

    .line 539
    new-instance v1, Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/mediatek/dialer/calloption/ContactsCallOptionHandlerFactory;

    invoke-direct {v3}, Lcom/mediatek/dialer/calloption/ContactsCallOptionHandlerFactory;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;-><init>(Landroid/content/Context;Lcom/mediatek/calloption/CallOptionHandlerFactory;)V

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallOptionHandler:Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;

    .line 541
    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment$FragmentState;->CREATED:Lcom/android/dialer/dialpad/DialpadFragment$FragmentState;

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentState:Lcom/android/dialer/dialpad/DialpadFragment$FragmentState;

    .line 546
    if-eqz p1, :cond_0

    .line 547
    const-string v1, "pref_digits_filled_by_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 549
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/mediatek/contacts/ext/DialPadExtension;

    move-result-object v1

    invoke-virtual {v1, p0, p0}, Lcom/mediatek/contacts/ext/DialPadExtension;->onCreate(Landroid/app/Fragment;Lcom/mediatek/contacts/ext/IDialpadFragment;)V

    .line 550
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "nfe":Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "Vibrate control bool missing."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1109
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1111
    const v0, 0x7f110003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1112
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "---onCreateOptionsMenu---"

    invoke-static {v0, v1}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/mediatek/contacts/ext/DialPadExtension;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/contacts/ext/DialPadExtension;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 566
    const v6, 0x7f040025

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 568
    .local v0, "fragmentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    .line 569
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/mediatek/contacts/ext/DialPadExtension;

    move-result-object v6

    invoke-virtual {v6, p1, p2, p3, v0}, Lcom/mediatek/contacts/ext/DialPadExtension;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Landroid/view/View;)Landroid/view/View;

    .line 571
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/dialer/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 573
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->ISTABLET_LAND:Z

    .line 578
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    .line 582
    .local v5, "vto":Landroid/view/ViewTreeObserver;
    new-instance v3, Lcom/android/dialer/dialpad/DialpadFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment$2;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;Landroid/view/View;)V

    .line 599
    .local v3, "preDrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    invoke-virtual {v5, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 602
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 604
    .local v4, "r":Landroid/content/res/Resources;
    const v6, 0x7f0d00d6

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    .line 605
    const v6, 0x7f0d00d3

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    .line 606
    const v6, 0x7f0d00d4

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    .line 607
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    sget-object v7, Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;->INSTANCE:Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 608
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 610
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 611
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 612
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/16 v10, 0xff

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 616
    new-instance v6, Lcom/mediatek/dialer/dialpad/AutoScaleTextSizeWatcher;

    iget-object v7, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-direct {v6, v7}, Lcom/mediatek/dialer/dialpad/AutoScaleTextSizeWatcher;-><init>(Landroid/widget/EditText;)V

    iput-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAutoScaleTextSizeWatcher:Lcom/mediatek/dialer/dialpad/AutoScaleTextSizeWatcher;

    .line 617
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAutoScaleTextSizeWatcher:Lcom/mediatek/dialer/dialpad/AutoScaleTextSizeWatcher;

    const v7, 0x7f080067

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f080015

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x7f080068

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x7f080069

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/mediatek/dialer/dialpad/AutoScaleTextSizeWatcher;->setAutoScaleParameters(IIII)V

    .line 622
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAutoScaleTextSizeWatcher:Lcom/mediatek/dialer/dialpad/AutoScaleTextSizeWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 628
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 629
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, "newIso":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 631
    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    .line 633
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateView setPhoneNumberFormattingTextWatcher:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/dialer/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v6, v7, v8}, Lcom/android/contacts/common/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 643
    const v6, 0x7f0d001e

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 644
    .local v2, "oneButton":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 645
    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->setupKeypad(Landroid/view/View;)V

    .line 648
    :cond_1
    const v6, 0x7f0d002b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    .line 649
    const v6, 0x7f10000f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 650
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 657
    :goto_1
    const v6, 0x7f0d001d

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEccDialButton:Landroid/view/View;

    .line 658
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mEccDialButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->checkDialButton()V

    .line 660
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialButton()V

    .line 662
    const v6, 0x7f0d00d5

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    .line 666
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v6, :cond_5

    .line 667
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 670
    iget-boolean v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->ISTABLET_LAND:Z

    if-nez v6, :cond_2

    .line 672
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 680
    :cond_2
    :goto_2
    const v6, 0x7f0d00d1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpacer:Landroid/view/View;

    .line 694
    const v6, 0x7f0d00cc

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    .line 697
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-nez v6, :cond_6

    .line 698
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 704
    :goto_3
    const v6, 0x7f0d00d9

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    .line 705
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 707
    return-object v0

    .line 575
    .end local v1    # "newIso":Ljava/lang/String;
    .end local v2    # "oneButton":Landroid/view/View;
    .end local v3    # "preDrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "vto":Landroid/view/ViewTreeObserver;
    :cond_3
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->ISTABLET_LAND:Z

    goto/16 :goto_0

    .line 653
    .restart local v1    # "newIso":Ljava/lang/String;
    .restart local v2    # "oneButton":Landroid/view/View;
    .restart local v3    # "preDrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .restart local v4    # "r":Landroid/content/res/Resources;
    .restart local v5    # "vto":Landroid/view/ViewTreeObserver;
    :cond_4
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 654
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    goto :goto_1

    .line 677
    :cond_5
    sget-object v6, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v7, "#onCreateView(),mDelete is null."

    invoke-static {v6, v7}, Lcom/mediatek/dialer/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 700
    :cond_6
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 554
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 557
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 560
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment$FragmentState;->DESTROYED:Lcom/android/dialer/dialpad/DialpadFragment$FragmentState;

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFragmentState:Lcom/android/dialer/dialpad/DialpadFragment$FragmentState;

    .line 561
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/mediatek/contacts/ext/DialPadExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/DialPadExtension;->onDestroy()V

    .line 562
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .param p1, "hidden"    # Z

    .prologue
    .line 2367
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 2368
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialtactsActivity;

    .line 2372
    .local v0, "activity":Lcom/android/dialer/DialtactsActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/dialer/DialtactsActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2373
    :cond_0
    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHiddenChanged, activity is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    :goto_1
    return-void

    .line 2373
    :cond_1
    const-string v1, "isFinishing"

    goto :goto_0

    .line 2377
    :cond_2
    if-eqz p1, :cond_3

    .line 2378
    invoke-virtual {v0}, Lcom/android/dialer/DialtactsActivity;->showSearchBar()V

    goto :goto_1

    .line 2380
    :cond_3
    invoke-virtual {v0}, Lcom/android/dialer/DialtactsActivity;->hideSearchBar()V

    .line 2381
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1
.end method

.method protected onIPDialMenuItemSelected()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2618
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->dialButtonPressed(I)V

    .line 2619
    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 2008
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    .line 2010
    .local v0, "item":Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;
    iget v1, v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->id:I

    .line 2011
    .local v1, "itemId":I
    packed-switch v1, :pswitch_data_0

    .line 2034
    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick: unexpected itemId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    :goto_0
    return-void

    .line 2016
    :pswitch_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    .line 2023
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    .line 2030
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_0

    .line 2011
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1294
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1302
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1296
    :pswitch_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 1297
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->dialButtonPressed()V

    .line 1298
    const/4 v0, 0x1

    goto :goto_0

    .line 1294
    :pswitch_data_0
    .packed-switch 0x7f0d00d4
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyEvent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mDigits.hasFocus(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "keyCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2675
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 2676
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->dialButtonPressed()V

    .line 2760
    :goto_0
    return v1

    .line 2681
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/dialer/dialpad/DialpadFragment;->isTrackBallEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2682
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2683
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2685
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2687
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x43

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 2689
    goto :goto_0

    .line 2692
    :cond_2
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2693
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2694
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 2698
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 2760
    goto :goto_0

    .line 2700
    :sswitch_0
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2704
    :sswitch_1
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2708
    :sswitch_2
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2712
    :sswitch_3
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2716
    :sswitch_4
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2720
    :sswitch_5
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2724
    :sswitch_6
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    .line 2728
    :sswitch_7
    const/16 v2, 0xf

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    .line 2732
    :sswitch_8
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    .line 2736
    :sswitch_9
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    .line 2740
    :sswitch_a
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    .line 2744
    :sswitch_b
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    .line 2748
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2749
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_4
    move v1, v2

    .line 2751
    goto/16 :goto_0

    .line 2756
    :sswitch_d
    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mNeedCheckSetting:Z

    move v1, v2

    .line 2757
    goto/16 :goto_0

    .line 2698
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_9
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_b
        0x12 -> :sswitch_a
        0x18 -> :sswitch_d
        0x19 -> :sswitch_d
        0x1a -> :sswitch_d
        0x52 -> :sswitch_c
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1488
    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->onLongClickInternal(Landroid/view/View;)Z

    move-result v4

    .line 1489
    .local v4, "handled":Z
    if-eqz v4, :cond_0

    .line 1589
    .end local v4    # "handled":Z
    :goto_0
    return v4

    .line 1495
    .restart local v4    # "handled":Z
    :cond_0
    iget-object v9, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1496
    .local v3, "digits":Landroid/text/Editable;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    .line 1497
    .local v5, "id":I
    sparse-switch v5, :sswitch_data_0

    move v4, v8

    .line 1589
    goto :goto_0

    .line 1499
    :sswitch_0
    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 1503
    iget-object v9, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setPressed(Z)V

    move v4, v7

    .line 1504
    goto :goto_0

    .line 1509
    :sswitch_1
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 1510
    sget-object v8, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v9, "[onLongClick] insert sim count is 0."

    invoke-static {v8, v9}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v7

    .line 1511
    goto :goto_0

    .line 1516
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1519
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "voice_call_sim_setting"

    const-wide/16 v11, -0x5

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1522
    .local v0, "defaultSim":J
    const-wide/16 v9, -0x2

    cmp-long v9, v0, v9

    if-nez v9, :cond_3

    move v4, v7

    .line 1523
    goto :goto_0

    .line 1528
    :cond_3
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isVoicemailAvailableProxy()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1530
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->removePreviousDigitIfPossible()V

    .line 1531
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->callVoicemail()V

    :cond_4
    :goto_1
    move v4, v7

    .line 1556
    goto :goto_0

    .line 1532
    :cond_5
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1533
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1535
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->removePreviousDigitIfPossible()V

    .line 1539
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_6

    move v6, v7

    .line 1542
    .local v6, "isAirplaneModeOn":Z
    :goto_2
    if-eqz v6, :cond_7

    .line 1543
    const v8, 0x7f0a05aa

    invoke-static {v8}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v2

    .line 1545
    .local v2, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string v9, "voicemail_request_during_airplane_mode"

    invoke-virtual {v2, v8, v9}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .end local v2    # "dialogFragment":Landroid/app/DialogFragment;
    .end local v6    # "isAirplaneModeOn":Z
    :cond_6
    move v6, v8

    .line 1539
    goto :goto_2

    .line 1549
    .restart local v6    # "isAirplaneModeOn":Z
    :cond_7
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->removePreviousDigitIfPossible()V

    .line 1550
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->callVoicemail()V

    goto :goto_1

    .end local v0    # "defaultSim":J
    .end local v6    # "isAirplaneModeOn":Z
    :cond_8
    move v4, v8

    .line 1558
    goto/16 :goto_0

    .line 1562
    :sswitch_2
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->removePreviousDigitIfPossible()V

    .line 1563
    const/16 v8, 0x51

    invoke-direct {p0, v8}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1566
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stopTone()V

    .line 1567
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v8, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move v4, v7

    .line 1569
    goto/16 :goto_0

    .line 1575
    :sswitch_3
    iget-object v9, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setCursorVisible(Z)V

    move v4, v8

    .line 1576
    goto/16 :goto_0

    .line 1579
    :sswitch_4
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1580
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonClickWithEmptyDigits()V

    move v4, v7

    .line 1583
    goto/16 :goto_0

    :cond_9
    move v4, v8

    .line 1585
    goto/16 :goto_0

    .line 1497
    :sswitch_data_0
    .sparse-switch
        0x7f0d001e -> :sswitch_1
        0x7f0d0027 -> :sswitch_2
        0x7f0d002b -> :sswitch_4
        0x7f0d00d4 -> :sswitch_3
        0x7f0d00d5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongClickInternal(Landroid/view/View;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 2532
    const/4 v1, -0x1

    .line 2533
    .local v1, "key":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2596
    :cond_0
    :goto_0
    return v0

    .line 2536
    :sswitch_0
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2540
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2541
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAutoScaleTextSizeWatcher:Lcom/mediatek/dialer/dialpad/AutoScaleTextSizeWatcher;

    invoke-virtual {v3, v2}, Lcom/mediatek/dialer/dialpad/AutoScaleTextSizeWatcher;->trigger(Z)V

    move v0, v2

    .line 2542
    goto :goto_0

    .line 2544
    :sswitch_1
    const/4 v1, 0x2

    .line 2571
    :goto_1
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    if-eq v5, v1, :cond_0

    .line 2575
    :cond_1
    sget-object v3, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDial:Lcom/mediatek/dialer/dialpad/SpeedDial;

    invoke-virtual {v3, v1}, Lcom/mediatek/dialer/dialpad/SpeedDial;->getSpeedDialNumber(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 2576
    .local v0, "isDialed":Z
    if-eqz v0, :cond_4

    .line 2578
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->showSpeedDialConfirmDialog()V

    .line 2587
    :cond_2
    :goto_2
    if-eq v5, v1, :cond_3

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-ne v2, v3, :cond_3

    if-eqz v0, :cond_3

    .line 2588
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->removePreviousDigitIfPossible()V

    .line 2589
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stopTone()V

    .line 2590
    iget v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    if-lez v2, :cond_3

    .line 2591
    iget v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    .line 2595
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLongClickInternal key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2547
    .end local v0    # "isDialed":Z
    :sswitch_2
    const/4 v1, 0x3

    .line 2548
    goto :goto_1

    .line 2550
    :sswitch_3
    const/4 v1, 0x4

    .line 2551
    goto :goto_1

    .line 2553
    :sswitch_4
    const/4 v1, 0x5

    .line 2554
    goto :goto_1

    .line 2556
    :sswitch_5
    const/4 v1, 0x6

    .line 2557
    goto :goto_1

    .line 2559
    :sswitch_6
    const/4 v1, 0x7

    .line 2560
    goto :goto_1

    .line 2562
    :sswitch_7
    const/16 v1, 0x8

    .line 2563
    goto :goto_1

    .line 2565
    :sswitch_8
    const/16 v1, 0x9

    .line 2566
    goto :goto_1

    .line 2580
    .restart local v0    # "isDialed":Z
    :cond_4
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2582
    sget-object v3, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDial:Lcom/mediatek/dialer/dialpad/SpeedDial;

    invoke-virtual {v3, v1}, Lcom/mediatek/dialer/dialpad/SpeedDial;->dial(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2583
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->showSpeedDialConfirmDialog()V

    .line 2584
    const/4 v0, 0x1

    goto :goto_2

    .line 2533
    :sswitch_data_0
    .sparse-switch
        0x7f0d001f -> :sswitch_1
        0x7f0d0020 -> :sswitch_2
        0x7f0d0021 -> :sswitch_3
        0x7f0d0022 -> :sswitch_4
        0x7f0d0023 -> :sswitch_5
        0x7f0d0024 -> :sswitch_6
        0x7f0d0025 -> :sswitch_7
        0x7f0d0026 -> :sswitch_8
        0x7f0d00d5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2150
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/mediatek/contacts/ext/DialPadExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/ext/DialPadExtension;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2151
    const/4 v0, 0x1

    .line 2153
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 2118
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/mediatek/contacts/ext/DialPadExtension;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mediatek/contacts/ext/DialPadExtension;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2141
    :goto_0
    return v2

    .line 2121
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2141
    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->onOptionsItemSelectedInternal(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 2124
    :pswitch_0
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/mediatek/contacts/ext/DialPadExtension;

    move-result-object v3

    const-string v4, "p"

    const-string v5, ","

    const-string v6, "ExtensionForOP01"

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/contacts/ext/DialPadExtension;->changeChar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2126
    .local v0, "p":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialString(C)V

    goto :goto_0

    .line 2129
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/mediatek/contacts/ext/DialPadExtension;

    move-result-object v3

    const-string v4, "w"

    const-string v5, ";"

    const-string v6, "ExtensionForOP01"

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/contacts/ext/DialPadExtension;->changeChar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2131
    .local v1, "w":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialString(C)V

    goto :goto_0

    .line 2121
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01be
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onOptionsItemSelectedInternal(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2515
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2528
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2517
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->onIPDialMenuItemSelected()Z

    move-result v0

    goto :goto_0

    .line 2519
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->onSpeedDialMenuItemSelected()Z

    move-result v0

    goto :goto_0

    .line 2521
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->onSendMessageMenuItemSelected()Z

    move-result v0

    goto :goto_0

    .line 2523
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/dialer/DialtactsActivity;->onPeopleMenuItemSelected()Z

    move-result v0

    goto :goto_0

    .line 2525
    :pswitch_5
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->dialButtonPressed(I)V

    .line 2526
    const/4 v0, 0x1

    goto :goto_0

    .line 2515
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01b9
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1056
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1059
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1062
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stopTone()V

    .line 1063
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1065
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1066
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1068
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1070
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    const-string v0, ""

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 1075
    invoke-static {}, Lcom/android/dialer/SpecialCharSequenceMgr;->cleanup()V

    .line 1076
    return-void

    .line 1070
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1121
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 1122
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->setupPopupMenuItems(Landroid/view/Menu;)V

    .line 1123
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "---onPrepareOptionsMenu---"

    invoke-static {v0, v1}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/mediatek/contacts/ext/DialPadExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/ext/DialPadExtension;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1125
    return-void
.end method

.method public onPressed(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pressed"    # Z

    .prologue
    .line 1314
    if-eqz p2, :cond_1

    .line 1315
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1365
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onTouch(ACTION_DOWN) event from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1377
    :cond_0
    :goto_1
    return-void

    .line 1317
    :pswitch_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1321
    :pswitch_1
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1325
    :pswitch_2
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1329
    :pswitch_3
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1333
    :pswitch_4
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1337
    :pswitch_5
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1341
    :pswitch_6
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1345
    :pswitch_7
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1349
    :pswitch_8
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1353
    :pswitch_9
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1357
    :pswitch_a
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1361
    :pswitch_b
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 1371
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1372
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1373
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1374
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stopTone()V

    goto :goto_1

    .line 1315
    :pswitch_data_0
    .packed-switch 0x7f0d001e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 945
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 947
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->checkDialButton()V

    .line 948
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialButton()V

    .line 950
    new-instance v5, Lcom/android/dialer/dialpad/DialpadFragment$HQAirplaneModeChangedReceiver;

    invoke-direct {v5, p0, v10}, Lcom/android/dialer/dialpad/DialpadFragment$HQAirplaneModeChangedReceiver;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;Lcom/android/dialer/dialpad/DialpadFragment$1;)V

    iput-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->AirplaneModeChangedReceiver:Lcom/android/dialer/dialpad/DialpadFragment$HQAirplaneModeChangedReceiver;

    .line 951
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 952
    .local v2, "filter2":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->AirplaneModeChangedReceiver:Lcom/android/dialer/dialpad/DialpadFragment$HQAirplaneModeChangedReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 960
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialtactsActivity;

    .line 961
    .local v0, "activity":Lcom/android/dialer/DialtactsActivity;
    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadQueryListener:Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;

    .line 963
    const-string v5, "Dialpad.onResume"

    invoke-static {v5}, Lcom/android/contacts/common/util/StopWatch;->start(Ljava/lang/String;)Lcom/android/contacts/common/util/StopWatch;

    move-result-object v4

    .line 964
    .local v4, "stopWatch":Lcom/android/contacts/common/util/StopWatch;
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-nez v5, :cond_0

    .line 965
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->fragmentView:Landroid/view/View;

    const v6, 0x7f0d00d5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    .line 966
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 967
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 968
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 976
    :cond_0
    invoke-static {}, Lcom/android/dialer/DialerApplication;->getInstance()Lcom/android/dialer/DialerApplication;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/SimAssociateHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/calloption/SimAssociateHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/calloption/SimAssociateHandler;->load()V

    .line 982
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->queryLastOutgoingCall()V

    .line 984
    const-string v5, "qloc"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 986
    const-string v5, "dtwd"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 989
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v5}, Lcom/android/phone/common/HapticFeedback;->checkSystemSetting()V

    .line 991
    const-string v5, "hptc"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 995
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v6

    .line 996
    :try_start_0
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 998
    :try_start_1
    new-instance v5, Landroid/media/ToneGenerator;

    const/16 v7, 0x8

    const/16 v8, 0x50

    invoke-direct {v5, v7, v8}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1004
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1005
    const-string v5, "tg"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 1007
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 1009
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/dialer/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/app/Activity;)V

    .line 1011
    const-string v5, "fdin"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 1016
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1018
    const-string v5, "tm"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 1029
    invoke-static {}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1030
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a05a7

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1032
    .local v3, "hint":Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v6, 0x3f4ccccd

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v6

    invoke-virtual {v3, v5, v9, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1033
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1043
    .end local v3    # "hint":Landroid/text/SpannableString;
    :goto_1
    iput-boolean v9, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFirstLaunch:Z

    .line 1045
    const-string v5, "hnt"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 1047
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    .line 1049
    const-string v5, "bes"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 1051
    sget-object v5, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const/16 v6, 0x32

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/common/util/StopWatch;->stopAndLog(Ljava/lang/String;I)V

    .line 1052
    return-void

    .line 999
    :catch_0
    move-exception v1

    .line 1000
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v5, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception caught while creating local tone generator: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_0

    .line 1004
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 1036
    :cond_2
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1040
    invoke-direct {p0, v9}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1103
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1104
    const-string v0, "pref_digits_filled_by_intent"

    iget-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1105
    return-void
.end method

.method protected onSendMessageMenuItemSelected()Z
    .locals 7

    .prologue
    .line 2623
    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2624
    .local v2, "phoneNumber":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSendMessageMenuItemSelected: number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2626
    const-string v4, "sms"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2627
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2629
    .local v1, "intent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSendMessageMenuItemSelected Launching SMS compose UI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2631
    :try_start_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2635
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 2632
    :catch_0
    move-exception v0

    .line 2633
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity found for intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onShowDialpadButtonClick()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2600
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2601
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 2608
    .local v0, "show":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 2609
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 2614
    .end local v0    # "show":Z
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 2601
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2614
    goto :goto_1
.end method

.method protected onSpeedDialMenuItemSelected()Z
    .locals 3

    .prologue
    .line 2639
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2640
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2641
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2642
    const/4 v1, 0x1

    return v1
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 712
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 714
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 717
    .local v1, "activity":Landroid/app/Activity;
    :try_start_0
    move-object v0, v1

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadFragmentStartedListener;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadFragmentStartedListener;->onDialpadFragmentStarted()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0d00d8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 724
    .local v3, "overflowButton":Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    return-void

    .line 718
    .end local v3    # "overflowButton":Landroid/view/View;
    :catch_0
    move-exception v2

    .line 719
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must implement OnDialpadFragmentStartedListener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1080
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1082
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    if-eqz v0, :cond_0

    .line 1083
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallOptionHandler:Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;

    if-eqz v0, :cond_1

    .line 1096
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallOptionHandler:Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;->dismissDialogs()V

    .line 1099
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "changeCount"    # I

    .prologue
    .line 458
    iget-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 460
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 467
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public setAdjustTranslationForAnimation(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 2386
    iput-boolean p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAdjustTranslationForAnimation:Z

    .line 2387
    return-void
.end method

.method public setClearDialpadState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 2902
    iput-boolean p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsNeedClearDialpad:Z

    .line 2903
    return-void
.end method

.method public setStartedFromNewIntent(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 870
    iput-boolean p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    .line 871
    return-void
.end method

.method public setYFraction(F)V
    .locals 1
    .param p1, "yFraction"    # F

    .prologue
    .line 2390
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadSlidingLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadSlidingLinearLayout;->setYFraction(F)V

    .line 2391
    return-void
.end method
