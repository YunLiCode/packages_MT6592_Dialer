.class public interface abstract Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;
.super Ljava/lang/Object;
.source "VoLteConfCallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/incallui/volte/VoLteConfCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VoLteConfDataUpdateListener"
.end annotation


# virtual methods
.method public abstract onMemberAddIn(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/services/telephony/common/VoLteConferenceMember;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMemberLeft(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/services/telephony/common/VoLteConferenceMember;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onVoLteConferenceUpdate(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/services/telephony/common/VoLteConferenceMember;",
            ">;I)V"
        }
    .end annotation
.end method
