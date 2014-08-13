.class public Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final CLIP_POSITION_KEY:Ljava/lang/String;

.field private static final FETCH_CONTENT_TIMEOUT_MS:J = 0x4e20L

.field private static final PAUSED_STATE_KEY:Ljava/lang/String;

.field private static final PLAYBACK_STREAM:I = 0x0

.field private static final PRESET_NAMES:[I

.field private static final PRESET_RATES:[F

.field private static final SLIDER_UPDATE_PERIOD_MILLIS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "VoicemailPlaybackPresenter"

.field private static sPresenterReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field listener:Landroid/telephony/PhoneStateListener;

.field private final mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

.field private final mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

.field private mIsCurrentSpeakerOn:Z

.field private mIsHeadsetPlugin:Z

.field public mIsPresenterDestroied:Z

.field private final mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

.field private final mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

.field private mPrepareTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "**>;"
        }
    .end annotation
.end field

.field private mRateIndex:I

.field private final mStartPlayingImmediately:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

.field private final mVoicemailUri:Landroid/net/Uri;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".PAUSED_STATE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PAUSED_STATE_KEY:Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".CLIP_POSITION_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->CLIP_POSITION_KEY:Ljava/lang/String;

    .line 148
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PRESET_RATES:[F

    .line 152
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PRESET_NAMES:[I

    return-void

    .line 148
    :array_0
    .array-data 4
        0x3f4ccccd
        0x3f800000
        0x3fa00000
    .end array-data

    .line 152
    :array_1
    .array-data 4
        0x7f0a0579
        0x7f0a057a
        0x7f0a057b
    .end array-data
.end method

.method public constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;Lcom/android/ex/variablespeed/MediaPlayerProxy;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/dialer/util/AsyncTaskExecutor;Landroid/os/PowerManager$WakeLock;)V
    .locals 6
    .param p1, "view"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    .param p2, "player"    # Lcom/android/ex/variablespeed/MediaPlayerProxy;
    .param p3, "voicemailUri"    # Landroid/net/Uri;
    .param p4, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p5, "startPlayingImmediately"    # Z
    .param p6, "asyncTaskExecutor"    # Lcom/android/dialer/util/AsyncTaskExecutor;
    .param p7, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    const/4 v5, 0x2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    .line 177
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 797
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$5;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$5;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 820
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 870
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$7;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$7;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 884
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$8;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$8;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 922
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$9;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$9;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->listener:Landroid/telephony/PhoneStateListener;

    .line 203
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    .line 204
    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    .line 205
    iput-object p3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    .line 206
    iput-boolean p5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mStartPlayingImmediately:Z

    .line 207
    iput-object p6, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    .line 208
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    const/16 v2, 0xc8

    invoke-direct {v1, p0, p4, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Ljava/util/concurrent/ScheduledExecutorService;I)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    .line 209
    iput-object p7, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 211
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDataSourceContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAudioManager:Landroid/media/AudioManager;

    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDataSourceContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDataSourceContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 220
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDataSourceContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v1, v2, v3, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 223
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDataSourceContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    return p1
.end method

.method static synthetic access$1500()[F
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PRESET_RATES:[F

    return-object v0
.end method

.method static synthetic access$1600()[I
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PRESET_NAMES:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;FI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # F
    .param p2, "x2"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->changeRate(FI)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->postSuccessfullyFetchedContent()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsHeadsetPlugin:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsHeadsetPlugin:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsCurrentSpeakerOn:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsCurrentSpeakerOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->makeRequestForContent()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/util/AsyncTaskExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->postSuccessfulPrepareActions()V

    return-void
.end method

.method private changeRate(FI)V
    .locals 3
    .param p1, "rate"    # F
    .param p2, "stringResourceId"    # I

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPresenterDestroied:Z

    if-eqz v0, :cond_0

    .line 648
    const-string v0, "VoicemailPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[changeRate] onPostExecute: mIsDestoryed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPresenterDestroied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :goto_0
    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    check-cast v0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;

    invoke-virtual {v0, p1}, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->setVariableSpeed(F)V

    .line 653
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateDisplay(FI)V

    goto :goto_0
.end method

.method private checkThatWeHaveContent()V
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setIsFetchingContent()V

    .line 268
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_FOR_CONTENT:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 288
    return-void
.end method

.method public static getInstance(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;Lcom/android/ex/variablespeed/MediaPlayerProxy;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/dialer/util/AsyncTaskExecutor;Landroid/os/PowerManager$WakeLock;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .locals 10
    .param p0, "view"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    .param p1, "player"    # Lcom/android/ex/variablespeed/MediaPlayerProxy;
    .param p2, "voicemailUri"    # Landroid/net/Uri;
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p4, "startPlayingImmediately"    # Z
    .param p5, "asyncTaskExecutor"    # Lcom/android/dialer/util/AsyncTaskExecutor;
    .param p6, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 232
    const-string v0, "VoicemailPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance, newView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v0, "VoicemailPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance, newPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->sPresenterReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->sPresenterReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->sPresenterReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .line 236
    .local v8, "presenter":Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    const-string v0, "VoicemailPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance, oldView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v0, "VoicemailPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance, oldPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPresenterDestroied:Z

    .line 239
    iget-object v0, v8, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->release()V

    .line 240
    iget-object v0, v8, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->finish()V

    .line 244
    .end local v8    # "presenter":Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    :goto_0
    new-instance v9, Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;Lcom/android/ex/variablespeed/MediaPlayerProxy;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/dialer/util/AsyncTaskExecutor;Landroid/os/PowerManager$WakeLock;)V

    invoke-direct {v9, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v9, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->sPresenterReference:Ljava/lang/ref/WeakReference;

    .line 246
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->sPresenterReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    return-object v0

    .line 242
    :cond_0
    const-string v0, "VoicemailPlaybackPresenter"

    const-string v1, "getInstance, oldPresenter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 588
    const-string v0, "VoicemailPlaybackPresenter"

    const-string v1, "[handleError]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 590
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackError(Ljava/lang/Exception;)V

    .line 591
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    .line 592
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->release()V

    .line 593
    return-void
.end method

.method private makeRequestForContent()V
    .locals 4

    .prologue
    .line 304
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 305
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "mFetchResultHandler should be null"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 306
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    .line 307
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-interface {v1, v2, v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 308
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-virtual {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->getTimeoutRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 309
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->sendFetchVoicemailRequest(Landroid/net/Uri;)V

    .line 310
    return-void

    .line 305
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postSuccessfulPrepareActions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->enableUiElements()V

    .line 414
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setPositionSeekListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 415
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setStartStopListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerphoneListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 418
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 420
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->isSpeakerPhoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsCurrentSpeakerOn:Z

    .line 421
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->createRateDecreaseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateDecreaseButtonListener(Landroid/view/View$OnClickListener;)V

    .line 422
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->createRateIncreaseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateIncreaseButtonListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->getDuration()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 424
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStopped()V

    .line 426
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->disableProximitySensor()V

    .line 427
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mStartPlayingImmediately:Z

    if-eqz v0, :cond_0

    .line 428
    invoke-direct {p0, v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V

    .line 432
    :cond_0
    return-void
.end method

.method private postSuccessfullyFetchedContent()V
    .locals 4

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setIsBuffering()V

    .line 375
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->PREPARE_MEDIA_PLAYER:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$2;

    invoke-direct {v2, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$2;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 404
    return-void
.end method

.method private resetPrepareStartPlaying(I)V
    .locals 4
    .param p1, "clipPositionInMillis"    # I

    .prologue
    const/4 v3, 0x0

    .line 524
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->RESET_PREPARE_START_MEDIA_PLAYER:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$3;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$3;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    .line 584
    return-void
.end method

.method private stopPlaybackAtPosition(II)V
    .locals 1
    .param p1, "clipPosition"    # I
    .param p2, "duration"    # I

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    .line 603
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStopped()V

    .line 604
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->disableProximitySensor()V

    .line 609
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 610
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->pause()V

    .line 613
    :cond_1
    return-void
.end method


# virtual methods
.method public createRateDecreaseListener()Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 493
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)V

    return-object v0
.end method

.method public createRateIncreaseListener()Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 497
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)V

    return-object v0
.end method

.method public handleCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 598
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    .line 599
    return-void
.end method

.method protected isBluetoothAvailable()Z
    .locals 6

    .prologue
    .line 899
    const-string v3, "VoicemailPlaybackPresenter"

    const-string v4, "isBluetoothAvailable() entry"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v1, 0x0

    .line 901
    .local v1, "isConnected":Z
    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_0

    .line 902
    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 903
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 904
    .local v2, "size":I
    const-string v3, "VoicemailPlaybackPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBluetoothAvailable() BluetoothHeadset size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    if-lez v2, :cond_0

    .line 906
    const/4 v1, 0x1

    .line 909
    .end local v0    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "size":I
    :cond_0
    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v3, :cond_1

    .line 910
    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 911
    .restart local v2    # "size":I
    const-string v3, "VoicemailPlaybackPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBluetoothAvailable() BluetoothA2dp size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 913
    const/4 v1, 0x1

    .line 916
    .end local v2    # "size":I
    :cond_1
    const-string v3, "VoicemailPlaybackPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBluetoothAvailable() mBluetoothHeadset isConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 250
    const-string v0, "VoicemailPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCreate], mView ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setVolumeControlStream(I)V

    .line 252
    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->checkThatWeHaveContent()V

    .line 253
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 442
    const-string v0, "VoicemailPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDestroy], mView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iput-boolean v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPresenterDestroied:Z

    .line 446
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 448
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->release()V

    .line 449
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDataSourceContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 451
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->listener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 455
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 456
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 457
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->destroy()V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    .line 462
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 465
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 747
    const-string v0, "VoicemailPlaybackPresenter"

    const-string v1, "[onPause]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 749
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    .line 757
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 761
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 763
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 766
    const-string v0, "VoicemailPlaybackPresenter"

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$4;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$4;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 778
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 782
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->isSpeakerPhoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsCurrentSpeakerOn:Z

    .line 783
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsCurrentSpeakerOn:Z

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerPhoneOn(Z)V

    .line 784
    const-string v0, "VoicemailPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentSpeakerStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsCurrentSpeakerOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 435
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->CLIP_POSITION_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PAUSED_STATE_KEY:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 439
    :cond_0
    return-void
.end method
