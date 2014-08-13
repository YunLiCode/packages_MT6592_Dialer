.class public Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
.super Landroid/app/ListFragment;
.source "CallLogFragmentEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$CallFetcher;
.implements Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$PhoneNumberActionModeCallback;,
        Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;,
        Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$CustomContentObserver;
    }
.end annotation


# static fields
.field private static final EMPTY_LOADER_ID:I = 0x0

.field public static final EXTRA_CALL_LOG_IDS:Ljava/lang/String; = "EXTRA_CALL_LOG_IDS"

.field private static final FLAG_FILTER_MODE_AUTO_REJECTED:I = 0x1

.field private static final FLAG_FILTER_MODE_NORMAL:I = 0x0

.field public static ISTABLET_LAND:Z = false

.field private static final MTK_MSG_DB_CHANGED:I = 0x4e4

.field private static final PROVIDER_STATUS_CHANGING_LOCALE:I = 0x4e2

.field private static final PROVIDER_STATUS_UPGRATING:I = 0x4e3

.field private static final SETFIRSTTAG:I = 0x65

.field private static final SIM_INFO_UPDATE_MESSAGE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CallLogFragmentEx"

.field private static final WAITING_DESCRIPTION_PADDING:I = 0xa

.field private static final WAIT_CURSOR_DELAY_TIME:J = 0x1f4L

.field private static final WAIT_CURSOR_START:I = 0x4ce

.field private static mPosition:I


# instance fields
.field private convertView:Landroid/view/View;

.field private divider:Landroid/view/View;

.field public handle:Landroid/os/Handler;

.field private historyList:Landroid/widget/ListView;

.field private icon:Landroid/widget/ImageView;

.field private mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

.field private mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallDetail:Landroid/view/View;

.field private mCallLogFetched:Z

.field private final mCallLogObserver:Landroid/database/ContentObserver;

.field private mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

.field private mCallTypeHelper:Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;

.field private mContactBackgroundView:Landroid/widget/ImageView;

.field private mContactInfoHelper:Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;

.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private final mContactsObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mControls:Landroid/view/View;

.field private mConvertView1:Landroid/view/View;

.field private mConvertView2:Landroid/view/View;

.field private mEmptyLoaderRunning:Z

.field private mEmptyTitle:Landroid/widget/TextView;

.field private final mFourthActionListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHasEditNumberBeforeCallOption:Z

.field private mHasSms:Z

.field private mHasVoiceMail:Z

.field private mHeader:Landroid/view/View;

.field private mHeaderOverlayView:Landroid/view/View;

.field private mHeaderTextView:Landroid/widget/TextView;

.field mInflater:Landroid/view/LayoutInflater;

.field private mIpCallContainer:Landroid/view/View;

.field private mIsFinished:Z

.field private mIsResumed:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLandIntent:Landroid/content/Intent;

.field private mLayoutSearchbutton:Landroid/widget/LinearLayout;

.field private mLoadingContact:Landroid/widget/TextView;

.field private mLoadingContainer:Landroid/view/View;

.field private mMainActionPushLayerView:Landroid/widget/ImageButton;

.field private mMainActionView:Landroid/widget/ImageView;

.field private mMenuVisible:Z

.field private mModeFlag:I

.field private mNoticeText:Landroid/widget/TextView;

.field private mNoticeTextDivider:Landroid/view/View;

.field private mNumber:Ljava/lang/String;

.field private mOldItemView:Lcom/mediatek/dialer/calllog/CallLogListItemView;

.field private mPhoneCallDetailsHelper:Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;

.field private mPhoneNumberActionMode:Landroid/view/ActionMode;

.field private mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

.field private mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

.field private mPhoneNumberToCopy:Ljava/lang/CharSequence;

.field private mPhoto:Landroid/view/View;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRefreshDataRequired:Z

.field mResources:Landroid/content/res/Resources;

.field private mScrollToTop:Z

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field public mSelectResDialog:Landroid/app/AlertDialog;

.field private mSeparator:Landroid/view/View;

.field private mSeparator01:Landroid/view/View;

.field private mSeparator02:Landroid/view/View;

.field private mSimName:Landroid/widget/TextView;

.field private mStatusMessageAction:Landroid/widget/TextView;

.field private mStatusMessageText:Landroid/widget/TextView;

.field private mStatusMessageView:Landroid/view/View;

.field private final mThirdActionListener:Landroid/view/View$OnClickListener;

.field private mTypeFilterAll:Landroid/widget/Button;

.field private mTypeFilterIncoming:Landroid/widget/Button;

.field private mTypeFilterMissed:Landroid/widget/Button;

.field private mTypeFilterOutgoing:Landroid/widget/Button;

.field private mViewRestored:Landroid/view/View;

.field private mVoiceMailUri:Landroid/net/Uri;

.field private mVoicemailSourcesAvailable:Z

.field private mVoicemailStatusFetched:Z

.field private mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

.field private mainAction:Landroid/view/View;

