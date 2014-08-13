.class public Lcom/mediatek/contacts/GlobalEnv;
.super Ljava/lang/Object;
.source "GlobalEnv.java"


# static fields
.field private static final IS_TABLET:Z

.field private static final TAG:Ljava/lang/String; = "GlobalEnv"

.field private static sContext:Landroid/content/Context;

.field private static sSingleTaskService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/GlobalEnv;->sContext:Landroid/content/Context;

    .line 56
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/GlobalEnv;->sSingleTaskService:Ljava/util/concurrent/ExecutorService;

    .line 58
    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/contacts/GlobalEnv;->IS_TABLET:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/mediatek/contacts/GlobalEnv;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/mediatek/contacts/GlobalEnv;->sContext:Landroid/content/Context;

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "context not set yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSingleTaskService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/mediatek/contacts/GlobalEnv;->sSingleTaskService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static isUsingTwoPanes()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/mediatek/contacts/GlobalEnv;->IS_TABLET:Z

    return v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    sget-object v0, Lcom/mediatek/contacts/GlobalEnv;->sContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 69
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 70
    sput-object p0, Lcom/mediatek/contacts/GlobalEnv;->sContext:Landroid/content/Context;

    .line 71
    const-string v0, "GlobalEnv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setApplicationContext]sContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/contacts/GlobalEnv;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Application context can be set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "application context could be set only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
