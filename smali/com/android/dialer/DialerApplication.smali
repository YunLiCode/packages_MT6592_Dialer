.class public Lcom/android/dialer/DialerApplication;
.super Landroid/app/Application;
.source "DialerApplication.java"


# static fields
.field public static final sDialerSearchSupport:Z = true

.field private static sMe:Lcom/android/dialer/DialerApplication; = null

.field public static final sSpeedDial:Z = true


# instance fields
.field protected TEST_NUMBER:Ljava/lang/String;

.field public cellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 25
    const-string v0, "10086"

    iput-object v0, p0, Lcom/android/dialer/DialerApplication;->TEST_NUMBER:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/android/dialer/DialerApplication;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/dialer/DialerApplication;->sMe:Lcom/android/dialer/DialerApplication;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 30
    invoke-virtual {p0}, Lcom/android/dialer/DialerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/extensions/ExtensionsFactory;->init(Landroid/content/Context;)V

    .line 31
    sput-object p0, Lcom/android/dialer/DialerApplication;->sMe:Lcom/android/dialer/DialerApplication;

    .line 32
    sget-object v1, Lcom/android/dialer/DialerApplication;->sMe:Lcom/android/dialer/DialerApplication;

    invoke-static {v1}, Lcom/mediatek/contacts/GlobalEnv;->setApplicationContext(Landroid/content/Context;)V

    .line 37
    invoke-static {p0}, Lcom/mediatek/calloption/SimAssociateHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/calloption/SimAssociateHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/calloption/SimAssociateHandler;->prepair()V

    .line 38
    invoke-static {p0}, Lcom/mediatek/calloption/SimAssociateHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/calloption/SimAssociateHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/calloption/SimAssociateHandler;->load()V

    .line 40
    new-instance v1, Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {v1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/DialerApplication;->cellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 41
    iget-object v1, p0, Lcom/android/dialer/DialerApplication;->cellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {p0}, Lcom/android/dialer/DialerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/phone/SIMInfoWrapper;->init(Landroid/content/Context;)V

    .line 46
    new-instance v1, Lcom/android/dialer/DialerApplication$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/DialerApplication$1;-><init>(Lcom/android/dialer/DialerApplication;)V

    invoke-virtual {v1}, Lcom/android/dialer/DialerApplication$1;->start()V

    .line 55
    invoke-static {}, Lcom/mediatek/phone/HyphonManager;->getInstance()Lcom/mediatek/phone/HyphonManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/phone/HyphonManager;->init(Landroid/content/Context;)V

    .line 56
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/dialer/DialerApplication$2;

    invoke-direct {v2, p0}, Lcom/android/dialer/DialerApplication$2;-><init>(Lcom/android/dialer/DialerApplication;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 70
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/dialer/DialerApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 72
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 76
    return-void
.end method
