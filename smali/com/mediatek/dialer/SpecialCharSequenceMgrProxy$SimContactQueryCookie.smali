.class Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgrProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimContactQueryCookie"
.end annotation


# instance fields
.field public contactNum:I

.field public context:Landroid/content/Context;

.field public mFoundForSlot:Landroid/util/SparseBooleanArray;

.field private mHandler:Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;

.field public mIsSingleQuery:Z

.field public mSimNameForSlot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSimNumberForSlot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextField:Landroid/widget/EditText;

.field private mToken:I

.field public progressDialog:Landroid/app/ProgressDialog;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;I)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "handler"    # Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;
    .param p3, "token"    # I

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mSimNumberForSlot:Landroid/util/SparseArray;

    .line 382
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mSimNameForSlot:Landroid/util/SparseArray;

    .line 383
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mFoundForSlot:Landroid/util/SparseBooleanArray;

    .line 387
    iput p1, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->contactNum:I

    .line 388
    iput-object p2, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mHandler:Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;

    .line 389
    iput p3, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mToken:I

    .line 390
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mTextField:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getQueryHandler()Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;
    .locals 1

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mHandler:Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextField()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mTextField:Landroid/widget/EditText;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextField(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mTextField:Landroid/widget/EditText;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