.field private text:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 163
    sput v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPosition:I

    .line 198
    sput-boolean v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->ISTABLET_LAND:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 146
    iput-boolean v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mVoicemailSourcesAvailable:Z

    .line 160
    iput-boolean v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHasSms:Z

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNumber:Ljava/lang/String;

    .line 222
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$CustomContentObserver;-><init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallLogObserver:Landroid/database/ContentObserver;

    .line 223
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$CustomContentObserver;-><init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mContactsObserver:Landroid/database/ContentObserver;

    .line 224
    iput-boolean v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mRefreshDataRequired:Z

    .line 227
    iput-boolean v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mMenuVisible:Z

    .line 336
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1;-><init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->handle:Landroid/os/Handler;

    .line 1035
    iput v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mModeFlag:I

    .line 1037
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$3;-><init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHandler:Landroid/os/Handler;

    .line 2004
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$5;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$5;-><init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 2035
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$6;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$6;-><init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2047
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$7;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$7;-><init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 2058
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$8;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$8;-><init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mThirdActionListener:Landroid/view/View$OnClickListener;

    .line 2066
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$9;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$9;-><init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mFourthActionListener:Landroid/view/View$OnClickListener;

    .line 2267
    iput-boolean v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIsResumed:Z

    .line 2325
    iput-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mVoiceMailUri:Landroid/net/Uri;

    .line 2326
    iput-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLandIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mRefreshDataRequired:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIsFinished:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mScrollToTop:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mEmptyTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContact:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->refreshData()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->updateCallLogNotice()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Landroid/net/Uri;)Lcom/mediatek/dialer/PhoneCallDetailsEx;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/mediatek/dialer/PhoneCallDetailsEx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIsResumed:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneCallDetailsHelper:Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mMainActionView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHeaderOverlayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHasSms:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->setSimInfo(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->configureCallButton(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHasEditNumberBeforeCallOption:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallTypeHelper:Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mControls:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->historyList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoto:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSeparator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->loadContactPhotos(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallDetail:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/calllog/CallLogListItemView;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mOldItemView:Lcom/mediatek/dialer/calllog/CallLogListItemView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSimName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Lcom/mediatek/dialer/calllog/CallLogListItemView;)Lcom/mediatek/dialer/calllog/CallLogListItemView;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # Lcom/mediatek/dialer/calllog/CallLogListItemView;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mOldItemView:Lcom/mediatek/dialer/calllog/CallLogListItemView;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSeparator02:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mConvertView2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->finishPhoneNumerSelectedActionModeIfShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->startPhoneNumberSelectedActionMode(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4502(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/calllog/CallLogListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Landroid/content/Intent;)[Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getCallLogEntryUris(Landroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;[Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # [Landroid/net/Uri;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->updateData([Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$802(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLandIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->updateOnTransition(Z)V

    return-void
.end method

.method private adjustSearchButtonAndNoticeText(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustSearchButtonAndNoticeText(), view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->log(Ljava/lang/String;)V

    .line 1155
    if-nez p1, :cond_1

    .line 1156
    iget v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mModeFlag:I

    if-eq v3, v1, :cond_0

    .line 1157
    iput v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mModeFlag:I

    .line 1158
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1160
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "calllog_type_filter"

    const/16 v2, 0x4e35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1162
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLayoutSearchbutton:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1164
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeTextDivider:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1165
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a03b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1167
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeTextDivider:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1179
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    iget v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mModeFlag:I

    if-eqz v1, :cond_2

    .line 1174
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLayoutSearchbutton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1175
    iput v4, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mModeFlag:I

    .line 1178
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->updateCallLogNotice()V

    goto :goto_0
.end method

.method private changeButton(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v3, 0x7f020131

    const v2, 0x7f020130

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeButton(), view = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->log(Ljava/lang/String;)V

    .line 1118
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->adjustSearchButtonAndNoticeText(Landroid/view/View;)V

    .line 1122
    if-nez p1, :cond_0

    .line 1151
    :goto_0
    return-void

    .line 1127
    :cond_0
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mViewRestored:Landroid/view/View;

    .line 1128
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterAll:Landroid/widget/Button;

    if-eq p1, v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterAll:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1134
    :goto_1
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterOutgoing:Landroid/widget/Button;

    if-eq p1, v0, :cond_2

    .line 1135
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterOutgoing:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1140
    :goto_2
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterIncoming:Landroid/widget/Button;

    if-eq p1, v0, :cond_3

    .line 1141
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterIncoming:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1146
    :goto_3
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterMissed:Landroid/widget/Button;

    if-eq p1, v0, :cond_4

    .line 1147
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterMissed:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 1131
    :cond_1
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterAll:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 1137
    :cond_2
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterOutgoing:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 1143
    :cond_3
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterIncoming:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3

    .line 1149
    :cond_4
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterMissed:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private configureCallButton(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;)V
    .locals 14
    .param p1, "entry"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;

    .prologue
    const v13, 0x7f0800b7

    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 1872
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->convertView:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1873
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mainAction:Landroid/view/View;

    iget-object v10, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1874
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mainAction:Landroid/view/View;

    invoke-virtual {v9, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1875
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mainAction:Landroid/view/View;

    iget-object v10, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->primaryDescription:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1876
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mainAction:Landroid/view/View;

    iget-object v10, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1877
    iget-object v9, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    if-eqz v9, :cond_1

    .line 1878
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->icon:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1879
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->icon:Landroid/widget/ImageView;

    iget v10, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->secondaryIcon:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1880
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->icon:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1881
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->icon:Landroid/widget/ImageView;

    invoke-virtual {v9, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1882
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->icon:Landroid/widget/ImageView;

    iget-object v10, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->secondaryDescription:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1883
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->divider:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1888
    :goto_0
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->text:Landroid/widget/TextView;

    iget-object v10, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1890
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v9, v10, v11, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1892
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->convertView:Landroid/view/View;

    const v10, 0x7f0d005c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1893
    .local v4, "label":Landroid/widget/TextView;
    iget-object v9, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1894
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1905
    :goto_1
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->convertView:Landroid/view/View;

    const v10, 0x7f0d007c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1906
    .local v0, "geocode":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->convertView:Landroid/view/View;

    const v10, 0x7f0d007b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1907
    .local v5, "labelAndgeocodeView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v5, v9, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1911
    iget-object v9, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->geocode:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1912
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1918
    :goto_2
    iget-object v9, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->geocode:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1919
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1933
    :goto_3
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSeparator01:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1935
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSeparator02:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1937
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mConvertView1:Landroid/view/View;

    const v10, 0x7f0d0080

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1938
    .local v6, "videoAction":Landroid/view/View;
    iget-object v9, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->thirdIntent:Landroid/content/Intent;

    if-eqz v9, :cond_6

    .line 1940
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mThirdActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1941
    invoke-virtual {v6, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1942
    iget-object v9, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->thirdDescription:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1943
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1944
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mConvertView1:Landroid/view/View;

    const v10, 0x7f0d0081

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1946
    .local v8, "videoText":Landroid/widget/TextView;
    iget-object v9, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->videoText:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1948
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mConvertView1:Landroid/view/View;

    const v10, 0x7f0d0082

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1949
    .local v7, "videoLabel":Landroid/widget/TextView;
    iget-object v9, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1950
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1955
    :goto_4
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSeparator01:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1956
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mConvertView1:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1964
    .end local v7    # "videoLabel":Landroid/widget/TextView;
    .end local v8    # "videoText":Landroid/widget/TextView;
    :goto_5
    iget-boolean v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHasVoiceMail:Z

    if-eqz v9, :cond_7

    .line 1965
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIpCallContainer:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 1966
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIpCallContainer:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 2002
    :cond_0
    :goto_6
    return-void

    .line 1885
    .end local v0    # "geocode":Landroid/widget/TextView;
    .end local v4    # "label":Landroid/widget/TextView;
    .end local v5    # "labelAndgeocodeView":Landroid/view/View;
    .end local v6    # "videoAction":Landroid/view/View;
    :cond_1
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->icon:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1886
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->divider:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1896
    .restart local v4    # "label":Landroid/widget/TextView;
    :cond_2
    iget-object v9, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1897
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1899
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800b5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v4, v11, v11, v9, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1914
    .restart local v0    # "geocode":Landroid/widget/TextView;
    .restart local v5    # "labelAndgeocodeView":Landroid/view/View;
    :cond_3
    iget-object v9, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->geocode:Ljava/lang/CharSequence;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1915
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1921
    :cond_4
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1952
    .restart local v6    # "videoAction":Landroid/view/View;
    .restart local v7    # "videoLabel":Landroid/widget/TextView;
    .restart local v8    # "videoText":Landroid/widget/TextView;
    :cond_5
    iget-object v9, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1953
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1958
    .end local v7    # "videoLabel":Landroid/widget/TextView;
    .end local v8    # "videoText":Landroid/widget/TextView;
    :cond_6
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSeparator01:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1959
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mConvertView1:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1969
    :cond_7
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mConvertView2:Landroid/view/View;

    if-eqz v9, :cond_8

    .line 1970
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mConvertView2:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1975
    iget-object v9, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->fourthIntent:Landroid/content/Intent;

    if-eqz v9, :cond_a

    .line 1976
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mConvertView2:Landroid/view/View;

    const v10, 0x7f0d0086

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1977
    .local v1, "ipAction":Landroid/view/View;
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mFourthActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1978
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1979
    iget-object v9, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->fourthDescription:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1980
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mConvertView2:Landroid/view/View;

    const v10, 0x7f0d0087

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1981
    .local v3, "ipText":Landroid/widget/TextView;
    iget-object v9, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->ipText:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1982
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mConvertView2:Landroid/view/View;

    const v10, 0x7f0d0088

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1983
    .local v2, "ipLabel":Landroid/widget/TextView;
    iget-object v9, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1984
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1972
    .end local v1    # "ipAction":Landroid/view/View;
    .end local v2    # "ipLabel":Landroid/widget/TextView;
    .end local v3    # "ipText":Landroid/widget/TextView;
    :cond_8
    const-string v9, "CallLogFragmentEx"

    const-string v10, "mConvertView2 is null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1986
    .restart local v1    # "ipAction":Landroid/view/View;
    .restart local v2    # "ipLabel":Landroid/widget/TextView;
    .restart local v3    # "ipText":Landroid/widget/TextView;
    :cond_9
    iget-object v9, p1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1987
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1994
    .end local v1    # "ipAction":Landroid/view/View;
    .end local v2    # "ipLabel":Landroid/widget/TextView;
    .end local v3    # "ipText":Landroid/widget/TextView;
    :cond_a
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIpCallContainer:Landroid/view/View;

    if-eqz v9, :cond_b

    .line 1995
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIpCallContainer:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1997
    :cond_b
    iget-object v9, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mConvertView2:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private destroyEmptyLoaderIfAllDataFetched()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 411
    iget-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallLogFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mVoicemailStatusFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mEmptyLoaderRunning:Z

    if-eqz v0, :cond_0

    .line 412
    iput-boolean v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mEmptyLoaderRunning:Z

    .line 413
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 415
    :cond_0
    return-void
.end method

.method private finishPhoneNumerSelectedActionModeIfShown()Z
    .locals 1

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 2079
    const/4 v0, 0x0

    .line 2082
    :goto_0
    return v0

    .line 2081
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2082
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCallLogEntryUris(Landroid/content/Intent;)[Landroid/net/Uri;
    .locals 9
    .param p1, "inten"    # Landroid/content/Intent;

    .prologue
    .line 1426
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 1427
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_1

    .line 1430
    const-string v7, "content://call_log/callsjoindataview"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1431
    .local v4, "queryUri":Landroid/net/Uri;
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1432
    .local v0, "id":J
    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1434
    const/4 v7, 0x1

    new-array v6, v7, [Landroid/net/Uri;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 1445
    .end local v0    # "id":J
    .end local v4    # "queryUri":Landroid/net/Uri;
    :cond_0
    return-object v6

    .line 1436
    :cond_1
    const-string v7, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    .line 1437
    .local v2, "ids":[J
    array-length v7, v2

    new-array v6, v7, [Landroid/net/Uri;

    .line 1438
    .local v6, "uris":[Landroid/net/Uri;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_0

    .line 1441
    const-string v7, "content://call_log/callsjoindataview"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1442
    .restart local v4    # "queryUri":Landroid/net/Uri;
    aget-wide v7, v2, v3

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v6, v3

    .line 1438
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/mediatek/dialer/PhoneCallDetailsEx;
    .locals 24
    .param p1, "callUri"    # Landroid/net/Uri;

    .prologue
    .line 2141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 2142
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot find mContext"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2144
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2148
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/mediatek/dialer/calllogex/CallLogQueryEx;->PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 2150
    .local v21, "callCursor":Landroid/database/Cursor;
    if-eqz v21, :cond_1

    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2151
    :cond_1
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

    .line 2186
    :catchall_0
    move-exception v2

    if-eqz v21, :cond_2

    .line 2187
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2186
    :cond_2
    throw v2

    .line 2155
    :cond_3
    :try_start_1
    invoke-static/range {v21 .. v21}, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->fromCursor(Landroid/database/Cursor;)Lcom/mediatek/dialer/calllogex/ContactInfoEx;

    move-result-object v22

    .line 2156
    .local v22, "contactInfo":Lcom/mediatek/dialer/calllogex/ContactInfoEx;
    const/16 v2, 0x14

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2157
    .local v23, "photo":Ljava/lang/String;
    const/16 v16, 0x0

    .line 2158
    .local v16, "photoUri":Landroid/net/Uri;
    if-eqz v23, :cond_7

    .line 2159
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 2163
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

    invoke-direct {v0, v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->log(Ljava/lang/String;)V

    .line 2164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->number:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->simId:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isVoiceMailNumberForMtk(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isEmergencyNumber(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2168
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->number:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->formattedNumber:Ljava/lang/String;

    .line 2170
    const-string v2, ""

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->name:Ljava/lang/String;

    .line 2171
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput v2, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->nNumberTypeId:I

    .line 2172
    const-string v2, ""

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->label:Ljava/lang/String;

    .line 2173
    const/16 v16, 0x0

    .line 2174
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->lookupUri:Landroid/net/Uri;

    .line 2177
    :cond_5
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

    .line 2186
    if-eqz v21, :cond_6

    .line 2187
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2177
    :cond_6
    return-object v2

    .line 2161
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method private loadContactPhotos(Landroid/net/Uri;)V
    .locals 4
    .param p1, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 2024
    if-nez p1, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mContactBackgroundView:Landroid/widget/ImageView;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2033
    :goto_0
    return-void

    .line 2030
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mContactBackgroundView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 1317
    const-string v0, "CallLogFragmentEx"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    return-void
.end method

.method private refreshData()V
    .locals 2

    .prologue
    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshData-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mRefreshDataRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->log(Ljava/lang/String;)V

    .line 922
    iget-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mRefreshDataRequired:Z

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->invalidateCache()V

    .line 928
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->startCallsQuery()V

    .line 932
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mRefreshDataRequired:Z

    .line 934
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4e4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 937
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->updateOnEntry()V

    .line 939
    return-void
.end method

.method private removeMissedCallNotifications()V
    .locals 4

    .prologue
    .line 944
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 946
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 947
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    .line 955
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 949
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v2, "CallLogFragmentEx"

    const-string v3, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 952
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 953
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CallLogFragmentEx"

    const-string v3, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSimInfo(I)V
    .locals 9
    .param p1, "simId"    # I

    .prologue
    const/4 v8, 0x4

    .line 1837
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08006b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1838
    .local v2, "rPadding":I
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08006c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1839
    .local v1, "lPadding":I
    const/4 v5, 0x1

    .line 1840
    .local v5, "tbPadding":I
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1841
    const/4 v6, -0x2

    if-ne p1, v6, :cond_0

    .line 1842
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSimName:Landroid/widget/TextView;

    const v7, 0x7f0201ea

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1843
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSimName:Landroid/widget/TextView;

    const v7, 0x7f0a0397

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1844
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1868
    :goto_0
    return-void

    .line 1845
    :cond_0
    if-nez p1, :cond_1

    .line 1846
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1848
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimDisplayNameById(I)Ljava/lang/String;

    move-result-object v4

    .line 1849
    .local v4, "simName":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1850
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1851
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1855
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimColorById(I)I

    move-result v0

    .line 1856
    .local v0, "color":I
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimBackgroundDarkResByColorId(I)I

    move-result v3

    .line 1857
    .local v3, "simColorResId":I
    const/4 v6, -0x1

    if-eq v6, v0, :cond_3

    .line 1858
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1859
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 1853
    .end local v0    # "color":I
    .end local v3    # "simColorResId":I
    :cond_2
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1861
    .restart local v0    # "color":I
    .restart local v3    # "simColorResId":I
    :cond_3
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSimName:Landroid/widget/TextView;

    const v7, 0x7f0201eb

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1862
    iget-object v6, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private startPhoneNumberSelectedActionMode(Landroid/view/View;)V
    .locals 2
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 2085
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$PhoneNumberActionModeCallback;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$PhoneNumberActionModeCallback;-><init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    .line 2086
    return-void
.end method

.method private updateCallLogNotice()V
    .locals 10

    .prologue
    const v9, 0x7f0a0460

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v8, 0x0

    .line 2226
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2227
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "calllog_sim_filter"

    const/16 v4, 0x4e21

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2228
    .local v2, "simFilter":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallLogNotice(), simFilter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->log(Ljava/lang/String;)V

    .line 2229
    packed-switch v2, :pswitch_data_0

    .line 2248
    :pswitch_0
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimDisplayNameById(I)Ljava/lang/String;

    move-result-object v1

    .line 2250
    .local v1, "simDisplayName":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeTextDivider:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2251
    if-eqz v1, :cond_1

    .line 2252
    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-virtual {v4, v9, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2254
    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2255
    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeTextDivider:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2262
    .end local v1    # "simDisplayName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2233
    :pswitch_1
    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeTextDivider:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2234
    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2235
    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeTextDivider:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2240
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeTextDivider:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2241
    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0a0397

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v9, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2243
    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2244
    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeTextDivider:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2257
    .restart local v1    # "simDisplayName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2258
    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeTextDivider:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2229
    nop

    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private varargs updateData([Landroid/net/Uri;)V
    .locals 4
    .param p1, "callUris"    # [Landroid/net/Uri;

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/android/dialer/CallDetailActivity$Tasks;

    new-instance v2, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;-><init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;[Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1770
    return-void
.end method

.method private updateOnEntry()V
    .locals 4

    .prologue
    .line 966
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$2;

    invoke-direct {v1, p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$2;-><init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 973
    return-void
.end method

.method private updateOnExit()V
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->updateOnTransition(Z)V

    .line 960
    return-void
.end method

.method private updateOnTransition(Z)V
    .locals 1
    .param p1, "onEntry"    # Z

    .prologue
    .line 979
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 983
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->markNewCallsAsOld()V

    .line 984
    if-nez p1, :cond_0

    .line 985
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->markMissedCallsAsRead()V

    .line 989
    :cond_0
    invoke-static {}, Lcom/mediatek/dialer/util/VvmUtils;->isVvmEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 990
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->updateVoicemailNotifications()V

    .line 992
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->removeMissedCallNotifications()V

    .line 994
    :cond_2
    return-void
.end method

.method private updateVoicemailNotifications()V
    .locals 3

    .prologue
    .line 999
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 1003
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/mediatek/dialer/calllogex/CallLogNotificationsServiceEx;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1004
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.android.dialer.calllog.UPDATE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1005
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public configureScreenFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 550
    const-string v0, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mScrollToTop:Z

    .line 551
    return-void
.end method

.method public fetchCalls()V
    .locals 8

    .prologue
    const/16 v7, 0x4e2b

    const/16 v6, 0x4e21

    .line 641
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 642
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 643
    const-string v4, "CallLogFragmentEx"

    const-string v5, " fetchCalls(), but this.getActivity() is null, use default value"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v4, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    invoke-virtual {v4, v6, v7}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->fetchCallsJionDataView(II)V

    .line 656
    :goto_0
    return-void

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 649
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "calllog_sim_filter"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 651
    .local v2, "simFilter":I
    const-string v4, "calllog_type_filter"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 653
    .local v3, "typeFilter":I
    iget-object v4, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    invoke-virtual {v4, v2, v3}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->fetchCallsJionDataView(II)V

    goto :goto_0
.end method

.method getAdapter()Lcom/mediatek/dialer/calllog/CallLogListAdapter;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 902
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    return-object v0
.end method

.method public isAutoRejectedFilterMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1321
    iget v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mModeFlag:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackHandled()V
    .locals 3

    .prologue
    .line 1325
    const-string v0, "CallLogFragmentEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackHandled() Mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mModeFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " View:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mViewRestored:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->isAutoRejectedFilterMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1327
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mViewRestored:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterAll:Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mViewRestored:Landroid/view/View;

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mViewRestored:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->onClick(Landroid/view/View;)V

    .line 1332
    :cond_1
    return-void
.end method

.method public onCallsDeleted()V
    .locals 1

    .prologue
    .line 1097
    const-string v0, "onCallsDeleted(), do nothing"

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->log(Ljava/lang/String;)V

    .line 1098
    return-void
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallsFetched(), cursor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->log(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    :cond_0
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 334
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    invoke-virtual {v2, v5}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->setLoading(Z)V

    .line 276
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    invoke-virtual {v2, p1}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 278
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 280
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 281
    iget-boolean v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mScrollToTop:Z

    if-eqz v2, :cond_2

    .line 282
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 306
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 307
    iput-boolean v5, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mScrollToTop:Z

    .line 309
    .end local v1    # "listView":Landroid/widget/ListView;
    :cond_2
    iput-boolean v4, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallLogFetched:Z

    .line 312
    const-string v2, "CallLogFragmentEx"

    const-string v3, "onCallsFetched is call"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iput-boolean v4, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIsFinished:Z

    .line 314
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x10a0001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 316
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContact:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 320
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallDetail:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 321
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 322
    :cond_3
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallDetail:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mEmptyTitle:Landroid/widget/TextView;

    const v3, 0x7f0a0564

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 331
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->destroyEmptyLoaderIfAllDataFetched()V

    .line 333
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->handle:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 324
    :cond_5
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallDetail:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1182
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1183
    .local v1, "id":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(), view id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->log(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1187
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const v2, 0x7f0d0069

    if-eq v1, v2, :cond_0

    const v2, 0x7f0d006f

    if-eq v1, v2, :cond_0

    const v2, 0x7f0d006c

    if-eq v1, v2, :cond_0

    const v2, 0x7f0d0072

    if-ne v1, v2, :cond_1

    .line 1189
    :cond_0
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mOldItemView:Lcom/mediatek/dialer/calllog/CallLogListItemView;

    if-eqz v2, :cond_1

    .line 1191
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mOldItemView:Lcom/mediatek/dialer/calllog/CallLogListItemView;

    invoke-virtual {v2}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getSelectImageView()Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1192
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->setSelectedPosition(I)V

    .line 1193
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mOldItemView:Lcom/mediatek/dialer/calllog/CallLogListItemView;

    .line 1197
    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 1217
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1218
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->updateCallLogNotice()V

    .line 1219
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mRefreshDataRequired:Z

    .line 1220
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->refreshData()V

    .line 1221
    return-void

    .line 1199
    :sswitch_0
    const-string v2, "calllog_type_filter"

    const/16 v3, 0x4e2b

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1200
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->changeButton(Landroid/view/View;)V

    goto :goto_0

    .line 1203
    :sswitch_1
    const-string v2, "calllog_type_filter"

    const/16 v3, 0x4e2e

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1204
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->changeButton(Landroid/view/View;)V

    goto :goto_0

    .line 1207
    :sswitch_2
    const-string v2, "calllog_type_filter"

    const/16 v3, 0x4e2c

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1208
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->changeButton(Landroid/view/View;)V

    goto :goto_0

    .line 1211
    :sswitch_3
    const-string v2, "calllog_type_filter"

    const/16 v3, 0x4e2d

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1212
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->changeButton(Landroid/view/View;)V

    goto :goto_0

    .line 1197
    :sswitch_data_0
    .sparse-switch
        0x7f0d0069 -> :sswitch_0
        0x7f0d006c -> :sswitch_2
        0x7f0d006f -> :sswitch_1
        0x7f0d0072 -> :sswitch_3
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1411
    const-string v0, "onContextItemSelected()"

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->log(Ljava/lang/String;)V

    .line 1412
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/mediatek/contacts/ext/CallListExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/ext/CallListExtension;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 232
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 235
    const-string v0, "CallLogFragmentEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Contacts] loading data start time: ["

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

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;-><init>(Landroid/content/ContentResolver;Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    .line 239
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 241
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 243
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 245
    invoke-virtual {p0, v5}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->setHasOptionsMenu(Z)V

    .line 247
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v4}, Lcom/mediatek/phone/SIMInfoWrapper;->registerForSimInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 250
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 251
    invoke-static {}, Lcom/android/dialer/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/dialer/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    .line 252
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mInflater:Landroid/view/LayoutInflater;

    .line 253
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mResources:Landroid/content/res/Resources;

    .line 254
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallTypeHelper:Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;

    .line 255
    new-instance v0, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    .line 256
    new-instance v0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;

    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallTypeHelper:Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;

    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;-><init>(Landroid/content/res/Resources;Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneCallDetailsHelper:Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;

    .line 258
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mContext:Landroid/content/Context;

    .line 259
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAudioManager:Landroid/media/AudioManager;

    .line 261
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/mediatek/contacts/ext/CallListExtension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/contacts/ext/CallListExtension;->onCreate(Landroid/app/ListFragment;)V

    .line 262
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1403
    const-string v0, "onCreateContextMenu()"

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->log(Ljava/lang/String;)V

    .line 1404
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1406
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/mediatek/contacts/ext/CallListExtension;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/contacts/ext/CallListExtension;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z

    .line 1407
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f0d0054

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 435
    const v2, 0x7f04000c

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 445
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0d0069

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterAll:Landroid/widget/Button;

    .line 446
    const v2, 0x7f0d006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterOutgoing:Landroid/widget/Button;

    .line 447
    const v2, 0x7f0d006c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterIncoming:Landroid/widget/Button;

    .line 448
    const v2, 0x7f0d0072

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterMissed:Landroid/widget/Button;

    .line 451
    const v2, 0x7f0d0074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeText:Landroid/widget/TextView;

    .line 452
    const v2, 0x7f0d0075

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNoticeTextDivider:Landroid/view/View;

    .line 453
    const v2, 0x7f0d0068

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLayoutSearchbutton:Landroid/widget/LinearLayout;

    .line 455
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterAll:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterOutgoing:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterIncoming:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterMissed:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    const v2, 0x7f0d0177

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContainer:Landroid/view/View;

    .line 462
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 463
    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mEmptyTitle:Landroid/widget/TextView;

    .line 464
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mEmptyTitle:Landroid/widget/TextView;

    const v3, 0x7f0a0564

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 465
    const v2, 0x7f0d0179

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContact:Landroid/widget/TextView;

    .line 466
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContact:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 467
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContact:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1030042

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 468
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContact:Landroid/widget/TextView;

    invoke-virtual {v2, v8, v5, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 469
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContact:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 470
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLoadingContact:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    const v2, 0x7f0d0178

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mProgress:Landroid/widget/ProgressBar;

    .line 472
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 474
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 476
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "calllog_type_filter"

    const/16 v3, 0x4e2b

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 477
    const-string v2, "calllog_sim_filter"

    const/16 v3, 0x4e25

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 478
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 479
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mTypeFilterAll:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->changeButton(Landroid/view/View;)V

    .line 482
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/dialer/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 484
    sput-boolean v7, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->ISTABLET_LAND:Z

    .line 489
    :goto_0
    sget-boolean v2, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->ISTABLET_LAND:Z

    if-eqz v2, :cond_0

    .line 490
    const v2, 0x7f0d0056

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHeaderTextView:Landroid/widget/TextView;

    .line 491
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHeaderOverlayView:Landroid/view/View;

    .line 492
    const v2, 0x7f0d0055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mMainActionView:Landroid/widget/ImageView;

    .line 493
    const v2, 0x7f0d0057

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    .line 494
    const v2, 0x7f0d0052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 495
    const v2, 0x7f0d0079

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSimName:Landroid/widget/TextView;

    .line 496
    const v2, 0x7f0d0059

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->convertView:Landroid/view/View;

    .line 497
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->convertView:Landroid/view/View;

    const v3, 0x7f0d005e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->icon:Landroid/widget/ImageView;

    .line 498
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->convertView:Landroid/view/View;

    const v3, 0x7f0d005d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->divider:Landroid/view/View;

    .line 499
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->convertView:Landroid/view/View;

    const v3, 0x7f0d005b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->text:Landroid/widget/TextView;

    .line 500
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->convertView:Landroid/view/View;

    const v3, 0x7f0d005a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mainAction:Landroid/view/View;

    .line 501
    const v2, 0x7f0d004e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->historyList:Landroid/widget/ListView;

    .line 502
    const v2, 0x7f0d004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mControls:Landroid/view/View;

    .line 503
    const v2, 0x7f0d0051

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoto:Landroid/view/View;

    .line 504
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHeader:Landroid/view/View;

    .line 505
    const v2, 0x7f0d0053

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSeparator:Landroid/view/View;

    .line 506
    const v2, 0x7f0d004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallDetail:Landroid/view/View;

    .line 507
    const v2, 0x7f0d007d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSeparator01:Landroid/view/View;

    .line 508
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSeparator01:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 509
    const v2, 0x7f0d0083

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSeparator02:Landroid/view/View;

    .line 510
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSeparator02:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 511
    const v2, 0x7f0d007f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mConvertView1:Landroid/view/View;

    .line 512
    const v2, 0x7f0d0085

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mConvertView2:Landroid/view/View;

    .line 513
    const v2, 0x7f0d0084

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIpCallContainer:Landroid/view/View;

    .line 515
    :cond_0
    return-object v1

    .line 486
    :cond_1
    sput-boolean v5, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->ISTABLET_LAND:Z

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 622
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 627
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 628
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 629
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 631
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->unregisterForSimInfoUpdate(Landroid/os/Handler;)V

    .line 632
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/mediatek/contacts/ext/CallListExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ext/CallListExtension;->onDestroy()V

    .line 633
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 11
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1335
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/mediatek/contacts/ext/CallListExtension;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/contacts/ext/CallListExtension;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    :goto_0
    return-void

    .line 1338
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1339
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    .line 1340
    .local v7, "count":I
    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/mediatek/dialer/calllog/CallLogListItemView;

    if-nez v0, :cond_2

    .line 1341
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "CallLogFragment exception"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    move-object v10, p2

    .line 1344
    check-cast v10, Lcom/mediatek/dialer/calllog/CallLogListItemView;

    .line 1345
    .local v10, "itemView":Lcom/mediatek/dialer/calllog/CallLogListItemView;
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1346
    .local v6, "context":Landroid/content/Context;
    const-string v0, "CallLogFragmentEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mediatek/dialer/calllogex/IntentProviderEx;

    if-nez v0, :cond_3

    .line 1349
    const-string v0, "onListItemClick(), v.getTag() is not instance of IntentProvider, just return"

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1353
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/dialer/calllogex/IntentProviderEx;

    .line 1354
    .local v9, "intentProvider":Lcom/mediatek/dialer/calllogex/IntentProviderEx;
    if-eqz v9, :cond_9

    .line 1355
    invoke-virtual {v9, v6}, Lcom/mediatek/dialer/calllogex/IntentProviderEx;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v8

    .line 1356
    .local v8, "in":Landroid/content/Intent;
    if-nez v8, :cond_4

    .line 1357
    const-string v0, "CallLogFragmentEx"

    const-string v1, "error, intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1361
    :cond_4
    const-string v0, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mVoiceMailUri:Landroid/net/Uri;

    .line 1362
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mVoiceMailUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHasVoiceMail:Z

    .line 1364
    iget-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHasVoiceMail:Z

    if-eqz v0, :cond_6

    .line 1365
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-lez v0, :cond_6

    .line 1366
    const v0, 0x7f0a056a

    invoke-static {v6, v0}, Lcom/mediatek/dialer/util/MtkToast;->toast(Landroid/content/Context;I)V

    .line 1367
    const-string v0, "CallLogFragmentEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1362
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 1373
    :cond_6
    const-string v0, "follow_sim_management"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1374
    sget-boolean v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->ISTABLET_LAND:Z

    if-eqz v0, :cond_a

    .line 1375
    if-eqz v10, :cond_8

    .line 1378
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->getSelectedPosition()I

    move-result v0

    invoke-virtual {v10}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getTagId()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 1379
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mOldItemView:Lcom/mediatek/dialer/calllog/CallLogListItemView;

    invoke-virtual {v0, v10, v1}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->itemSetSelect(Lcom/mediatek/dialer/calllog/CallLogListItemView;Lcom/mediatek/dialer/calllog/CallLogListItemView;)V

    .line 1381
    :cond_7
    iput-object v10, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mOldItemView:Lcom/mediatek/dialer/calllog/CallLogListItemView;

    .line 1383
    :cond_8
    invoke-direct {p0, v8}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getCallLogEntryUris(Landroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->updateData([Landroid/net/Uri;)V

    .line 1385
    iput-object v8, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLandIntent:Landroid/content/Intent;

    .line 1393
    .end local v8    # "in":Landroid/content/Intent;
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    invoke-virtual {v10}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getTagId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->setSelectedPosition(I)V

    goto/16 :goto_0

    .line 1388
    .restart local v8    # "in":Landroid/content/Intent;
    :cond_a
    invoke-virtual {v9, v6}, Lcom/mediatek/dialer/calllogex/IntentProviderEx;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "follow_sim_management"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public onMenuEditNumberBeforeCall(Landroid/view/MenuItem;)V
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 2291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/contacts/common/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->startActivity(Landroid/content/Intent;)V

    .line 2292
    return-void
.end method

.method public onMenuRemoveFromCallLog(Landroid/view/MenuItem;)V
    .locals 9
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 2295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2296
    .local v1, "callIds":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLandIntent:Landroid/content/Intent;

    if-nez v5, :cond_0

    .line 2321
    :goto_0
    return-void

    .line 2299
    :cond_0
    iget-object v5, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mLandIntent:Landroid/content/Intent;

    invoke-direct {p0, v5}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getCallLogEntryUris(Landroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 2300
    .local v2, "callUri":Landroid/net/Uri;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 2301
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2303
    :cond_1
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2299
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2305
    .end local v2    # "callUri":Landroid/net/Uri;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v6, Lcom/android/dialer/CallDetailActivity$Tasks;->REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/android/dialer/CallDetailActivity$Tasks;

    new-instance v7, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$10;

    invoke-direct {v7, p0, v1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$10;-><init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Ljava/lang/StringBuilder;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-interface {v5, v6, v7, v8}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 783
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onOptionsItemSelected(), item id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->log(Ljava/lang/String;)V

    .line 784
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 847
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 786
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/dialer/DialtactsActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 787
    .local v0, "homeIntent":Landroid/content/Intent;
    const/high16 v5, 0x4000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 788
    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 795
    .end local v0    # "homeIntent":Landroid/content/Intent;
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 797
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 837
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 838
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "calllog_sim_filter"

    const/16 v6, 0x4e21

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 840
    .local v3, "simFilter":I
    iget-object v5, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    const/16 v6, 0x4e35

    invoke-virtual {v5, v3, v6}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->fetchCallsJionDataView(II)V

    .line 842
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->changeButton(Landroid/view/View;)V

    goto :goto_0

    .line 784
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d01b7 -> :sswitch_1
        0x7f0d01b8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 2271
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 2272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIsResumed:Z

    .line 2273
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/util/OrientationUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2283
    const v0, 0x7f0d01b2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHasVoiceMail:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2284
    const v0, 0x7f0d01b3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHasEditNumberBeforeCallOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2287
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 2288
    return-void

    .line 2283
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 570
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIsResumed:Z

    .line 575
    invoke-static {}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->getVoiceMailNumber()V

    .line 576
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->refreshData()V

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Performance test][Contacts] loading data end time: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->log(Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/dialer/util/EmptyLoader$Callback;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dialer/util/EmptyLoader$Callback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mEmptyLoaderRunning:Z

    .line 560
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 562
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->notifyDataSetChanged()V

    .line 566
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 616
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 617
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->updateOnExit()V

    .line 618
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 520
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 521
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "currentCountryIso":Ljava/lang/String;
    new-instance v2, Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v2, v3, p0, v4, p0}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;-><init>(Landroid/content/Context;Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$CallFetcher;Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V

    iput-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    .line 524
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    invoke-virtual {p0, v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 529
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 530
    .local v1, "listView":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 532
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 533
    invoke-virtual {p0, v1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->registerForContextMenu(Landroid/view/View;)V

    .line 535
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/mediatek/contacts/ext/CallListExtension;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/contacts/ext/CallListExtension;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 537
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    .line 406
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 408
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .prologue
    .line 907
    invoke-super {p0, p1}, Landroid/app/ListFragment;->setMenuVisibility(Z)V

    .line 908
    iget-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 909
    iput-boolean p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mMenuVisible:Z

    .line 910
    if-nez p1, :cond_1

    .line 911
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->updateOnExit()V

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 912
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->refreshData()V

    goto :goto_0
.end method

.method public setOldItemView(Lcom/mediatek/dialer/calllog/CallLogListItemView;)V
    .locals 2
    .param p1, "oldItemView"    # Lcom/mediatek/dialer/calllog/CallLogListItemView;

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mOldItemView:Lcom/mediatek/dialer/calllog/CallLogListItemView;

    .line 1398
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    invoke-virtual {p1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getTagId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->setSelectedPosition(I)V

    .line 1399
    return-void
.end method

.method public showChoiceResourceDialog()V
    .locals 7

    .prologue
    .line 1224
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1225
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f0a0393

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1227
    .local v4, "title":Ljava/lang/String;
    new-instance v1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$4;

    invoke-direct {v1, p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$4;-><init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V

    .line 1306
    .local v1, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1308
    .local v2, "preference":Landroid/content/SharedPreferences;
    const-string v5, "calllog_sim_filter"

    const/16 v6, 0x4e25

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1310
    .local v0, "choiceItem":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showChoiceResourceDialog() choiceItem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->log(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4, v0, v1}, Lcom/mediatek/dialer/widget/SimPickerDialog;->createSingleChoice(Landroid/content/Context;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSelectResDialog:Landroid/app/AlertDialog;

    .line 1313
    iget-object v5, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSelectResDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1314
    return-void
.end method

.method public startCallsQuery()V
    .locals 8

    .prologue
    .line 659
    iget-object v4, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mAdapter:Lcom/mediatek/dialer/calllog/CallLogListAdapter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->setLoading(Z)V

    .line 664
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 665
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "calllog_sim_filter"

    const/16 v5, 0x4e21

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 666
    .local v2, "simFilter":I
    const-string v4, "calllog_type_filter"

    const/16 v5, 0x4e2b

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 667
    .local v3, "typeFilter":I
    iget-object v4, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    invoke-virtual {v4, v2, v3}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;->fetchCallsJionDataView(II)V

    .line 669
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 670
    .local v0, "count":I
    const-string v4, "CallLogFragmentEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "***********************count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mIsFinished:Z

    .line 679
    if-nez v0, :cond_0

    .line 680
    const-string v4, "CallLogFragmentEx"

    const-string v5, "call sendmessage"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v4, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x4ce

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 689
    :cond_0
    return-void
.end method

.method public updateProviderStauts(Lcom/mediatek/dialer/list/ProviderStatusWatcher$Status;)V
    .locals 5
    .param p1, "providerStatus"    # Lcom/mediatek/dialer/list/ProviderStatusWatcher$Status;

    .prologue
    .line 2198
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 2199
    :cond_0
    const-string v1, "CallLogFragmentEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProviderStauts Error! providerStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    :cond_1
    :goto_0
    return-void

    .line 2202
    :cond_2
    const/4 v0, -0x1

    .line 2203
    .local v0, "msgWhat":I
    iget v1, p1, Lcom/mediatek/dialer/list/ProviderStatusWatcher$Status;->status:I

    packed-switch v1, :pswitch_data_0

    .line 2213
    :pswitch_0
    const-string v1, "CallLogFragmentEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProviderStauts needn\'t handle msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/mediatek/dialer/list/ProviderStatusWatcher$Status;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    :goto_1
    const-string v1, "CallLogFragmentEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProviderStauts status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/mediatek/dialer/list/ProviderStatusWatcher$Status;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgWhat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    .line 2218
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2205
    :pswitch_1
    const/16 v0, 0x4e2

    .line 2206
    goto :goto_1

    .line 2209
    :pswitch_2
    const/16 v0, 0x4e3

    .line 2210
    goto :goto_1

    .line 2203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
