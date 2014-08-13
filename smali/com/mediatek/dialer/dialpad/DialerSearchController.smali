.class public Lcom/mediatek/dialer/dialpad/DialerSearchController;
.super Landroid/content/AsyncQueryHandler;
.source "DialerSearchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dialer/dialpad/DialerSearchController$Listener;,
        Lcom/mediatek/dialer/dialpad/DialerSearchController$DsTextWatcher;,
        Lcom/mediatek/dialer/dialpad/DialerSearchController$DataChangeObserver;,
        Lcom/mediatek/dialer/dialpad/DialerSearchController$DialerSearchResult;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final DIALER_SEARCH_MODE_ALL:I = 0x0

.field public static final DIALER_SEARCH_MODE_NUMBER:I = 0x1

.field public static final DIALER_SEARCH_PROJECTION:[Ljava/lang/String;

.field private static final QUERY_TOKEN_INCREMENT:I = 0x32

.field private static final QUERY_TOKEN_INIT:I = 0x1e

.field private static final QUERY_TOKEN_NULL:I = 0x28

.field private static final QUERY_TOKEN_SIMPLE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "DialerSearchController"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAdapter:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

.field mCallLogContentObserver:Lcom/mediatek/dialer/dialpad/DialerSearchController$DataChangeObserver;

.field private mClearDigitsOnStop:Z

.field private mConfigFromIntent:Z

.field protected mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private mDataChanged:Z

.field protected mDialerSearchCursorCount:I

.field protected mDigitString:Ljava/lang/String;

.field protected mDigits:Landroid/widget/EditText;

.field private mDigitsFromIntent:Ljava/lang/String;

.field private mDsTextWatcher:Lcom/mediatek/dialer/dialpad/DialerSearchController$DsTextWatcher;

.field mFilterContentObserver:Lcom/mediatek/dialer/dialpad/DialerSearchController$DataChangeObserver;

.field private mFragmentView:Landroid/view/View;

.field private mIsFirstLaunched:Z

.field private mIsForeground:Z

.field private mIsLocaleChanging:Z

.field private mIsShowLoadingTip:Z

.field protected mListView:Landroid/widget/ListView;

.field protected mListener:Lcom/mediatek/dialer/dialpad/DialerSearchController$Listener;

.field private mLoadTipsContainer:Landroid/widget/LinearLayout;

.field protected mNoResultDigCnt:I

.field protected mPrevQueryDigCnt:I

.field protected mSearchNumCntQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSearchNumberOnly:Z

.field protected mSearchTitle:Landroid/widget/TextView;

.field protected mSelectedContactUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "vds_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "vds_call_date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vds_call_log_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vds_call_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "vds_sim_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vds_indicate_phone_sim"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "vds_starred"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "vds_photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vds_phone_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "vds_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "vds_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "vds_lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "matched_data_offsets"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "matched_name_offsets"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "vds_is_sdn_contact"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->DIALER_SEARCH_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ListView;Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$Listener;Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;Lcom/mediatek/dialer/dialpad/DialerSearchController$Listener;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "listView"    # Landroid/widget/ListView;
    .param p4, "adapterListener"    # Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$Listener;
    .param p5, "callOptionHandler"    # Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;
    .param p6, "listener"    # Lcom/mediatek/dialer/dialpad/DialerSearchController$Listener;

    .prologue
    const/4 v4, 0x1

    .line 280
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 85
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mSearchNumCntQ:Ljava/util/Queue;

    .line 281
    iput-object p1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    .line 282
    iput-object p2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mFragmentView:Landroid/view/View;

    .line 283
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mFragmentView:Landroid/view/View;

    const v2, 0x7f0d00d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    .line 284
    iput-object p3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mListView:Landroid/widget/ListView;

    .line 285
    iput-object p6, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mListener:Lcom/mediatek/dialer/dialpad/DialerSearchController$Listener;

    .line 286
    new-instance v1, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

    invoke-direct {v1, p1, p4, p5}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;-><init>(Landroid/content/Context;Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$Listener;Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;)V

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

    .line 287
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 290
    new-instance v1, Lcom/mediatek/dialer/dialpad/DialerSearchController$DataChangeObserver;

    invoke-direct {v1, p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController$DataChangeObserver;-><init>(Lcom/mediatek/dialer/dialpad/DialerSearchController;)V

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mCallLogContentObserver:Lcom/mediatek/dialer/dialpad/DialerSearchController$DataChangeObserver;

    .line 291
    new-instance v1, Lcom/mediatek/dialer/dialpad/DialerSearchController$DataChangeObserver;

    invoke-direct {v1, p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController$DataChangeObserver;-><init>(Lcom/mediatek/dialer/dialpad/DialerSearchController;)V

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mFilterContentObserver:Lcom/mediatek/dialer/dialpad/DialerSearchController$DataChangeObserver;

    .line 292
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "dialer_search"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 293
    .local v0, "baseUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_log"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mCallLogContentObserver:Lcom/mediatek/dialer/dialpad/DialerSearchController$DataChangeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 296
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "filter"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mFilterContentObserver:Lcom/mediatek/dialer/dialpad/DialerSearchController$DataChangeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 300
    new-instance v1, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-direct {v1, p1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 301
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    new-instance v2, Lcom/mediatek/dialer/dialpad/DialerSearchController$1;

    invoke-direct {v2, p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController$1;-><init>(Lcom/mediatek/dialer/dialpad/DialerSearchController;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;)V

    .line 312
    invoke-virtual {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->setDialerSearchTextWatcher()V

    .line 313
    iput-boolean v4, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mIsFirstLaunched:Z

    .line 314
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/dialer/dialpad/DialerSearchController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/dialpad/DialerSearchController;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/dialer/dialpad/DialerSearchController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/dialpad/DialerSearchController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->forceQueryIfNeeded()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/dialer/dialpad/DialerSearchController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/dialpad/DialerSearchController;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDataChanged:Z

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/dialer/dialpad/DialerSearchController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/dialpad/DialerSearchController;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/dialer/dialpad/DialerSearchController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/dialpad/DialerSearchController;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mIsFirstLaunched:Z

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/dialer/dialpad/DialerSearchController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/dialpad/DialerSearchController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mFragmentView:Landroid/view/View;

    return-object v0
.end method

.method private forceLoadAll()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDataChanged:Z

    .line 505
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 507
    :cond_0
    return-void
.end method

.method private forceQueryIfNeeded()V
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDataChanged:Z

    .line 496
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->forceLoadAll()V

    .line 499
    :cond_0
    return-void
.end method

.method private startSimpleSearchNumber(Landroid/text/Editable;II)V
    .locals 3
    .param p1, "searchDigits"    # Landroid/text/Editable;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 703
    const-string v0, "DialerSearchController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startSimpleSearchNumber] Query Dialersearch DB with tel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->setSearchNumberMode(Z)V

    .line 706
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 710
    :cond_0
    const-string v0, "DialerSearchController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startSimpleSearchNumber]  mDigits.length() changed ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 715
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0
.end method


# virtual methods
.method public clearDialerSearchTextWatcher()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDsTextWatcher:Lcom/mediatek/dialer/dialpad/DialerSearchController$DsTextWatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDsTextWatcher:Lcom/mediatek/dialer/dialpad/DialerSearchController$DsTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDsTextWatcher:Lcom/mediatek/dialer/dialpad/DialerSearchController$DsTextWatcher;

    .line 437
    :cond_0
    return-void
.end method

.method public configureFromIntent(Z)V
    .locals 2
    .param p1, "digitsFilled"    # Z

    .prologue
    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[configureFromIntent]digitsFilled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 419
    iput-boolean p1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mConfigFromIntent:Z

    .line 420
    iget-boolean v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mConfigFromIntent:Z

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigitsFromIntent:Ljava/lang/String;

    .line 423
    :cond_0
    return-void
.end method

.method public forceUpdate()V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->forceLoadAll()V

    .line 490
    return-void
.end method

.method public hasDialerSearchTextWatcher()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDsTextWatcher:Lcom/mediatek/dialer/dialpad/DialerSearchController$DsTextWatcher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearchNumberOnly()Z
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mSearchNumberOnly:Z

    return v0
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 681
    const-string v0, "DialerSearchController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-void
.end method

.method obtainDialerSearchResult(I)Lcom/mediatek/dialer/dialpad/DialerSearchController$DialerSearchResult;
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 454
    new-instance v0, Lcom/mediatek/dialer/dialpad/DialerSearchController$DialerSearchResult;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController$DialerSearchResult;-><init>(Lcom/mediatek/dialer/dialpad/DialerSearchController;)V

    .line 455
    .local v0, "dialerSearchResult":Lcom/mediatek/dialer/dialpad/DialerSearchController$DialerSearchResult;
    iput p1, v0, Lcom/mediatek/dialer/dialpad/DialerSearchController$DialerSearchResult;->mCount:I

    .line 456
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onActivityCreated]savedInstance null:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 318
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 395
    const-string v0, "[onDestroy]"

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mCallLogContentObserver:Lcom/mediatek/dialer/dialpad/DialerSearchController$DataChangeObserver;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mCallLogContentObserver:Lcom/mediatek/dialer/dialpad/DialerSearchController$DataChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mFilterContentObserver:Lcom/mediatek/dialer/dialpad/DialerSearchController$DataChangeObserver;

    if-eqz v0, :cond_1

    .line 401
    const-string v0, "DialerSearchController onDestroy : unregister the filter observer."

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mFilterContentObserver:Lcom/mediatek/dialer/dialpad/DialerSearchController$DataChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->clearDialerSearchTextWatcher()V

    .line 407
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

    if-eqz v0, :cond_3

    .line 413
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 415
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 375
    const-string v0, "[onPause]"

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mIsForeground:Z

    .line 377
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onQueryComplete]mIsShowLoadingTip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mIsShowLoadingTip:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 512
    iget-boolean v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mIsShowLoadingTip:Z

    if-eqz v3, :cond_0

    .line 513
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mFragmentView:Landroid/view/View;

    invoke-virtual {p0, v3, v5, v6, v5}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->showLoadingTips(Landroid/view/View;ZLjava/lang/String;Z)V

    .line 515
    :cond_0
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mSearchNumCntQ:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 516
    .local v0, "cnt":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 517
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mPrevQueryDigCnt:I

    .line 519
    :cond_1
    const-string v3, "+onQueryComplete"

    invoke-virtual {p0, v3}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 521
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

    .line 524
    .local v1, "dialerSearchAdapter":Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;
    if-eqz p3, :cond_5

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onQueryComplete]mIsLocaleChanging"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mIsLocaleChanging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 526
    iget-boolean v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mIsLocaleChanging:Z

    if-eqz v3, :cond_2

    .line 527
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 578
    :goto_0
    return-void

    .line 530
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDialerSearchCursorCount:I

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onQueryComplete]cursor count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDialerSearchCursorCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 532
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 534
    .local v2, "tempStr":Ljava/lang/String;
    if-eqz v2, :cond_7

    iget v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDialerSearchCursorCount:I

    if-lez v3, :cond_7

    .line 535
    iput v5, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mNoResultDigCnt:I

    .line 537
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mSearchTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 538
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mSearchTitle:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    :cond_3
    invoke-static {v2}, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->tripHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mPrevQueryDigCnt:I

    if-ne v3, v4, :cond_6

    .line 548
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mListener:Lcom/mediatek/dialer/dialpad/DialerSearchController$Listener;

    if-eqz v3, :cond_4

    .line 549
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mListener:Lcom/mediatek/dialer/dialpad/DialerSearchController$Listener;

    iget v4, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDialerSearchCursorCount:I

    invoke-virtual {p0, v4}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->obtainDialerSearchResult(I)Lcom/mediatek/dialer/dialpad/DialerSearchController$DialerSearchResult;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/dialer/dialpad/DialerSearchController$Listener;->onDialerSearchResult(Lcom/mediatek/dialer/dialpad/DialerSearchController$DialerSearchResult;)V

    .line 551
    :cond_4
    invoke-virtual {v1, p3}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->setResultCursor(Landroid/database/Cursor;)V

    .line 552
    invoke-virtual {v1, p3}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 577
    .end local v2    # "tempStr":Ljava/lang/String;
    :cond_5
    :goto_1
    const-string v3, "-onQueryComplete"

    invoke-virtual {p0, v3}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 554
    .restart local v2    # "tempStr":Ljava/lang/String;
    :cond_6
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 557
    :cond_7
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mListener:Lcom/mediatek/dialer/dialpad/DialerSearchController$Listener;

    if-eqz v3, :cond_8

    .line 558
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mListener:Lcom/mediatek/dialer/dialpad/DialerSearchController$Listener;

    iget v4, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDialerSearchCursorCount:I

    invoke-virtual {p0, v4}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->obtainDialerSearchResult(I)Lcom/mediatek/dialer/dialpad/DialerSearchController$DialerSearchResult;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/dialer/dialpad/DialerSearchController$Listener;->onDialerSearchResult(Lcom/mediatek/dialer/dialpad/DialerSearchController$DialerSearchResult;)V

    .line 560
    :cond_8
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    iput v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mNoResultDigCnt:I

    .line 561
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 562
    invoke-virtual {v1, v6}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->setResultCursor(Landroid/database/Cursor;)V

    .line 564
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mSearchTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 565
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 566
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mSearchTitle:Landroid/widget/TextView;

    const v4, 0x7f0a0451

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 571
    :goto_2
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mSearchTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 568
    :cond_9
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mSearchTitle:Landroid/widget/TextView;

    const v4, 0x7f0a0452

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onResume]mAdapter is null:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 332
    iget-boolean v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mConfigFromIntent:Z

    if-eqz v3, :cond_3

    .line 333
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigitsFromIntent:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[configureFromIntent]current Text:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 335
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigitsFromIntent:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 338
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigitsFromIntent:Ljava/lang/String;

    .line 339
    iput-boolean v5, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mConfigFromIntent:Z

    .line 371
    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mIsForeground:Z

    .line 372
    return-void

    :cond_2
    move v3, v5

    .line 331
    goto :goto_0

    .line 340
    :cond_3
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

    if-eqz v3, :cond_1

    .line 341
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

    invoke-virtual {v3}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->onResume()V

    .line 346
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

    invoke-virtual {v3}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->isDigitsCleared()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onResume]mAdapter isDigitsCleared:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

    invoke-virtual {v5}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->isDigitsCleared()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->forceLoadAll()V

    .line 349
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

    invoke-virtual {v3}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->resetDigitsState()V

    goto :goto_1

    .line 350
    :cond_4
    iget-boolean v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDataChanged:Z

    if-eqz v3, :cond_6

    .line 351
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 352
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 353
    .local v0, "dialDigits":Landroid/text/Editable;
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 354
    .local v2, "start":I
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 355
    .local v1, "end":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onResume] mDigits:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mDataChanged:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDataChanged:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " need forceloadall!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->forceLoadAll()V

    .line 359
    invoke-direct {p0, v0, v2, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->startSimpleSearchNumber(Landroid/text/Editable;II)V

    goto/16 :goto_1

    .line 362
    .end local v0    # "dialDigits":Landroid/text/Editable;
    .end local v1    # "end":I
    .end local v2    # "start":I
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->forceLoadAll()V

    goto/16 :goto_1

    .line 364
    :cond_6
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 366
    .restart local v0    # "dialDigits":Landroid/text/Editable;
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 367
    .restart local v2    # "start":I
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 368
    .restart local v1    # "end":I
    invoke-direct {p0, v0, v2, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->startSimpleSearchNumber(Landroid/text/Editable;II)V

    goto/16 :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 471
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStart]mIsFirstLaunched:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mIsFirstLaunched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|mDataChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDataChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 322
    iget-boolean v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mIsFirstLaunched:Z

    if-eqz v0, :cond_1

    .line 323
    invoke-direct {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->forceLoadAll()V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mIsFirstLaunched:Z

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->forceQueryIfNeeded()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStop]mClearDigitsOnStop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mClearDigitsOnStop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 382
    const-string v0, "[onStop] Reserve tel number as the dialpad is stopping!"

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public setClearDigitsOnStop(Z)V
    .locals 0
    .param p1, "clearDigits"    # Z

    .prologue
    .line 686
    iput-boolean p1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mClearDigitsOnStop:Z

    .line 687
    return-void
.end method

.method public setDialerSearchTextWatcher()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDsTextWatcher:Lcom/mediatek/dialer/dialpad/DialerSearchController$DsTextWatcher;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Lcom/mediatek/dialer/dialpad/DialerSearchController$DsTextWatcher;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController$DsTextWatcher;-><init>(Lcom/mediatek/dialer/dialpad/DialerSearchController;)V

    iput-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDsTextWatcher:Lcom/mediatek/dialer/dialpad/DialerSearchController$DsTextWatcher;

    .line 428
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDsTextWatcher:Lcom/mediatek/dialer/dialpad/DialerSearchController$DsTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 430
    :cond_0
    return-void
.end method

.method public setDialerSearchTitle(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "searchTitle"    # Landroid/widget/TextView;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mSearchTitle:Landroid/widget/TextView;

    .line 446
    return-void
.end method

.method public setSearchNumberMode(Z)V
    .locals 0
    .param p1, "isSimpleMode"    # Z

    .prologue
    .line 460
    iput-boolean p1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mSearchNumberOnly:Z

    .line 461
    return-void
.end method

.method public showLoadingTips(Landroid/view/View;ZLjava/lang/String;Z)V
    .locals 14
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "isShowTips"    # Z
    .param p3, "tipString"    # Ljava/lang/String;
    .param p4, "withoutSearch"    # Z

    .prologue
    .line 582
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 584
    const-string v11, "[showLocaleChangeTips] return lanscape."

    invoke-virtual {p0, v11}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    const v11, 0x7f0d00d2

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 588
    .local v8, "topView":Landroid/view/View;
    const v11, 0x7f0d002a

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 589
    .local v2, "dialpadBtnView":Landroid/view/View;
    if-eqz v8, :cond_2

    instance-of v11, v8, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_2

    if-eqz v2, :cond_2

    instance-of v11, v2, Landroid/widget/ImageButton;

    if-nez v11, :cond_3

    .line 591
    :cond_2
    const-string v11, "[showLocaleChangeTips] return due to invalid layout."

    invoke-virtual {p0, v11}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_3
    const-class v11, Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 596
    .local v7, "topLayout":Landroid/widget/RelativeLayout;
    const-class v11, Landroid/widget/ImageButton;

    invoke-virtual {v11, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 597
    .local v1, "dialpadBtn":Landroid/widget/ImageButton;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[showLocaleChangeTips]isShowTips:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "||mLoadTipsContainer is null:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    if-nez v11, :cond_4

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 599
    if-eqz p2, :cond_7

    .line 600
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mIsLocaleChanging:Z

    .line 601
    if-nez p4, :cond_5

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mIsShowLoadingTip:Z

    .line 603
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_6

    .line 605
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 606
    .local v9, "tv":Landroid/widget/TextView;
    if-eqz v9, :cond_0

    .line 607
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 597
    .end local v9    # "tv":Landroid/widget/TextView;
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 601
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 612
    :cond_6
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 613
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 615
    iget v10, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 618
    .local v10, "width":I
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    .line 619
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 620
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 621
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 622
    new-instance v5, Landroid/widget/ProgressBar;

    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    const/4 v12, 0x0

    const v13, 0x101007a

    invoke-direct {v5, v11, v12, v13}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 624
    .local v5, "loadingBar":Landroid/widget/ProgressBar;
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v11}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 627
    new-instance v9, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    invoke-direct {v9, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 628
    .restart local v9    # "tv":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    const v12, 0x1030044

    invoke-virtual {v9, v11, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 629
    const/high16 v11, 0x40800000

    iget v12, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v12

    float-to-int v6, v11

    .line 630
    .local v6, "paddingTop":I
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 631
    const/16 v11, 0xa

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v6, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 632
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 633
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 636
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 639
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 641
    .local v4, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v11, 0x2

    const v12, 0x7f0d00d3

    invoke-virtual {v4, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 643
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v12

    invoke-virtual {v7, v11, v12, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 645
    if-eqz p4, :cond_0

    .line 646
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->setResultCursor(Landroid/database/Cursor;)V

    .line 647
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 648
    invoke-virtual {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->clearDialerSearchTextWatcher()V

    .line 650
    if-eqz v1, :cond_0

    .line 651
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto/16 :goto_0

    .line 657
    .end local v3    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v4    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "loadingBar":Landroid/widget/ProgressBar;
    .end local v6    # "paddingTop":I
    .end local v9    # "tv":Landroid/widget/TextView;
    .end local v10    # "width":I
    :cond_7
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mIsLocaleChanging:Z

    .line 658
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mIsShowLoadingTip:Z

    .line 659
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 660
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 661
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 662
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 663
    if-eqz p4, :cond_8

    .line 664
    invoke-virtual {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->hasDialerSearchTextWatcher()Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v11, :cond_8

    .line 665
    invoke-virtual {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->setDialerSearchTextWatcher()V

    .line 666
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->length()I

    move-result v11

    if-lez v11, :cond_9

    .line 667
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->setSearchNumberMode(Z)V

    .line 668
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V

    .line 675
    :cond_8
    :goto_3
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 671
    :cond_9
    iget-object v11, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public updateDialerSearch()V
    .locals 5

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->forceQueryIfNeeded()V

    .line 476
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 477
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 478
    .local v0, "dialDigits":Landroid/text/Editable;
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 479
    .local v2, "start":I
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 480
    .local v1, "end":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateDialerSearch] mDigits:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDataChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/dialer/dialpad/DialerSearchController;->mDataChanged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " need forceloadall!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 481
    invoke-direct {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->forceLoadAll()V

    .line 482
    invoke-direct {p0, v0, v2, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchController;->startSimpleSearchNumber(Landroid/text/Editable;II)V

    .line 485
    .end local v0    # "dialDigits":Landroid/text/Editable;
    .end local v1    # "end":I
    .end local v2    # "start":I
    :cond_0
    return-void
.end method
