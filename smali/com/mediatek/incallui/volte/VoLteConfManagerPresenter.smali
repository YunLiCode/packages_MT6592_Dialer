.class public Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;
.super Lcom/android/incallui/Presenter;
.source "VoLteConfManagerPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;,
        Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;"
    }
.end annotation


# static fields
.field private static final MAX_CALLERS_IN_CONFERENCE:I = 0x5


# instance fields
.field private mConferenceMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/services/telephony/common/VoLteConferenceMember;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mNumCallersInConference:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 267
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mConferenceMembers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getEntryDisplayName(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 2
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    const-string v0, "[getEntryDisplayName]entry is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    const-string v0, ""

    .line 216
    :goto_0
    return-object v0

    .line 212
    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getEntryDisplayName]name is empty, use number as name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private getEntryDisplayNumber(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    const-string v0, "[getEntryDisplayNumber]entry is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    const-string v0, ""

    .line 224
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private getEntryDisplayType(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    const-string v0, "[getEntryDisplayType]entry is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    const-string v0, ""

    .line 232
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method private update(Lcom/android/incallui/CallList;)V
    .locals 3
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 107
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->dumpCallList()V

    .line 108
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 109
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isVoLteConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getConferenceId()I

    move-result v1

    .line 111
    .local v1, "id":I
    invoke-static {}, Lcom/mediatek/incallui/volte/VoLteConfCallList;->getInstance()Lcom/mediatek/incallui/volte/VoLteConfCallList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/incallui/volte/VoLteConfCallList;->getConferenceMembers(I)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->updateData(Ljava/util/List;)V

    .line 113
    .end local v1    # "id":I
    :cond_0
    return-void
.end method

.method private updateData(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/services/telephony/common/VoLteConferenceMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/services/telephony/common/VoLteConferenceMember;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 116
    if-nez p1, :cond_1

    .line 117
    const-string v5, "VoLTE conference member list is null in updateData()..."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void

    .line 120
    :cond_1
    iput-object p1, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mConferenceMembers:Ljava/util/List;

    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mNumCallersInConference:I

    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Number of calls is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mNumCallersInConference:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v7, 0x5

    if-ge v2, v7, :cond_0

    .line 128
    iget v7, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mNumCallersInConference:I

    if-ge v2, v7, :cond_4

    .line 130
    iget-object v7, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mConferenceMembers:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    .line 131
    .local v4, "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    iget-object v7, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v7

    invoke-virtual {v4}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->getAssociactedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 133
    .local v1, "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-virtual {v4}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->getStatus()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_2

    move v3, v5

    .line 134
    .local v3, "isOnLine":Z
    :goto_1
    invoke-virtual {v4}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->getConferenceCallRole()I

    move-result v7

    const/16 v8, 0x65

    if-ne v7, v8, :cond_3

    move v0, v5

    .line 135
    .local v0, "canManage":Z
    :goto_2
    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V

    .line 127
    .end local v0    # "canManage":Z
    .end local v1    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v3    # "isOnLine":Z
    .end local v4    # "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v1    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v4    # "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    :cond_2
    move v3, v6

    .line 133
    goto :goto_1

    .restart local v3    # "isOnLine":Z
    :cond_3
    move v0, v6

    .line 134
    goto :goto_2

    .line 138
    .end local v1    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v3    # "isOnLine":Z
    .end local v4    # "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {p0, v2, v7, v6, v6}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V

    goto :goto_3
.end method


# virtual methods
.method public endConferenceConnection(I)V
    .locals 2
    .param p1, "rowId"    # I

    .prologue
    .line 188
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mConferenceMembers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    invoke-virtual {v0}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->getAssociactedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    .line 190
    return-void
.end method

.method public getMaxCallersInConference()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x5

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 101
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mContext:Landroid/content/Context;

    .line 102
    iput-object p1, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mContext:Landroid/content/Context;

    .line 103
    invoke-direct {p0, p2}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    .line 104
    return-void
.end method

.method public manageConferenceDoneClicked()V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;->setVisible(Z)V

    .line 181
    return-void
.end method

.method public onMemberAddIn(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/services/telephony/common/VoLteConferenceMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "newMembers":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/services/telephony/common/VoLteConferenceMember;>;"
    const/4 v3, 0x0

    .line 237
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    .line 238
    .local v2, "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v7

    invoke-virtual {v2}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->getAssociactedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v8

    new-instance v0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;

    const/4 v4, 0x1

    move-object v1, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;-><init>(Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;Lcom/mediatek/services/telephony/common/VoLteConferenceMember;ZZZ)V

    invoke-virtual {v7, v8, v3, v0}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/services/telephony/common/CallIdentification;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    goto :goto_0

    .line 242
    .end local v2    # "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    :cond_0
    return-void
.end method

.method public onMemberLeft(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/services/telephony/common/VoLteConferenceMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "leftMembers":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/services/telephony/common/VoLteConferenceMember;>;"
    const/4 v3, 0x0

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    .line 247
    .local v2, "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v7

    invoke-virtual {v2}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->getAssociactedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v8

    new-instance v0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;

    const/4 v5, 0x1

    move-object v1, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;-><init>(Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;Lcom/mediatek/services/telephony/common/VoLteConferenceMember;ZZZ)V

    invoke-virtual {v7, v8, v3, v0}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/services/telephony/common/CallIdentification;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    goto :goto_0

    .line 251
    .end local v2    # "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;

    invoke-interface {v1}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;->isFragmentVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_2

    .line 88
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 89
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isVoLteConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-direct {p0, p2}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    .line 98
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_0
    :goto_0
    return-void

    .line 92
    .restart local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;

    invoke-interface {v1, v3}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;->setVisible(Z)V

    goto :goto_0

    .line 95
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;

    invoke-interface {v1, v3}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;->setVisible(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 50
    check-cast p1, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->onUiReady(Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;)V

    return-void
.end method

.method public onUiReady(Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 65
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 68
    invoke-static {}, Lcom/mediatek/incallui/volte/VoLteConfCallList;->getInstance()Lcom/mediatek/incallui/volte/VoLteConfCallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/incallui/volte/VoLteConfCallList;->addListener(Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;)V

    .line 70
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 50
    check-cast p1, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->onUiUnready(Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 76
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 79
    invoke-static {}, Lcom/mediatek/incallui/volte/VoLteConfCallList;->getInstance()Lcom/mediatek/incallui/volte/VoLteConfCallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/incallui/volte/VoLteConfCallList;->removeListener(Lcom/mediatek/incallui/volte/VoLteConfCallList$VoLteConfDataUpdateListener;)V

    .line 81
    return-void
.end method

.method public onVoLteConferenceUpdate(Ljava/util/List;I)V
    .locals 10
    .param p2, "conferenceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/services/telephony/common/VoLteConferenceMember;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/services/telephony/common/VoLteConferenceMember;>;"
    const/4 v4, 0x0

    .line 255
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v6

    .line 256
    .local v6, "currentCall":Lcom/android/services/telephony/common/Call;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->isVoLteConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getConferenceId()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    .line 259
    .local v2, "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v8

    invoke-virtual {v2}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->getAssociactedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v9

    new-instance v0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;

    const/4 v3, 0x1

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;-><init>(Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;Lcom/mediatek/services/telephony/common/VoLteConferenceMember;ZZZ)V

    invoke-virtual {v8, v9, v4, v0}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/services/telephony/common/CallIdentification;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    goto :goto_0

    .line 263
    .end local v2    # "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->updateData(Ljava/util/List;)V

    .line 265
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "isOnLine"    # Z
    .param p4, "canManage"    # Z

    .prologue
    .line 158
    if-eqz p2, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;

    const/4 v4, 0x1

    invoke-interface {v3, p1, v4}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;->setRowVisible(IZ)V

    .line 162
    invoke-direct {p0, p2}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->getEntryDisplayName(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->getEntryDisplayNumber(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "number":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->getEntryDisplayType(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;

    invoke-interface {v3, p1, p3}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;->setStatusForRow(IZ)V

    .line 169
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;

    invoke-interface {v3, p1, p4}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;->setupRemoveButtonForRow(IZ)V

    .line 171
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;

    invoke-interface {v3, p1, v0, v1, v2}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;->displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;->setRowVisible(IZ)V

    goto :goto_0
.end method
