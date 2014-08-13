.class public Lcom/mediatek/incallui/NotifySTKDisconnect;
.super Ljava/lang/Object;
.source "NotifySTKDisconnect.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NotifySTKDisconnect"

.field private static final STK_BROADCAST_ACTION:Ljava/lang/String; = "android.intent.action.stk.CALL_DISCONNECTED"

.field private static final STK_SLOT_EXTRA:Ljava/lang/String; = "sim_id"

.field private static sInstance:Lcom/mediatek/incallui/NotifySTKDisconnect;


# instance fields
.field private mNotifyStkSlotId:I

.field private mShouldNotifySTK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/mediatek/incallui/NotifySTKDisconnect;

    invoke-direct {v0}, Lcom/mediatek/incallui/NotifySTKDisconnect;-><init>()V

    sput-object v0, Lcom/mediatek/incallui/NotifySTKDisconnect;->sInstance:Lcom/mediatek/incallui/NotifySTKDisconnect;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/incallui/NotifySTKDisconnect;->mShouldNotifySTK:Z

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/incallui/NotifySTKDisconnect;->mNotifyStkSlotId:I

    return-void
.end method

.method public static getInstance()Lcom/mediatek/incallui/NotifySTKDisconnect;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/mediatek/incallui/NotifySTKDisconnect;->sInstance:Lcom/mediatek/incallui/NotifySTKDisconnect;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/mediatek/incallui/NotifySTKDisconnect;

    invoke-direct {v0}, Lcom/mediatek/incallui/NotifySTKDisconnect;-><init>()V

    sput-object v0, Lcom/mediatek/incallui/NotifySTKDisconnect;->sInstance:Lcom/mediatek/incallui/NotifySTKDisconnect;

    .line 25
    :cond_0
    sget-object v0, Lcom/mediatek/incallui/NotifySTKDisconnect;->sInstance:Lcom/mediatek/incallui/NotifySTKDisconnect;

    return-object v0
.end method

.method private isNoActiveCall()Z
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "isNoActiveCall":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-nez v1, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 59
    :cond_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string v0, "NotifySTKDisconnect"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method


# virtual methods
.method public clearNotifyStkFlag()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/incallui/NotifySTKDisconnect;->mShouldNotifySTK:Z

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/incallui/NotifySTKDisconnect;->mNotifyStkSlotId:I

    .line 31
    return-void
.end method

.method public notifyStkCallDisconnected(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStkCallDisconnected(), isNoActiveCall() / mShouldNotifySTK / mNotifyStkSlotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/incallui/NotifySTKDisconnect;->isNoActiveCall()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/incallui/NotifySTKDisconnect;->mShouldNotifySTK:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/incallui/NotifySTKDisconnect;->mNotifyStkSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/NotifySTKDisconnect;->log(Ljava/lang/String;)V

    .line 42
    if-nez p1, :cond_0

    .line 43
    const-string v1, "context is null when notifyStkCallDisconnected() is called ! "

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/NotifySTKDisconnect;->log(Ljava/lang/String;)V

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/incallui/NotifySTKDisconnect;->isNoActiveCall()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/incallui/NotifySTKDisconnect;->mShouldNotifySTK:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/mediatek/incallui/NotifySTKDisconnect;->mNotifyStkSlotId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eqz p1, :cond_1

    .line 46
    const-string v1, "notifyStkCallDisconnected(), done !"

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/NotifySTKDisconnect;->log(Ljava/lang/String;)V

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.CALL_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "sim_id"

    iget v2, p0, Lcom/mediatek/incallui/NotifySTKDisconnect;->mNotifyStkSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/incallui/NotifySTKDisconnect;->clearNotifyStkFlag()V

    .line 52
    return-void
.end method

.method public setNotifyStkFlag(I)V
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/incallui/NotifySTKDisconnect;->mShouldNotifySTK:Z

    .line 35
    iput p1, p0, Lcom/mediatek/incallui/NotifySTKDisconnect;->mNotifyStkSlotId:I

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShouldNotifySTK(): mNotifyStkSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/incallui/NotifySTKDisconnect;->mNotifyStkSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/NotifySTKDisconnect;->log(Ljava/lang/String;)V

    .line 37
    return-void
.end method
