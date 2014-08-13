.class public Lcom/android/dialer/DialtactsActivity;
.super Lcom/android/contacts/common/activity/TransactionSafeActivity;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadFragmentStartedListener;
.implements Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;
.implements Lcom/android/dialer/list/OnListFragmentScrolledListener;
.implements Lcom/android/dialer/list/PhoneFavoriteFragment$OnShowAllContactsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/DialtactsActivity$OverflowPopupMenu;
    }
.end annotation


# static fields
.field private static final ACTION_TOUCH_DIALER:Ljava/lang/String; = "com.android.phone.action.TOUCH_DIALER"

.field private static final ACTIVITY_REQUEST_CODE_VOICE_SEARCH:I = 0x1

.field static final ADD_CALL_MODE_KEY:Ljava/lang/String; = "add_call_mode"

.field private static final CALL_ORIGIN_DIALTACTS:Ljava/lang/String; = "com.android.dialer.DialtactsActivity"

.field private static final CALL_SETTINGS_CLASS_NAME:Ljava/lang/String; = "com.mediatek.settings.CallSettings"

.field public static final DEBUG:Z = false

.field private static final KEY_CLOSE_BUTTON_VISIBLE:Ljava/lang/String; = "close_button_visible"

.field private static final KEY_FIRST_LAUNCH:Ljava/lang/String; = "first_launch"

.field private static final KEY_IN_DIALPAD_SEARCH_UI:Ljava/lang/String; = "in_dialpad_search_ui"

.field private static final KEY_IN_REGULAR_SEARCH_UI:Ljava/lang/String; = "in_regular_search_ui"

.field private static final KEY_SEARCH_QUERY:Ljava/lang/String; = "search_query"

.field private static final PHONE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field public static final SHARED_PREFS_NAME:Ljava/lang/String; = "com.android.dialer_preferences"

.field private static final SUBACTIVITY_ACCOUNT_FILTER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DialtactsActivity"

.field private static final TAG_DIALPAD_FRAGMENT:Ljava/lang/String; = "dialpad"

.field private static final TAG_FAVORITES_FRAGMENT:Ljava/lang/String; = "favorites"

.field private static final TAG_REGULAR_SEARCH_FRAGMENT:Ljava/lang/String; = "search"

.field private static final TAG_SEARCH_FRAGMENT:Ljava/lang/String; = "search_frame"

.field private static final TAG_SMARTDIAL_SEARCH_FRAGMENT:Ljava/lang/String; = "smartdial"


# instance fields
.field private mActionBar:Landroid/view/View;

.field private mBottomPaddingView:Landroid/view/View;

.field private mCallHistoryButton:Landroid/view/View;

.field private mClearSearchOnPause:Z

.field private mDialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

.field private mDialpadButton:Landroid/view/View;

.field private mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

.field private mEmptyFragment:Lcom/mediatek/dialer/dialpad/NoSearchResultFragment;

.field private mFilterText:Ljava/lang/String;

.field private mFirstLaunch:Z

.field private mFirstQuery:Z

.field private mFragmentsFrame:Landroid/view/View;

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field private mInCallDialpadUp:Z

.field private mInDialpadSearch:Z

.field private mInRegularSearch:Z

.field private mIsCloseButtonVisible:Z

.field private mMenuButton:Landroid/view/View;

.field private mOverflowMenu:Landroid/widget/PopupMenu;

.field private mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;

.field private final mPhoneFavoriteListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

.field private final mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

.field private final mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

.field private mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchView:Landroid/widget/EditText;

.field private mSearchViewCloseButton:Landroid/view/View;

.field private mSearchViewContainer:Landroid/view/View;

