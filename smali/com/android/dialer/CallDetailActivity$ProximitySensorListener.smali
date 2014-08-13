.class Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/dialer/ProximitySensorManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximitySensorListener"
.end annotation


# instance fields
.field private final mBlankRunnable:Ljava/lang/Runnable;

.field private final mUnblankRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;


# direct methods
.method private constructor <init>(Lcom/android/dialer/CallDetailActivity;)V
    .locals 1

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$1;-><init>(Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    .line 213
    new-instance v0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$2;-><init>(Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/CallDetailActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p2, "x1"    # Lcom/android/dialer/CallDetailActivity$1;

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    return-void
.end method

.method private declared-synchronized postDelayed(Ljava/lang/Runnable;J)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v2, 0x7f0d005f

    invoke-virtual {v1, v2}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 256
    .local v0, "blankView":Landroid/view/View;
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 255
    .end local v0    # "blankView":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized clearPendingRequests()V
    .locals 3

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v2, 0x7f0d005f

    invoke-virtual {v1, v2}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, "blankView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 246
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 244
    .end local v0    # "blankView":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onFar()V
    .locals 2

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    const-string v0, "CallDetailActivity"

    const-string v1, "onfar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPlaybackFragment:Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;
    invoke-static {v0}, Lcom/android/dialer/CallDetailActivity;->access$100(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPlaybackFragment:Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;
    invoke-static {v0}, Lcom/android/dialer/CallDetailActivity;->access$100(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->setIsPausedBySensor(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_0
    monitor-exit p0

    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNear()V
    .locals 2

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    const-string v0, "CallDetailActivity"

    const-string v1, "onNear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPlaybackFragment:Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;
    invoke-static {v0}, Lcom/android/dialer/CallDetailActivity;->access$100(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPlaybackFragment:Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;
    invoke-static {v0}, Lcom/android/dialer/CallDetailActivity;->access$100(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->setIsPausedBySensor(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_0
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
