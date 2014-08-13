.class public Lcom/mediatek/incallui/vt/VTCallFragment;
.super Lcom/android/incallui/BaseFragment;
.source "VTCallFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;,
        Lcom/mediatek/incallui/vt/VTCallFragment$InCallVideoSettingLocalEffectListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/mediatek/incallui/vt/VTCallPresenter;",
        "Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;",
        ">;",
        "Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;",
        "Landroid/view/SurfaceHolder$Callback;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/PopupMenu$OnMenuItemClickListener;",
        "Landroid/widget/PopupMenu$OnDismissListener;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DELAY_HIDE_VT_ICON_MESSAGE:I = 0x65

.field private static final DELAY_HIDE_VT_ICON_TIME:I = 0x2710

.field private static final SECOND_TO_MILLISECOND:I = 0x3e8

.field private static final VDBG:Z = true

.field private static final WAITING_TIME_FOR_ASK_VT_SHOW_ME:I = 0x5


# instance fields
.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mBkgBitmapHandler:Lcom/mediatek/incallui/vt/VTBackgroundBitmapHandler;

.field private mCallList:Lcom/android/incallui/CallList;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHighVideoHolder:Landroid/view/SurfaceHolder;

.field private mInCallVideoSettingDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

.field private mLocaleChanged:Z

.field private mLowVideoHolder:Landroid/view/SurfaceHolder;

.field private mNavigationBarHeight:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mStatusBarHeight:I

.field private mStorageSpaceDialog:Landroid/app/AlertDialog;

.field private mVTHighDown:Landroid/widget/ImageButton;

.field private mVTHighUp:Landroid/widget/ImageButton;

.field private mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

.field private mVTLowDown:Landroid/widget/ImageButton;

.field private mVTLowUp:Landroid/widget/ImageButton;

.field private mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

.field private mVTMTAskDialog:Landroid/app/AlertDialog;

.field mVTRecorderEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVTRecorderSelector:Landroid/app/AlertDialog;

.field private mVTScreenMode:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

.field private mVTVoiceReCallDialog:Landroid/app/AlertDialog;

