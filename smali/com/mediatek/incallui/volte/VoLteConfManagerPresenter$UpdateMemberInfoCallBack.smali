.class public Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;
.super Ljava/lang/Object;
.source "VoLteConfManagerPresenter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateMemberInfoCallBack"
.end annotation


# instance fields
.field private mMember:Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

.field private mNeedNotifyLeft:Z

.field private mNeedNotifyNew:Z

.field private mNeedUpdate:Z

.field final synthetic this$0:Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;


# direct methods
.method public constructor <init>(Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;Lcom/mediatek/services/telephony/common/VoLteConferenceMember;ZZZ)V
    .locals 2
    .param p2, "member"    # Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    .param p3, "needUpdate"    # Z
    .param p4, "needNotifyNew"    # Z
    .param p5, "needNotifyLeft"    # Z

    .prologue
    const/4 v1, 0x0

    .line 274
    iput-object p1, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->this$0:Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->mMember:Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    .line 269
    iput-boolean v1, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->mNeedUpdate:Z

    .line 270
    iput-boolean v1, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->mNeedNotifyNew:Z

    .line 271
    iput-boolean v1, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->mNeedNotifyLeft:Z

    .line 275
    iput-object p2, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->mMember:Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    .line 276
    iput-boolean p3, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->mNeedUpdate:Z

    .line 277
    iput-boolean p4, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->mNeedNotifyNew:Z

    .line 278
    iput-boolean p5, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->mNeedNotifyLeft:Z

    .line 279
    return-void
.end method


# virtual methods
.method public onContactInfoComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 9
    .param p1, "callId"    # I
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 283
    iget-boolean v7, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->mNeedUpdate:Z

    if-eqz v7, :cond_0

    .line 284
    iget-object v7, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->this$0:Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;

    # getter for: Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mConferenceMembers:Ljava/util/List;
    invoke-static {v7}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->access$000(Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->mMember:Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 285
    .local v2, "index":I
    if-ltz v2, :cond_0

    const/4 v7, 0x5

    if-ge v2, v7, :cond_0

    .line 286
    iget-object v7, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->this$0:Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;

    # getter for: Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->access$100(Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->mMember:Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    invoke-virtual {v8}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->getAssociactedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 288
    .local v1, "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    iget-object v7, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->mMember:Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    invoke-virtual {v7}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->getStatus()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_3

    move v3, v5

    .line 289
    .local v3, "isOnLine":Z
    :goto_0
    iget-object v7, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->mMember:Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    invoke-virtual {v7}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->getConferenceCallRole()I

    move-result v7

    const/16 v8, 0x65

    if-ne v7, v8, :cond_4

    move v0, v5

    .line 290
    .local v0, "canManage":Z
    :goto_1
    iget-object v5, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->this$0:Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;

    invoke-virtual {v5, v2, v1, v3, v0}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V

    .line 293
    .end local v0    # "canManage":Z
    .end local v1    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v2    # "index":I
    .end local v3    # "isOnLine":Z
    :cond_0
    iget-boolean v5, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->mNeedNotifyNew:Z

    if-eqz v5, :cond_1

    .line 294
    iget-object v5, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->this$0:Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;

    # getter for: Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->access$100(Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->mMember:Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    invoke-virtual {v6}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->getAssociactedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 296
    .restart local v1    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    const/4 v4, 0x0

    .line 297
    .local v4, "name":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 298
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 302
    :goto_2
    iget-object v5, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->this$0:Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;

    invoke-virtual {v5}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;

    const/16 v6, 0x12c

    invoke-interface {v5, v6, v4}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;->notifyMemberChange(ILjava/lang/String;)V

    .line 305
    .end local v1    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    iget-boolean v5, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->mNeedNotifyLeft:Z

    if-eqz v5, :cond_2

    .line 306
    iget-object v5, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->this$0:Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;

    # getter for: Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->access$100(Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->mMember:Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    invoke-virtual {v6}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;->getAssociactedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 308
    .restart local v1    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    const/4 v4, 0x0

    .line 309
    .restart local v4    # "name":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 310
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 314
    :goto_3
    iget-object v5, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$UpdateMemberInfoCallBack;->this$0:Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;

    invoke-virtual {v5}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;

    const/16 v6, 0x12d

    invoke-interface {v5, v6, v4}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;->notifyMemberChange(ILjava/lang/String;)V

    .line 316
    .end local v1    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    return-void

    .restart local v1    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v2    # "index":I
    :cond_3
    move v3, v6

    .line 288
    goto :goto_0

    .restart local v3    # "isOnLine":Z
    :cond_4
    move v0, v6

    .line 289
    goto :goto_1

    .line 300
    .end local v2    # "index":I
    .end local v3    # "isOnLine":Z
    .restart local v4    # "name":Ljava/lang/String;
    :cond_5
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_2

    .line 312
    :cond_6
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_3
.end method

.method public onImageLoadComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "callId"    # I
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 320
    return-void
.end method
