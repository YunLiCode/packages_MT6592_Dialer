.class public Lcom/android/incallui/CallButtonFragment;
.super Lcom/android/incallui/BaseFragment;
.source "CallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/incallui/CallButtonPresenter$CallButtonUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallButtonFragment$InCallMenuState;,
        Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallButtonPresenter;",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        "Landroid/widget/PopupMenu$OnMenuItemClickListener;",
        "Landroid/widget/PopupMenu$OnDismissListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# static fields
.field private static final mFormat:Ljava/lang/String; = "mm:ss"

.field private static mStartTime:J

.field private static sVtButtonHeight:I

.field private static sVtButtonMarginBottom:I

.field private static sVtButtonMarginLeft:I


# instance fields
.field private isNewUI:Z

.field private mAddCallButton:Landroid/view/View;

.field private mAudioButton:Landroid/view/View;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mEndCallButton:Landroid/view/View;

.field private mExtraRowButton:Landroid/view/View;

.field private mGenericMergeButton:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHoldButton:Landroid/view/View;

.field public mIsVTButtonVisible:Z

.field private mManageConferenceButton:Landroid/view/View;

.field private mMenuButton:Landroid/view/View;

.field private mMergeButton:Landroid/view/View;

.field private mMuteButton:Landroid/view/View;

.field private mParentView:Landroid/view/View;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mRecordButton:Landroid/view/View;

.field private mShowDialpadButton:Landroid/widget/ToggleButton;

.field private mSwapButton:Landroid/view/View;

.field private mTicker:Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;

.field private mVTAudio:Landroid/widget/ImageButton;

.field private mVTButtonContainer:Landroid/view/View;

.field private mVTDialpad:Landroid/widget/ToggleButton;

.field private mVTHangUp:Landroid/widget/ImageButton;

.field private mVTMute:Landroid/widget/CompoundButton;

.field private mVTOverflowMenu:Landroid/widget/ImageButton;

.field private mVTPopupMenu:Landroid/widget/PopupMenu;

.field private mVTSwapVideo:Landroid/widget/CompoundButton;

.field private mVoLteAddConferenceMemberButton:Landroid/view/ViewGroup;

.field private mVoLteManageConferenceButton:Landroid/view/ViewGroup;

