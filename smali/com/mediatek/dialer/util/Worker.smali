.class public Lcom/mediatek/dialer/util/Worker;
.super Landroid/os/HandlerThread;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dialer/util/Worker$WrapperCloseCursor;,
        Lcom/mediatek/dialer/util/Worker$MyHandler;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/mediatek/dialer/util/Worker;

.field private static final TAG:Ljava/lang/String; = "Worker"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/mediatek/dialer/util/Worker;

    invoke-direct {v0}, Lcom/mediatek/dialer/util/Worker;-><init>()V

    sput-object v0, Lcom/mediatek/dialer/util/Worker;->INSTANCE:Lcom/mediatek/dialer/util/Worker;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "Worker_Thread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/dialer/util/Worker;->mLooper:Landroid/os/Looper;

    .line 18
    return-void
.end method

.method public static getWorkerInstance()Lcom/mediatek/dialer/util/Worker;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/mediatek/dialer/util/Worker;->INSTANCE:Lcom/mediatek/dialer/util/Worker;

    return-object v0
.end method


# virtual methods
.method public postJob(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/dialer/util/Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    return-void
.end method

.method public prepair()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/dialer/util/Worker;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lcom/mediatek/dialer/util/Worker;->INSTANCE:Lcom/mediatek/dialer/util/Worker;

    invoke-virtual {v0}, Lcom/mediatek/dialer/util/Worker;->start()V

    .line 27
    invoke-virtual {p0}, Lcom/mediatek/dialer/util/Worker;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/util/Worker;->mLooper:Landroid/os/Looper;

    .line 28
    new-instance v0, Lcom/mediatek/dialer/util/Worker$MyHandler;

    iget-object v1, p0, Lcom/mediatek/dialer/util/Worker;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/dialer/util/Worker$MyHandler;-><init>(Lcom/mediatek/dialer/util/Worker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/dialer/util/Worker;->mHandler:Landroid/os/Handler;

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v0, "Worker"

    const-string v1, "donothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