.field private mVTWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mVtCallStateAndSimIndicate:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 136
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mCallList:Lcom/android/incallui/CallList;

    .line 1801
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTScreenMode:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    .line 1858
    new-instance v0, Lcom/mediatek/incallui/vt/VTCallFragment$21;

    invoke-direct {v0, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$21;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updateLocalZoomOrBrightness()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/incallui/vt/VTCallFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->showVTLocalZoom()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->showVTLocalBrightness()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->showVTLocalContrast()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTInCallVideoSettingLocalEffect()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTInCallVideoSettingLocalNightMode()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTInCallVideoSettingPeerQuality()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderSelector:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderSelector:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/mediatek/incallui/vt/VTCallFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/incallui/vt/VTCallFragment;->startRecord(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mediatek/incallui/vt/VTCallFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/incallui/vt/VTCallFragment;->hideLocalZoomOrBrightness(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/mediatek/incallui/vt/VTCallFragment;->makeVoiceReCall(Ljava/lang/String;I)V

    return-void
.end method

.method private acquireVtWakeLock()V
    .locals 1

    .prologue
    .line 1634
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTOutgoing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1635
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1636
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1637
    const-string v0, "acquire VT wake lock"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1640
    :cond_1
    return-void
.end method

.method private adjustLocalVT(Z)V
    .locals 1
    .param p1, "inc"    # Z

    .prologue
    .line 1171
    const-string v0, "onClick: adjustLocalVT()..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1173
    if-eqz p1, :cond_3

    .line 1174
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_1

    .line 1175
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->incZoom()V

    .line 1190
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->delayHideVTIcon()V

    .line 1191
    return-void

    .line 1176
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_2

    .line 1177
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->incBrightness()V

    goto :goto_0

    .line 1178
    :cond_2
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_0

    .line 1179
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->incContrast()V

    goto :goto_0

    .line 1182
    :cond_3
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_4

    .line 1183
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->decZoom()V

    goto :goto_0

    .line 1184
    :cond_4
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_5

    .line 1185
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->decBrightness()V

    goto :goto_0

    .line 1186
    :cond_5
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_0

    .line 1187
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->decContrast()V

    goto :goto_0
.end method

.method private delayHideVTIcon()V
    .locals 4

    .prologue
    const/16 v2, 0x65

    .line 1873
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1874
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1876
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1877
    return-void
.end method

.method private dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 883
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 884
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mAudioModePopupVisible:Z

    .line 886
    :cond_0
    return-void
.end method

.method private dismissVideoSettingDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 906
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 908
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 912
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 914
    :cond_1
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 915
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 916
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 918
    :cond_2
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 919
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 920
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 922
    :cond_3
    return-void
.end method

.method private getVTInControlRes()Z
    .locals 1

    .prologue
    .line 589
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    return v0
.end method

.method private handleStorageFull(Z)V
    .locals 3
    .param p1, "isForCheckingOrRecording"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1492
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getMountedStorageCount(Landroid/content/Context;)I

    move-result v1

    if-le v1, v2, :cond_3

    .line 1494
    const-string v1, "handleStorageFull(), mounted storage count > 1"

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1495
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getDefaultStorageType(Landroid/content/Context;)I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 1497
    const-string v1, "handleStorageFull(), SD card is using"

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1498
    const v1, 0x2050104

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->showStorageFullDialog(IZ)V

    .line 1525
    :cond_0
    :goto_0
    return-void

    .line 1499
    :cond_1
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getDefaultStorageType(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1501
    const-string v1, "handleStorageFull(), phone storage is using"

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1502
    const v1, 0x2050102

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->showStorageFullDialog(IZ)V

    goto :goto_0

    .line 1505
    :cond_2
    const-string v1, "handleStorageFull(), never happen here"

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1507
    :cond_3
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getMountedStorageCount(Landroid/content/Context;)I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 1508
    const-string v1, "handleStorageFull(), mounted storage count == 1"

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1509
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getDefaultStorageType(Landroid/content/Context;)I

    move-result v1

    if-ne v2, v1, :cond_6

    .line 1511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStorageFull(), SD card is using, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_4

    const-string v1, "checking case"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1512
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1514
    .local v0, "toast":Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1511
    .end local v0    # "toast":Ljava/lang/String;
    :cond_4
    const-string v1, "recording case"

    goto :goto_1

    .line 1512
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1515
    :cond_6
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getDefaultStorageType(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_7

    .line 1518
    const-string v1, "handleStorageFull(), phone storage is using"

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1519
    const v1, 0x2050103

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->showStorageFullDialog(IZ)V

    goto :goto_0

    .line 1522
    :cond_7
    const-string v1, "handleStorageFull(), never happen here"

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private hideLocalZoomOrBrightness(Z)V
    .locals 3
    .param p1, "resetSetting"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1295
    const-string v0, "hideLocalZoomOrBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1299
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1300
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1301
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1303
    if-eqz p1, :cond_0

    .line 1304
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1305
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 1306
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1308
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1357
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1358
    return-void
.end method

.method private makeVoiceReCall(Ljava/lang/String;I)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .prologue
    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeVoiceReCall(), number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slot is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 779
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 780
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone.extra.slot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    const-string v1, "com.android.phone.extra.international"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 782
    const-string v1, "com.android.phone.extra.vt_make_voice_recall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 783
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 784
    invoke-virtual {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->startActivity(Landroid/content/Intent;)V

    .line 788
    return-void
.end method

.method private onVTInCallVideoSettingLocalEffect()V
    .locals 12

    .prologue
    .line 345
    const-string v10, "onVTInCallVideoSettingLocalEffect() ! "

    invoke-direct {p0, v10}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 347
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    .local v7, "myBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x1040000

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/mediatek/incallui/vt/VTCallFragment$1;

    invoke-direct {v11, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$1;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v7, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 357
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v9

    .line 359
    .local v9, "supportEntryValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c001d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c001c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "entries":[Ljava/lang/CharSequence;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v4, "entryValues2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v2, "entries2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v3

    .local v6, "len":I
    :goto_1
    if-ge v5, v6, :cond_3

    .line 371
    aget-object v10, v3, v5

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_2

    .line 372
    aget-object v10, v3, v5

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    aget-object v10, v1, v5

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 378
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onVTInCallVideoSettingLocalEffect() : entryValues2.size() - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getColorEffect()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 383
    .local v0, "currentValue":I
    new-instance v8, Lcom/mediatek/incallui/vt/VTCallFragment$InCallVideoSettingLocalEffectListener;

    invoke-direct {v8, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$InCallVideoSettingLocalEffectListener;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 385
    .local v8, "myClickListener":Lcom/mediatek/incallui/vt/VTCallFragment$InCallVideoSettingLocalEffectListener;
    invoke-virtual {v8, v4}, Lcom/mediatek/incallui/vt/VTCallFragment$InCallVideoSettingLocalEffectListener;->setValues(Ljava/util/ArrayList;)V

    .line 386
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v10, v0, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 389
    const v10, 0x7f0a0027

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 390
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 391
    iget-object v10, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private onVTInCallVideoSettingLocalNightMode()V
    .locals 6

    .prologue
    const v5, 0x7f0c0020

    const/4 v4, 0x0

    .line 421
    const-string v2, "onVTInCallVideoSettingLocalNightMode() ! "

    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 424
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 425
    .local v0, "myBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mediatek/incallui/vt/VTCallFragment$2;

    invoke-direct {v3, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$2;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 434
    const v2, 0x7f0a0028

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 436
    new-instance v1, Lcom/mediatek/incallui/vt/VTCallFragment$3;

    invoke-direct {v1, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$3;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 461
    .local v1, "myClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/vt/VTManagerLocal;->isSupportNightMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 462
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getNightMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    invoke-virtual {v0, v5, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 484
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 485
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 486
    return-void

    .line 467
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 472
    :cond_1
    const v2, 0x7f0c0021

    new-instance v3, Lcom/mediatek/incallui/vt/VTCallFragment$4;

    invoke-direct {v3, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$4;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private onVTInCallVideoSettingPeerQuality()V
    .locals 6

    .prologue
    const v5, 0x7f0c0022

    const/4 v4, 0x1

    .line 490
    const-string v2, "onVTInCallVideoSettingPeerQuality() ! "

    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 492
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 493
    .local v0, "myBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mediatek/incallui/vt/VTCallFragment$5;

    invoke-direct {v3, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$5;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 502
    const v2, 0x7f0a0029

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 504
    new-instance v1, Lcom/mediatek/incallui/vt/VTCallFragment$6;

    invoke-direct {v1, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$6;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 529
    .local v1, "myClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getVideoQuality()I

    move-result v2

    if-ne v4, v2, :cond_0

    .line 530
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 545
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 546
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 547
    return-void

    .line 533
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getVideoQuality()I

    move-result v2

    if-nez v2, :cond_1

    .line 534
    invoke-virtual {v0, v5, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 539
    :cond_1
    const-string v2, "CallCommandClient.getInstance().getVideoQuality() is not VT_VQ_SHARP or VT_VQ_NORMAL , error ! "

    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onVoiceVideoRecordClick(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 1361
    const-string v1, "onVoiceVideoRecordClick"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1363
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1364
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1388
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->isExternalStorageMounted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1369
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1374
    :cond_2
    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->diskSpaceAvailable(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1375
    invoke-direct {p0, v4}, Lcom/mediatek/incallui/vt/VTCallFragment;->handleStorageFull(Z)V

    goto :goto_0

    .line 1379
    :cond_3
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0072

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1380
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1381
    const-string v1, "startRecord"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1382
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->showStartVTRecorderDialog()V

    goto :goto_0

    .line 1384
    :cond_4
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0073

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1385
    const-string v1, "stopRecord"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1386
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/vt/VTCallPresenter;

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTCallPresenter;->stopRecording()V

    goto :goto_0
.end method

.method private releaseVtWakeLock()V
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1645
    const-string v0, "release VT wake lock"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1647
    :cond_0
    return-void
.end method

.method private setVTInControlRes(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 593
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean p1, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 594
    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 1
    .param p1, "resid"    # I
    .param p2, "isStartupError"    # Z

    .prologue
    .line 750
    const-string v0, "showGenericErrorDialog "

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method private showReCallDialogEx(ILjava/lang/String;I)V
    .locals 7
    .param p1, "resid"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "slot"    # I

    .prologue
    .line 808
    const-string v4, "showReCallDialogEx... "

    invoke-direct {p0, v4}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 811
    iget-object v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 812
    iget-object v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 872
    :goto_0
    return-void

    .line 816
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 820
    .local v3, "msg":Ljava/lang/CharSequence;
    new-instance v1, Lcom/mediatek/incallui/vt/VTCallFragment$10;

    invoke-direct {v1, p0, p2, p3}, Lcom/mediatek/incallui/vt/VTCallFragment$10;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;I)V

    .line 837
    .local v1, "clickListener1":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/mediatek/incallui/vt/VTCallFragment$11;

    invoke-direct {v2, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$11;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 855
    .local v2, "clickListener2":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/mediatek/incallui/vt/VTCallFragment$12;

    invoke-direct {v0, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$12;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 863
    .local v0, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

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

    iput-object v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    .line 868
    iget-object v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 871
    iget-object v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showStartVTRecorderDialog()V
    .locals 5

    .prologue
    .line 1391
    const-string v2, "showStartVTRecorderDialog() ..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1392
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1393
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0352

    new-instance v3, Lcom/mediatek/incallui/vt/VTCallFragment$16;

    invoke-direct {v3, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$16;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1402
    const v2, 0x7f0a006b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1404
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderEntries:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 1405
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderEntries:Ljava/util/ArrayList;

    .line 1410
    :goto_0
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1412
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1414
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1417
    new-instance v1, Lcom/mediatek/incallui/vt/VTCallFragment$17;

    invoke-direct {v1, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$17;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 1455
    .local v1, "myClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderEntries:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1459
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderSelector:Landroid/app/AlertDialog;

    .line 1460
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderSelector:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1461
    return-void

    .line 1407
    .end local v1    # "myClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1489
    return-void
.end method

.method private showVTLocalBrightness()V
    .locals 5

    .prologue
    const v4, 0x7f020213

    const v3, 0x7f020212

    const/4 v2, 0x0

    .line 1228
    const-string v0, "showVTLocalBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1232
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->READY:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v1, :cond_0

    .line 1257
    :goto_0
    return-void

    .line 1237
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 1238
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1239
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1240
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1241
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1242
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1243
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1253
    :goto_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1254
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1255
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 1256
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->delayHideVTIcon()V

    goto :goto_0

    .line 1245
    :cond_1
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1246
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1247
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1248
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1249
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1250
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private showVTLocalContrast()V
    .locals 5

    .prologue
    const v4, 0x7f020215

    const v3, 0x7f020214

    const/4 v2, 0x0

    .line 1261
    const-string v0, "showVTLocalContrast()..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1265
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->READY:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v1, :cond_0

    .line 1290
    :goto_0
    return-void

    .line 1270
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 1271
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1272
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1273
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1274
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1275
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1276
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1286
    :goto_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1287
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1288
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 1289
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->delayHideVTIcon()V

    goto :goto_0

    .line 1278
    :cond_1
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1279
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1280
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1281
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1282
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1283
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private showVTLocalZoom()V
    .locals 5

    .prologue
    const v4, 0x7f020217

    const v3, 0x7f020216

    const/4 v2, 0x0

    .line 1195
    const-string v0, "showVTLocalZoom()..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1199
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->READY:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v1, :cond_0

    .line 1224
    :goto_0
    return-void

    .line 1204
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 1205
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1206
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1207
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1208
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1209
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1210
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1220
    :goto_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1221
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1222
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 1223
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->delayHideVTIcon()V

    goto :goto_0

    .line 1212
    :cond_1
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1213
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1214
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1215
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1216
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1217
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private startRecord(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 1465
    const-string v2, "startVTRecorder() ..."

    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1468
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v2

    sget-object v3, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v2, v3, :cond_1

    .line 1469
    const-string v2, "startRecord: failed, state should be CONNECTED."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1485
    :cond_0
    :goto_0
    return-void

    .line 1473
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getDiskAvailableSize()J

    move-result-wide v2

    const-wide/32 v4, 0x200000

    sub-long v0, v2, v4

    .line 1474
    .local v0, "sdMaxSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 1475
    const/4 v2, 0x2

    if-ne v2, p1, :cond_2

    .line 1476
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/mediatek/incallui/vt/VTCallPresenter;

    invoke-virtual {v2}, Lcom/mediatek/incallui/vt/VTCallPresenter;->startVoiceRecording()V

    goto :goto_0

    .line 1477
    :cond_2
    if-lez p1, :cond_0

    .line 1478
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/mediatek/incallui/vt/VTCallPresenter;

    invoke-virtual {v2, p1, v0, v1}, Lcom/mediatek/incallui/vt/VTCallPresenter;->startVtRecording(IJ)V

    goto :goto_0

    .line 1480
    :cond_3
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_4

    .line 1481
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1483
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateLocalZoomOrBrightness()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1312
    const-string v0, "updateLocalZoomOrBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1315
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-nez v0, :cond_1

    .line 1318
    const-string v0, "updateLocalZoomOrBrightness()... not in any operation, set related view gone."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1320
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1321
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1322
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1349
    :cond_0
    :goto_0
    return-void

    .line 1326
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_4

    .line 1327
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_2

    .line 1328
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1329
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 1330
    :cond_2
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_3

    .line 1331
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1332
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 1333
    :cond_3
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1335
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 1338
    :cond_4
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_5

    .line 1339
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1340
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1341
    :cond_5
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_6

    .line 1342
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1343
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1344
    :cond_6
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1346
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private updatePeerVideoBkgDrawable()V
    .locals 3

    .prologue
    const/high16 v2, -0x1000000

    .line 1601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePeerVideoBkgDrawable()... mVTToReplacePeer / mVTPeerBigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTToReplacePeer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1605
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-eqz v0, :cond_0

    .line 1606
    const-string v0, "updatePeerVideoBkgDrawable()...Already receive first frame of VT Call, so do nothing here. "

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1631
    :goto_0
    return-void

    .line 1610
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTToReplacePeer:Z

    if-eqz v0, :cond_3

    .line 1611
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTReplacePeerBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1612
    const-string v0, "updatePeerVideoBkgDrawable(): replace the peer video with drawable."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1613
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 1614
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTReplacePeerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/vt/VTSurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1616
    :cond_1
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTReplacePeerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/vt/VTSurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1620
    :cond_2
    const-string v0, "VTInCallScreenFlags.getInstance().mVTReplacePeerBitmap is null"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1624
    :cond_3
    const-string v0, "updatePeerVideoBkgDrawable(): replace the peer video with BLACK color."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1625
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_4

    .line 1626
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v2}, Lcom/mediatek/incallui/vt/VTSurfaceView;->setBackgroundColor(I)V

    goto :goto_0

    .line 1628
    :cond_4
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v2}, Lcom/mediatek/incallui/vt/VTSurfaceView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private updateVTLocalPeerDisplay()V
    .locals 3

    .prologue
    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTLocalPeerDisplay()...mVTPeerBigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 898
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_0

    .line 899
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallCommandClient;->setDisplay(Landroid/view/Surface;Landroid/view/Surface;)V

    .line 903
    :goto_0
    return-void

    .line 901
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallCommandClient;->setDisplay(Landroid/view/Surface;Landroid/view/Surface;)V

    goto :goto_0
.end method


# virtual methods
.method public adjustLocalVTButton(II)V
    .locals 9
    .param p1, "highVideoHeight"    # I
    .param p2, "lowVideoHeight"    # I

    .prologue
    .line 1754
    mul-int/lit8 v8, p1, 0x2

    div-int/lit8 v2, v8, 0xa

    .line 1755
    .local v2, "highImageSize":I
    mul-int/lit8 v8, p1, 0x1

    div-int/lit8 v1, v8, 0xa

    .line 1756
    .local v1, "highImageEdge":I
    mul-int/lit8 v8, p2, 0x23

    div-int/lit8 v6, v8, 0x64

    .line 1757
    .local v6, "lowImageSize":I
    mul-int/lit8 v8, p2, 0x1

    div-int/lit8 v5, v8, 0xa

    .line 1759
    .local v5, "lowImageEdge":I
    iget-object v8, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1760
    iget-object v8, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1761
    iget-object v8, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1762
    iget-object v8, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1764
    iget-object v8, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1765
    iget-object v8, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1766
    iget-object v8, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1767
    iget-object v8, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1769
    iget-object v8, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1770
    .local v3, "highUpParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v8, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1771
    .local v0, "highDownParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v8, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1772
    .local v7, "lowUpParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v8, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1774
    .local v4, "lowDownParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1775
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1776
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1777
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1779
    iput v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1780
    iput v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1781
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1782
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1783
    return-void
.end method

.method public amendVtLayout(I)V
    .locals 21
    .param p1, "callCardBottom"    # I

    .prologue
    .line 1657
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getView()Landroid/view/View;

    move-result-object v13

    .line 1658
    .local v13, "view":Landroid/view/View;
    if-eqz v13, :cond_0

    .line 1659
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup$MarginLayoutParams;

    move/from16 v0, p1

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1663
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080032

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v14, v0

    .line 1670
    .local v14, "vtButtonInterval":I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/android/incallui/InCallActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/InCallActivity;->isFloatingWindow()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1671
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/incallui/vt/VTCallFragment;->mScreenHeight:I

    .line 1672
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/incallui/vt/VTCallFragment;->mScreenWidth:I

    .line 1677
    :cond_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/incallui/vt/VTCallFragment;->mScreenWidth:I

    .line 1678
    .local v7, "highVideoWidth":I
    mul-int/lit16 v0, v7, 0x90

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v6, v0, 0xb0

    .line 1681
    .local v6, "highVideoHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/mediatek/incallui/InCallUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/android/incallui/InCallActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/InCallActivity;->isFloatingWindow()Z

    move-result v18

    if-nez v18, :cond_4

    .line 1682
    const/4 v12, 0x0

    .line 1683
    .local v12, "marginTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080049

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v12, v0

    .line 1684
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/incallui/vt/VTCallFragment;->mScreenHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/incallui/vt/VTCallFragment;->mStatusBarHeight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v18, v18, p1

    sub-int v8, v18, v12

    .line 1688
    .end local v12    # "marginTop":I
    .local v8, "lowVideoHeight":I
    :goto_0
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->hasNavigationBar()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1689
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/incallui/vt/VTCallFragment;->mNavigationBarHeight:I

    move/from16 v18, v0

    sub-int v8, v8, v18

    .line 1691
    :cond_2
    mul-int/lit16 v0, v8, 0xb0

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v11, v0, 0x90

    .line 1694
    .local v11, "lowVideoWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/incallui/vt/VTCallFragment;->mScreenWidth:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x7

    div-int/lit8 v9, v18, 0xa

    .line 1695
    .local v9, "lowVideoMaxWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/incallui/vt/VTCallFragment;->mScreenWidth:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x3

    div-int/lit8 v10, v18, 0xa

    .line 1696
    .local v10, "lowVideoMinWidth":I
    const/16 v16, 0x0

    .line 1698
    .local v16, "vtCallButtonMarginBottom":I
    if-le v11, v9, :cond_5

    .line 1700
    move v11, v9

    .line 1701
    move/from16 v16, v8

    .line 1702
    mul-int/lit16 v0, v11, 0x90

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v8, v0, 0xb0

    .line 1703
    sub-int v16, v16, v8

    .line 1704
    if-gez v16, :cond_3

    .line 1705
    const/16 v16, 0x0

    .line 1727
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/incallui/vt/VTSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/incallui/vt/VTSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/incallui/vt/VTSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/incallui/vt/VTSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1734
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/mediatek/incallui/vt/VTCallFragment;->adjustLocalVTButton(II)V

    .line 1737
    move/from16 v17, v11

    .line 1738
    .local v17, "vtCallButtonMarginLeft":I
    move v15, v8

    .line 1739
    .local v15, "vtCallButtonHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/mediatek/incallui/InCallUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/android/incallui/InCallActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/InCallActivity;->isFloatingWindow()Z

    move-result v18

    if-nez v18, :cond_7

    .line 1740
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/android/incallui/InCallActivity;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/InCallActivity;->onFinishVtVideoLayout(III)V

    .line 1744
    :goto_2
    return-void

    .line 1686
    .end local v8    # "lowVideoHeight":I
    .end local v9    # "lowVideoMaxWidth":I
    .end local v10    # "lowVideoMinWidth":I
    .end local v11    # "lowVideoWidth":I
    .end local v15    # "vtCallButtonHeight":I
    .end local v16    # "vtCallButtonMarginBottom":I
    .end local v17    # "vtCallButtonMarginLeft":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/incallui/vt/VTCallFragment;->mScreenHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/incallui/vt/VTCallFragment;->mStatusBarHeight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v18, v18, p1

    sub-int v18, v18, v6

    sub-int v8, v18, v14

    .restart local v8    # "lowVideoHeight":I
    goto/16 :goto_0

    .line 1707
    .restart local v9    # "lowVideoMaxWidth":I
    .restart local v10    # "lowVideoMinWidth":I
    .restart local v11    # "lowVideoWidth":I
    .restart local v16    # "vtCallButtonMarginBottom":I
    :cond_5
    if-ge v11, v10, :cond_3

    .line 1709
    move v11, v10

    .line 1710
    mul-int/lit16 v0, v11, 0x90

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v8, v0, 0xb0

    .line 1711
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/incallui/vt/VTCallFragment;->mScreenHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/incallui/vt/VTCallFragment;->mStatusBarHeight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v18, v18, p1

    sub-int v18, v18, v8

    sub-int v6, v18, v14

    .line 1712
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->hasNavigationBar()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1713
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/incallui/vt/VTCallFragment;->mNavigationBarHeight:I

    move/from16 v18, v0

    sub-int v6, v6, v18

    .line 1715
    :cond_6
    mul-int/lit16 v0, v6, 0xb0

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v7, v0, 0x90

    .line 1717
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/android/incallui/InCallActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/InCallActivity;->isFloatingWindow()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1718
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f08003b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v5, v0

    .line 1719
    .local v5, "addWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f08003a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v4, v0

    .line 1720
    .local v4, "addHeight":I
    add-int/2addr v8, v4

    .line 1721
    add-int/2addr v7, v5

    goto/16 :goto_1

    .line 1742
    .end local v4    # "addHeight":I
    .end local v5    # "addWidth":I
    .restart local v15    # "vtCallButtonHeight":I
    .restart local v17    # "vtCallButtonMarginLeft":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/android/incallui/InCallActivity;

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/incallui/InCallActivity;->onFinishVtVideoLayout(III)V

    goto/16 :goto_2
.end method

.method public answerVTCallPre()V
    .locals 1

    .prologue
    .line 1839
    const-string v0, "answerVTCallPre()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1840
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updatePeerVideoBkgDrawable()V

    .line 1844
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v0, :cond_0

    .line 1845
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_0

    .line 1846
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updateVTLocalPeerDisplay()V

    .line 1847
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTUtils;->setVTVisible(Z)V

    .line 1850
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updateVTScreen()V

    .line 1851
    return-void
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->createPresenter()Lcom/mediatek/incallui/vt/VTCallPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/mediatek/incallui/vt/VTCallPresenter;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/mediatek/incallui/vt/VTCallPresenter;

    invoke-direct {v0}, Lcom/mediatek/incallui/vt/VTCallPresenter;-><init>()V

    return-object v0
.end method

.method public dialVTCallSuccess()V
    .locals 1

    .prologue
    .line 1854
    const-string v0, "dialVTCallSuccess()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1856
    return-void
.end method

.method public dismissVTDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 552
    const-string v0, "dismissVTDialogs() ! "

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 556
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 560
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 563
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 564
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 566
    :cond_2
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 567
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 568
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 570
    :cond_3
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 571
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 572
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;

    .line 574
    :cond_4
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 575
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 580
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    .line 582
    :cond_5
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderSelector:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 583
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderSelector:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 584
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderSelector:Landroid/app/AlertDialog;

    .line 586
    :cond_6
    return-void
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getUi()Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;
    .locals 0

    .prologue
    .line 101
    return-object p0
.end method

.method public getVTScreenMode()Lcom/mediatek/incallui/vt/Constants$VTScreenMode;
    .locals 1

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTScreenMode:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    return-object v0
.end method

.method public handleVTMenuClick(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 950
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 970
    :pswitch_0
    const-string v0, "This is not VT menu item."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 972
    :goto_0
    return-void

    .line 952
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTSwitchCameraClick()V

    goto :goto_0

    .line 955
    :pswitch_2
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTTakePeerPhotoClick()V

    goto :goto_0

    .line 958
    :pswitch_3
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTHideMeClick()V

    goto :goto_0

    .line 961
    :pswitch_4
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTSwapVideoClick()V

    goto :goto_0

    .line 964
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVoiceVideoRecordClick(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 967
    :pswitch_6
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTShowSettingClick()V

    goto :goto_0

    .line 950
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01d0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    .line 147
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 148
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 149
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    iget-object v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 150
    .local v3, "pw":Landroid/os/PowerManager;
    const v4, 0x2000000a

    const-string v5, "VTWakeLock"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 153
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/mediatek/incallui/vt/VTCallPresenter;

    invoke-virtual {v4, v0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->init(Lcom/android/services/telephony/common/Call;)V

    .line 156
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mStatusBarHeight:I

    .line 158
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mNavigationBarHeight:I

    .line 160
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 161
    .local v2, "point":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 162
    iget v4, v2, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mScreenHeight:I

    .line 163
    iget v4, v2, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mScreenWidth:I

    .line 165
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 730
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 732
    .local v0, "id":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 734
    packed-switch v0, :pswitch_data_0

    .line 747
    :goto_0
    :pswitch_0
    return-void

    .line 737
    :pswitch_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->adjustLocalVT(Z)V

    goto :goto_0

    .line 741
    :pswitch_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->adjustLocalVT(Z)V

    goto :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x7f0d0171
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 269
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 270
    const v0, 0x7f11000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 271
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 171
    const v0, 0x7f040060

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/16 v1, 0x65

    .line 176
    const-string v0, "onDestroyView"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    :cond_0
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 184
    return-void
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mAudioModePopupVisible:Z

    .line 893
    return-void
.end method

.method public onFinishLayoutAmend()V
    .locals 2

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/vt/VTSurfaceView;->setVisibility(I)V

    .line 1787
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 946
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 766
    const-string v0, "onStart"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStart()V

    .line 770
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->acquireVtWakeLock()V

    .line 772
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 755
    const-string v0, "onStop"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStop()V

    .line 757
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->dismissAudioModePopup()V

    .line 760
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->releaseVtWakeLock()V

    .line 762
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 926
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/ExtensionManager;->getVTCallExtension()Lcom/mediatek/incallui/ext/VTCallExtension;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/incallui/ext/VTCallExtension;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    :goto_0
    return v2

    .line 931
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 934
    :pswitch_0
    const-string v0, "MotionEvent.ACTION_DOWN"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 931
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onVTClose()V
    .locals 1

    .prologue
    .line 690
    const-string v0, "onVTClose()..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->dismissVTDialogs()V

    .line 693
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->hideLocalZoomOrBrightness(Z)V

    .line 694
    return-void
.end method

.method public onVTHideMeClick()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1016
    const-string v0, "onVTHideMeClick()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v2, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->READY:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v2, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v2, :cond_0

    .line 1020
    const-string v0, "onVTHideMeClick: failed, state should be READY or CONNECTED."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1027
    :goto_0
    return-void

    .line 1024
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 1025
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCommandClient;->hideLocal(Z)V

    .line 1026
    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->hideLocalZoomOrBrightness(Z)V

    goto :goto_0

    .line 1024
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onVTReady()V
    .locals 3

    .prologue
    .line 617
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isDMLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    const-string v0, "Now DM locked, just return"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->unlockPeerVideo()V

    .line 625
    const-string v0, "Now DM not locked, VTManager.getInstance().unlockPeerVideo();"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTCallPresenter;

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->isIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTShowLocalMT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    const-string v0, "- VTSettingUtils.getInstance().mShowLocalMT : 1 !"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 633
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mediatek/incallui/vt/VTCallFragment$9;

    invoke-direct {v2, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$9;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mediatek/incallui/vt/VTCallFragment$8;

    invoke-direct {v2, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$8;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/incallui/vt/VTCallFragment$7;

    invoke-direct {v1, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$7;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;

    .line 682
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 684
    new-instance v0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;ILandroid/app/AlertDialog;)V

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->start()V

    goto/16 :goto_0
.end method

.method public onVTReceiveFirstFrame()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVTReceiveFirstFrame()...  mVTPeerBigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 600
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTSurfaceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v2}, Lcom/mediatek/incallui/vt/VTSurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTSurfaceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v2}, Lcom/mediatek/incallui/vt/VTSurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onVTShowSettingClick()V
    .locals 6

    .prologue
    const v5, 0x7f0c001e

    const v4, 0x7f0a0024

    .line 1061
    const-string v2, "onVTInCallVideoSetting() ! "

    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1063
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v2

    sget-object v3, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v2, v3, :cond_0

    .line 1064
    const-string v2, "onVTShowSettingClick: failed, state should be CONNECTED."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1167
    :goto_0
    return-void

    .line 1068
    :cond_0
    new-instance v1, Lcom/mediatek/incallui/vt/VTCallFragment$13;

    invoke-direct {v1, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$13;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 1128
    .local v1, "myClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1129
    .local v0, "myBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0352

    new-instance v3, Lcom/mediatek/incallui/vt/VTCallFragment$14;

    invoke-direct {v3, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$14;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1138
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v2, :cond_4

    .line 1139
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_1

    .line 1140
    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1164
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 1165
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1142
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_2

    .line 1143
    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1145
    :cond_2
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_3

    .line 1146
    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1149
    :cond_3
    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1153
    :cond_4
    const v2, 0x7f0c001f

    new-instance v3, Lcom/mediatek/incallui/vt/VTCallFragment$15;

    invoke-direct {v3, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$15;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public onVTSwapVideoClick()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1030
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v3, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v3, :cond_2

    .line 1032
    :cond_0
    const-string v0, "onVTSwapVideoClick: failed, peer video is unvisiable now."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1058
    :cond_1
    :goto_0
    return-void

    .line 1037
    :cond_2
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_4

    .line 1040
    :cond_3
    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->hideLocalZoomOrBrightness(Z)V

    .line 1043
    :cond_4
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 1045
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCommandClient;->setVTVisible(Z)V

    .line 1046
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updateVTLocalPeerDisplay()V

    .line 1047
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->setVTVisible(Z)V

    .line 1049
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_5

    .line 1050
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->showVTLocalZoom()V

    .line 1052
    :cond_5
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_6

    .line 1053
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->showVTLocalBrightness()V

    .line 1055
    :cond_6
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_1

    .line 1056
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->showVTLocalContrast()V

    goto :goto_0

    :cond_7
    move v0, v2

    .line 1043
    goto :goto_1
.end method

.method public onVTSwitchCameraClick()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 975
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v2, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->READY:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v2, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v2, :cond_0

    .line 977
    const-string v0, "onVTSwitchCameraClick: failed, state should be READY or CONNECTED."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 995
    :goto_0
    return-void

    .line 981
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVTSwitchCameraClick() / mVTInSwitchCamera: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 982
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    if-eqz v0, :cond_1

    .line 983
    const-string v0, "VTManager is handling switchcamera now, so returns this time."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 988
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    .line 989
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->switchCamera()V

    .line 991
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    .line 994
    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->hideLocalZoomOrBrightness(Z)V

    goto :goto_0

    .line 991
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onVTTakePeerPhotoClick()V
    .locals 2

    .prologue
    .line 998
    const-string v0, "onVTTakePeerPhotoClick()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v1, :cond_1

    .line 1002
    :cond_0
    const-string v0, "onVTTakePeerPhotoClick: failed, peer video is unvisiable now."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1013
    :goto_0
    return-void

    .line 1006
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInSnapshot:Z

    if-eqz v0, :cond_2

    .line 1007
    const-string v0, "onVTTakePeerPhotoClick: failed, VTManager is handling snapshot now."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1011
    :cond_2
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInSnapshot:Z

    .line 1012
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->savePeerPhoto()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 187
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 188
    const-string v0, "onViewCreated()..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 190
    const v0, 0x7f0d0170

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTSurfaceView;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    .line 191
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/vt/VTSurfaceView;->setFocusable(Z)V

    .line 192
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/vt/VTSurfaceView;->setFocusableInTouchMode(Z)V

    .line 194
    const v0, 0x7f0d0174

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTSurfaceView;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    .line 195
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/vt/VTSurfaceView;->setFocusable(Z)V

    .line 196
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/vt/VTSurfaceView;->setFocusableInTouchMode(Z)V

    .line 198
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, p0}, Lcom/mediatek/incallui/vt/VTSurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, p0}, Lcom/mediatek/incallui/vt/VTSurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    .line 202
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    .line 204
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 205
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 208
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v2}, Lcom/mediatek/incallui/vt/VTSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 210
    const v0, 0x7f0d0171

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    .line 211
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 212
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v0, 0x7f0d0172

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    .line 215
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 216
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v0, 0x7f0d0175

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    .line 219
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 220
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v0, 0x7f0d0176

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    .line 223
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 224
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->hideLocalZoomOrBrightness(Z)V

    .line 236
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTOutgoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updatePeerVideoBkgDrawable()V

    .line 242
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/ExtensionManager;->getVTCallExtension()Lcom/mediatek/incallui/ext/VTCallExtension;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallCommandClient;->getService()Lcom/android/services/telephony/common/ICallCommandService;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/mediatek/incallui/ext/VTCallExtension;->onViewCreated(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnTouchListener;Lcom/android/services/telephony/common/ICallCommandService;)V

    .line 248
    return-void
.end method

.method public openVTCallFragment()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1791
    const-string v0, "openVTInCallCanvas!"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1794
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1796
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    if-eqz v0, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/vt/VTSurfaceView;->setVisibility(I)V

    .line 1799
    :cond_0
    return-void
.end method

.method public setVTScreenMode(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    .prologue
    .line 1808
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

    .line 1810
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getVTScreenMode()Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    if-eq v0, p1, :cond_0

    .line 1812
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->openVTCallFragment()V

    .line 1813
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->acquireVtWakeLock()V

    .line 1816
    :cond_0
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getVTScreenMode()Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    if-ne v0, p1, :cond_1

    .line 1818
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1819
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->releaseVtWakeLock()V

    .line 1821
    :cond_1
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTScreenMode:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    .line 1822
    return-void
.end method

.method public showReCallDialog(ILjava/lang/String;I)V
    .locals 1
    .param p1, "resid"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "slot"    # I

    .prologue
    .line 794
    const-string v0, "showReCallDialog... "

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 802
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/incallui/vt/VTCallFragment;->showReCallDialogEx(ILjava/lang/String;I)V

    .line 804
    return-void
.end method

.method public showStorageFullDialog(IZ)V
    .locals 9
    .param p1, "resid"    # I
    .param p2, "isSDCardExist"    # Z

    .prologue
    .line 1531
    const-string v6, "showStorageDialog... "

    invoke-direct {p0, v6}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1534
    iget-object v6, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 1535
    iget-object v6, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1591
    :goto_0
    return-void

    .line 1539
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1542
    .local v4, "msg":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 1543
    .local v5, "oKClickListener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v1, 0x0

    .line 1544
    .local v1, "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/mediatek/incallui/vt/VTCallFragment$18;

    invoke-direct {v2, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$18;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 1549
    .local v2, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    if-eqz p2, :cond_1

    .line 1550
    new-instance v5, Lcom/mediatek/incallui/vt/VTCallFragment$19;

    .end local v5    # "oKClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v5, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$19;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 1565
    .restart local v5    # "oKClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    new-instance v1, Lcom/mediatek/incallui/vt/VTCallFragment$20;

    .end local v1    # "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v1, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$20;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 1576
    .restart local v1    # "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a02eb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1578
    .local v0, "cancelButtonText":Ljava/lang/CharSequence;
    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1080027

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

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

    .line 1583
    .local v3, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_2

    .line 1584
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a003f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1588
    :cond_2
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    .line 1589
    iget-object v6, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1590
    iget-object v6, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1576
    .end local v0    # "cancelButtonText":Ljava/lang/CharSequence;
    .end local v3    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0169

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 275
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 276
    const-string v0, "surfaceChanged : HighVideo"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_1

    .line 281
    const-string v0, "surfaceChanged : LowVideo"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 284
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v0, :cond_2

    .line 289
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updateVTLocalPeerDisplay()V

    .line 291
    const-string v0, "surfaceChanged : CallCommandClient.getInstance().setVTVisible(true) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCommandClient;->setVTVisible(Z)V

    .line 293
    const-string v0, "surfaceChanged : CallCommandClient.getInstance().setVTVisible(true) end ..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 294
    const-string v0, "- set CallCommandClient ready ! "

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->setVTReady()V

    .line 296
    const-string v0, "- finish set CallCommandClient ready ! "

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 298
    :cond_2
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceCreated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 314
    const-string v0, "surfaceDestroyed : HighVideo, set mVTSurfaceChangedH = false"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_1

    .line 322
    const-string v0, "surfaceDestroyed : LowVideo, set mVTSurfaceChangedL = false"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 328
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-nez v0, :cond_2

    .line 331
    const-string v0, "surfaceDestroyed : CallCommandClient.getInstance().setVTVisible(false) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCommandClient;->setVTVisible(Z)V

    .line 336
    const-string v0, "surfaceDestroyed :CallCommandClient.getInstance().setVTVisible(false) end ..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/android/incallui/CallCommandClient;->setDisplay(Landroid/view/Surface;Landroid/view/Surface;)V

    .line 341
    :cond_2
    return-void
.end method

.method public updateVTScreen()V
    .locals 1

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getVTScreenMode()Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updateVTScreen(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V

    .line 1354
    return-void
.end method

.method public updateVTScreen(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    .prologue
    .line 1825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTScreen()... mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1826
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    if-ne v0, p1, :cond_1

    .line 1836
    :cond_0
    :goto_0
    return-void

    .line 1829
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updateLocalZoomOrBrightness()V

    .line 1831
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isDMLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1832
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->hideLocalZoomOrBrightness(Z)V

    goto :goto_0
.end method
