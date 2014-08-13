.class public Lcom/mediatek/contacts/util/Worker;
.super Landroid/os/HandlerThread;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/util/Worker$WrapperCloseCursor;,
        Lcom/mediatek/contacts/util/Worker$MyHandler;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/mediatek/contacts/util/Worker;

.field private static final TAG:Ljava/lang/String; = "Worker"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/mediatek/contacts/util/Worker;

    invoke-direct {v0}, Lcom/mediatek/contacts/util/Worker;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/util/Worker;->INSTANCE:Lcom/mediatek/contacts/util/Worker;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "Worker_Thread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/util/Worker;->mLooper:Landroid/os/Looper;

    .line 53
    return-void
.end method

.method public static getWorkerInstance()Lcom/mediatek/contacts/util/Worker;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/mediatek/contacts/util/Worker;->INSTANCE:Lcom/mediatek/contacts/util/Worker;

    return-object v0
.end method


# virtual methods
.method public postJob(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/contacts/util/Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method

.method public prepair()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/contacts/util/Worker;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/mediatek/contacts/util/Worker;->INSTANCE:Lcom/mediatek/contacts/util/Worker;

    invoke-virtual {v0}, Lcom/mediatek/contacts/util/Worker;->start()V

    .line 62
    invoke-virtual {p0}, Lcom/mediatek/contacts/util/Worker;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/util/Worker;->mLooper:Landroid/os/Looper;

    .line 63
    new-instance v0, Lcom/mediatek/contacts/util/Worker$MyHandler;

    iget-object v1, p0, Lcom/mediatek/contacts/util/Worker;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/contacts/util/Worker$MyHandler;-><init>(Lcom/mediatek/contacts/util/Worker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/contacts/util/Worker;->mHandler:Landroid/os/Handler;

    .line 65
    :cond_0
    return-void
.end method
