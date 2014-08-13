.class public Lcom/android/dialer/CallDetailActivity;
.super Landroid/app/Activity;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/dialer/ProximitySensorAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;,
        Lcom/android/dialer/CallDetailActivity$ViewEntry;,
        Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;,
        Lcom/android/dialer/CallDetailActivity$Tasks;
    }
.end annotation


# static fields
.field private static final BUNDLE_CONTACT_URI_EXTRA:Ljava/lang/String; = "contact_uri_extra"

.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field static final CALL_SIMID_COLUMN_INDEX:I = 0x6

.field static final CALL_TYPE_COLUMN_INDEX:I = 0x3

.field static final CALL_VT_COLUMN_INDEX:I = 0x7

.field static final COUNTRY_ISO_COLUMN_INDEX:I = 0x4

.field static final DATE_COLUMN_INDEX:I = 0x0

.field static final DURATION_COLUMN_INDEX:I = 0x1

.field public static final EXTRA_CALL_LOG_IDS:Ljava/lang/String; = "EXTRA_CALL_LOG_IDS"

.field public static final EXTRA_FLAG_VVM:Ljava/lang/String; = "EXTRA_FLAG_VVM"

.field public static final EXTRA_FROM_NOTIFICATION:Ljava/lang/String; = "EXTRA_FROM_NOTIFICATION"

.field public static final EXTRA_VOICEMAIL_START_PLAYBACK:Ljava/lang/String; = "EXTRA_VOICEMAIL_START_PLAYBACK"

.field public static final EXTRA_VOICEMAIL_URI:Ljava/lang/String; = "EXTRA_VOICEMAIL_URI"

.field static final GEOCODED_LOCATION_COLUMN_INDEX:I = 0x5

.field private static final LEFT_TO_RIGHT_EMBEDDING:C = '\u202a'

.field private static final LOADER_ID:I = 0x0

.field static final NUMBER_COLUMN_INDEX:I = 0x2

.field private static final POP_DIRECTIONAL_FORMATTING:C = '\u202c'

.field private static final PROXIMITY_BLANK_DELAY_MILLIS:J = 0x64L

.field private static final PROXIMITY_UNBLANK_DELAY_MILLIS:J = 0x1f4L

.field private static final SIM_INFO_UPDATE_MESSAGE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CallDetailActivity"


# instance fields
.field private mAsyncQueryHandler:Lcom/android/dialer/CallDetailActivityQueryHandler;

.field private mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallTypeHelper:Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;

.field private mContactBackgroundView:Landroid/widget/ImageView;

.field private mContactInfoHelper:Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;

.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private final mFourthActionListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHasEditNumberBeforeCallOption:Z

.field private mHasRemoveFromCallLogOption:Z

.field private mHasSms:Z

.field private mHasTrashOption:Z

.field private mHeaderOverlayView:Landroid/view/View;

.field private mHeaderTextView:Landroid/widget/TextView;

.field mInflater:Landroid/view/LayoutInflater;

.field private final mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/common/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mMainActionPushLayerView:Landroid/widget/ImageButton;

.field private mMainActionView:Landroid/widget/ImageView;

.field private mNewIntent:Landroid/content/Intent;

.field private mNumber:Ljava/lang/String;

.field private mPhoneCallDetailsHelper:Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;

.field private mPhoneNumberActionMode:Landroid/view/ActionMode;

.field private mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

.field private mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

.field private mPhoneNumberToCopy:Ljava/lang/CharSequence;

.field private mPlaybackFragment:Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mProximitySensorListener:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/dialer/ProximitySensorManager;

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field mResources:Landroid/content/res/Resources;

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private mShowSimIndicator:Z

.field private mSimName:Landroid/widget/TextView;

.field public mStatusBarMgr:Landroid/app/StatusBarManager;

.field private mStatusMessageAction:Landroid/widget/TextView;

.field private mStatusMessageText:Landroid/widget/TextView;

.field private mStatusMessageView:Landroid/view/View;

.field private final mThirdActionListener:Landroid/view/View$OnClickListener;