.field private mVoiceButtonContainer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/incallui/CallButtonFragment;->mStartTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->isNewUI:Z

    .line 973
    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mIsVTButtonVisible:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallButtonFragment;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->onAudioButtonClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/CallButtonFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallButtonFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->onVoiceRecordClickExtra(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 55
    sget-wide v0, Lcom/android/incallui/CallButtonFragment;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/incallui/CallButtonFragment;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallButtonFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/CallButtonFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallButtonFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/CallButtonFragment;)Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallButtonFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTicker:Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/CallButtonFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallButtonFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 756
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 757
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 758
    .local v0, "menu":Landroid/view/Menu;
    const v2, 0x7f11000b

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 759
    invoke-virtual {v1, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 760
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mediatek/incallui/InCallUtils;->setAllMenuVisible(Landroid/view/Menu;Z)V

    .line 761
    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->setupVoiceMenuItems(Landroid/view/Menu;)V

    .line 762
    return-object v1
.end method

.method private constructVTPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 2
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-nez v0, :cond_0

    .line 1059
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    .line 1060
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    const v1, 0x7f11000c

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1061
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/incallui/InCallUtils;->setAllMenuVisible(Landroid/view/Menu;Z)V

    .line 1064
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonFragment;->setupVTMenuItems(Landroid/view/Menu;)V

    .line 1065
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method private handleVTMenuClick(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 1167
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1168
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->handleVTMenuClick(Landroid/view/MenuItem;)V

    .line 1170
    :cond_0
    return-void
.end method

.method private initVTCallButton(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 927
    const v0, 0x7f0d003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoiceButtonContainer:Landroid/view/View;

    .line 928
    const v0, 0x7f0d0167

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTButtonContainer:Landroid/view/View;

    .line 930
    const v0, 0x7f0d0168

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTDialpad:Landroid/widget/ToggleButton;

    .line 931
    const v0, 0x7f0d0169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTAudio:Landroid/widget/ImageButton;

    .line 932
    const v0, 0x7f0d016d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTHangUp:Landroid/widget/ImageButton;

    .line 933
    const v0, 0x7f0d016a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTMute:Landroid/widget/CompoundButton;

    .line 934
    const v0, 0x7f0d016b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    .line 935
    const v0, 0x7f0d016c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTOverflowMenu:Landroid/widget/ImageButton;

    .line 937
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTDialpad:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 938
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTAudio:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 939
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 942
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 944
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 946
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 951
    :goto_0
    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment;->mParentView:Landroid/view/View;

    .line 955
    sget v0, Lcom/android/incallui/CallButtonFragment;->sVtButtonHeight:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginLeft:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginBottom:I

    if-ltz v0, :cond_0

    .line 956
    sget v0, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginLeft:I

    sget v1, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginBottom:I

    sget v2, Lcom/android/incallui/CallButtonFragment;->sVtButtonHeight:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/CallButtonFragment;->setVtButtonSize(III)V

    .line 959
    :cond_0
    return-void

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private initializeOverflowMenu(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 750
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 753
    :cond_1
    return-void
.end method

.method private isAudio(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupported(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAudioButtonClicked()V
    .locals 2

    .prologue
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioButtonClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-static {v0}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->showAudioModePopup()V

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->toggleSpeakerphone()V

    goto :goto_0
.end method

.method private onClickMTK(Landroid/view/View;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1009
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1010
    .local v0, "id":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClickMTK(View "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")..."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1012
    sparse-switch v0, :sswitch_data_0

    .line 1054
    :goto_0
    return v3

    .line 1015
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->initializeOverflowMenu(I)V

    :cond_0
    :goto_1
    move v3, v4

    .line 1054
    goto :goto_0

    .line 1019
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    iget-object v3, p0, Lcom/android/incallui/CallButtonFragment;->mVTDialpad:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto :goto_1

    .line 1022
    :sswitch_2
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->onAudioButtonClicked()V

    goto :goto_1

    .line 1025
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->onVTEndCallClick()V

    goto :goto_1

    .line 1029
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto :goto_1

    .line 1032
    :sswitch_5
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->onVTSwapVideoClick()V

    goto :goto_1

    .line 1035
    :sswitch_6
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v2, :cond_2

    .line 1036
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1038
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/android/incallui/CallButtonFragment;->constructVTPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v1

    .line 1039
    .local v1, "popup":Landroid/widget/PopupMenu;
    if-eqz v1, :cond_0

    .line 1040
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_1

    .line 1045
    .end local v1    # "popup":Landroid/widget/PopupMenu;
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->manageVoLteConf()V

    goto :goto_1

    .line 1048
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->addVoLteConfMember()V

    goto :goto_1

    .line 1012
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0046 -> :sswitch_0
        0x7f0d00ef -> :sswitch_7
        0x7f0d00f2 -> :sswitch_8
        0x7f0d0168 -> :sswitch_1
        0x7f0d0169 -> :sswitch_2
        0x7f0d016a -> :sswitch_4
        0x7f0d016b -> :sswitch_5
        0x7f0d016c -> :sswitch_6
        0x7f0d016d -> :sswitch_3
    .end sparse-switch
.end method

.method private onCreateViewMtk(Landroid/view/View;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0d0045

    const v3, 0x7f0d0044

    const/16 v2, 0x8

    .line 697
    const v1, 0x7f0d0046

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMenuButton:Landroid/view/View;

    .line 698
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/incallui/InCallUtils;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 699
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/view/View;

    .line 700
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/view/View;

    .line 704
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 705
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMenuButton:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 708
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMenuButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 742
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->setupExtraButtonsForVoLte(Landroid/view/View;)V

    .line 743
    return-void

    .line 711
    :cond_3
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "productCharacteristic":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/view/View;

    .line 717
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 718
    if-eqz v0, :cond_6

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 719
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    :cond_4
    :goto_1
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/view/View;

    .line 729
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 730
    if-eqz v0, :cond_7

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 731
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMenuButton:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 738
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMenuButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMenuButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 721
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 733
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private onVTSwapVideoClick()V
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1163
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->onVTSwapVideoClick()V

    .line 1165
    :cond_0
    return-void
.end method

.method private onVoiceRecordClick(Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 814
    const-string v1, "onVoiceRecordClick"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "title":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 820
    :goto_0
    return-void

    .line 819
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->onVoiceRecordClickExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onVoiceRecordClickExtra(Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 823
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->isExternalStorageMounted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 824
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->diskSpaceAvailable(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 831
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallPresenter;->handleStorageFull(Z)V

    goto :goto_0

    .line 835
    :cond_2
    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 836
    const-string v0, "want to startRecord"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 837
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->voiceRecordClicked()V

    .line 839
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->isNewUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 840
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/incallui/CallButtonFragment;->mStartTime:J

    .line 841
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mTicker:Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 844
    :cond_3
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->stopRecordClicked()V

    .line 847
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->isNewUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mTicker:Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 849
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a037e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setEnableForVT(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTDialpad:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 963
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTAudio:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 964
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 965
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 966
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 967
    if-eqz p1, :cond_0

    .line 968
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 970
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 971
    return-void

    .line 970
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setVtButtonSize(III)V
    .locals 2
    .param p1, "marginLeft"    # I
    .param p2, "marginBottom"    # I
    .param p3, "height"    # I

    .prologue
    .line 1233
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mVTButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1234
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1235
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1236
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1237
    return-void
.end method

.method private setupExtraButtonsForVoLte(Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 1263
    const v0, 0x7f0d00ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoLteManageConferenceButton:Landroid/view/ViewGroup;

    .line 1265
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoLteManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1268
    const v0, 0x7f0d00f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoLteAddConferenceMemberButton:Landroid/view/ViewGroup;

    .line 1270
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoLteAddConferenceMemberButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1271
    return-void
.end method

.method private setupVoiceMenuItems(Landroid/view/Menu;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v10, 0x0

    .line 766
    const-string v9, "setupVoiceMenuItems()..."

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    const v9, 0x7f0d01ce

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 768
    .local v0, "addMenu":Landroid/view/MenuItem;
    const v9, 0x7f0d01cf

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 769
    .local v6, "mergeMenu":Landroid/view/MenuItem;
    const v9, 0x7f0d01d4

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 770
    .local v7, "recordMenu":Landroid/view/MenuItem;
    const v9, 0x7f0d01cd

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 772
    .local v8, "voiceAnswerMenu":Landroid/view/MenuItem;
    const v9, 0x7f0d01d7

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 773
    .local v3, "hangupAllMenu":Landroid/view/MenuItem;
    const v9, 0x7f0d01d8

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 774
    .local v4, "hangupHoldingMenu":Landroid/view/MenuItem;
    const v9, 0x7f0d01d9

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 775
    .local v2, "hangupActiveAndAnswerWaitingMenu":Landroid/view/MenuItem;
    const v9, 0x7f0d01da

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 777
    .local v1, "ectMenu":Landroid/view/MenuItem;
    const v9, 0x7f0d01cc

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 779
    .local v5, "holdMenu":Landroid/view/MenuItem;
    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 780
    iget-boolean v9, p0, Lcom/android/incallui/CallButtonFragment;->isNewUI:Z

    if-eqz v9, :cond_2

    .line 781
    if-eqz v7, :cond_0

    .line 782
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 794
    :cond_0
    :goto_0
    sget-boolean v9, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanAddCall:Z

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 795
    sget-boolean v9, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanMerge:Z

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 796
    sget-boolean v9, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanVTVoiceAnswer:Z

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 797
    sget-boolean v9, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanHangupAll:Z

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 798
    sget-boolean v9, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanHangupHolding:Z

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 799
    sget-boolean v9, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanHangupActiveAndAnswerWaiting:Z

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 800
    sget-boolean v9, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanECT:Z

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 802
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isDMLocked()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 811
    :cond_1
    :goto_1
    return-void

    .line 785
    :cond_2
    sget-boolean v9, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanRecording:Z

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 786
    sget-boolean v9, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanRecording:Z

    if-eqz v9, :cond_0

    .line 787
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallPresenter;->isRecording()Z

    move-result v9

    if-nez v9, :cond_3

    .line 788
    const v9, 0x7f0a000b

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 790
    :cond_3
    const v9, 0x7f0a000c

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 806
    :cond_4
    sget-boolean v9, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanRecording:Z

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 807
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 808
    sget-boolean v9, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sDisableAdd:Z

    if-eqz v9, :cond_1

    .line 809
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private showAudioModePopup()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 568
    const-string v6, "showAudioPopup()..."

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    new-instance v6, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/view/View;

    invoke-direct {v6, v9, v10}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 571
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    const v9, 0x7f110005

    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v10}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 573
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 574
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 576
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 583
    .local v2, "menu":Landroid/view/Menu;
    const v6, 0x7f0d01c5

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 584
    .local v3, "speakerItem":Landroid/view/MenuItem;
    sget v6, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-direct {p0, v6}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 590
    const v6, 0x7f0d01c6

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 591
    .local v1, "earpieceItem":Landroid/view/MenuItem;
    const v6, 0x7f0d01c7

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 593
    .local v5, "wiredHeadsetItem":Landroid/view/MenuItem;
    sget v6, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    invoke-direct {p0, v6}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v4

    .line 594
    .local v4, "usingHeadset":Z
    if-nez v4, :cond_1

    move v6, v7

    :goto_0
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 595
    if-nez v4, :cond_0

    move v8, v7

    :cond_0
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 596
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 597
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 602
    const v6, 0x7f0d01c8

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 603
    .local v0, "bluetoothItem":Landroid/view/MenuItem;
    sget v6, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-direct {p0, v6}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 607
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->show()V

    .line 612
    iput-boolean v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    .line 613
    return-void

    .end local v0    # "bluetoothItem":Landroid/view/MenuItem;
    :cond_1
    move v6, v8

    .line 594
    goto :goto_0
.end method

.method private updateAudioButtons(I)V
    .locals 15
    .param p1, "supportedModes"    # I

    .prologue
    .line 466
    sget v13, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-direct {p0, v13}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v4

    .line 467
    .local v4, "bluetoothSupported":Z
    sget v13, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-direct {p0, v13}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v12

    .line 469
    .local v12, "speakerSupported":Z
    const/4 v3, 0x0

    .line 470
    .local v3, "audioButtonEnabled":Z
    const/4 v2, 0x0

    .line 471
    .local v2, "audioButtonChecked":Z
    const/4 v8, 0x0

    .line 473
    .local v8, "showMoreIndicator":Z
    const/4 v6, 0x0

    .line 474
    .local v6, "showBluetoothIcon":Z
    const/4 v10, 0x0

    .line 475
    .local v10, "showSpeakerphoneOnIcon":Z
    const/4 v9, 0x0

    .line 476
    .local v9, "showSpeakerphoneOffIcon":Z
    const/4 v7, 0x0

    .line 478
    .local v7, "showHandsetIcon":Z
    const/4 v11, 0x0

    .line 480
    .local v11, "showToggleIndicator":Z
    if-eqz v4, :cond_2

    .line 481
    const-string v13, "updateAudioButtons - popup menu mode"

    invoke-static {p0, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    const/4 v3, 0x1

    .line 484
    const/4 v8, 0x1

    .line 490
    sget v13, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-direct {p0, v13}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 491
    const/4 v6, 0x1

    .line 530
    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "audioButtonEnabled: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "audioButtonChecked: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "showMoreIndicator: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "showBluetoothIcon: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "showSpeakerphoneOnIcon: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "showSpeakerphoneOffIcon: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "showHandsetIcon: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, "HIDDEN":I
    const/16 v1, 0xff

    .line 542
    .local v1, "VISIBLE":I
    iget-object v13, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/view/View;

    invoke-virtual {v13, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 543
    iget-object v13, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/view/View;

    invoke-virtual {v13, v2}, Landroid/view/View;->setSelected(Z)V

    .line 545
    iget-object v13, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    .line 546
    .local v5, "layers":Landroid/graphics/drawable/LayerDrawable;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\'layers\' drawable: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    const v13, 0x7f0d01aa

    invoke-virtual {v5, v13}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v11, :cond_5

    const/16 v13, 0xff

    :goto_1
    invoke-virtual {v14, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 551
    const v13, 0x7f0d01ab

    invoke-virtual {v5, v13}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v8, :cond_6

    const/16 v13, 0xff

    :goto_2
    invoke-virtual {v14, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 554
    const v13, 0x7f0d01ac

    invoke-virtual {v5, v13}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v6, :cond_7

    const/16 v13, 0xff

    :goto_3
    invoke-virtual {v14, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 557
    const v13, 0x7f0d01ad

    invoke-virtual {v5, v13}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v7, :cond_8

    const/16 v13, 0xff

    :goto_4
    invoke-virtual {v14, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 560
    const v13, 0x7f0d01ae

    invoke-virtual {v5, v13}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v10, :cond_9

    const/16 v13, 0xff

    :goto_5
    invoke-virtual {v14, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 563
    const v13, 0x7f0d01af

    invoke-virtual {v5, v13}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v9, :cond_a

    const/16 v13, 0xff

    :goto_6
    invoke-virtual {v14, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 565
    return-void

    .line 492
    .end local v0    # "HIDDEN":I
    .end local v1    # "VISIBLE":I
    .end local v5    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    sget v13, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-direct {p0, v13}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 493
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 495
    :cond_1
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 501
    :cond_2
    if-eqz v12, :cond_4

    .line 502
    const-string v13, "updateAudioButtons - speaker toggle mode"

    invoke-static {p0, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    const/4 v3, 0x1

    .line 508
    sget v13, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-direct {p0, v13}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v2

    .line 511
    const/4 v11, 0x1

    .line 513
    sget v13, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-direct {p0, v13}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v10

    .line 514
    if-nez v10, :cond_3

    const/4 v9, 0x1

    :goto_7
    goto/16 :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_7

    .line 516
    :cond_4
    const-string v13, "updateAudioButtons - disabled..."

    invoke-static {p0, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    const/4 v3, 0x0

    .line 521
    const/4 v2, 0x0

    .line 524
    const/4 v11, 0x1

    .line 525
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 548
    .restart local v0    # "HIDDEN":I
    .restart local v1    # "VISIBLE":I
    .restart local v5    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    .line 551
    :cond_6
    const/4 v13, 0x0

    goto :goto_2

    .line 554
    :cond_7
    const/4 v13, 0x0

    goto :goto_3

    .line 557
    :cond_8
    const/4 v13, 0x0

    goto :goto_4

    .line 560
    :cond_9
    const/4 v13, 0x0

    goto :goto_5

    .line 563
    :cond_a
    const/4 v13, 0x0

    goto :goto_6
.end method


# virtual methods
.method public amendCallButtonLayout(III)V
    .locals 1
    .param p1, "marginLeft"    # I
    .param p2, "marginBottom"    # I
    .param p3, "height"    # I

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    sget v0, Lcom/android/incallui/CallButtonFragment;->sVtButtonHeight:I

    if-ne v0, p3, :cond_0

    sget v0, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginLeft:I

    if-ne v0, p1, :cond_0

    sget v0, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginBottom:I

    if-eq v0, p2, :cond_1

    .line 1225
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/CallButtonFragment;->setVtButtonSize(III)V

    .line 1226
    sput p3, Lcom/android/incallui/CallButtonFragment;->sVtButtonHeight:I

    .line 1227
    sput p1, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginLeft:I

    .line 1228
    sput p2, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginBottom:I

    .line 1230
    :cond_1
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/CallButtonPresenter;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallButtonPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->createPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    return-object v0
.end method

.method public dismissPopupMenu()V
    .locals 1

    .prologue
    .line 1202
    const-string v0, "dismissPopUpMenu~~"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1204
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    .line 1209
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1212
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_2

    .line 1213
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1215
    :cond_2
    return-void
.end method

.method public displayDialpad(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 626
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTDialpad:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 627
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->displayDialpad(Z)V

    .line 630
    :cond_0
    return-void
.end method

.method public displayManageConferencePanel(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->displayManageConferencePanel(Z)V

    .line 654
    :cond_0
    return-void
.end method

.method public displayVoLteManageConfPanel(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1289
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1290
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->displayVoLteManageConfPanel(Z)V

    .line 1292
    :cond_0
    return-void
.end method

.method public enableAddCall(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 359
    return-void
.end method

.method public enableEnd(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1252
    return-void
.end method

.method public enableHold(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 339
    return-void
.end method

.method public enableMute(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 324
    return-void
.end method

.method public enableRecord(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 867
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->isNewUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 870
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->isNewUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/view/View;

    sget-boolean v1, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanRecording:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 873
    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mTicker:Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 875
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a037e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 879
    :cond_0
    return-void
.end method

.method public enableSwap(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1255
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getShowDialpadButton()Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    .locals 0

    .prologue
    .line 92
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    move-result-object v0

    return-object v0
.end method

.method public handleMenuItemClickMTK(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onMenuItemClick: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  title: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1155
    const-string v0, "This is not MTK menu item."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1156
    const/4 v0, 0x0

    .line 1158
    :goto_0
    return v0

    .line 1120
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonPresenter;->holdClicked(Z)V

    :goto_1
    :pswitch_1
    move v0, v1

    .line 1158
    goto :goto_0

    .line 1123
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto :goto_1

    .line 1126
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->mergeClicked()V

    goto :goto_1

    .line 1129
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->onVoiceRecordClick(Landroid/view/MenuItem;)V

    goto :goto_1

    .line 1135
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->hangupAllCalls()V

    goto :goto_1

    .line 1138
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->hangupHoldingCall()V

    goto :goto_1

    .line 1141
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->hangupActiveAndAnswerWaiting()V

    goto :goto_1

    .line 1144
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->explicitCallTransfer()V

    goto :goto_1

    .line 1152
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->handleVTMenuClick(Landroid/view/MenuItem;)V

    goto :goto_1

    .line 1118
    :pswitch_data_0
    .packed-switch 0x7f0d01cc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_4
        :pswitch_9
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public hideExtraRow()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mExtraRowButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 682
    return-void
.end method

.method public isDialpadVisible()Z
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    .line 637
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVTButtonVisible()Z
    .locals 1

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mIsVTButtonVisible:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 218
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 224
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mContext:Landroid/content/Context;

    .line 226
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 247
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 252
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

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->onClickMTK(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    :goto_0
    return-void

    .line 260
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 274
    const-string v1, "onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto :goto_0

    .line 265
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->mergeClicked()V

    goto :goto_0

    .line 268
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->swapClicked()V

    goto :goto_0

    .line 271
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto :goto_0

    .line 260
    :sswitch_data_0
    .sparse-switch
        0x7f0d002a -> :sswitch_3
        0x7f0d0042 -> :sswitch_2
        0x7f0d0044 -> :sswitch_0
        0x7f0d0045 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mCalendar:Ljava/util/Calendar;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;-><init>(Lcom/android/incallui/CallButtonFragment;Lcom/android/incallui/CallButtonFragment$1;)V

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTicker:Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;

    .line 102
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "parent":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/incallui/CallButtonFragment;->isNewUI:Z

    if-eqz v1, :cond_1

    .line 111
    const v1, 0x7f040006

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 117
    :goto_0
    const v1, 0x7f0d003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mExtraRowButton:Landroid/view/View;

    .line 119
    const v1, 0x7f0d00eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    .line 120
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$1;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v1, 0x7f0d00f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mGenericMergeButton:Landroid/view/View;

    .line 127
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mGenericMergeButton:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$2;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v1, 0x7f0d003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    .line 135
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$3;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v2}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    const v1, 0x7f0d0040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/view/View;

    .line 147
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$4;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v1, 0x7f0d003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/view/View;

    .line 156
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$5;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-boolean v1, p0, Lcom/android/incallui/CallButtonFragment;->isNewUI:Z

    if-eqz v1, :cond_0

    .line 165
    const v1, 0x7f0d0047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/view/View;

    .line 166
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$6;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$6;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/view/View;

    sget-boolean v2, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanRecording:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 183
    :cond_0
    const v1, 0x7f0d0041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/view/View;

    .line 184
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$7;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$7;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v1, 0x7f0d002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/ToggleButton;

    .line 193
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v1, 0x7f0d0042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/view/View;

    .line 203
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->onCreateViewMtk(Landroid/view/View;)V

    .line 210
    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->initVTCallButton(Landroid/view/View;)V

    .line 213
    return-object v0

    .line 114
    :cond_1
    const v1, 0x7f040005

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    .line 421
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onMenuItemClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  title: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInCallUIExtension()Lcom/mediatek/incallui/ext/InCallUIExtension;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/incallui/ext/InCallUIExtension;->handleMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v3

    .line 382
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonFragment;->handleMenuItemClickMTK(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    .line 389
    .local v0, "mode":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick:  unexpected View ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (MenuItem = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0

    .line 391
    :pswitch_0
    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    .line 392
    goto :goto_1

    .line 397
    :pswitch_1
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    .line 398
    goto :goto_1

    .line 400
    :pswitch_2
    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    .line 401
    goto :goto_1

    .line 389
    :pswitch_data_0
    .packed-switch 0x7f0d01c5
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 909
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonFragment;->handleMenuItemClickMTK(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 242
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    .line 243
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1189
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/ExtensionManager;->getCallButtonExtension()Lcom/mediatek/incallui/ext/CallButtonExtension;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/incallui/ext/CallButtonExtension;->onViewCreated(Landroid/content/Context;Landroid/view/View;)V

    .line 1190
    return-void
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 454
    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->showAudioModePopup()V

    .line 459
    :cond_0
    return-void
.end method

.method public setAudio(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 364
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->refreshAudioModePopup()V

    .line 365
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->isNoCallExist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->isVTCall()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallButtonFragment;->updateCallButton(Z)V

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 295
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 296
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 297
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 298
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 305
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 307
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->setEnableForVT(Z)V

    .line 309
    return-void
.end method

.method public setHold(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 329
    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 316
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 318
    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 370
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->refreshAudioModePopup()V

    .line 371
    return-void
.end method

.method public setupMenuItems(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1173
    const-string v0, "setupMenuItems()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->isNoCallExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    const-string v0, "There is no call exist any more, just return"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1184
    :goto_0
    return-void

    .line 1178
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->isVTCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1179
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonFragment;->setupVTMenuItems(Landroid/view/Menu;)V

    goto :goto_0

    .line 1181
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->setupVoiceMenuItems(Landroid/view/Menu;)V

    .line 1182
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInCallUIExtension()Lcom/mediatek/incallui/ext/InCallUIExtension;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/mediatek/incallui/ext/InCallUIExtension;->setupMenuItems(Landroid/view/Menu;Lcom/android/services/telephony/common/Call;)V

    goto :goto_0
.end method

.method public setupVTMenuItems(Landroid/view/Menu;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1069
    const-string v6, "setupVTMenuItems()..."

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    const v6, 0x7f0d01d0

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1071
    .local v2, "switchCameraMenu":Landroid/view/MenuItem;
    const v6, 0x7f0d01d1

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1072
    .local v3, "takePeerPhotoMenu":Landroid/view/MenuItem;
    const v6, 0x7f0d01d3

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1073
    .local v0, "hideLocalVideoMenu":Landroid/view/MenuItem;
    const v6, 0x7f0d01d2

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1074
    .local v1, "swapVideosMenu":Landroid/view/MenuItem;
    const v6, 0x7f0d01d5

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1075
    .local v4, "videoRecordMenu":Landroid/view/MenuItem;
    const v6, 0x7f0d01d6

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1077
    .local v5, "videoSettingMenu":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1078
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1079
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1080
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-eqz v6, :cond_1

    .line 1081
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0a0048

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1085
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v6}, Lcom/android/incallui/CallButtonPresenter;->shouldSwitchCameraVisible()Z

    move-result v6

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1086
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1087
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->isRecording()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1088
    const v6, 0x7f0a0072

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1093
    :goto_2
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isDMLocked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1094
    const-string v6, "setupVTMenuItems()... DM lock, just return"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1112
    :goto_3
    return-void

    :cond_0
    move v6, v8

    .line 1077
    goto :goto_0

    .line 1083
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0a0047

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    .line 1090
    :cond_2
    const v6, 0x7f0a0073

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 1098
    :cond_3
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1099
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1101
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->isDialpadVisible()Z

    move-result v6

    if-nez v6, :cond_4

    move v8, v7

    :cond_4
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1104
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1106
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v6}, Lcom/android/incallui/CallButtonPresenter;->shouldSwitchCameraEnable()Z

    move-result v6

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1108
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v6}, Lcom/android/incallui/CallButtonPresenter;->shouldVTRecordEnable()Z

    move-result v6

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1109
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v6}, Lcom/android/incallui/CallButtonPresenter;->shouldVideoSettingEnable()Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1111
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/incallui/ext/ExtensionManager;->getVTCallExtension()Lcom/mediatek/incallui/ext/VTCallExtension;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/mediatek/incallui/ext/VTCallExtension;->onPrepareOptionMenu(Landroid/view/Menu;)Z

    goto :goto_3
.end method

.method public showAddCall(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 354
    return-void

    .line 353
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showGenericMergeButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 670
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mExtraRowButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mGenericMergeButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoLteAddConferenceMemberButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoLteManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 677
    return-void
.end method

.method public showHold(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 334
    return-void

    .line 333
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showManageConferenceCallButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 659
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mExtraRowButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mGenericMergeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoLteAddConferenceMemberButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoLteManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 666
    return-void
.end method

.method public showMerge(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 344
    return-void

    .line 343
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSwap(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 349
    return-void

    .line 348
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showVoLteAddConfMemberButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1275
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mExtraRowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1276
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoLteAddConferenceMemberButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1277
    return-void
.end method

.method public showVoLteManageConfCallButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1281
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mExtraRowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1282
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoLteManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1283
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mGenericMergeButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1285
    return-void
.end method

.method public updateCallButton(Z)V
    .locals 4
    .param p1, "isVT"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVTButtonVisible()... isVT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 977
    if-eqz p1, :cond_1

    .line 978
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 979
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoiceButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 980
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f0d0169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/view/View;

    .line 985
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mIsVTButtonVisible:Z

    .line 1002
    :goto_0
    return-void

    .line 988
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoiceButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 990
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 991
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 992
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f0d003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/view/View;

    .line 998
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 1000
    iput-boolean v2, p0, Lcom/android/incallui/CallButtonFragment;->mIsVTButtonVisible:Z

    goto :goto_0
.end method

.method public updateVTCallButton()V
    .locals 2

    .prologue
    .line 1243
    const-string v0, "updateVTCallButton()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 1247
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1248
    return-void

    .line 1247
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
