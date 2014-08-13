.class public Lcom/mediatek/incallui/volte/VoLteConfUiController;
.super Ljava/lang/Object;
.source "VoLteConfUiController.java"

# interfaces
.implements Lcom/android/incallui/CallList$Listener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/incallui/volte/VoLteConfUiController$MemberChangeNotifier;
    }
.end annotation


# static fields
.field private static sController:Lcom/mediatek/incallui/volte/VoLteConfUiController;


# instance fields
.field private mAddMemberDialog:Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;

.field private mConfereneId:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/mediatek/incallui/volte/VoLteConfUiController;

    invoke-direct {v0}, Lcom/mediatek/incallui/volte/VoLteConfUiController;-><init>()V

    sput-object v0, Lcom/mediatek/incallui/volte/VoLteConfUiController;->sController:Lcom/mediatek/incallui/volte/VoLteConfUiController;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/incallui/volte/VoLteConfUiController;->mConfereneId:I

    .line 61
    return-void
.end method

.method public static getInstance()Lcom/mediatek/incallui/volte/VoLteConfUiController;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/mediatek/incallui/volte/VoLteConfUiController;->sController:Lcom/mediatek/incallui/volte/VoLteConfUiController;

    return-object v0
.end method


# virtual methods
.method public dismissAddConferenceMemberDialog()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "dismissAddConferenceMemberDialog..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfUiController;->mAddMemberDialog:Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfUiController;->mAddMemberDialog:Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;

    invoke-virtual {v0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->finish()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfUiController;->mAddMemberDialog:Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/incallui/volte/VoLteConfUiController;->mConfereneId:I

    .line 59
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mediatek/incallui/volte/VoLteConfUiController;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 3
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 116
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isVoLteConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getConferenceId()I

    move-result v1

    iget v2, p0, Lcom/mediatek/incallui/volte/VoLteConfUiController;->mConfereneId:I

    if-eq v1, v2, :cond_1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfUiController;->dismissAddConferenceMemberDialog()V

    .line 119
    :cond_1
    return-void
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 123
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->isVoLteConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getConferenceId()I

    move-result v0

    iget v1, p0, Lcom/mediatek/incallui/volte/VoLteConfUiController;->mConfereneId:I

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfUiController;->dismissAddConferenceMemberDialog()V

    .line 126
    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 132
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 111
    return-void
.end method

.method public onStorageFull()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public onUpdateRecordState(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 144
    return-void
.end method

.method public setAddMemberScreenInstance(Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;)V
    .locals 0
    .param p1, "screen"    # Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mediatek/incallui/volte/VoLteConfUiController;->mAddMemberDialog:Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;

    .line 41
    return-void
.end method

.method public showAddConferenceMemberDialog(I)V
    .locals 3
    .param p1, "ConfereneId"    # I

    .prologue
    .line 44
    const-string v1, "showAddConferenceMemberDialog..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mediatek/incallui/volte/VoLteConfUiController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.incallui.volte.extra_conference_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    iget-object v1, p0, Lcom/mediatek/incallui/volte/VoLteConfUiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    iput p1, p0, Lcom/mediatek/incallui/volte/VoLteConfUiController;->mConfereneId:I

    .line 50
    return-void
.end method
