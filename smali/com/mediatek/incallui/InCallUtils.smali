.class public final Lcom/mediatek/incallui/InCallUtils;
.super Ljava/lang/Object;
.source "InCallUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mPrivacyProtectOpen:Z

.field private static sIsUiShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-class v0, Lcom/mediatek/incallui/InCallUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    .line 270
    sput-boolean v1, Lcom/mediatek/incallui/InCallUtils;->sIsUiShowing:Z

    .line 278
    sput-boolean v1, Lcom/mediatek/incallui/InCallUtils;->mPrivacyProtectOpen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkScreenOnForVT()Z
    .locals 6

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 152
    .local v1, "shouldVTScreenOn":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 153
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    sget-object v3, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    .line 156
    .local v2, "state":I
    sget-object v3, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 161
    :cond_0
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v1

    .line 165
    .end local v2    # "state":I
    :cond_1
    sget-object v3, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVTScreenOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return v1
.end method

.method public static hasNavigationBar()Z
    .locals 2

    .prologue
    .line 171
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return v1

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 173
    .restart local v0    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasPermanentMenuKey(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    if-nez p0, :cond_0

    .line 137
    sget-object v0, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    const-string v1, "context is null when hasPermanentMenuKey() is called."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    goto :goto_0
.end method

.method public static isDMLocked()Z
    .locals 7

    .prologue
    .line 37
    const/4 v3, 0x0

    .line 39
    .local v3, "locked":Z
    :try_start_0
    const-string v4, "DmAgent"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 40
    .local v1, "binder":Landroid/os/IBinder;
    const/4 v0, 0x0

    .line 41
    .local v0, "agent":Lcom/mediatek/common/dm/DmAgent;
    if-eqz v1, :cond_0

    .line 42
    invoke-static {v1}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v0

    .line 44
    :cond_0
    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 51
    .end local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_1
    :goto_0
    sget-object v4, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDMLocked(): locked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return v3

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isIncomingCall(Lcom/android/services/telephony/common/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "isIncoming":Z
    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->isIncoming()Z

    move-result v0

    .line 61
    :cond_0
    return v0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUiShowing()Z
    .locals 1

    .prologue
    .line 275
    sget-boolean v0, Lcom/mediatek/incallui/InCallUtils;->sIsUiShowing:Z

    return v0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 267
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumberGemini(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isprivacyProtectOpen()Z
    .locals 3

    .prologue
    .line 284
    sget-object v0, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPrivacyProtectOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/incallui/InCallUtils;->mPrivacyProtectOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-boolean v0, Lcom/mediatek/incallui/InCallUtils;->mPrivacyProtectOpen:Z

    return v0
.end method

.method public static onUiShowing(Z)V
    .locals 0
    .param p0, "isShowing"    # Z

    .prologue
    .line 272
    sput-boolean p0, Lcom/mediatek/incallui/InCallUtils;->sIsUiShowing:Z

    .line 273
    return-void
.end method

.method public static setAllIncomingMenuVisible(Landroid/view/Menu;Z)V
    .locals 3
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "visible"    # Z

    .prologue
    .line 250
    const v2, 0x7f0d01cd

    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 251
    .local v1, "voiceAnswerMenu":Landroid/view/MenuItem;
    const v2, 0x7f0d01d9

    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 252
    .local v0, "hangupActiveAndAnswerWaitingMenu":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 253
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 255
    :cond_0
    if-eqz v0, :cond_1

    .line 256
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 258
    :cond_1
    return-void
.end method

.method public static setAllMenuVisible(Landroid/view/Menu;Z)V
    .locals 0
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "visible"    # Z

    .prologue
    .line 261
    invoke-static {p0, p1}, Lcom/mediatek/incallui/InCallUtils;->setAllVoiceMenuVisible(Landroid/view/Menu;Z)V

    .line 262
    invoke-static {p0, p1}, Lcom/mediatek/incallui/InCallUtils;->setAllVTMenuVisible(Landroid/view/Menu;Z)V

    .line 263
    invoke-static {p0, p1}, Lcom/mediatek/incallui/InCallUtils;->setAllIncomingMenuVisible(Landroid/view/Menu;Z)V

    .line 264
    return-void
.end method

.method public static setAllVTMenuVisible(Landroid/view/Menu;Z)V
    .locals 7
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "visible"    # Z

    .prologue
    .line 223
    const v6, 0x7f0d01d0

    invoke-interface {p0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 224
    .local v2, "switchCameraMenu":Landroid/view/MenuItem;
    const v6, 0x7f0d01d1

    invoke-interface {p0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 225
    .local v3, "takePeerPhotoMenu":Landroid/view/MenuItem;
    const v6, 0x7f0d01d3

    invoke-interface {p0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 226
    .local v0, "hideLocalVideoMenu":Landroid/view/MenuItem;
    const v6, 0x7f0d01d2

    invoke-interface {p0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 227
    .local v1, "swapVideosMenu":Landroid/view/MenuItem;
    const v6, 0x7f0d01d5

    invoke-interface {p0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 228
    .local v5, "voiceRecordMenu":Landroid/view/MenuItem;
    const v6, 0x7f0d01d6

    invoke-interface {p0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 229
    .local v4, "videoSettingMenu":Landroid/view/MenuItem;
    if-eqz v2, :cond_0

    .line 230
    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 232
    :cond_0
    if-eqz v3, :cond_1

    .line 233
    invoke-interface {v3, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 235
    :cond_1
    if-eqz v0, :cond_2

    .line 236
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 238
    :cond_2
    if-eqz v1, :cond_3

    .line 239
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 241
    :cond_3
    if-eqz v5, :cond_4

    .line 242
    invoke-interface {v5, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 244
    :cond_4
    if-eqz v4, :cond_5

    .line 245
    invoke-interface {v4, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 247
    :cond_5
    return-void
.end method

.method public static setAllVoiceMenuVisible(Landroid/view/Menu;Z)V
    .locals 10
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "visible"    # Z

    .prologue
    .line 178
    const v9, 0x7f0d01ce

    invoke-interface {p0, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 179
    .local v0, "addMenu":Landroid/view/MenuItem;
    const v9, 0x7f0d01cf

    invoke-interface {p0, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 180
    .local v6, "mergeMenu":Landroid/view/MenuItem;
    const v9, 0x7f0d01d4

    invoke-interface {p0, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 181
    .local v7, "recordMenu":Landroid/view/MenuItem;
    const v9, 0x7f0d01cd

    invoke-interface {p0, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 182
    .local v8, "voiceAnswerMenu":Landroid/view/MenuItem;
    const v9, 0x7f0d01d7

    invoke-interface {p0, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 183
    .local v3, "hangupAllMenu":Landroid/view/MenuItem;
    const v9, 0x7f0d01d8

    invoke-interface {p0, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 184
    .local v4, "hangupHoldingMenu":Landroid/view/MenuItem;
    const v9, 0x7f0d01d9

    invoke-interface {p0, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 185
    .local v2, "hangupActiveAndAnswerWaitingMenu":Landroid/view/MenuItem;
    const v9, 0x7f0d01da

    invoke-interface {p0, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 186
    .local v1, "ectMenu":Landroid/view/MenuItem;
    const v9, 0x7f0d01cc

    invoke-interface {p0, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 187
    .local v5, "holdMenu":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 190
    :cond_0
    if-eqz v6, :cond_1

    .line 191
    invoke-interface {v6, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 198
    :cond_1
    if-eqz v7, :cond_2

    .line 199
    invoke-interface {v7, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 202
    :cond_2
    if-eqz v8, :cond_3

    .line 203
    invoke-interface {v8, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 205
    :cond_3
    if-eqz v3, :cond_4

    .line 206
    invoke-interface {v3, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 208
    :cond_4
    if-eqz v4, :cond_5

    .line 209
    invoke-interface {v4, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 211
    :cond_5
    if-eqz v2, :cond_6

    .line 212
    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 214
    :cond_6
    if-eqz v1, :cond_7

    .line 215
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 217
    :cond_7
    if-eqz v5, :cond_8

    .line 218
    invoke-interface {v5, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 220
    :cond_8
    return-void
.end method

.method public static setprivacyProtectEnabled(Z)V
    .locals 3
    .param p0, "isPrivacyProtectOpen"    # Z

    .prologue
    .line 293
    sget-object v0, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPrivacyProtectOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sput-boolean p0, Lcom/mediatek/incallui/InCallUtils;->mPrivacyProtectOpen:Z

    .line 295
    return-void
.end method

.method public static updateIncomingMenuState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 109
    invoke-static {}, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->reset()V

    .line 110
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVT()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVTVoiceAnswer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    sput-boolean v5, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanVTVoiceAnswer:Z

    .line 116
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 117
    .local v0, "activeCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 118
    .local v1, "holdCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    .line 119
    .local v2, "ringingCall":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    invoke-static {v2}, Lcom/mediatek/incallui/vt/VTUtils;->isVTCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    sput-boolean v5, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanHangupActiveAndAnswerWaiting:Z

    .line 123
    :cond_1
    sget-object v3, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateIncomingMenuState], sCanVTVoiceAnswer / sCanHangupActiveAndAnswerWaiting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanVTVoiceAnswer:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanHangupActiveAndAnswerWaiting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static updateScreenPopupMenuState(Lcom/android/services/telephony/common/Call;Landroid/content/Context;)V
    .locals 8
    .param p0, "call"    # Lcom/android/services/telephony/common/Call;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 65
    invoke-static {}, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->reset()V

    .line 66
    if-nez p0, :cond_0

    .line 67
    sget-object v5, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    const-string v6, "[updateScreenPopupMenuState], the call is null!"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    .line 71
    .local v2, "canMerge":Z
    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v1

    .line 72
    .local v1, "canAdd":Z
    const/16 v6, 0x80

    invoke-virtual {p0, v6}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    .line 73
    .local v3, "isGenericConference":Z
    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    move v2, v5

    .line 75
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    .line 76
    .local v4, "ringingCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 77
    .local v0, "bgCall":Lcom/android/services/telephony/common/Call;
    if-eqz v4, :cond_1

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v6

    if-ne v6, v5, :cond_6

    .line 80
    :cond_1
    invoke-static {p1}, Lcom/mediatek/incallui/InCallUtils;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 81
    if-eqz v1, :cond_4

    .line 82
    sput-boolean v1, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanAddCall:Z

    .line 90
    :cond_2
    :goto_2
    const/16 v5, 0x200

    invoke-virtual {p0, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanHangupAll:Z

    .line 91
    const/16 v5, 0x400

    invoke-virtual {p0, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanHangupHolding:Z

    .line 96
    :goto_3
    const/16 v5, 0x800

    invoke-virtual {p0, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanHangupActiveAndAnswerWaiting:Z

    .line 98
    const/16 v5, 0x1000

    invoke-virtual {p0, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanECT:Z

    .line 99
    const/16 v5, 0x100

    invoke-virtual {p0, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanRecording:Z

    goto :goto_0

    .line 73
    .end local v0    # "bgCall":Lcom/android/services/telephony/common/Call;
    .end local v4    # "ringingCall":Lcom/android/services/telephony/common/Call;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 83
    .restart local v0    # "bgCall":Lcom/android/services/telephony/common/Call;
    .restart local v4    # "ringingCall":Lcom/android/services/telephony/common/Call;
    :cond_4
    if-eqz v2, :cond_5

    .line 84
    sput-boolean v2, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanMerge:Z

    goto :goto_2

    .line 86
    :cond_5
    sput-boolean v5, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanAddCall:Z

    .line 87
    sput-boolean v5, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sDisableAdd:Z

    goto :goto_2

    .line 94
    :cond_6
    const/16 v5, 0x2000

    invoke-virtual {p0, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanVTVoiceAnswer:Z

    goto :goto_3
.end method
