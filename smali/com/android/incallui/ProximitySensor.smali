.class public Lcom/android/incallui/ProximitySensor;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Lcom/android/incallui/AccelerometerListener$OrientationListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ProximitySensor$SmartBookBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

.field private final mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

.field mContext:Landroid/content/Context;

.field private mDialpadVisible:Z

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mIsHardKeyboardOpen:Z

.field private mIsPhoneOffhook:Z

.field private mOrientation:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSmartBookReceiver:Landroid/content/BroadcastReceiver;

.field private mUiShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/AudioModeProvider;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioModeProvider"    # Lcom/android/incallui/AudioModeProvider;

    .prologue
    const/16 v2, 0x20

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v0, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    .line 54
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    .line 63
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    .line 65
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 71
    :goto_0
    const-string v0, "onCreate: mProximityWakeLock: "

    iget-object v1, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    new-instance v0, Lcom/android/incallui/AccelerometerListener;

    invoke-direct {v0, p1, p0}, Lcom/android/incallui/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/incallui/AccelerometerListener$OrientationListener;)V

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    .line 74
    iput-object p2, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 75
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/android/incallui/ProximitySensor;->setupForSmartBook(Landroid/content/Context;)V

    .line 81
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method private checkScreenOnForSmartBook(Z)Z
    .locals 5
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 352
    move v1, p1

    .line 353
    .local v1, "screenOnImmediately":Z
    iget-object v4, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    .line 354
    .local v0, "audioMode":I
    invoke-virtual {p0}, Lcom/android/incallui/ProximitySensor;->isSmartBookPlugged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 355
    sget v4, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-eq v4, v0, :cond_0

    sget v4, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-eq v4, v0, :cond_0

    sget v4, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-ne v4, v0, :cond_3

    :cond_0
    move v1, v3

    .line 358
    :goto_0
    if-nez v1, :cond_1

    iget-boolean v4, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-nez v4, :cond_4

    :cond_1
    move v1, v3

    .line 360
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkScreenOnForSmartBook(); screenOnImmediately: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    return v1

    :cond_3
    move v1, v2

    .line 355
    goto :goto_0

    :cond_4
    move v1, v2

    .line 358
    goto :goto_1
.end method

