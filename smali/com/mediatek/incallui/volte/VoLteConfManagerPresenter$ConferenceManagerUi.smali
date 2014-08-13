.class public interface abstract Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;
.super Ljava/lang/Object;
.source "VoLteConfManagerPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConferenceManagerUi"
.end annotation


# virtual methods
.method public abstract displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isFragmentVisible()Z
.end method

.method public abstract notifyMemberChange(ILjava/lang/String;)V
.end method

.method public abstract setRowVisible(IZ)V
.end method

.method public abstract setStatusForRow(IZ)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract setupRemoveButtonForRow(IZ)V
.end method

.method public abstract startConferenceTime(J)V
.end method

.method public abstract stopConferenceTime()V
.end method
