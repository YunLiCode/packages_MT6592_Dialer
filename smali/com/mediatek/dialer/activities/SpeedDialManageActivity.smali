.class public Lcom/mediatek/dialer/activities/SpeedDialManageActivity;
.super Landroid/app/ListActivity;
.source "SpeedDialManageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dialer/activities/SpeedDialManageActivity$ContactsProviderObserver;,
        Lcom/mediatek/dialer/activities/SpeedDialManageActivity$QueryInfo;,
        Lcom/mediatek/dialer/activities/SpeedDialManageActivity$InputKeyListener;,
        Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver;,
        Lcom/mediatek/dialer/activities/SpeedDialManageActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final ADAPTER_TO:[I

.field static final BIND_DISPLAY_NAME_INDEX:I = 0x1

.field static final BIND_ID_INDEX:I = 0x0

.field static final BIND_INDICATE_PHONE_SIM_INDEX:I = 0x5

.field static final BIND_LABEL_INDEX:I = 0x2

.field static final BIND_NUMBER_INDEX:I = 0x3

.field static final BIND_PHOTO_ID_INDEX:I = 0x4

.field static final BIND_PROJECTION:[Ljava/lang/String;

.field private static final LIST_CAPACITY:I = 0x9

.field private static final MENU_REMOVE:I = 0x1

.field public static final PREF_NAME:Ljava/lang/String; = "speed_dial"

.field static final QUERY_CUSTOM_LABEL_INDEX:I = 0x6

.field static final QUERY_DISPLAY_NAME_INDEX:I = 0x1

.field static final QUERY_ID_INDEX:I = 0x0

.field static final QUERY_INDICATE_PHONE_SIM_INDEX:I = 0x4

.field static final QUERY_LABEL_INDEX:I = 0x2

.field static final QUERY_NUMBER_INDEX:I = 0x3

.field static final QUERY_PHOTO_ID_INDEX:I = 0x5

.field static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final QUERY_TOKEN:I = 0x2f

.field private static final REQUEST_CODE_PICK_CONTACT:I = 0x1

.field static final SPEED_DIAL_MAX:I = 0x9

.field static final SPEED_DIAL_MIN:I = 0x2

.field private static final SPEED_DIAL_NUMBER:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SpeedDialManageActivity"

.field private static final VIEW_EDGE:I = 0x1e

.field private static final WAIT_CURSOR_DELAY_TIME:J = 0x1f4L

.field private static final WAIT_CURSOR_START:I = 0x3e8

.field private static final WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

.field private static sIsQueryContact:Z


# instance fields
.field private mActivityDestroyed:Z

.field private mAdapter:Landroid/widget/SimpleCursorAdapter;

.field private mAddPosition:I

.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mContactsObserver:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$ContactsProviderObserver;

.field private mHandler:Landroid/os/Handler;

.field private mHasGotPref:Z

.field private mHasNumberByKey:Z

.field private mInputDialog:Landroid/app/Dialog;

.field private mIsWaitingActivityResult:Z

.field private mListView:Landroid/widget/ListView;

.field private mMatrixCursor:Landroid/database/MatrixCursor;

.field private mNeedRemovePosition:Z

.field private mPref:Landroid/content/SharedPreferences;

.field private mPrefMarkState:[I

.field private mPrefNumContactState:[Z

.field private mPrefNumState:[Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$QueryHandler;

.field private mQueryTimes:I

.field private mRemoveConfirmDialog:Landroid/app/AlertDialog;

.field private mRemovePosition:I

.field private mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

.field private mSimReceiver:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver;

.field private mSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 74
    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    .line 128
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const-string v1, "label"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 158
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->BIND_PROJECTION:[Ljava/lang/String;

    .line 187
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->ADAPTER_TO:[I

    .line 243
    sput-boolean v3, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->sIsQueryContact:Z

    return-void

    .line 187
    :array_0
    .array-data 4
        0x7f0d0159
        0x7f0d015e
        0x7f0d015b
        0x7f0d015d
        0x7f0d015a
        0x7f0d015c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xa

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 105
    iput v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    .line 110
    iput v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemovePosition:I

    .line 117
    iput-object v6, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    .line 119
    iput-boolean v3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mNeedRemovePosition:Z

    .line 121
    iput-boolean v3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    .line 195
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    .line 208
    new-array v0, v5, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumContactState:[Z

    .line 215
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    .line 237
    iput-boolean v3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mHasNumberByKey:Z

    .line 241
    iput-object v6, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1229
    iput v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mSlot:I

    .line 1326
    new-instance v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$5;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$5;-><init>(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)V

    iput-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mHandler:Landroid/os/Handler;

    .line 1459
    iput-boolean v3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mActivityDestroyed:Z

    .line 1464
    return-void

    .line 208
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 215
    nop

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumContactState:[Z

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->sIsQueryContact:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 71
    sput-boolean p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->sIsQueryContact:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->dismissProgressIndication()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->updatePreferences()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->showToastIfNecessary()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)Landroid/widget/SimpleCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->showProgressIndication()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->startQuery()V

    return-void
.end method

.method static synthetic access$202(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/SpeedDialManageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemovePosition:I

    return p1
.end method

.method static synthetic access$302(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/SpeedDialManageActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mQueryTimes:I

    return v0
.end method

.method static synthetic access$504(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mQueryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mQueryTimes:I

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;ILandroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/SpeedDialManageActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/database/Cursor;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->populateMatrixCursorRow(ILandroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)Landroid/database/MatrixCursor;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->goOnQuery()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dismissProgressIndication()V
    .locals 4

    .prologue
    .line 1373
    iget-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1375
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1381
    :cond_0
    return-void

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismiss exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findKeyByNumber(Ljava/lang/String;)I
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 381
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 385
    :cond_1
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_1
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 386
    const-string v2, "vnd.android.cursor.item/phone_v2"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    iget-object v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {p0, v2, p1, v3, v4}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->shouldCollapse(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 391
    goto :goto_0
.end method

.method private getPrefStatus()V
    .locals 5

    .prologue
    .line 744
    const-string v1, "SpeedDialManageActivity"

    const-string v2, "getPrefStatus()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const-string v1, "speed_dial"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPref:Landroid/content/SharedPreferences;

    .line 747
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mHasGotPref:Z

    .line 748
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 749
    iget-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 750
    iget-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    iget-object v2, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->offset(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v0

    .line 748
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    :cond_0
    return-void
.end method

.method private goOnQuery()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 803
    iget v8, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mQueryTimes:I

    .local v8, "end":I
    :goto_0
    const/16 v0, 0xa

    if-ge v8, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "log for empry block!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    iget v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mQueryTimes:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v8, -0x1

    invoke-static {p0, v0, v1, v4}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->populateMatrixCursorEmpty(Landroid/content/Context;Landroid/database/MatrixCursor;II)V

    .line 808
    const-string v0, "SpeedDialManageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goOnQuery(), mQueryTimes = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mQueryTimes:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", end = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/16 v0, 0x9

    if-le v8, v0, :cond_1

    .line 810
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "goOnQuery(), queryComplete in goOnQuery()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 812
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->sIsQueryContact:Z

    .line 813
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->dismissProgressIndication()V

    .line 814
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->updatePreferences()V

    .line 815
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->showToastIfNecessary()V

    .line 816
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 833
    :goto_1
    return-void

    .line 820
    :cond_1
    new-instance v2, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$QueryInfo;

    invoke-direct {v2, p0, v5}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$QueryInfo;-><init>(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;Lcom/mediatek/dialer/activities/SpeedDialManageActivity$1;)V

    .line 821
    .local v2, "info":Lcom/mediatek/dialer/activities/SpeedDialManageActivity$QueryInfo;
    iput v8, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mQueryTimes:I

    .line 822
    iget v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mQueryTimes:I

    iput v0, v2, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$QueryInfo;->mQueryIndex:I

    .line 824
    const-string v0, "SpeedDialManageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goOnQuery(), startQuery at mQueryTimes = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mQueryTimes:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-string v0, "SpeedDialManageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goOnQuery(), number = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v6, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mQueryTimes:I

    aget-object v4, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mQueryTimes:I

    aget-object v1, v1, v4

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 828
    .local v3, "uri":Landroid/net/Uri;
    const-string v0, "SpeedDialManageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goOnQuery(), uri = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mQueryHandler:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$QueryHandler;

    const/16 v1, 0x2f

    sget-object v4, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->QUERY_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initMatrixCursor()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 790
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->BIND_PROJECTION:[Ljava/lang/String;

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    .line 791
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0182

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, ""

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 794
    iput v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mQueryTimes:I

    .line 795
    return-void
.end method

.method private isSimReady(IZ)Z
    .locals 5
    .param p1, "simId"    # I
    .param p2, "checkSimService"    # Z

    .prologue
    .line 1127
    int-to-long v2, p1

    invoke-static {p0, v2, v3}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 1129
    .local v0, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    .line 1130
    const/4 v1, -0x1

    .line 1134
    .local v1, "slotId":I
    :goto_0
    const-string v2, "SpeedDialManageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimReady(), simId=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    if-gez v1, :cond_1

    .line 1136
    const-string v2, "SpeedDialManageActivity"

    const-string v3, "[isSimReady]the sim is not insert, so sim not ready"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/4 v2, 0x0

    .line 1147
    :goto_1
    return v2

    .line 1132
    .end local v1    # "slotId":I
    :cond_0
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .restart local v1    # "slotId":I
    goto :goto_0

    .line 1144
    :cond_1
    if-eqz p2, :cond_2

    .line 1145
    invoke-static {v1}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimStateIdle(I)Z

    move-result v2

    goto :goto_1

    .line 1147
    :cond_2
    invoke-static {v1}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimReady(I)Z

    move-result v2

    goto :goto_1
.end method

.method public static offset(I)I
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 762
    add-int/lit8 v0, p0, 0x64

    return v0
.end method

.method static populateMatrixCursorEmpty(Landroid/content/Context;Landroid/database/MatrixCursor;II)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "matrixCursor"    # Landroid/database/MatrixCursor;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 895
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 896
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a039e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "-1"

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 895
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 901
    :cond_0
    return-void
.end method

.method private populateMatrixCursorRow(ILandroid/database/Cursor;)V
    .locals 11
    .param p1, "row"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 910
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 911
    const/4 v7, 0x1

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 912
    .local v1, "name":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 913
    .local v6, "type":I
    const-string v0, ""

    .line 914
    .local v0, "label":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 915
    const/4 v7, 0x6

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 919
    :goto_0
    const/4 v7, 0x3

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 920
    .local v2, "number":Ljava/lang/String;
    const/4 v7, 0x5

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 921
    .local v3, "photoId":J
    const/4 v5, -0x1

    .line 922
    .local v5, "simId":I
    const/4 v7, 0x4

    invoke-interface {p2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 923
    const/4 v7, 0x4

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 925
    :cond_0
    const-string v7, "SpeedDialManageActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "populateMatrixCursorRow(), name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", label = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", number = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " photoId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "simId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    if-lez v5, :cond_1

    .line 929
    invoke-virtual {p0, v5}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getSimType(I)J

    move-result-wide v3

    .line 932
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 933
    iget-object v7, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    add-int/lit8 v8, p1, 0x1

    invoke-static {p0, v7, p1, v8}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->populateMatrixCursorEmpty(Landroid/content/Context;Landroid/database/MatrixCursor;II)V

    .line 934
    iget-object v7, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, p1

    .line 935
    iget-object v7, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    iget-object v8, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->offset(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    aput v8, v7, p1

    .line 943
    :goto_1
    return-void

    .line 917
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "photoId":J
    .end local v5    # "simId":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "label":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "label":Ljava/lang/String;
    goto/16 :goto_0

    .line 938
    .restart local v2    # "number":Ljava/lang/String;
    .restart local v3    # "photoId":J
    .restart local v5    # "simId":I
    :cond_3
    iget-object v7, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    add-int/lit8 v10, p1, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    const/4 v9, 0x2

    aput-object v0, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    const/4 v9, 0x4

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static final shouldCollapse(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimetype1"    # Ljava/lang/CharSequence;
    .param p2, "data1"    # Ljava/lang/CharSequence;
    .param p3, "mimetype2"    # Ljava/lang/CharSequence;
    .param p4, "data2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1153
    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-static {v5, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1155
    if-ne p2, p4, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return v3

    .line 1158
    :cond_1
    if-eqz p2, :cond_2

    if-nez p4, :cond_3

    :cond_2
    move v3, v4

    .line 1159
    goto :goto_0

    .line 1169
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1170
    .local v0, "dataParts1":[Ljava/lang/String;
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1171
    .local v1, "dataParts2":[Ljava/lang/String;
    array-length v5, v0

    array-length v6, v1

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 1172
    goto :goto_0

    .line 1174
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 1175
    aget-object v5, v0, v2

    aget-object v6, v1, v2

    invoke-static {p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    move v3, v4

    .line 1176
    goto :goto_0

    .line 1174
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1182
    .end local v0    # "dataParts1":[Ljava/lang/String;
    .end local v1    # "dataParts2":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_6
    if-ne p1, p3, :cond_7

    if-eq p2, p4, :cond_0

    .line 1185
    :cond_7
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_8
    move v3, v4

    goto :goto_0
.end method

.method private showProgressIndication()V
    .locals 3

    .prologue
    .line 1351
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "loading contacts... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-boolean v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mActivityDestroyed:Z

    if-eqz v0, :cond_0

    .line 1356
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "showProgressIndication(),the master Activity is destroyed!"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    :goto_0
    return-void

    .line 1360
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->dismissProgressIndication()V

    .line 1362
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1363
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a05ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1364
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1365
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1366
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private showToastIfNecessary()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 975
    const-string v5, "SpeedDialManageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showToastIfNecessary(),  mAddPosition= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const-string v5, "SpeedDialManageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showToastIfNecessary(),  mHasNumberByKey= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mHasNumberByKey:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const-string v5, "SpeedDialManageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showToastIfNecessary(),  mIsWaitingActivityResult= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-boolean v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    if-eqz v5, :cond_1

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 986
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/contacts/ExtensionManager;->getSpeedDialExtension()Lcom/mediatek/contacts/ext/SpeedDialExtension;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    iget-boolean v7, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mNeedRemovePosition:Z

    const-string v8, "ExtensionForOP01"

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/contacts/ext/SpeedDialExtension;->setAddPosition(IZLjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    .line 991
    iget v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    if-eq v5, v9, :cond_0

    .line 994
    iget-boolean v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mHasNumberByKey:Z

    if-eqz v5, :cond_2

    .line 995
    iput v9, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    .line 996
    iget-object v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v5, v9}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    .line 997
    const v5, 0x7f0a03a8

    invoke-virtual {p0, v5}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1000
    :cond_2
    const-string v5, "SpeedDialManageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showToastIfNecessary(), mMatrixCursor\'s present position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v7}, Landroid/database/MatrixCursor;->getPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mMatrixCursor\'s count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v7}, Landroid/database/MatrixCursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mPosition + 1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    iget v6, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    .line 1010
    iget-object v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v5, v13}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1011
    .local v2, "isNumberEmpty":Z
    if-eqz v2, :cond_3

    .line 1012
    iput v9, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    .line 1013
    iget-object v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v5, v9}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    .line 1014
    const-string v5, "SpeedDialManageActivity"

    const-string v6, "showToastIfNecessary(), number is empty, don\'t show toast."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1019
    :cond_3
    iget-object v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v5, v10}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1020
    .local v4, "name":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v5, v11}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1021
    .local v3, "label":Ljava/lang/CharSequence;
    iget v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v1, v5, 0x1

    .line 1024
    .local v1, "index":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1025
    const v5, 0x7f0a03a0

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v4, v6, v12

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1029
    .local v0, "fullInfo":Ljava/lang/CharSequence;
    :goto_1
    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1031
    iput v9, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    .line 1032
    iget-object v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v5, v9}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 1027
    .end local v0    # "fullInfo":Ljava/lang/CharSequence;
    :cond_4
    const v5, 0x7f0a039f

    new-array v6, v13, [Ljava/lang/Object;

    aput-object v4, v6, v12

    aput-object v3, v6, v10

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p0, v5, v6}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fullInfo":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method private startQuery()V
    .locals 4

    .prologue
    .line 770
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    .line 776
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->initMatrixCursor()V

    .line 777
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "startQuery(), query init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->sIsQueryContact:Z

    .line 779
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 781
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->goOnQuery()V

    .line 782
    return-void
.end method

.method private updatePreferences()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 955
    iget-object v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 956
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    const/16 v5, 0xa

    if-ge v1, v5, :cond_3

    .line 958
    iget-object v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    aget v2, v5, v1

    .line 959
    .local v2, "simId":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    invoke-direct {p0, v2, v4}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->isSimReady(IZ)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 960
    .local v3, "simReady":Z
    :goto_1
    const-string v5, "SpeedDialManageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePreferences(), isSimReady("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    if-eqz v3, :cond_1

    .line 962
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 963
    invoke-static {v1}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->offset(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    aget v6, v6, v1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 956
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "simReady":Z
    :cond_2
    move v3, v4

    .line 959
    goto :goto_1

    .line 966
    .end local v2    # "simId":I
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 967
    return-void
.end method


# virtual methods
.method actuallyRemove()V
    .locals 4

    .prologue
    .line 714
    iget-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemovePosition:I

    add-int/lit8 v2, v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    .line 715
    iget-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    iget v2, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemovePosition:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 716
    iget-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 717
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemovePosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemovePosition:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 718
    iget v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemovePosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->offset(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    iget v3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemovePosition:I

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 720
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 721
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->startQuery()V

    .line 722
    return-void
.end method

.method clearPrefStateIfNecessary(I)V
    .locals 5
    .param p1, "queryTimes"    # I

    .prologue
    const/4 v4, -0x1

    .line 1109
    iget-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    aget v0, v1, p1

    .line 1110
    .local v0, "simId":I
    const-string v1, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearPrefStateIfNecessary(), simId=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; queryTimes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    if-eq v0, v4, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->isSimReady(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1113
    :cond_0
    const-string v1, "SpeedDialManageActivity"

    const-string v2, "clearPrefStateIfNecessary(), isSImReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    aput v4, v1, p1

    .line 1115
    iget-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, p1

    .line 1117
    :cond_1
    return-void
.end method

.method confirmRemovePosition(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const v10, 0x7f0a03a1

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 624
    const-string v4, "SpeedDialManageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "confirmRemovePosition(), position= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    if-ltz p1, :cond_0

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumContactState:[Z

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 627
    :cond_0
    const-string v4, "SpeedDialManageActivity"

    const-string v5, "position out of bound, do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :goto_0
    return-void

    .line 631
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/contacts/ExtensionManager;->getSpeedDialExtension()Lcom/mediatek/contacts/ext/SpeedDialExtension;

    move-result-object v4

    const-string v5, "ExtensionForOP01"

    invoke-virtual {v4, v5}, Lcom/mediatek/contacts/ext/SpeedDialExtension;->needCheckContacts(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumContactState:[Z

    add-int/lit8 v5, p1, 0x1

    aget-boolean v4, v4, v5

    if-nez v4, :cond_2

    .line 633
    const-string v4, "SpeedDialManageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[confirmRemovePosition] the contact at speed dial "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 637
    :cond_2
    iget-object v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v4, p1}, Landroid/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 638
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_3

    .line 639
    const-string v4, "SpeedDialManageActivity"

    const-string v5, "[confirmRemovePosition] the cursor for the position is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 642
    :cond_3
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 643
    .local v3, "name":Ljava/lang/String;
    const-string v4, "SpeedDialManageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "confirmRemovePosition(), name= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "label":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 654
    const v4, 0x7f0a03a3

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v9

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, "message":Ljava/lang/String;
    :goto_1
    const-string v4, "SpeedDialManageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "confirmRemovePosition(), message= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iput p1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemovePosition:I

    .line 661
    iget-object v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_4

    .line 662
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$4;

    invoke-direct {v5, p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$4;-><init>(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$3;

    invoke-direct {v5, p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$3;-><init>(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$2;

    invoke-direct {v6, p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$2;-><init>(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    .line 691
    :cond_4
    iget-object v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 656
    .end local v2    # "message":Ljava/lang/String;
    :cond_5
    const v4, 0x7f0a03a2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v9

    aput-object v1, v5, v7

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_1
.end method

.method public getSimType(I)J
    .locals 7
    .param p1, "indicate"    # I

    .prologue
    .line 1233
    const-wide/16 v1, 0x0

    .line 1234
    .local v1, "photoId":J
    iget-object v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    if-nez v4, :cond_0

    .line 1235
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    .line 1237
    :cond_0
    iget-object v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    invoke-virtual {v4, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mSlot:I

    .line 1238
    const/4 v0, -0x1

    .line 1239
    .local v0, "i":I
    const-string v4, "SpeedDialManageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSimType] mSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mSlot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iget-object v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    iget v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mSlot:I

    invoke-virtual {v4, v5}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    .line 1241
    .local v3, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v3, :cond_1

    .line 1242
    iget v0, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 1244
    :cond_1
    const-string v4, "SpeedDialManageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSimType] i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    packed-switch v0, :pswitch_data_0

    .line 1259
    const-string v4, "SpeedDialManageActivity"

    const-string v5, "no match color"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    const-wide/16 v1, -0x1

    .line 1264
    :goto_0
    const-string v4, "SpeedDialManageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSimType] photoId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    return-wide v1

    .line 1247
    :pswitch_0
    const-wide/16 v1, -0xa

    .line 1248
    goto :goto_0

    .line 1250
    :pswitch_1
    const-wide/16 v1, -0xb

    .line 1251
    goto :goto_0

    .line 1253
    :pswitch_2
    const-wide/16 v1, -0xc

    .line 1254
    goto :goto_0

    .line 1256
    :pswitch_3
    const-wide/16 v1, -0xd

    .line 1257
    goto :goto_0

    .line 1245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 13
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 311
    const-string v0, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onActivityResult]mAddPosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    .line 313
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    if-nez p3, :cond_2

    .line 314
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    .line 378
    :cond_1
    :goto_0
    return-void

    .line 317
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 318
    .local v7, "dataIndex":Ljava/lang/String;
    const-string v9, ""

    .line 319
    .local v9, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data1"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data._ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 322
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 323
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 324
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 337
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 338
    .local v1, "uri":Landroid/net/Uri;
    const-string v0, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult(), uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "indicate_phone_or_sim_contact"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 342
    .local v11, "simIdCursor":Landroid/database/Cursor;
    const/4 v10, -0x1

    .line 343
    .local v10, "simId":I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 344
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 345
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 346
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 348
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 362
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getPrefStatus()V

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mHasGotPref:Z

    .line 364
    invoke-direct {p0, v9}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->findKeyByNumber(Ljava/lang/String;)I

    move-result v12

    .line 365
    .local v12, "tempKey":I
    const-string v0, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult(),  after findKeyByNumber(), tempKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v0, 0x2

    if-le v0, v12, :cond_7

    .line 367
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v2, v2, 0x1

    aput-object v9, v0, v2

    .line 368
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    iget v2, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v2, v2, 0x1

    aput v10, v0, v2

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mHasNumberByKey:Z

    .line 373
    :goto_1
    const-string v0, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_1

    .line 375
    const-string v0, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPrefNumState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPrefMarkState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 326
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "i":I
    .end local v10    # "simId":I
    .end local v11    # "simIdCursor":Landroid/database/Cursor;
    .end local v12    # "tempKey":I
    :cond_4
    if-eqz v6, :cond_5

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    goto/16 :goto_0

    .line 350
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v10    # "simId":I
    .restart local v11    # "simIdCursor":Landroid/database/Cursor;
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 352
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    .line 354
    const-string v0, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult() number ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can not found,return!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 371
    .restart local v12    # "tempKey":I
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mHasNumberByKey:Z

    goto/16 :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 1289
    if-ne p2, v4, :cond_0

    .line 1290
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const v3, 0x7f0d0157

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1291
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1292
    .local v2, "number":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1313
    .end local v0    # "editText":Landroid/widget/EditText;
    .end local v2    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1296
    .restart local v0    # "editText":Landroid/widget/EditText;
    .restart local v2    # "number":Ljava/lang/String;
    :cond_1
    iput-boolean v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mNeedRemovePosition:Z

    .line 1297
    invoke-direct {p0, v2}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->findKeyByNumber(Ljava/lang/String;)I

    move-result v3

    if-ne v4, v3, :cond_2

    .line 1299
    iget-object v3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v4, v4, 0x1

    aput-object v2, v3, v4

    .line 1302
    iget-object v3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1303
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget v3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1304
    iget v3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->offset(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1305
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1306
    iput-boolean v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mHasNumberByKey:Z

    .line 1307
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->startQuery()V

    goto :goto_0

    .line 1309
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mHasNumberByKey:Z

    .line 1310
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->showToastIfNecessary()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 1194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0d015c

    if-ne v6, v7, :cond_3

    .line 1195
    const/4 v4, -0x1

    .line 1196
    .local v4, "position":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 1197
    iget-object v6, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 1198
    move v4, v2

    .line 1202
    :cond_0
    const-string v6, "SpeedDialManageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick(),  before confirmRemovePosition(), position= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v6, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p0, v6}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->confirmRemovePosition(I)V

    .line 1227
    .end local v2    # "i":I
    .end local v4    # "position":I
    :cond_1
    :goto_1
    return-void

    .line 1196
    .restart local v2    # "i":I
    .restart local v4    # "position":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1204
    .end local v2    # "i":I
    .end local v4    # "position":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0d0158

    if-ne v6, v7, :cond_1

    .line 1205
    iput-boolean v8, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mNeedRemovePosition:Z

    .line 1206
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1209
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.android.contacts"

    const-string v7, "com.android.contacts.activities.ContactSelectionActivity"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1213
    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0, v3, v6}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    :goto_2
    const-string v6, "SpeedDialManageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[startActivityForResult] mAddPosition:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1217
    :catch_0
    move-exception v1

    .line 1218
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const v6, 0x7f0a05ae

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 1221
    .local v5, "toast":Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 612
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v0, v1

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 614
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v1}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->confirmRemovePosition(I)V

    .line 615
    const/4 v1, 0x1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 397
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 398
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "onCreate() , begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mListView:Landroid/widget/ListView;

    .line 400
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 401
    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 402
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f040058

    sget-object v4, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->BIND_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->ADAPTER_TO:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 404
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    new-instance v1, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$1;

    invoke-direct {v1, p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$1;-><init>(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 492
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 493
    new-instance v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$QueryHandler;-><init>(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mQueryHandler:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$QueryHandler;

    .line 497
    new-instance v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver;-><init>(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mSimReceiver:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver;

    .line 498
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mSimReceiver:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver;

    invoke-virtual {v0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver;->register()V

    .line 501
    new-instance v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$ContactsProviderObserver;

    invoke-direct {v0, p0, v3}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$ContactsProviderObserver;-><init>(Lcom/mediatek/dialer/activities/SpeedDialManageActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mContactsObserver:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$ContactsProviderObserver;

    .line 502
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mContactsObserver:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$ContactsProviderObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 505
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "onCreate() , end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 562
    const-string v6, "SpeedDialManageActivity"

    const-string v7, "context menu created"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    .local v3, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v3, :cond_1

    .line 575
    const-string v6, "SpeedDialManageActivity"

    const-string v7, "bad menuInfo"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .end local v3    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_0
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v2

    .line 569
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v6, "SpeedDialManageActivity"

    const-string v7, "bad menuInfo"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 578
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .restart local v3    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1
    const-string v6, "SpeedDialManageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateContextMenu(), info.position="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v1, 0x0

    .line 580
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cursor":Landroid/database/Cursor;
    check-cast v1, Landroid/database/Cursor;

    .line 581
    .restart local v1    # "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 585
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 586
    .local v4, "name":Ljava/lang/String;
    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 596
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 597
    const-string v6, "SpeedDialManageActivity"

    const-string v7, "What about really creating?"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const v6, 0x7f0a03a1

    invoke-interface {p1, v9, v10, v9, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 599
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 600
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0

    .line 603
    :cond_2
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mActivityDestroyed:Z

    .line 543
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 544
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mSimReceiver:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver;

    invoke-virtual {v0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$SimReceiver;->unregister()V

    .line 546
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    .line 549
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemovePosition:I

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->close()V

    .line 557
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mContactsObserver:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$ContactsProviderObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 558
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v7, 0x1

    .line 255
    const-string v4, "SpeedDialManageActivity"

    const-string v5, "onListItemClick"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-nez p3, :cond_0

    .line 303
    :goto_0
    return-void

    .line 260
    :cond_0
    iput p3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    .line 263
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/contacts/ExtensionManager;->getSpeedDialExtension()Lcom/mediatek/contacts/ext/SpeedDialExtension;

    move-result-object v4

    const-string v5, "ExtensionForOP01"

    invoke-virtual {v4, v5}, Lcom/mediatek/contacts/ext/SpeedDialExtension;->showSpeedInputDialog(Ljava/lang/String;)Z

    move-result v3

    .line 265
    .local v3, "result":Z
    if-eqz v3, :cond_3

    .line 266
    iget-object v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 267
    const/4 v4, -0x1

    iput v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    goto :goto_0

    .line 270
    :cond_1
    iget-object v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_2

    .line 271
    iget-object v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 273
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a039b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 275
    const v4, 0x7f0a03a7

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 276
    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    const v4, 0x7f040057

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 278
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    .line 279
    iget-object v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    invoke-virtual {v4, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 280
    iget-object v4, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 281
    iput-boolean v7, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mNeedRemovePosition:Z

    goto :goto_0

    .line 292
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.android.contacts"

    const-string v5, "com.android.contacts.activities.ContactSelectionActivity"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 297
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iput-boolean v7, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    .line 300
    const-string v4, "SpeedDialManageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onListItemClick]mIsWaitingActivityResult:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0, v2, v7}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 302
    const-string v4, "SpeedDialManageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[startActivityForResult]mAddPosition:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 727
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 732
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    .line 737
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1270
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1271
    const-string v0, "add_position"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    .line 1272
    const-string v0, "mNeedRemovePosition"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mNeedRemovePosition:Z

    .line 1273
    const-string v0, "mIsWaitingActivityResult"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    .line 1274
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 511
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 512
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "onResume begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-boolean v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mHasGotPref:Z

    if-nez v0, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->getPrefStatus()V

    .line 516
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mHasGotPref:Z

    .line 520
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->startQuery()V

    .line 521
    iget v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemovePosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 522
    iget v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mRemovePosition:I

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->confirmRemovePosition(I)V

    .line 524
    :cond_1
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "onResume end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1278
    iget v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1279
    const-string v0, "add_position"

    iget v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1280
    const-string v0, "mNeedRemovePosition"

    iget-boolean v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mNeedRemovePosition:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1282
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    if-eqz v0, :cond_1

    .line 1283
    const-string v0, "mIsWaitingActivityResult"

    iget-boolean v1, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1285
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1286
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1316
    move-object v2, p1

    check-cast v2, Landroid/app/AlertDialog;

    const v3, 0x7f0d0157

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1317
    .local v0, "editText":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1318
    iget-object v2, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    :cond_0
    invoke-static {}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$InputKeyListener;->getInstance()Lcom/mediatek/dialer/activities/SpeedDialManageActivity$InputKeyListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1322
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const v2, 0x7f0d0158

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1323
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1324
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 529
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 532
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->dismissProgressIndication()V

    .line 533
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->sIsQueryContact:Z

    .line 535
    return-void
.end method

.method populateMatrixCursorEmpty(Landroid/content/Context;Landroid/database/MatrixCursor;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "matrixCursor"    # Landroid/database/MatrixCursor;
    .param p3, "slot"    # I

    .prologue
    .line 946
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    aget-object v2, v2, p3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    aget-object v2, v2, p3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "-1"

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 949
    return-void
.end method
