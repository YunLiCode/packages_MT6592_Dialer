.class public final Lcom/mediatek/incallui/vt/VTUtils;
.super Ljava/lang/Object;
.source "VTUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;
    }
.end annotation


# static fields
.field private static final INVALID_RES_ID:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static sNumbersDefault:[Ljava/lang/String;

.field private static sNumbersNone:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    const-class v0, Lcom/mediatek/incallui/vt/VTUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/incallui/vt/VTUtils;->TAG:Ljava/lang/String;

    .line 276
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "12531"

    aput-object v1, v0, v2

    const-string v1, "+8612531"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/incallui/vt/VTUtils;->sNumbersNone:[Ljava/lang/String;

    .line 277
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "12535"

    aput-object v1, v0, v2

    const-string v1, "13800100011"

    aput-object v1, v0, v3

    const-string v1, "+8612535"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "+8613800100011"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/incallui/vt/VTUtils;->sNumbersDefault:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method

.method public static checkVTTimingMode(Ljava/lang/String;)Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 289
    sget-object v2, Lcom/mediatek/incallui/vt/VTUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVTTimingMode - number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/mediatek/incallui/vt/VTUtils;->sNumbersNone:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 292
    .local v1, "arrayListNone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/mediatek/incallui/vt/VTUtils;->sNumbersDefault:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 294
    .local v0, "arrayListDefault":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 295
    sget-object v2, Lcom/mediatek/incallui/vt/VTUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVTTimingMode - return:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;->VT_TIMING_NONE:Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v2, Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;->VT_TIMING_NONE:Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;

    .line 304
    :goto_0
    return-object v2

    .line 299
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 300
    sget-object v2, Lcom/mediatek/incallui/vt/VTUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVTTimingMode - return:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v2, Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;

    goto :goto_0

    .line 304
    :cond_1
    sget-object v2, Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/mediatek/incallui/vt/VTUtils$VTTimingMode;

    goto :goto_0
.end method

.method public static existNonVTCall()Z
    .locals 5

    .prologue
    .line 251
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getCallMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 252
    .local v1, "callList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/services/telephony/common/Call;>;"
    if-eqz v1, :cond_1

    .line 253
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 254
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 255
    sget-object v3, Lcom/mediatek/incallui/vt/VTUtils;->TAG:Ljava/lang/String;

    const-string v4, "[existNonVTCall]non-VT call exists"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v3, 0x1

    .line 260
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getResIdForVTErrorDialog(Lcom/android/services/telephony/common/Call$DisconnectCause;)I
    .locals 2
    .param p0, "cause"    # Lcom/android/services/telephony/common/Call$DisconnectCause;

    .prologue
    .line 202
    const/4 v0, -0x1

    .line 204
    .local v0, "resId":I
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_NUMBER_FORMAT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p0, v1, :cond_2

    .line 207
    :cond_0
    const v0, 0x7f0a0166

    .line 229
    :cond_1
    :goto_0
    return v0

    .line 208
    :cond_2
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->CM_MM_RR_CONNECTION_RELEASE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p0, v1, :cond_3

    .line 209
    const v0, 0x7f0a0054

    goto :goto_0

    .line 210
    :cond_3
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_ROUTE_TO_DESTINATION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq p0, v1, :cond_4

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->CALL_REJECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq p0, v1, :cond_4

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->FACILITY_REJECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq p0, v1, :cond_4

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->CONGESTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq p0, v1, :cond_4

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVICE_NOT_AVAILABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq p0, v1, :cond_4

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->BEARER_NOT_IMPLEMENT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq p0, v1, :cond_4

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->FACILITY_NOT_IMPLEMENT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq p0, v1, :cond_4

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->RESTRICTED_BEARER_AVAILABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq p0, v1, :cond_4

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->OPTION_NOT_AVAILABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq p0, v1, :cond_4

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p0, v1, :cond_5

    .line 220
    :cond_4
    const v0, 0x7f0a0055

    goto :goto_0

    .line 221
    :cond_5
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->BUSY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p0, v1, :cond_6

    .line 222
    const v0, 0x7f0a0056

    goto :goto_0

    .line 223
    :cond_6
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_USER_RESPONDING:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq p0, v1, :cond_7

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->USER_ALERTING_NO_ANSWER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p0, v1, :cond_8

    .line 225
    :cond_7
    const v0, 0x7f0a0057

    goto :goto_0

    .line 226
    :cond_8
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->SWITCHING_CONGESTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p0, v1, :cond_1

    .line 227
    const v0, 0x7f0a0058

    goto :goto_0
.end method

.method public static getResIdForVTReCallDialog(Lcom/android/services/telephony/common/Call$DisconnectCause;)I
    .locals 2
    .param p0, "cause"    # Lcom/android/services/telephony/common/Call$DisconnectCause;

    .prologue
    .line 233
    const/4 v0, -0x1

    .line 235
    .local v0, "resId":I
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMPATIBLE_DESTINATION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p0, v1, :cond_1

    .line 236
    const v0, 0x7f0a001a

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 237
    :cond_1
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->RESOURCE_UNAVAILABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p0, v1, :cond_2

    .line 238
    const v0, 0x7f0a001b

    goto :goto_0

    .line 239
    :cond_2
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->BEARER_NOT_AUTHORIZED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p0, v1, :cond_3

    .line 240
    const v0, 0x7f0a001e

    goto :goto_0

    .line 241
    :cond_3
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->BEARER_NOT_AVAIL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p0, v1, :cond_4

    .line 242
    const v0, 0x7f0a001c

    goto :goto_0

    .line 243
    :cond_4
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_CIRCUIT_AVAIL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p0, v1, :cond_0

    .line 244
    const v0, 0x7f0a001c

    goto :goto_0
.end method

.method public static getVTCall()Lcom/android/services/telephony/common/Call;
    .locals 10

    .prologue
    .line 46
    const/4 v6, 0x0

    .line 47
    .local v6, "vtCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVT()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->existsLiveCall()Z

    move-result v7

    if-nez v7, :cond_2

    .line 48
    :cond_0
    const/4 v6, 0x0

    .line 72
    :cond_1
    :goto_0
    sget-object v7, Lcom/mediatek/incallui/vt/VTUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVTCall()... vtCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-object v6

    .line 50
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    .line 51
    .local v5, "ringingCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    .line 52
    .local v4, "outgoingCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 53
    .local v0, "activeCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    .line 54
    .local v3, "holdCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    .line 55
    .local v2, "disconnectingCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 57
    .local v1, "disconnectedCall":Lcom/android/services/telephony/common/Call;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 58
    move-object v6, v5

    goto :goto_0

    .line 59
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 60
    move-object v6, v4

    goto :goto_0

    .line 61
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 62
    move-object v6, v0

    goto :goto_0

    .line 63
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 64
    move-object v6, v3

    goto :goto_0

    .line 65
    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 66
    move-object v6, v2

    goto :goto_0

    .line 67
    :cond_7
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 68
    move-object v6, v1

    goto/16 :goto_0
.end method

.method public static handleAutoDropBack(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 188
    sget-object v1, Lcom/mediatek/incallui/vt/VTUtils;->TAG:Ljava/lang/String;

    const-string v2, "handleAutoDropBack, check whether drop back~~"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/incallui/vt/VTUtils;->getResIdForVTReCallDialog(Lcom/android/services/telephony/common/Call$DisconnectCause;)I

    move-result v0

    .line 193
    .local v0, "resId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 194
    sget-object v1, Lcom/mediatek/incallui/vt/VTUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "make auto drop back voice recall, resId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 197
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getSlotId()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/mediatek/incallui/vt/VTUtils;->makeVoiceReCall(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static isVTActive()Z
    .locals 5

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "isVTActive":Z
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVT()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->existsLiveCall()Z

    move-result v2

    if-nez v2, :cond_2

    .line 159
    :cond_0
    const/4 v1, 0x0

    .line 167
    :cond_1
    :goto_0
    sget-object v2, Lcom/mediatek/incallui/vt/VTUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVTActive()... isVTActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return v1

    .line 161
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 162
    .local v0, "activeCall":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v1

    goto :goto_0
.end method

.method public static isVTCall(Lcom/android/services/telephony/common/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "isVT":Z
    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v0

    .line 37
    :cond_0
    sget-object v1, Lcom/mediatek/incallui/vt/VTUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVTCall()... mCall / isVT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return v0
.end method

.method public static isVTIdle()Z
    .locals 10

    .prologue
    .line 119
    const/4 v4, 0x1

    .line 120
    .local v4, "isVTIdle":Z
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVT()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->existsLiveCall()Z

    move-result v7

    if-nez v7, :cond_2

    .line 121
    :cond_0
    const/4 v4, 0x1

    .line 147
    :cond_1
    :goto_0
    sget-object v7, Lcom/mediatek/incallui/vt/VTUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isVTIdle()... isVTIdle: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return v4

    .line 123
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v6

    .line 124
    .local v6, "ringingCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 125
    .local v0, "activeCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    .line 126
    .local v3, "holdCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    .line 127
    .local v5, "outgoingCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    .line 128
    .local v2, "disconnectingCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 130
    .local v1, "disconnectedCall":Lcom/android/services/telephony/common/Call;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 131
    const/4 v4, 0x0

    .line 133
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 134
    const/4 v4, 0x0

    .line 136
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 137
    const/4 v4, 0x0

    .line 139
    :cond_5
    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 140
    const/4 v4, 0x0

    .line 142
    :cond_6
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 143
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isVTOutgoing()Z
    .locals 5

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "isVTOutgoing":Z
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVT()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->existsLiveCall()Z

    move-result v2

    if-nez v2, :cond_2

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 91
    :cond_1
    :goto_0
    sget-object v2, Lcom/mediatek/incallui/vt/VTUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVTOutgoing()... isVTOutgoing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return v0

    .line 85
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 86
    .local v1, "outgoingCall":Lcom/android/services/telephony/common/Call;
    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v0

    goto :goto_0
.end method

.method public static isVTRinging()Z
    .locals 5

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "isVTRinging":Z
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVT()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->existsLiveCall()Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 110
    :cond_1
    :goto_0
    sget-object v2, Lcom/mediatek/incallui/vt/VTUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVTRinging()... isVTRinging: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return v0

    .line 104
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 105
    .local v1, "ringingCall":Lcom/android/services/telephony/common/Call;
    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v0

    goto :goto_0
.end method

.method public static makeVoiceReCall(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .prologue
    .line 172
    sget-object v1, Lcom/mediatek/incallui/vt/VTUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeVoiceReCall(), number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slot is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->clearDisconnectStateForVT()V

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone.extra.slot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    const-string v1, "com.android.phone.extra.international"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    const-string v1, "com.android.phone.extra.vt_make_voice_recall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method public static setVTVisible(Z)V
    .locals 3
    .param p0, "bIsVisible"    # Z

    .prologue
    .line 264
    sget-object v0, Lcom/mediatek/incallui/vt/VTUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVTVisible()... bIsVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    if-eqz p0, :cond_1

    .line 266
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Lcom/mediatek/incallui/vt/VTUtils;->TAG:Ljava/lang/String;

    const-string v1, "setVTVisible(true)..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->setVTVisible(Z)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->setVTVisible(Z)V

    goto :goto_0
.end method
