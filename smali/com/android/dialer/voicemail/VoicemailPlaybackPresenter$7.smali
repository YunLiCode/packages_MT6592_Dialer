.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$7;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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
    .line 870
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$7;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 873
    const-string v0, "VoicemailPlaybackPresenter"

    const-string v1, "mBluetoothHeadsetServiceListener onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$7;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$3002(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 875
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 879
    const-string v0, "VoicemailPlaybackPresenter"

    const-string v1, "mBluetoothHeadsetServiceListener onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$7;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$3002(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 881
    return-void
.end method