.method private proximitySensorModeEnabled()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerSmartBookReceiver(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 371
    return-void
.end method

.method private setupForSmartBook(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    return-void
.end method

.method private shouldSkipAcquireProximityLock()Z
    .locals 3

    .prologue
    .line 400
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 401
    .local v0, "callList":Lcom/android/incallui/CallList;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 402
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-nez v1, :cond_0

    .line 404
    const-string v1, "no active call when INCALL state, skip Acquire Proximity Lock~~"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    const/4 v1, 0x1

    .line 408
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private tearDownForSmartBook()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method private updateProximitySensorMode()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 212
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->proximitySensorModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 213
    iget-object v7, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v7

    .line 215
    :try_start_0
    iget-object v6, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v6}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    .line 220
    .local v0, "audioMode":I
    sget v6, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-eq v6, v0, :cond_0

    sget v6, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-eq v6, v0, :cond_0

    sget v6, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-eq v6, v0, :cond_0

    iget-boolean v6, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    if-eqz v6, :cond_3

    :cond_0
    move v4, v5

    .line 228
    .local v4, "screenOnImmediately":Z
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/incallui/ProximitySensor;->checkScreenOnForSmartBook(Z)Z

    move-result v4

    .line 233
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->checkScreenOnForVT()Z

    move-result v6

    or-int/2addr v4, v6

    .line 240
    const/4 v2, 0x0

    .line 242
    .local v2, "horizontal":Z
    iget-boolean v6, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-nez v6, :cond_4

    move v6, v5

    :goto_1
    or-int/2addr v4, v6

    .line 249
    iget-boolean v6, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    if-eqz v6, :cond_1

    :cond_1
    or-int/lit8 v4, v4, 0x0

    .line 251
    const-string v6, "screenonImmediately: "

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {p0, v6, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v8

    const-string v9, "keybrd"

    iget-boolean v6, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    if-eqz v6, :cond_5

    move v6, v5

    :goto_2
    invoke-virtual {v8, v9, v6}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v8

    const-string v9, "dpad"

    iget-boolean v6, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    if-eqz v6, :cond_6

    move v6, v5

    :goto_3
    invoke-virtual {v8, v9, v6}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v8

    const-string v9, "offhook"

    iget-boolean v6, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v6, :cond_7

    move v6, v5

    :goto_4
    invoke-virtual {v8, v9, v6}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v6

    const-string v8, "hor"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v8

    const-string v9, "ui"

    iget-boolean v6, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-eqz v6, :cond_8

    move v6, v5

    :goto_5
    invoke-virtual {v8, v9, v6}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v6

    const-string v8, "aud"

    invoke-static {v0}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iget-boolean v6, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v6, :cond_b

    if-nez v4, :cond_b

    .line 262
    const-string v3, "turning on proximity sensor: "

    .line 272
    .local v3, "logStr":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->shouldSkipAcquireProximityLock()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 273
    const-string v5, "turning on proximity sensor: skip"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    :goto_6
    monitor-exit v7

    .line 299
    .end local v0    # "audioMode":I
    .end local v2    # "horizontal":Z
    .end local v3    # "logStr":Ljava/lang/String;
    .end local v4    # "screenOnImmediately":Z
    :cond_2
    return-void

    .restart local v0    # "audioMode":I
    :cond_3
    move v4, v1

    .line 220
    goto :goto_0

    .restart local v2    # "horizontal":Z
    .restart local v4    # "screenOnImmediately":Z
    :cond_4
    move v6, v1

    .line 242
    goto :goto_1

    :cond_5
    move v6, v1

    .line 253
    goto :goto_2

    :cond_6
    move v6, v1

    goto :goto_3

    :cond_7
    move v6, v1

    goto :goto_4

    :cond_8
    move v6, v1

    goto :goto_5

    .line 274
    .restart local v3    # "logStr":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_a

    .line 276
    const-string v5, "turning on proximity sensor: acquiring"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iget-object v5, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_6

    .line 297
    .end local v0    # "audioMode":I
    .end local v2    # "horizontal":Z
    .end local v3    # "logStr":Ljava/lang/String;
    .end local v4    # "screenOnImmediately":Z
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 279
    .restart local v0    # "audioMode":I
    .restart local v2    # "horizontal":Z
    .restart local v3    # "logStr":Ljava/lang/String;
    .restart local v4    # "screenOnImmediately":Z
    :cond_a
    :try_start_1
    const-string v5, "turning on proximity sensor: already acquired"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 282
    .end local v3    # "logStr":Ljava/lang/String;
    :cond_b
    const-string v3, "turning off proximity sensor: "

    .line 285
    .restart local v3    # "logStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 286
    const-string v6, "turning off proximity sensor: releasing"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    if-eqz v4, :cond_c

    .line 292
    .local v1, "flags":I
    :goto_7
    iget-object v5, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v1}, Landroid/os/PowerManager$WakeLock;->release(I)V

    goto :goto_6

    .end local v1    # "flags":I
    :cond_c
    move v1, v5

    .line 290
    goto :goto_7

    .line 294
    :cond_d
    const-string v5, "turning off proximity sensor: already released"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6
.end method


# virtual methods
.method public isScreenReallyOff()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmartBookPlugged()Z
    .locals 3

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 331
    .local v0, "isSmartBookPlugged":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSmartBookPlugged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    return v0
.end method

.method public lightOnScreenForSmartBook()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public onAudioMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 140
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    .line 151
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    .line 154
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 155
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDialpadVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    .line 144
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 145
    return-void
.end method

.method public onInCallShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 161
    if-eqz p1, :cond_1

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    .line 169
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 170
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    goto :goto_0
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "muted"    # Z

    .prologue
    .line 132
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 3
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v1, 0x0

    .line 113
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v2, p1, :cond_0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 116
    .local v0, "isOffhook":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eq v0, v2, :cond_1

    .line 117
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    .line 119
    iput v1, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    .line 120
    iget-object v1, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    iget-boolean v2, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    invoke-virtual {v1, v2}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    .line 122
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 124
    :cond_1
    return-void

    .end local v0    # "isOffhook":Z
    :cond_2
    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public onSupportedAudioMode(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 128
    return-void
.end method

.method public orientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    .line 103
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 104
    return-void
.end method

.method public screenOffForSmartBook()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public tearDown()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->tearDownForSmartBook()V

    .line 95
    return-void
.end method
