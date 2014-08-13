.class public Lcom/android/incallui/CallButtonPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallButtonPresenter.java"

# interfaces
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;"
    }
.end annotation


# instance fields
.field private mCall:Lcom/android/services/telephony/common/Call;

.field private mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private mShowGenericMerge:Z

.field private mShowManageConference:Z

.field private mShowVoLteAddConferenceMember:Z

.field private mShowVoLteManageConference:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 61
    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowGenericMerge:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowManageConference:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 649
    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowVoLteManageConference:Z

    .line 650
    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowVoLteAddConferenceMember:Z

    .line 67
    return-void
.end method

.method private updateExtraButtonRow()V
    .locals 3

    .prologue
    .line 405
    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowGenericMerge:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowManageConference:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowVoLteManageConference:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowVoLteAddConferenceMember:Z

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->isDialpadVisible()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 411
    .local v0, "showExtraButtonRow":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGeneric: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mShowGenericMerge:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowManageConference : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mShowManageConference:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowGenericMerge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mShowGenericMerge:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowVoLteManageConference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mShowVoLteManageConference:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowVoLteAddConferenceMember: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mShowVoLteAddConferenceMember:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    if-eqz v0, :cond_5

    .line 419
    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowGenericMerge:Z

    if-eqz v1, :cond_3

    .line 420
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showGenericMergeButton()V

    .line 434
    :cond_1
    :goto_1
    return-void

    .line 405
    .end local v0    # "showExtraButtonRow":Z
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 421
    .restart local v0    # "showExtraButtonRow":Z
    :cond_3
    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowManageConference:Z

    if-eqz v1, :cond_4

    .line 422
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showManageConferenceCallButton()V

    goto :goto_1

    .line 424
    :cond_4
    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowVoLteManageConference:Z

    if-eqz v1, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showVoLteManageConfCallButton()V

    .line 426
    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowVoLteAddConferenceMember:Z

    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showVoLteAddConfMemberButton()V

    goto :goto_1

    .line 432
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->hideExtraRow()V

    goto :goto_1
.end method

