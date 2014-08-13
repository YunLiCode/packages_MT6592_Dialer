.class public Lcom/mediatek/incallui/vt/VTCallPresenter;
.super Lcom/android/incallui/Presenter;
.source "VTCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;"
    }
.end annotation


# instance fields
.field private mIsUIReady:Z

.field private mPrimaryCall:Lcom/android/services/telephony/common/Call;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mIsUIReady:Z

    .line 28
    return-void
.end method

.method private onVTClose()V
    .locals 3

    .prologue
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVTClose()...VTManagerLocal.getState(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v1

    sget-object v2, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CLOSE:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-ne v1, v2, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    .line 198
    .local v0, "ui":Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;
    if-eqz v0, :cond_0

    .line 199
    const-string v1, "Call ui.onVTClose()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-interface {v0}, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;->onVTClose()V

    .line 203
    .end local v0    # "ui":Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;
    :cond_0
    return-void
.end method

.method private onVTReady()V
    .locals 3

    .prologue
    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVTReady()...mIsUIReady / VTManagerLocal.getState(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mIsUIReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-boolean v1, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mIsUIReady:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v1

    sget-object v2, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->READY:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-ne v1, v2, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    .line 187
    .local v0, "ui":Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;
    if-eqz v0, :cond_0

    .line 188
    const-string v1, "Call ui.onVTReady()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-interface {v0}, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;->onVTReady()V

    .line 192
    .end local v0    # "ui":Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;
    :cond_0
    return-void
.end method


# virtual methods
.method public answerVTCallPre()V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "answerVTCallPre()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    invoke-interface {v0}, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;->answerVTCallPre()V

    .line 153
    :cond_0
    return-void
.end method

.method public dialVTCallSuccess()V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "dialVTCallSuccess()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    invoke-interface {v0}, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;->dialVTCallSuccess()V

    .line 161
    :cond_0
    return-void
.end method

.method public endCallClicked()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mPrimaryCall:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_0

    .line 89
    const-string v0, "endCallClicked but mCall is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mPrimaryCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    goto :goto_0
.end method

.method public init(Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mPrimaryCall:Lcom/android/services/telephony/common/Call;

    .line 77
    return-void
.end method

.method public isIncomingCall()Z
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "isMT":Z
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mPrimaryCall:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mPrimaryCall:Lcom/android/services/telephony/common/Call;

    invoke-static {v1}, Lcom/mediatek/incallui/InCallUtils;->isIncomingCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    .line 115
    :goto_0
    return v0

    .line 113
    :cond_0
    const-string v1, "mPrimaryCall is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 84
    iput-object p2, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mPrimaryCall:Lcom/android/services/telephony/common/Call;

    .line 85
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 80
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 22
    check-cast p1, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/mediatek/incallui/vt/VTCallPresenter;->onUiReady(Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;)V

    return-void
.end method

.method public onUiReady(Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 52
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 53
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 56
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->addVTListener(Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mIsUIReady:Z

    .line 59
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->onVTReady()V

    .line 60
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 22
    check-cast p1, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/mediatek/incallui/vt/VTCallPresenter;->onUiUnready(Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 67
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 68
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 71
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->removeVTListener(Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mIsUIReady:Z

    .line 73
    return-void
.end method

.method public onVTStateChanged(I)V
    .locals 3
    .param p1, "msgVT"    # I

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVTStateChanged()... msgVT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    .line 124
    .local v0, "ui":Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;
    if-nez v0, :cond_0

    .line 125
    const-string v1, "UI is not ready when onVTStateChanged(), just return."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 129
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 135
    :sswitch_0
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->onVTClose()V

    goto :goto_0

    .line 131
    :sswitch_1
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->onVTReady()V

    goto :goto_0

    .line 139
    :sswitch_2
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    invoke-interface {v1}, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;->onVTReceiveFirstFrame()V

    goto :goto_0

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method startVoiceRecording()V
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->startVoiceRecording()V

    .line 102
    return-void
.end method

.method startVtRecording(IJ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "maxSize"    # J

    .prologue
    .line 97
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/incallui/CallCommandClient;->startVtRecording(IJ)V

    .line 98
    return-void
.end method

.method stopRecording()V
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->stopRecording()V

    .line 106
    return-void
.end method

.method public updateVTCallButton()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public updateVTCallFragment()V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "updateVTCallFragment()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    invoke-interface {v0}, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;->updateVTScreen()V

    .line 169
    :cond_0
    return-void
.end method