.field private mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 260
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "simid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "vtcall"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    .line 190
    new-instance v0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/CallDetailActivity$1;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorListener:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    .line 280
    new-instance v0, Lcom/android/dialer/CallDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$1;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 292
    new-instance v0, Lcom/android/dialer/CallDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$2;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 302
    new-instance v0, Lcom/android/dialer/CallDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$3;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 314
    new-instance v0, Lcom/android/dialer/CallDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$4;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/CallDetailActivity;->mHasSms:Z

    .line 1544
    new-instance v0, Lcom/android/dialer/CallDetailActivity$10;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$10;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mThirdActionListener:Landroid/view/View$OnClickListener;

    .line 1551
    new-instance v0, Lcom/android/dialer/CallDetailActivity$11;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$11;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mFourthActionListener:Landroid/view/View$OnClickListener;

    .line 1559
    new-instance v0, Lcom/android/dialer/CallDetailActivity$12;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$12;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPlaybackFragment:Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/dialer/CallDetailActivity;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/dialer/CallDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/dialer/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/dialer/CallDetailActivity;->mHasSms:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/dialer/CallDetailActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity;->setSimInfo(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/CallDetailActivity$ViewEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Lcom/android/dialer/CallDetailActivity$ViewEntry;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity;->configureCallButton(Lcom/android/dialer/CallDetailActivity$ViewEntry;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/dialer/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/dialer/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/dialer/CallDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->disableCallButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2002(Lcom/android/dialer/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/dialer/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/dialer/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/dialer/CallDetailActivity;->mHasTrashOption:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/dialer/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->hasVoicemail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2302(Lcom/android/dialer/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/dialer/CallDetailActivity;->mHasRemoveFromCallLogOption:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/dialer/CallDetailActivity;)Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallTypeHelper:Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/dialer/CallDetailActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/dialer/CallDetailActivity;)[Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/dialer/CallDetailActivity;[Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # [Landroid/net/Uri;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity;->updateData([Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/CallDetailActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity;->startPhoneNumberSelectedActionMode(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/dialer/CallDetailActivity;Landroid/content/Intent;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/CallDetailActivity;->bindContactPhotoAction(Landroid/content/Intent;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;)Lcom/mediatek/dialer/PhoneCallDetailsEx;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/mediatek/dialer/PhoneCallDetailsEx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/dialer/CallDetailActivity;)Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/dialer/CallDetailActivity;)Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    return-object v0
.end method

.method private bindContactPhotoAction(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 4
    .param p1, "actionIntent"    # Landroid/content/Intent;
    .param p2, "actionIcon"    # I
    .param p3, "actionDescription"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 908
    if-nez p1, :cond_0

    .line 909
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 910
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 927
    :goto_0
    return-void

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 915
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 916
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 917
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/dialer/CallDetailActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/android/dialer/CallDetailActivity$6;-><init>(Lcom/android/dialer/CallDetailActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 924
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private closeSystemDialogs()V
    .locals 2

    .prologue
    .line 1468
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1469
    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 1371
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1372
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 1373
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1376
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1379
    :cond_0
    return-void
.end method

.method private configureCallButton(Lcom/android/dialer/CallDetailActivity$ViewEntry;)V
    .locals 27
    .param p1, "entry"    # Lcom/android/dialer/CallDetailActivity$ViewEntry;

    .prologue
    .line 1122
    const v23, 0x7f0d0059

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1123
    .local v5, "convertView":Landroid/view/View;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    const v23, 0x7f0d005e

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1126
    .local v10, "icon":Landroid/widget/ImageView;
    const v23, 0x7f0d005d

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1127
    .local v8, "divider":Landroid/view/View;
    const v23, 0x7f0d005b

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1129
    .local v19, "text":Landroid/widget/TextView;
    const v23, 0x7f0d005a

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 1130
    .local v16, "mainAction":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1131
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1132
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->primaryDescription:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity;->mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1135
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryIcon:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1138
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1139
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1140
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1141
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1148
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0800b7

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1150
    const v23, 0x7f0d005c

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1151
    .local v14, "label":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1152
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1163
    :goto_1
    const v23, 0x7f0d007c

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1164
    .local v9, "geocode":Landroid/widget/TextView;
    const v23, 0x7f0d007b

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 1165
    .local v15, "labelAndgeocodeView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0800b7

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1169
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->geocode:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1170
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1176
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->geocode:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1177
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    :goto_3
    const v23, 0x7f0d007d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 1192
    .local v17, "separator01":Landroid/view/View;
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1193
    const v23, 0x7f0d0083

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 1194
    .local v18, "separator02":Landroid/view/View;
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    const v23, 0x7f0d007f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1197
    .local v6, "convertView1":Landroid/view/View;
    const v23, 0x7f0d0080

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 1198
    .local v20, "videoAction":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->thirdIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity;->mThirdActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1200
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1201
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->thirdDescription:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1202
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1203
    const v23, 0x7f0d0081

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 1205
    .local v22, "videoText":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->videoText:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1207
    const v23, 0x7f0d0082

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1208
    .local v21, "videoLabel":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1209
    const/16 v23, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1220
    .end local v21    # "videoLabel":Landroid/widget/TextView;
    .end local v22    # "videoText":Landroid/widget/TextView;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/CallDetailActivity;->hasVoicemail()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1221
    const v23, 0x7f0d0084

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1222
    .local v7, "convertView2":Landroid/view/View;
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1249
    :goto_5
    return-void

    .line 1143
    .end local v6    # "convertView1":Landroid/view/View;
    .end local v7    # "convertView2":Landroid/view/View;
    .end local v9    # "geocode":Landroid/widget/TextView;
    .end local v14    # "label":Landroid/widget/TextView;
    .end local v15    # "labelAndgeocodeView":Landroid/view/View;
    .end local v17    # "separator01":Landroid/view/View;
    .end local v18    # "separator02":Landroid/view/View;
    .end local v20    # "videoAction":Landroid/view/View;
    :cond_0
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1144
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1154
    .restart local v14    # "label":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1157
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0800b5

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1172
    .restart local v9    # "geocode":Landroid/widget/TextView;
    .restart local v15    # "labelAndgeocodeView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->geocode:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1179
    :cond_3
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1211
    .restart local v6    # "convertView1":Landroid/view/View;
    .restart local v17    # "separator01":Landroid/view/View;
    .restart local v18    # "separator02":Landroid/view/View;
    .restart local v20    # "videoAction":Landroid/view/View;
    .restart local v21    # "videoLabel":Landroid/widget/TextView;
    .restart local v22    # "videoText":Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1215
    .end local v21    # "videoLabel":Landroid/widget/TextView;
    .end local v22    # "videoText":Landroid/widget/TextView;
    :cond_5
    const/16 v23, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1216
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1224
    :cond_6
    const v23, 0x7f0d0085

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1225
    .restart local v7    # "convertView2":Landroid/view/View;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->fourthIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    .line 1227
    const v23, 0x7f0d0086

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1228
    .local v11, "ipAction":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity;->mFourthActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1229
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1230
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->fourthDescription:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1231
    const v23, 0x7f0d0087

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1232
    .local v13, "ipText":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->ipText:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1233
    const v23, 0x7f0d0088

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1234
    .local v12, "ipLabel":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1235
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1237
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1238
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1245
    .end local v11    # "ipAction":Landroid/view/View;
    .end local v12    # "ipLabel":Landroid/widget/TextView;
    .end local v13    # "ipText":Landroid/widget/TextView;
    :cond_8
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private createProximityWakeLock()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 1623
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 1625
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "CallDetailActivity"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1630
    :goto_0
    return-void

    .line 1628
    :cond_0
    const-string v0, "CallDetailActivity"

    const-string v1, "mProximityWakeLock create failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disableCallButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1108
    const v0, 0x7f0d0059

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1110
    const v0, 0x7f0d007d

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    const v0, 0x7f0d007f

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1113
    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1116
    const v0, 0x7f0d0089

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    return-void
.end method

.method private finishPhoneNumerSelectedActionModeIfShown()Z
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1460
    :goto_0
    return v0

    .line 1459
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1460
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCallLogEntryUris()[Landroid/net/Uri;
    .locals 9

    .prologue
    .line 512
    const-string v7, "CallDetailActivity getCallLogEntryUris()"

    invoke-direct {p0, v7}, Lcom/android/dialer/CallDetailActivity;->log(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 514
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 517
    const-string v7, "content://call_log/callsjoindataview"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 518
    .local v4, "queryUri":Landroid/net/Uri;
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 519
    .local v0, "id":J
    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 520
    invoke-static {}, Lcom/mediatek/dialer/util/VvmUtils;->isVvmEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 521
    invoke-static {v5}, Lcom/mediatek/dialer/util/VvmUtils;->buildVvmAllowedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 524
    :cond_0
    const/4 v7, 0x1

    new-array v6, v7, [Landroid/net/Uri;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 538
    .end local v0    # "id":J
    .end local v4    # "queryUri":Landroid/net/Uri;
    :cond_1
    return-object v6

    .line 526
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    .line 527
    .local v2, "ids":[J
    array-length v7, v2

    new-array v6, v7, [Landroid/net/Uri;

    .line 528
    .local v6, "uris":[Landroid/net/Uri;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_1

    .line 531
    const-string v7, "content://call_log/callsjoindataview"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 532
    .restart local v4    # "queryUri":Landroid/net/Uri;
    aget-wide v7, v2, v3

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v6, v3

    .line 533
    invoke-static {}, Lcom/mediatek/dialer/util/VvmUtils;->isVvmEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 534
    aget-object v7, v6, v3

    invoke-static {v7}, Lcom/mediatek/dialer/util/VvmUtils;->buildVvmAllowedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v6, v3

    .line 528
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/mediatek/dialer/PhoneCallDetailsEx;
    .locals 24
    .param p1, "callUri"    # Landroid/net/Uri;

    .prologue
    .line 931
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 934
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/mediatek/dialer/calllogex/CallLogQueryEx;->PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 936
    .local v21, "callCursor":Landroid/database/Cursor;
    if-eqz v21, :cond_0

    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 937
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    :catchall_0
    move-exception v2

    if-eqz v21, :cond_1

    .line 1021
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1020
    :cond_1
    throw v2

    .line 989
    :cond_2
    :try_start_1
    invoke-static/range {v21 .. v21}, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->fromCursor(Landroid/database/Cursor;)Lcom/mediatek/dialer/calllogex/ContactInfoEx;

    move-result-object v22

    .line 990
    .local v22, "contactInfo":Lcom/mediatek/dialer/calllogex/ContactInfoEx;
    const/16 v2, 0x14

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 991
    .local v23, "photo":Ljava/lang/String;
    const/16 v16, 0x0

    .line 992
    .local v16, "photoUri":Landroid/net/Uri;
    if-eqz v23, :cond_6

    .line 993
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 997
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/dialer/CallDetailActivity;->log(Ljava/lang/String;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->number:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->simId:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isVoiceMailNumberForMtk(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isEmergencyNumber(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1002
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->number:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->formattedNumber:Ljava/lang/String;

    .line 1004
    const-string v2, ""

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->name:Ljava/lang/String;

    .line 1005
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput v2, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->nNumberTypeId:I

    .line 1006
    const-string v2, ""

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->label:Ljava/lang/String;

    .line 1007
    const/16 v16, 0x0

    .line 1008
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->lookupUri:Landroid/net/Uri;

    .line 1011
    :cond_4
    new-instance v2, Lcom/mediatek/dialer/PhoneCallDetailsEx;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->number:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->formattedNumber:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->countryIso:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->geocode:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v7, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->type:I

    move-object/from16 v0, v22

    iget-wide v8, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->date:J

    move-object/from16 v0, v22

    iget-wide v10, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->duration:J

    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->name:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v13, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->nNumberTypeId:I

    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->label:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v15, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->lookupUri:Landroid/net/Uri;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->simId:I

    move/from16 v17, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->vtCall:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->ipPrefix:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v2 .. v20}, Lcom/mediatek/dialer/PhoneCallDetailsEx;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1020
    if-eqz v21, :cond_5

    .line 1021
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1011
    :cond_5
    return-object v2

    .line 995
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method private getStatusMessage(Landroid/database/Cursor;)Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;
    .locals 6
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1281
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/dialer/voicemail/VoicemailStatusHelper;->getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 1282
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1283
    const/4 v1, 0x0

    .line 1291
    :goto_0
    return-object v1

    .line 1287
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 1288
    const-string v1, "CallDetailActivity"

    const-string v2, "Expected 1, found (%d) num of status messages. Will use the first one."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    goto :goto_0
.end method

.method private getVoicemailUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method private hasVoicemail()Z
    .locals 1

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadContactPhotos(Landroid/net/Uri;)V
    .locals 4
    .param p1, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 1034
    if-nez p1, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1043
    :goto_0
    return-void

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1611
    const-string v0, "CallDetailActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    return-void
.end method

.method private markVoicemailAsRead(Landroid/net/Uri;)V
    .locals 4
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/CallDetailActivity$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/dialer/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/dialer/CallDetailActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/CallDetailActivity$5;-><init>(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 501
    return-void
.end method

.method private onHomeSelected()V
    .locals 3

    .prologue
    .line 1383
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1385
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1386
    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1387
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->finish()V

    .line 1388
    return-void
.end method

.method private optionallyHandleVoicemail()V
    .locals 7

    .prologue
    const v6, 0x7f0d0058

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 441
    invoke-virtual {p0, v6}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 442
    .local v2, "voicemailContainer":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->hasVoicemail()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 446
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

    invoke-direct {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;-><init>()V

    .line 448
    .local v1, "playbackFragment":Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;
    iput-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mPlaybackFragment:Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

    .line 449
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v0, "fragmentArguments":Landroid/os/Bundle;
    const-string v3, "EXTRA_VOICEMAIL_URI"

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 451
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_VOICEMAIL_START_PLAYBACK"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    const-string v3, "EXTRA_VOICEMAIL_START_PLAYBACK"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 454
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->setArguments(Landroid/os/Bundle;)V

    .line 455
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 456
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 458
    const-string v3, "CallDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[optionallyHandleVoicemail] getVoicemailUri()=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncQueryHandler:Lcom/android/dialer/CallDetailActivityQueryHandler;

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/dialer/CallDetailActivityQueryHandler;->startVoicemailStatusQuery(Landroid/net/Uri;)V

    .line 460
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/dialer/CallDetailActivity;->markVoicemailAsRead(Landroid/net/Uri;)V

    .line 466
    .end local v0    # "fragmentArguments":Landroid/os/Bundle;
    .end local v1    # "playbackFragment":Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 464
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSimInfo(I)V
    .locals 9
    .param p1, "simId"    # I

    .prologue
    const/4 v8, 0x4

    .line 1577
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08006b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1578
    .local v2, "rPadding":I
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08006c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1579
    .local v1, "lPadding":I
    const/4 v5, 0x1

    .line 1580
    .local v5, "tbPadding":I
    iget-object v6, p0, Lcom/android/dialer/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1581
    const/4 v6, -0x2

    if-ne p1, v6, :cond_0

    .line 1582
    iget-object v6, p0, Lcom/android/dialer/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    const v7, 0x7f0201ea

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1583
    iget-object v6, p0, Lcom/android/dialer/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    const v7, 0x7f0a0397

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1584
    iget-object v6, p0, Lcom/android/dialer/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1608
    :goto_0
    return-void

    .line 1585
    :cond_0
    if-nez p1, :cond_1

    .line 1586
    iget-object v6, p0, Lcom/android/dialer/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1588
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimDisplayNameById(I)Ljava/lang/String;

    move-result-object v4

    .line 1589
    .local v4, "simName":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1590
    iget-object v6, p0, Lcom/android/dialer/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1591
    iget-object v6, p0, Lcom/android/dialer/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1595
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimColorById(I)I

    move-result v0

    .line 1596
    .local v0, "color":I
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimBackgroundDarkResByColorId(I)I

    move-result v3

    .line 1597
    .local v3, "simColorResId":I
    const/4 v6, -0x1

    if-eq v6, v0, :cond_3

    .line 1598
    iget-object v6, p0, Lcom/android/dialer/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1599
    iget-object v6, p0, Lcom/android/dialer/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 1593
    .end local v0    # "color":I
    .end local v3    # "simColorResId":I
    :cond_2
    iget-object v6, p0, Lcom/android/dialer/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1601
    .restart local v0    # "color":I
    .restart local v3    # "simColorResId":I
    :cond_3
    iget-object v6, p0, Lcom/android/dialer/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    const v7, 0x7f0201eb

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1602
    iget-object v6, p0, Lcom/android/dialer/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private startPhoneNumberSelectedActionMode(Landroid/view/View;)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 1464
    new-instance v0, Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;-><init>(Lcom/android/dialer/CallDetailActivity;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    .line 1465
    return-void
.end method

.method private varargs updateData([Landroid/net/Uri;)V
    .locals 4
    .param p1, "callUris"    # [Landroid/net/Uri;

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/android/dialer/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;-><init>(Lcom/android/dialer/CallDetailActivity;[Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 904
    return-void
.end method


# virtual methods
.method public disableProximitySensor(Z)V
    .locals 3
    .param p1, "waitForFarState"    # Z

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorManager:Lcom/android/dialer/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/dialer/ProximitySensorManager;->disable(Z)V

    .line 1439
    const-string v0, "CallDetailActivity"

    const-string v1, "disableProximitySensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 1441
    const-string v0, "CallDetailActivity"

    const-string v1, "mProximityWakeLock = null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :goto_0
    return-void

    .line 1444
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1445
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1446
    const-string v0, "CallDetailActivity"

    const-string v2, "updateProximitySensorMode: releasing..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 1449
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableProximitySensor()V
    .locals 3

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorManager:Lcom/android/dialer/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/dialer/ProximitySensorManager;->enable()V

    .line 1419
    const-string v0, "CallDetailActivity"

    const-string v1, "enableProximitySensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 1421
    const-string v0, "CallDetailActivity"

    const-string v1, "mProximityWakeLock = null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :goto_0
    return-void

    .line 1424
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1425
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1426
    const-string v0, "CallDetailActivity"

    const-string v2, "updateProximitySensorMode: acquiring..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1431
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1429
    :cond_1
    :try_start_1
    const-string v0, "CallDetailActivity"

    const-string v2, "updateProximitySensorMode: lock already held."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 345
    const-string v0, "CallDetailActivity  onCreate()"

    invoke-direct {p0, v0}, Lcom/android/dialer/CallDetailActivity;->log(Ljava/lang/String;)V

    .line 346
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 348
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 349
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_FLAG_VVM"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 351
    .local v6, "isVVM":Z
    if-eqz v6, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-lez v0, :cond_0

    .line 353
    const-string v0, "CallDetailActivity"

    const-string v1, "phone call state, mAudioManager.getMode() > 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const v0, 0x7f0a056a

    invoke-static {p0, v0}, Lcom/mediatek/dialer/util/MtkToast;->toast(Landroid/content/Context;I)V

    .line 355
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->finish()V

    .line 361
    .end local v6    # "isVVM":Z
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->registerReceiver(Landroid/app/Activity;)V

    .line 365
    invoke-static {}, Lcom/mediatek/dialer/util/VvmUtils;->isVvmEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    const v0, 0x7f040035

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->setContentView(I)V

    .line 371
    :goto_0
    invoke-static {}, Lcom/android/dialer/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/dialer/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    .line 372
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 373
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    .line 375
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallTypeHelper:Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;

    .line 376
    new-instance v0, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    .line 380
    new-instance v0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mCallTypeHelper:Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;-><init>(Landroid/content/res/Resources;Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;

    .line 383
    const v0, 0x7f0d0056

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    .line 384
    const v0, 0x7f0d0054

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    .line 385
    const v0, 0x7f0d0055

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;

    .line 386
    const v0, 0x7f0d0057

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    .line 387
    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 388
    invoke-static {p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 389
    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 391
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->createProximityWakeLock()V

    .line 392
    new-instance v0, Lcom/android/dialer/ProximitySensorManager;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorListener:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/dialer/ProximitySensorManager$Listener;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorManager:Lcom/android/dialer/ProximitySensorManager;

    .line 394
    new-instance v0, Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;

    invoke-static {p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactInfoHelper:Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;

    .line 395
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->configureActionBar()V

    .line 398
    invoke-static {}, Lcom/mediatek/dialer/util/VvmUtils;->isVvmEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;

    invoke-direct {v0}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    .line 400
    new-instance v0, Lcom/android/dialer/CallDetailActivityQueryHandler;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivityQueryHandler;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncQueryHandler:Lcom/android/dialer/CallDetailActivityQueryHandler;

    .line 401
    const v0, 0x7f0d0050

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    .line 402
    const v0, 0x7f0d00a0

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageText:Landroid/widget/TextView;

    .line 403
    const v0, 0x7f0d00a1

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    .line 404
    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(): getVoicemailUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->optionallyHandleVoicemail()V

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_FROM_NOTIFICATION"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->closeSystemDialogs()V

    .line 413
    :cond_2
    const v0, 0x7f0d0079

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    .line 414
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v4}, Lcom/mediatek/phone/SIMInfoWrapper;->registerForSimInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 416
    return-void

    .line 368
    :cond_3
    const v0, 0x7f040036

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1296
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1297
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1530
    const-string v0, "onDestroy()"

    invoke-direct {p0, v0}, Lcom/android/dialer/CallDetailActivity;->log(Ljava/lang/String;)V

    .line 1531
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1532
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->unregisterForSimInfoUpdate(Landroid/os/Handler;)V

    .line 1533
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->unregisterReceiver(Landroid/app/Activity;)V

    .line 1536
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->disableProximitySensor(Z)V

    .line 1538
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mNewIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mNewIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1541
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 543
    packed-switch p1, :pswitch_data_0

    .line 561
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 546
    :pswitch_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 549
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const-string v1, "CallDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialing Number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_0

    .line 552
    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 556
    const/4 v1, 0x1

    goto :goto_0

    .line 543
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuEditNumberBeforeCall(Landroid/view/MenuItem;)V
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 1351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/contacts/common/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1352
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1314
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1316
    :pswitch_0
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->onHomeSelected()V

    .line 1317
    const/4 v0, 0x1

    return v0

    .line 1314
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuRemoveFromCallLog(Landroid/view/MenuItem;)V
    .locals 9
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 1327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1328
    .local v1, "callIds":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 1329
    .local v2, "callUri":Landroid/net/Uri;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1330
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    :cond_0
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1328
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1334
    .end local v2    # "callUri":Landroid/net/Uri;
    :cond_1
    iget-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v6, Lcom/android/dialer/CallDetailActivity$Tasks;->REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/android/dialer/CallDetailActivity$Tasks;

    new-instance v7, Lcom/android/dialer/CallDetailActivity$8;

    invoke-direct {v7, p0, v1}, Lcom/android/dialer/CallDetailActivity$8;-><init>(Lcom/android/dialer/CallDetailActivity;Ljava/lang/StringBuilder;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-interface {v5, v6, v7, v8}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1348
    return-void
.end method

.method public onMenuTrashVoicemail(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 1355
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v0

    .line 1356
    .local v0, "voicemailUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v2, Lcom/android/dialer/CallDetailActivity$Tasks;->DELETE_VOICEMAIL_AND_FINISH:Lcom/android/dialer/CallDetailActivity$Tasks;

    new-instance v3, Lcom/android/dialer/CallDetailActivity$9;

    invoke-direct {v3, p0, v0}, Lcom/android/dialer/CallDetailActivity$9;-><init>(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1368
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1639
    const-string v0, "CallDetailActivity"

    const-string v1, "[onNewIntent]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->finish()V

    .line 1641
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity;->mNewIntent:Landroid/content/Intent;

    .line 1642
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1400
    const-string v0, "onPause()"

    invoke-direct {p0, v0}, Lcom/android/dialer/CallDetailActivity;->log(Ljava/lang/String;)V

    .line 1410
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 1412
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1413
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1305
    const v0, 0x7f0d01b2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/dialer/CallDetailActivity;->mHasRemoveFromCallLogOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1306
    const v0, 0x7f0d01b3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/dialer/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1307
    const v0, 0x7f0d01b1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/dialer/CallDetailActivity;->mHasTrashOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1309
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 420
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 422
    invoke-static {}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->getVoiceMailNumber()V

    .line 423
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/CallDetailActivity;->updateData([Landroid/net/Uri;)V

    .line 425
    const-string v0, "CallDetailActivity  onResume()"

    invoke-direct {p0, v0}, Lcom/android/dialer/CallDetailActivity;->log(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/dialer/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/CallDetailActivity;->mHasSms:Z

    .line 427
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 429
    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Contacts] Call log detail launch end ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPlaybackFragment:Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPlaybackFragment:Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->clearNearTimes()V

    .line 1395
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 1396
    return-void
.end method

.method protected updateVoicemailStatusMessage(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 1252
    if-nez p1, :cond_0

    .line 1253
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1278
    :goto_0
    return-void

    .line 1256
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity;->getStatusMessage(Landroid/database/Cursor;)Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    move-result-object v0

    .line 1257
    .local v0, "message":Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->showInCallDetails()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1258
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1262
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1263
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageText:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->callDetailsMessageId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1264
    iget v1, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1265
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1267
    :cond_3
    iget-object v1, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 1268
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1269
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    new-instance v2, Lcom/android/dialer/CallDetailActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/android/dialer/CallDetailActivity$7;-><init>(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1276
    :cond_4
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method