.method private updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 11
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 276
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isDMLocked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 277
    invoke-virtual {p0, p2}, Lcom/android/incallui/CallButtonPresenter;->updateInCallControlsDuringDMLocked(Lcom/android/services/telephony/common/Call;)V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 282
    .local v8, "ui":Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    if-eqz v8, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz p2, :cond_4

    const/4 v4, 0x1

    .line 289
    .local v4, "isEnabled":Z
    :goto_1
    invoke-interface {v8, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setEnabled(Z)V

    .line 292
    invoke-interface {v8}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {p2, v9}, Lcom/mediatek/incallui/InCallUtils;->updateScreenPopupMenuState(Lcom/android/services/telephony/common/Call;Landroid/content/Context;)V

    .line 295
    const-string v9, "Updating call UI for call: "

    invoke-static {p0, v9, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    if-eqz v4, :cond_3

    .line 298
    const-string v9, "Show hold "

    const/4 v10, 0x2

    invoke-virtual {p2, v10}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    const-string v9, "Enable hold"

    const/4 v10, 0x1

    invoke-virtual {p2, v10}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    const-string v9, "Show merge "

    const/4 v10, 0x4

    invoke-virtual {p2, v10}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    const-string v9, "Show swap "

    const/16 v10, 0x8

    invoke-virtual {p2, v10}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    const-string v9, "Show add call "

    const/16 v10, 0x10

    invoke-virtual {p2, v10}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    const-string v9, "Show mute "

    const/16 v10, 0x40

    invoke-virtual {p2, v10}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    const/4 v9, 0x4

    invoke-virtual {p2, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    .line 306
    .local v2, "canMerge":Z
    const/16 v9, 0x10

    invoke-virtual {p2, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v0

    .line 307
    .local v0, "canAdd":Z
    const/16 v9, 0x80

    invoke-virtual {p2, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v5

    .line 310
    .local v5, "isGenericConference":Z
    if-nez v5, :cond_5

    if-eqz v2, :cond_5

    const/4 v6, 0x1

    .line 312
    .local v6, "showMerge":Z
    :goto_2
    invoke-interface {v8}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/incallui/InCallUtils;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 313
    if-eqz v6, :cond_6

    .line 314
    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMerge(Z)V

    .line 315
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAddCall(Z)V

    .line 327
    :goto_3
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v1

    .line 328
    .local v1, "canHold":Z
    const/16 v9, 0x8

    invoke-virtual {p2, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    .line 329
    .local v3, "canSwap":Z
    const/4 v9, 0x2

    invoke-virtual {p2, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v7

    .line 331
    .local v7, "supportHold":Z
    if-eqz v1, :cond_9

    .line 332
    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHold(Z)V

    .line 333
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_8

    const/4 v9, 0x1

    :goto_4
    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setHold(Z)V

    .line 334
    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableHold(Z)V

    .line 335
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwap(Z)V

    .line 368
    :goto_5
    const/16 v9, 0x40

    invoke-virtual {p2, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v9

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableMute(Z)V

    .line 369
    const/16 v9, 0x40

    invoke-virtual {p2, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v9

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableRecord(Z)V

    .line 379
    if-eqz v5, :cond_e

    if-eqz v2, :cond_e

    const/4 v9, 0x1

    :goto_6
    iput-boolean v9, p0, Lcom/android/incallui/CallButtonPresenter;->mShowGenericMerge:Z

    .line 381
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVoLte()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 382
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->isVoLteConferenceCall()Z

    move-result v9

    if-eqz v9, :cond_f

    if-nez v5, :cond_f

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v9

    const/4 v10, 0x7

    if-eq v9, v10, :cond_f

    const/4 v9, 0x1

    :goto_7
    iput-boolean v9, p0, Lcom/android/incallui/CallButtonPresenter;->mShowVoLteManageConference:Z

    .line 384
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->isVoLteConferenceHost()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/incallui/CallButtonPresenter;->mShowVoLteAddConferenceMember:Z

    .line 388
    :cond_2
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v9

    if-eqz v9, :cond_10

    if-nez v5, :cond_10

    iget-boolean v9, p0, Lcom/android/incallui/CallButtonPresenter;->mShowVoLteManageConference:Z

    if-nez v9, :cond_10

    const/4 v9, 0x1

    :goto_8
    iput-boolean v9, p0, Lcom/android/incallui/CallButtonPresenter;->mShowManageConference:Z

    .line 393
    iget-boolean v9, p0, Lcom/android/incallui/CallButtonPresenter;->mShowManageConference:Z

    if-eqz v9, :cond_11

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v9

    const/4 v10, 0x7

    if-eq v9, v10, :cond_11

    const/4 v9, 0x1

    :goto_9
    iput-boolean v9, p0, Lcom/android/incallui/CallButtonPresenter;->mShowManageConference:Z

    .line 396
    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->updateExtraButtonRow()V

    .line 399
    .end local v0    # "canAdd":Z
    .end local v1    # "canHold":Z
    .end local v2    # "canMerge":Z
    .end local v3    # "canSwap":Z
    .end local v5    # "isGenericConference":Z
    .end local v6    # "showMerge":Z
    .end local v7    # "supportHold":Z
    :cond_3
    if-nez p2, :cond_0

    if-nez v4, :cond_0

    .line 400
    invoke-interface {v8}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->hideExtraRow()V

    goto/16 :goto_0

    .line 286
    .end local v4    # "isEnabled":Z
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 310
    .restart local v0    # "canAdd":Z
    .restart local v2    # "canMerge":Z
    .restart local v4    # "isEnabled":Z
    .restart local v5    # "isGenericConference":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 317
    .restart local v6    # "showMerge":Z
    :cond_6
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMerge(Z)V

    .line 318
    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAddCall(Z)V

    .line 319
    invoke-interface {v8, v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableAddCall(Z)V

    goto/16 :goto_3

    .line 322
    :cond_7
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMerge(Z)V

    .line 323
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAddCall(Z)V

    goto/16 :goto_3

    .line 333
    .restart local v1    # "canHold":Z
    .restart local v3    # "canSwap":Z
    .restart local v7    # "supportHold":Z
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 336
    :cond_9
    if-eqz v3, :cond_a

    .line 337
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHold(Z)V

    .line 338
    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwap(Z)V

    goto/16 :goto_5

    .line 351
    :cond_a
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v9, 0x4000

    invoke-virtual {p2, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v9

    if-eqz v9, :cond_b

    if-nez v3, :cond_b

    .line 353
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHold(Z)V

    .line 354
    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwap(Z)V

    goto/16 :goto_5

    .line 356
    :cond_b
    if-eqz v7, :cond_d

    .line 358
    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHold(Z)V

    .line 359
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableHold(Z)V

    .line 360
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_c

    const/4 v9, 0x1

    :goto_a
    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setHold(Z)V

    .line 361
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwap(Z)V

    goto/16 :goto_5

    .line 360
    :cond_c
    const/4 v9, 0x0

    goto :goto_a

    .line 363
    :cond_d
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHold(Z)V

    .line 364
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwap(Z)V

    goto/16 :goto_5

    .line 379
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 382
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 388
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 393
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_9
.end method


# virtual methods
.method public addCallClicked()V
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->addCall()V

    .line 262
    return-void
.end method

.method public addVoLteConfMember()V
    .locals 2

    .prologue
    .line 655
    invoke-static {}, Lcom/mediatek/incallui/volte/VoLteConfUiController;->getInstance()Lcom/mediatek/incallui/volte/VoLteConfUiController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getConferenceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/volte/VoLteConfUiController;->showAddConferenceMemberDialog(I)V

    .line 656
    return-void
.end method

.method public answerVTCallPre()V
    .locals 0

    .prologue
    .line 594
    return-void
.end method

.method public dialVTCallSuccess()V
    .locals 0

    .prologue
    .line 599
    return-void
.end method

.method public endCallClicked()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 1

    .prologue
    .line 537
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->explicitCallTransfer()V

    .line 538
    return-void
.end method

.method public getAudioMode()I
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public getCall()Lcom/android/services/telephony/common/Call;
    .locals 2

    .prologue
    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCall()... mCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method public getSupportedAudio()I
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method public hangupActiveAndAnswerWaiting()V
    .locals 1

    .prologue
    .line 533
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->hangupActiveAndAnswerWaiting()V

    .line 534
    return-void
.end method

.method public hangupAllCalls()V
    .locals 1

    .prologue
    .line 525
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->hangupAllCalls()V

    .line 526
    return-void
.end method

.method public hangupHoldingCall()V
    .locals 1

    .prologue
    .line 529
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->hangupHoldingCall()V

    .line 530
    return-void
.end method

.method public holdClicked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/CallCommandClient;->hold(IZ)V

    goto :goto_0
.end method

.method public isNoCallExist()Z
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVTCall()Z
    .locals 3

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "isVT":Z
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    .line 546
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v0

    .line 548
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVTCall()... mCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    return v0
.end method

.method public manageConferenceButtonClicked()V
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayManageConferencePanel(Z)V

    .line 216
    return-void
.end method

.method public manageVoLteConf()V
    .locals 2

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayVoLteManageConfPanel(Z)V

    .line 653
    return-void
.end method

.method public mergeClicked()V
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->merge()V

    .line 236
    return-void
.end method

.method public muteClicked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turning on mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCommandClient;->mute(Z)V

    .line 222
    return-void
.end method

.method public onAudioMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setAudio(I)V

    .line 149
    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 1
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->dismissPopupMenu()V

    .line 141
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 142
    return-void
.end method

.method public onMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setMute(Z)V

    .line 163
    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChange()... state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_1

    .line 97
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    .line 126
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallButtonPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V

    .line 129
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/ExtensionManager;->getCallButtonExtension()Lcom/mediatek/incallui/ext/CallButtonExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getCallMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/incallui/ext/CallButtonExtension;->onStateChange(Lcom/android/services/telephony/common/Call;Ljava/util/HashMap;)V

    .line 132
    iput-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 133
    return-void

    .line 98
    :cond_1
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_2

    .line 104
    invoke-static {p2, v2, v3}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    .line 110
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getSlotId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/incallui/InCallUtils;->isVoiceMailNumber(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(Z)V

    goto :goto_0

    .line 120
    :cond_2
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_3

    .line 121
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(Z)V

    .line 122
    iput-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    goto :goto_0

    .line 124
    :cond_3
    iput-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    goto :goto_0
.end method

.method public onSupportedAudioMode(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setSupportedAudio(I)V

    .line 156
    :cond_0
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 73
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 76
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 77
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 79
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->addVTListener(Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;)V

    .line 80
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 39
    check-cast p1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiReady(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 86
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 87
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 88
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 89
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->removeVTListener(Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;)V

    .line 90
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 39
    check-cast p1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiUnready(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public onVTEndCallClick()V
    .locals 0

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    .line 583
    return-void
.end method

.method public onVTStateChanged(I)V
    .locals 0
    .param p1, "msgVT"    # I

    .prologue
    .line 589
    return-void
.end method

.method public setAudioMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending new Audio Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCommandClient;->setAudioMode(I)V

    .line 181
    return-void
.end method

.method public shouldSwitchCameraEnable()Z
    .locals 2

    .prologue
    .line 562
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTEnableBackCamera:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 564
    .local v0, "shouldEnable":Z
    :goto_0
    return v0

    .line 562
    .end local v0    # "shouldEnable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldSwitchCameraVisible()Z
    .locals 3

    .prologue
    .line 557
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getCameraSensorCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 558
    .local v0, "shouldVisible":Z
    :goto_0
    return v0

    .line 557
    .end local v0    # "shouldVisible":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldVTRecordEnable()Z
    .locals 2

    .prologue
    .line 573
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportPhoneVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-ne v0, v1, :cond_0

    .line 575
    const/4 v0, 0x1

    .line 578
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldVideoSettingEnable()Z
    .locals 3

    .prologue
    .line 568
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v1

    sget-object v2, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 569
    .local v0, "shouldEnable":Z
    :goto_0
    return v0

    .line 568
    .end local v0    # "shouldEnable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialpadClicked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show dialpad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(Z)V

    .line 271
    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->updateExtraButtonRow()V

    .line 272
    return-void
.end method

.method public stopRecordClicked()V
    .locals 1

    .prologue
    .line 521
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->stopRecording()V

    .line 522
    return-void
.end method

.method public swapClicked()V
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->swap()V

    .line 266
    return-void
.end method

.method public toggleSpeakerphone()V
    .locals 3

    .prologue
    .line 188
    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "toggling speakerphone not allowed when bluetooth supported."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setSupportedAudio(I)V

    .line 204
    :goto_0
    return-void

    .line 196
    :cond_0
    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    .line 199
    .local v0, "newMode":I
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v1

    sget v2, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v1, v2, :cond_1

    .line 200
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    .line 203
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0
.end method

.method updateInCallControlsDuringDMLocked(Lcom/android/services/telephony/common/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 622
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 623
    .local v3, "ui":Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    if-nez v3, :cond_0

    .line 624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "just return ui:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    :goto_0
    return-void

    .line 627
    :cond_0
    invoke-interface {v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 628
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_1

    .line 629
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "just return context:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_1
    if-nez p1, :cond_2

    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "just return call:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_2
    invoke-interface {v3, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setEnabled(Z)V

    .line 637
    invoke-interface {v3, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMerge(Z)V

    .line 638
    invoke-interface {v3, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAddCall(Z)V

    .line 639
    invoke-interface {v3, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableAddCall(Z)V

    .line 640
    invoke-virtual {p1, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v0

    .line 641
    .local v0, "canHold":Z
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v1

    .line 642
    .local v1, "canSwap":Z
    invoke-interface {v3, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableEnd(Z)V

    .line 643
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->isDialpadVisible()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(Z)V

    .line 644
    invoke-interface {v3, v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHold(Z)V

    .line 645
    invoke-interface {v3, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwap(Z)V

    goto :goto_0
.end method

.method public updateVTCallButton()V
    .locals 1

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 609
    .local v0, "ui":Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    if-eqz v0, :cond_0

    .line 610
    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateVTCallButton()V

    .line 612
    :cond_0
    return-void
.end method

.method public updateVTCallFragment()V
    .locals 0

    .prologue
    .line 604
    return-void
.end method

.method public voiceRecordClicked()V
    .locals 1

    .prologue
    .line 517
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->startVoiceRecording()V

    .line 518
    return-void
.end method
