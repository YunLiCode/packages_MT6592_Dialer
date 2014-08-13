.class public Lcom/mediatek/incallui/volte/VoLteConfCallList;
.super Ljava/lang/Object;
.source "VoLteConfCallList.java"

# interfaces
.implements Lcom/android/incallui/CallList$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VoLteConfCallList"

.field private static sInstance:Lcom/mediatek/incallui/volte/VoLteConfCallList;


# instance fields
.field private final mCallMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/services/telephony/common/VoLteConferenceMember;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/mediatek/incallui/volte/VoLteConfCallList;

    invoke-direct {v0}, Lcom/mediatek/incallui/volte/VoLteConfCallList;-><init>()V

    sput-object v0, Lcom/mediatek/incallui/volte/VoLteConfCallList;->sInstance:Lcom/mediatek/incallui/volte/VoLteConfCallList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfCallList;->mCallMap:Ljava/util/HashMap;

    .line 23
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfCallList;->mListeners:Ljava/util/Set;

    .line 26
    return-void
.end method

.method public static dumpVoLTEConfMemberList(ILjava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p0, "conferenceId"    # I
    .param p2, "logTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/services/telephony/common/VoLteConferenceMember;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/services/telephony/common/VoLteConferenceMember;>;"
    const-string v2, "------Dump VoLTE Conference Member List Begin-------"

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-eqz p1, :cond_0

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------List size / conferenceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    .line 147
    .local v1, "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    :cond_0
    const-string v2, "------Dump VoLTE Conference Member List End-------"

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public static getInstance()Lcom/mediatek/incallui/volte/VoLteConfCallList;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/mediatek/incallui/volte/VoLteConfCallList;->sInstance:Lcom/mediatek/incallui/volte/VoLteConfCallList;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    return-void
.end method

.method public getConferenceMembers(I)Ljava/util/List;
    .locals 2
    .param p1, "conferenceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/services/telephony/common/VoLteConferenceMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfCallList;->mCallMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 115
    return-void
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->isVoLteConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfCallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getConferenceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 128
    return-void
.end method

.method public onStorageFull()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public onUpdateRecordState(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 140
    return-void
.end method

.method public onVoLteConferenceUpdate(ILjava/util/List;)V
    .locals 12
    .param p1, "conferenceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/services/telephony/common/VoLteConferenceMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/services/telephony/common/VoLteConferenceMember;>;"
    const-string v10, "VoLteConfCallList"

    invoke-static {p1, p2, v10}, Lcom/mediatek/incallui/volte/VoLteConfCallList;->dumpVoLTEConfMemberList(ILjava/util/List;Ljava/lang/String;)V

    .line 34
    iget-object v10, p0, Lcom/mediatek/incallui/volte/VoLteConfCallList;->mCallMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 35
    .local v8, "oldList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/services/telephony/common/VoLteConferenceMember;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v7, "newMembers":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/services/telephony/common/VoLteConferenceMember;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v4, "leftMembers":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/services/telephony/common/VoLteConferenceMember;>;"
    if-eqz v8, :cond_7

    .line 38
    const/4 v3, 0x0

    .line 39
    .local v3, "isNew":Z
    const/4 v2, 0x0

    .line 42
    .local v2, "isLeft":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    .line 43
    .local v6, "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    const/4 v3, 0x1

    .line 44
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    .line 45
    .local v9, "oldMember":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    invoke-virtual {v6}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->getEntity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->getEntity()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 46
    const/4 v3, 0x0

    .line 50
    .end local v9    # "oldMember":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    :cond_2
    if-eqz v3, :cond_0

    .line 51
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    .line 57
    .restart local v9    # "oldMember":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    const/4 v2, 0x1

    .line 58
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    .line 59
    .restart local v6    # "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    invoke-virtual {v6}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->getEntity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->getEntity()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 60
    const/4 v2, 0x0

    .line 64
    .end local v6    # "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    :cond_6
    if-eqz v2, :cond_4

    .line 65
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isLeft":Z
    .end local v3    # "isNew":Z
    .end local v9    # "oldMember":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    :cond_7
    iget-object v10, p0, Lcom/mediatek/incallui/volte/VoLteConfCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;

    .line 71
    .local v5, "listener":Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;
    invoke-interface {v5, p2, p1}, Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;->onVoLteConferenceUpdate(Ljava/util/List;I)V

    goto :goto_2

    .line 74
    .end local v5    # "listener":Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;
    :cond_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 75
    iget-object v10, p0, Lcom/mediatek/incallui/volte/VoLteConfCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;

    .line 76
    .restart local v5    # "listener":Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;
    invoke-interface {v5, v7}, Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;->onMemberAddIn(Ljava/util/List;)V

    goto :goto_3

    .line 80
    .end local v5    # "listener":Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_a

    .line 81
    iget-object v10, p0, Lcom/mediatek/incallui/volte/VoLteConfCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;

    .line 82
    .restart local v5    # "listener":Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;
    invoke-interface {v5, v4}, Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;->onMemberLeft(Ljava/util/List;)V

    goto :goto_4

    .line 86
    .end local v5    # "listener":Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;
    :cond_a
    iget-object v10, p0, Lcom/mediatek/incallui/volte/VoLteConfCallList;->mCallMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public removeListener(Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfCallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    return-void
.end method