.field private mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;-><init>()V

    .line 241
    new-instance v0, Lcom/android/dialer/DialtactsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$1;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    .line 275
    new-instance v0, Lcom/android/dialer/DialtactsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$2;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

    .line 727
    new-instance v0, Lcom/android/dialer/DialtactsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$3;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 969
    new-instance v0, Lcom/android/dialer/DialtactsActivity$7;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$7;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

    .line 1316
    iput-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mFirstQuery:Z

    .line 1320
    iput-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mIsCloseButtonVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/PhoneFavoriteFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/dialer/DialtactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/dialer/DialtactsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/dialer/DialtactsActivity;->mClearSearchOnPause:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/dialer/DialtactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/dialer/DialtactsActivity;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/DialtactsActivity;->enterSearchUi(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/SmartDialSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/RegularSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/dialer/DialtactsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/dialer/DialtactsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mBottomPaddingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/dialer/DialtactsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFragmentsFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/dialer/DialtactsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/dialpad/DialpadFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/dialer/DialtactsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/dialer/DialtactsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/dialer/DialtactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->isDialpadShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/dialer/DialtactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mFirstQuery:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/dialer/DialtactsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/dialer/DialtactsActivity;->mFirstQuery:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/dialer/DialtactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->getInSearchUi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/dialer/DialtactsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewCloseButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/dialer/DialtactsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/dialer/DialtactsActivity;->mIsCloseButtonVisible:Z

    return p1
.end method

.method private displayFragment(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 871
    const-string v2, "vnd.android.cursor.dir/calls"

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 873
    .local v1, "recentCallsRequest":Z
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 874
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->finish()V

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v2, :cond_0

    .line 879
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->phoneIsInUse()Z

    move-result v0

    .line 880
    .local v0, "phoneIsInUse":Z
    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 881
    :cond_2
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    .line 882
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->isVisible()Z

    move-result v2

    if-nez v2, :cond_3

    .line 883
    iput-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mInCallDialpadUp:Z

    .line 885
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/dialer/DialtactsActivity;->showDialpadFragment(Z)V

    goto :goto_0
.end method

.method private enterSearchUi(ZLjava/lang/String;)V
    .locals 7
    .param p1, "smartDialSearch"    # Z
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1053
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1126
    :goto_0
    return-void

    .line 1064
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 1072
    .local v3, "transaction":Landroid/app/FragmentTransaction;
    iget-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    if-eqz v4, :cond_4

    .line 1073
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1087
    :cond_1
    :goto_1
    if-eqz p1, :cond_6

    .line 1088
    const-string v2, "smartdial"

    .line 1092
    .local v2, "tag":Ljava/lang/String;
    :goto_2
    iput-boolean p1, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    .line 1093
    if-nez p1, :cond_7

    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    .line 1095
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/list/SearchFragment;

    .line 1096
    .local v1, "fragment":Lcom/android/dialer/list/SearchFragment;
    if-nez v1, :cond_2

    .line 1097
    if-eqz p1, :cond_8

    .line 1098
    new-instance v1, Lcom/android/dialer/list/SmartDialSearchFragment;

    .end local v1    # "fragment":Lcom/android/dialer/list/SearchFragment;
    invoke-direct {v1}, Lcom/android/dialer/list/SmartDialSearchFragment;-><init>()V

    .line 1111
    .restart local v1    # "fragment":Lcom/android/dialer/list/SearchFragment;
    :cond_2
    :goto_4
    const v0, 0x7f0d00e0

    .line 1112
    .local v0, "anchorViewId":I
    invoke-static {p0}, Lcom/android/dialer/util/OrientationUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1113
    const-string v4, "DialtactsActivity"

    const-string v6, "Tablet landscape support"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const v0, 0x7f0d00e5

    .line 1116
    :cond_3
    invoke-virtual {v3, v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1118
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1119
    invoke-virtual {v1, p2, v5}, Lcom/android/dialer/list/SearchFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 1124
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 1074
    .end local v0    # "anchorViewId":I
    .end local v1    # "fragment":Lcom/android/dialer/list/SearchFragment;
    .end local v2    # "tag":Ljava/lang/String;
    :cond_4
    iget-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    if-eqz v4, :cond_5

    .line 1075
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 1079
    :cond_5
    invoke-static {p0}, Lcom/android/dialer/util/OrientationUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1080
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 1090
    :cond_6
    const-string v2, "search"

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_2

    :cond_7
    move v4, v5

    .line 1093
    goto :goto_3

    .line 1100
    .restart local v1    # "fragment":Lcom/android/dialer/list/SearchFragment;
    :cond_8
    new-instance v1, Lcom/android/dialer/list/RegularSearchFragment;

    .end local v1    # "fragment":Lcom/android/dialer/list/SearchFragment;
    invoke-direct {v1}, Lcom/android/dialer/list/RegularSearchFragment;-><init>()V

    .restart local v1    # "fragment":Lcom/android/dialer/list/SearchFragment;
    goto :goto_4
.end method

.method private exitSearchUi()V
    .locals 4

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1151
    :goto_0
    return-void

    .line 1144
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentManager;->popBackStackImmediate(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    :goto_1
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->setNotInSearchUi()V

    goto :goto_0

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitSearchUi() popBackStackImmediate Fail! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/dialer/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private fixIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 831
    const-string v0, "android.intent.action.CALL_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    const-string v0, "call_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 834
    invoke-virtual {p0, p1}, Lcom/android/dialer/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 836
    :cond_0
    return-void
.end method

.method public static getAddNumberToContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1235
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1236
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1237
    return-object v0
.end method

.method public static getCallSettingsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1156
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.mediatek.settings.CallSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1157
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1158
    return-object v0
.end method

.method private getInSearchUi()Z
    .locals 1

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInsertContactWithNameIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1242
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1243
    return-object v0
.end method

.method private hideDialpadAndSearchUi()V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 745
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    .line 746
    return-void
.end method

.method private hideInputMethod(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1042
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/dialer/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1044
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1045
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1047
    :cond_0
    return-void
.end method

.method private isDialIntent(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 908
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.phone.action.TOUCH_DIALER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 922
    :cond_0
    :goto_0
    return v2

    .line 915
    :cond_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 916
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 917
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_2

    const-string v3, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 922
    .end local v1    # "data":Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getDialtactsExtension()Lcom/mediatek/contacts/ext/DialtactsExtension;

    move-result-object v2

    const-string v3, "ExtensionForOP01"

    invoke-virtual {v2, p1, v3}, Lcom/mediatek/contacts/ext/DialtactsExtension;->checkComponentName(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private isDialpadShowing()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSendKeyWhileInCall(Landroid/content/Intent;Z)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "recentCallsRequest"    # Z

    .prologue
    const/4 v3, 0x0

    .line 848
    if-eqz p2, :cond_0

    .line 849
    const-string v4, "call_key"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 852
    .local v0, "callKey":Z
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 853
    .local v2, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 854
    const/4 v3, 0x1

    .line 861
    .end local v0    # "callKey":Z
    .end local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v3

    .line 856
    .restart local v0    # "callKey":Z
    :catch_0
    move-exception v1

    .line 857
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "DialtactsActivity"

    const-string v5, "Failed to handle send while in call"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static openTelephonySetting(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 579
    invoke-static {}, Lcom/android/dialer/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 580
    .local v0, "settingsIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 581
    return-void
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 1218
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/dialer/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1220
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private prepareSearchView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 694
    const v4, 0x7f0d00b6

    invoke-virtual {p0, v4}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewContainer:Landroid/view/View;

    .line 695
    const v4, 0x7f0d00de

    invoke-virtual {p0, v4}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewCloseButton:Landroid/view/View;

    .line 698
    iget-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mIsCloseButtonVisible:Z

    if-eqz v4, :cond_0

    .line 699
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewCloseButton:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 705
    :goto_0
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewCloseButton:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    const v4, 0x7f0d00dd

    invoke-virtual {p0, v4}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    .line 711
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 713
    const v4, 0x7f0a05af

    invoke-virtual {p0, v4}, Lcom/android/dialer/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "hintText":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v4, "   "

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 718
    .local v2, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 719
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020078

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 720
    .local v1, "searchIcon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getTextSize()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3ff3333333333333L

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 721
    .local v3, "textSize":I
    invoke-virtual {v1, v8, v8, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 722
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x21

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 724
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 725
    return-void

    .line 701
    .end local v0    # "hintText":Ljava/lang/String;
    .end local v1    # "searchIcon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "ssb":Landroid/text/SpannableStringBuilder;
    .end local v3    # "textSize":I
    :cond_0
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewCloseButton:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private returnToInCallScreen(Landroid/content/Intent;)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 1280
    const/4 v4, 0x0

    .line 1281
    .local v4, "result":Z
    if-eqz p1, :cond_4

    .line 1282
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1284
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.DIAL"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1285
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 1286
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_1

    .line 1287
    const-string v7, "tel"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1288
    const-string v7, "DialtactsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "returnToInCallScreen intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    .end local v0    # "action":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0
    return v6

    .line 1294
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v7, "add_call_mode"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1295
    .local v2, "isFromAddCall":Z
    if-nez v2, :cond_4

    const-string v6, "android.intent.action.DIAL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1297
    :cond_2
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->phoneIsInUse()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1299
    :try_start_0
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 1300
    .local v3, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_3

    .line 1301
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1306
    .end local v3    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_3
    :goto_1
    const/4 v4, 0x1

    .line 1310
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "isFromAddCall":Z
    :cond_4
    const-string v6, "DialtactsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "returnToInCallScreen() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v4

    .line 1311
    goto :goto_0

    .line 1303
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "isFromAddCall":Z
    :catch_0
    move-exception v1

    .line 1304
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "DialtactsActivity"

    const-string v7, "returnToInCallScreen failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setNotInSearchUi()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 739
    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    .line 740
    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    .line 741
    return-void
.end method

.method private setupFilterText(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 960
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 963
    :cond_1
    const-string v1, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, "filter":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 965
    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFilterText:Ljava/lang/String;

    goto :goto_0
.end method

.method private showDialpadFragment(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 655
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->setAdjustTranslationForAnimation(Z)V

    .line 656
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 657
    .local v0, "ft":Landroid/app/FragmentTransaction;
    if-eqz p1, :cond_0

    .line 658
    const v1, 0x7f050004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 662
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 668
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 670
    return-void

    .line 660
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->setYFraction(F)V

    goto :goto_0
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1034
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/dialer/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1036
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1037
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1039
    :cond_0
    return-void
.end method


# virtual methods
.method public getAndClearFilterText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFilterText:Ljava/lang/String;

    .line 948
    .local v0, "filterText":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mFilterText:Ljava/lang/String;

    .line 949
    return-object v0
.end method

.method public getCallOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 935
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.dialer.DialtactsActivity"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentFragmentId()I
    .locals 1

    .prologue
    .line 1274
    const/4 v0, 0x1

    return v0
.end method

.method protected handleMenuSettings()V
    .locals 0

    .prologue
    .line 575
    invoke-static {p0}, Lcom/android/dialer/DialtactsActivity;->openTelephonySetting(Landroid/app/Activity;)V

    .line 576
    return-void
.end method

.method public hideDialpadFragment(ZZ)V
    .locals 3
    .param p1, "animate"    # Z
    .param p2, "clearDialpad"    # Z

    .prologue
    .line 673
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-nez v1, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    if-eqz p2, :cond_2

    .line 675
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialpad()V

    .line 677
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->setAdjustTranslationForAnimation(Z)V

    .line 679
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 680
    .local v0, "ft":Landroid/app/FragmentTransaction;
    if-eqz p1, :cond_3

    .line 681
    const/4 v1, 0x0

    const v2, 0x7f050005

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 683
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 689
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method public hideSearchBar()V
    .locals 1

    .prologue
    .line 749
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/DialtactsActivity;->hideSearchBar(Z)V

    .line 750
    return-void
.end method

.method public hideSearchBar(Z)V
    .locals 5
    .param p1, "shiftView"    # Z

    .prologue
    const-wide/16 v3, 0xc8

    const/4 v2, 0x0

    .line 753
    if-eqz p1, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 755
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 756
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 757
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 760
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFragmentsFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/DialtactsActivity$4;

    invoke-direct {v1, p0}, Lcom/android/dialer/DialtactsActivity$4;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 774
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 772
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 505
    instance-of v1, p1, Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v1, :cond_1

    .line 506
    check-cast p1, Lcom/android/dialer/dialpad/DialpadFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    .line 507
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 508
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 509
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 527
    .end local v0    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    :goto_0
    return-void

    .line 510
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_1
    instance-of v1, p1, Lcom/android/dialer/list/SmartDialSearchFragment;

    if-eqz v1, :cond_2

    .line 511
    check-cast p1, Lcom/android/dialer/list/SmartDialSearchFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    .line 512
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/SmartDialSearchFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;)V

    goto :goto_0

    .line 514
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_2
    instance-of v1, p1, Lcom/android/dialer/list/SearchFragment;

    if-eqz v1, :cond_3

    .line 515
    check-cast p1, Lcom/android/dialer/list/RegularSearchFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    .line 516
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/RegularSearchFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;)V

    goto :goto_0

    .line 518
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_3
    instance-of v1, p1, Lcom/android/dialer/list/PhoneFavoriteFragment;

    if-eqz v1, :cond_4

    .line 519
    check-cast p1, Lcom/android/dialer/list/PhoneFavoriteFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;

    .line 520
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/PhoneFavoriteFragment;->setListener(Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;)V

    goto :goto_0

    .line 523
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_4
    instance-of v1, p1, Lcom/mediatek/dialer/dialpad/NoSearchResultFragment;

    if-eqz v1, :cond_0

    .line 524
    check-cast p1, Lcom/mediatek/dialer/dialpad/NoSearchResultFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mEmptyFragment:Lcom/mediatek/dialer/dialpad/NoSearchResultFragment;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1163
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    .line 1177
    :goto_0
    return-void

    .line 1165
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->getInSearchUi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1166
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialpad()V

    goto :goto_0

    .line 1168
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1173
    invoke-virtual {p0, v1}, Lcom/android/dialer/DialtactsActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 1175
    :cond_2
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 585
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 627
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected onClick event from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 590
    :sswitch_0
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mOverflowMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_1

    .line 591
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mOverflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 595
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mOverflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0

    .line 603
    :sswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mInCallDialpadUp:Z

    .line 604
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/dialer/DialtactsActivity;->showDialpadFragment(Z)V

    goto :goto_0

    .line 610
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 611
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/dialer/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 615
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_3
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialpad()V

    .line 617
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 585
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d002c -> :sswitch_0
        0x7f0d00d7 -> :sswitch_2
        0x7f0d00de -> :sswitch_3
        0x7f0d00e2 -> :sswitch_2
        0x7f0d00e3 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0d00e0

    .line 368
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 369
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/dialer/DialtactsActivity;->mFirstLaunch:Z

    .line 371
    invoke-static {p0}, Lcom/mediatek/dialer/util/SmartBookUtils;->setOrientationPortait(Landroid/app/Activity;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 374
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/android/dialer/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 376
    invoke-direct {p0, v1}, Lcom/android/dialer/DialtactsActivity;->returnToInCallScreen(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    const-string v3, "DialtactsActivity"

    const-string v4, "onCreate, returnToInCallScreen"

    invoke-static {v3, v4}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_0
    const v3, 0x7f040029

    invoke-virtual {p0, v3}, Lcom/android/dialer/DialtactsActivity;->setContentView(I)V

    .line 383
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 387
    if-nez p1, :cond_6

    .line 388
    new-instance v2, Lcom/android/dialer/list/PhoneFavoriteFragment;

    invoke-direct {v2}, Lcom/android/dialer/list/PhoneFavoriteFragment;-><init>()V

    .line 390
    .local v2, "phoneFavoriteFragment":Lcom/android/dialer/list/PhoneFavoriteFragment;
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 393
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "favorites"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 394
    const-string v3, "favorites"

    invoke-virtual {v0, v6, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialpad"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_2

    .line 397
    const v3, 0x7f0d00dc

    new-instance v4, Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {v4}, Lcom/android/dialer/dialpad/DialpadFragment;-><init>()V

    const-string v5, "dialpad"

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 401
    :cond_2
    invoke-static {p0}, Lcom/android/dialer/util/OrientationUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "search_frame"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_3

    .line 403
    const-string v3, "DialtactsActivity"

    const-string v4, "onCreate Tablet landscape support"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const v3, 0x7f0d00e5

    new-instance v4, Lcom/mediatek/dialer/dialpad/NoSearchResultFragment;

    invoke-direct {v4}, Lcom/mediatek/dialer/dialpad/NoSearchResultFragment;-><init>()V

    const-string v5, "search_frame"

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 407
    :cond_3
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 419
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    .end local v2    # "phoneFavoriteFragment":Lcom/android/dialer/list/PhoneFavoriteFragment;
    :goto_0
    const v3, 0x7f0d00e4

    invoke-virtual {p0, v3}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mBottomPaddingView:Landroid/view/View;

    .line 420
    invoke-virtual {p0, v6}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mFragmentsFrame:Landroid/view/View;

    .line 421
    const v3, 0x7f0d00e1

    invoke-virtual {p0, v3}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mActionBar:Landroid/view/View;

    .line 422
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->prepareSearchView()V

    .line 424
    const-string v3, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p1, :cond_4

    .line 426
    invoke-direct {p0, v1}, Lcom/android/dialer/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 429
    :cond_4
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->setupFakeActionBarItems()V

    .line 432
    invoke-static {}, Lcom/mediatek/dialer/util/DialerUtils;->isDialerSearchEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 433
    invoke-static {p0}, Lcom/android/dialerbind/DatabaseHelperManager;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mDialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

    .line 437
    :cond_5
    invoke-static {p0}, Lcom/android/dialer/dialpad/SmartDialPrefix;->initializeNanpSettings(Landroid/content/Context;)V

    .line 439
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/dialer/DialerSearchHelper;->getInstance(Landroid/content/Context;)Lcom/mediatek/dialer/DialerSearchHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/dialer/DialerSearchHelper;->dialerSearchUpdateAsync()V

    .line 441
    return-void

    .line 409
    :cond_6
    const-string v3, "search_query"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    .line 410
    const-string v3, "in_regular_search_ui"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    .line 411
    const-string v3, "in_dialpad_search_ui"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    .line 412
    const-string v3, "first_launch"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/dialer/DialtactsActivity;->mFirstLaunch:Z

    .line 415
    const-string v3, "close_button_visible"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/dialer/DialtactsActivity;->mIsCloseButtonVisible:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 987
    .local v1, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f110004

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 989
    const v2, 0x7f0d01c4

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 990
    .local v0, "callSettingsMenuItem":Landroid/view/MenuItem;
    invoke-static {}, Lcom/android/dialer/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 992
    const/4 v2, 0x1

    return v2
.end method

.method public onDialpadFragmentStarted()V
    .locals 0

    .prologue
    .line 1214
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->setupFakeActionBarItemsForDialpadFragment()V

    .line 1215
    return-void
.end method

.method public onDialpadQueryChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1181
    sget-object v1, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_SMART_DIAL_MAP:Lcom/android/dialer/dialpad/SmartDialMap;

    invoke-static {p1, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;

    move-result-object v0

    .line 1183
    .local v0, "normalizedQuery":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1184
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialpadQueryChanged - new query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mFirstQuery:Z

    if-nez v1, :cond_2

    .line 1197
    :cond_0
    const-string v1, "DialtactsActivity"

    const-string v2, "onDialpadQueryChanged, NOT trigger dialer seach"

    invoke-static {v1, v2}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    :cond_1
    :goto_0
    return-void

    .line 1200
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onListFragmentScrollStateChange(I)V
    .locals 2
    .param p1, "scrollState"    # I

    .prologue
    const/4 v1, 0x1

    .line 1206
    if-ne p1, v1, :cond_0

    .line 1207
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    .line 1208
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V

    .line 1210
    :cond_0
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 531
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v2, v3

    .line 571
    :goto_0
    return v2

    .line 547
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 551
    :pswitch_2
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT"

    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Lcom/android/dialer/DialtactsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v4, 0x7f0a05ae

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 556
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 560
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "toast":Landroid/widget/Toast;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->handleMenuSettings()V

    goto :goto_0

    .line 568
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->onPeopleMenuItemSelected()Z

    goto :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x7f0d01c0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 893
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->returnToInCallScreen(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    const-string v1, "DialtactsActivity"

    const-string v2, "onNewIntent, returnToInCallScreen"

    invoke-static {v1, v2}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :goto_0
    return-void

    .line 898
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/dialer/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 899
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 900
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->displayFragment(Landroid/content/Intent;)V

    .line 901
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1010
    invoke-virtual {p0, p1}, Lcom/android/dialer/DialtactsActivity;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 1011
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 475
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->isNeedVlearDialpad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->setClearDialpadState(Z)V

    .line 477
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    .line 479
    :cond_0
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mClearSearchOnPause:Z

    if-eqz v0, :cond_1

    .line 480
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->hideDialpadAndSearchUi()V

    .line 481
    iput-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mClearSearchOnPause:Z

    .line 486
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 487
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onPause()V

    .line 488
    return-void
.end method

.method public onPeopleMenuItemSelected()Z
    .locals 5

    .prologue
    .line 1247
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.LIST_DEFAULT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1248
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1251
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/dialer/DialtactsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 1252
    :catch_0
    move-exception v0

    .line 1253
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v3, 0x7f0a05ae

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 1256
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 997
    const v2, 0x7f0d01c4

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 998
    .local v0, "callSettingsMenuItem":Landroid/view/MenuItem;
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1001
    const v2, 0x7f0d01c2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1002
    .local v1, "clearFrequents":Landroid/view/MenuItem;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1005
    const/4 v2, 0x1

    return v2
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 445
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onResume()V

    .line 446
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mFirstLaunch:Z

    if-eqz v0, :cond_3

    .line 448
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iput-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mFirstQuery:Z

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/DialtactsActivity;->displayFragment(Landroid/content/Intent;)V

    .line 458
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mFirstLaunch:Z

    .line 461
    invoke-static {}, Lcom/mediatek/dialer/util/DialerUtils;->isDialerSearchEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/dialer/database/DialerDatabaseHelper;->startSmartDialUpdateThread()V

    .line 469
    :cond_2
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 470
    return-void

    .line 453
    :cond_3
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInCallDialpadUp:Z

    if-eqz v0, :cond_1

    .line 454
    invoke-virtual {p0, v1, v2}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    .line 455
    iput-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mInCallDialpadUp:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 492
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 493
    const-string v0, "search_query"

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v0, "in_regular_search_ui"

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 495
    const-string v0, "in_dialpad_search_ui"

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 496
    const-string v0, "first_launch"

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mFirstLaunch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 499
    const-string v0, "close_button_visible"

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mIsCloseButtonVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 501
    return-void
.end method

.method public onShowAllContacts()V
    .locals 3

    .prologue
    .line 1225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/list/AllContactsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1227
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1228
    const-string v1, "DialtactsActivity"

    const-string v2, "---onShowAllContacts---"

    invoke-static {v1, v2}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    invoke-virtual {p0, v0}, Lcom/android/dialer/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1231
    return-void
.end method

.method public setupFakeActionBarItems()V
    .locals 3

    .prologue
    .line 802
    const v1, 0x7f0d002c

    invoke-virtual {p0, v1}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mMenuButton:Landroid/view/View;

    .line 803
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mMenuButton:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 804
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mMenuButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    new-instance v1, Lcom/android/dialer/DialtactsActivity$OverflowPopupMenu;

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mMenuButton:Landroid/view/View;

    invoke-direct {v1, p0, p0, v2}, Lcom/android/dialer/DialtactsActivity$OverflowPopupMenu;-><init>(Lcom/android/dialer/DialtactsActivity;Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mOverflowMenu:Landroid/widget/PopupMenu;

    .line 807
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mOverflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 808
    .local v0, "menu":Landroid/view/Menu;
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mOverflowMenu:Landroid/widget/PopupMenu;

    const v2, 0x7f110004

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 809
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mOverflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 810
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mMenuButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mOverflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 813
    .end local v0    # "menu":Landroid/view/Menu;
    :cond_0
    const v1, 0x7f0d00e2

    invoke-virtual {p0, v1}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mCallHistoryButton:Landroid/view/View;

    .line 815
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mCallHistoryButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 817
    const v1, 0x7f0d00e3

    invoke-virtual {p0, v1}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadButton:Landroid/view/View;

    .line 819
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 820
    return-void
.end method

.method public setupFakeActionBarItemsForDialpadFragment()V
    .locals 2

    .prologue
    .line 823
    const v1, 0x7f0d00d7

    invoke-virtual {p0, v1}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 824
    .local v0, "callhistoryButton":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 825
    return-void
.end method

.method public showSearchBar()V
    .locals 5

    .prologue
    const-wide/16 v3, 0xc8

    const/4 v2, 0x0

    .line 777
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 778
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 779
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 780
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/DialtactsActivity$5;

    invoke-direct {v1, p0}, Lcom/android/dialer/DialtactsActivity$5;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 789
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFragmentsFrame:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 790
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFragmentsFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/DialtactsActivity$6;

    invoke-direct {v1, p0}, Lcom/android/dialer/DialtactsActivity$6;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 798
    return-void
.end method
