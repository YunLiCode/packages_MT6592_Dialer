.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$9;
.super Landroid/telephony/PhoneStateListener;
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
    .line 922
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$9;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 925
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 926
    packed-switch p1, :pswitch_data_0

    .line 938
    const-string v0, "VoicemailPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :goto_0
    return-void

    .line 928
    :pswitch_0
    const-string v0, "VoicemailPlaybackPresenter"

    const-string v1, "Phone state: CALL_STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$9$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$9$1;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$9;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 926
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
