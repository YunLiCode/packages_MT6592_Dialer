.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;
.super Landroid/content/BroadcastReceiver;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 823
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 826
    const-string v4, "state"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 827
    .local v1, "state":I
    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    if-ne v1, v2, :cond_2

    :goto_0
    # setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsHeadsetPlugin:Z
    invoke-static {v4, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2302(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z

    .line 828
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsHeadsetPlugin:Z
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2300(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 829
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerPhoneOn(Z)V

    .line 838
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->isSpeakerPhoneOn()Z

    move-result v3

    # setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsCurrentSpeakerOn:Z
    invoke-static {v2, v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2702(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z

    .line 841
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsHeadsetPlugin:Z
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2300(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsCurrentSpeakerOn:Z
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2700(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 842
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->enableProximitySensor()V

    .line 865
    .end local v1    # "state":I
    :cond_1
    :goto_2
    return-void

    .restart local v1    # "state":I
    :cond_2
    move v2, v3

    .line 827
    goto :goto_0

    .line 831
    :cond_3
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 832
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    invoke-static {v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->getCurrentPosition()I

    move-result v3

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    # invokes: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V
    invoke-static {v2, v3, v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2500(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;II)V

    .line 834
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->isSpeakerPhoneOn()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerPhoneOn(Z)V

    goto :goto_1

    .line 844
    :cond_4
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->disableProximitySensor()V

    goto :goto_2

    .line 846
    .end local v1    # "state":I
    :cond_5
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 847
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 848
    .restart local v1    # "state":I
    const-string v4, "VoicemailPlaybackPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHeadsetPlugReceiver: HEADSET_ACTION_CONNECTION_STATE_CHANGED, state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    if-eq v1, v2, :cond_1

    .line 851
    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->isBluetoothAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 852
    :cond_6
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->disableProximitySensor()V

    .line 853
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerPhoneOn(Z)V

    goto/16 :goto_2

    .line 854
    :cond_7
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->isSpeakerPhoneOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 855
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->enableProximitySensor()V

    goto/16 :goto_2

    .line 857
    .end local v1    # "state":I
    :cond_8
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 858
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/16 v3, 0xa

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 859
    .restart local v1    # "state":I
    const-string v2, "VoicemailPlaybackPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHeadsetPlugReceiver: HEADSET_AUDIO_STATE_CHANGED_ACTION, state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
