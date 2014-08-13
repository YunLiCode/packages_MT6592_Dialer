.class public Lcom/android/incallui/CallList;
.super Ljava/lang/Object;
.source "CallList.java"

# interfaces
.implements Lcom/mediatek/incallui/ext/IInCallScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallList$2;,
        Lcom/android/incallui/CallList$CallUpdateListener;,
        Lcom/android/incallui/CallList$Listener;
    }
.end annotation


# static fields
.field private static final AUTO_DROP_VT_TIMEOUT_MS:I = 0x3e8

.field private static final DISCONNECTED_CALL_LONG_TIMEOUT_MS:I = 0x1388

.field private static final DISCONNECTED_CALL_MEDIUM_TIMEOUT_MS:I = 0x7d0

.field private static final DISCONNECTED_CALL_SHORT_TIMEOUT_MS:I = 0xc8

.field private static final EVENT_AUTO_DROP_VT_TIMEOUT:I = 0x2

.field private static final EVENT_DISCONNECTED_TIMEOUT:I = 0x1

.field private static sInstance:Lcom/android/incallui/CallList;


# instance fields
.field private final mCallMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallTextReponsesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallUpdateListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/CallList$CallUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/CallList$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/incallui/CallList;

    invoke-direct {v0}, Lcom/android/incallui/CallList;-><init>()V

    sput-object v0, Lcom/android/incallui/CallList;->sInstance:Lcom/android/incallui/CallList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    .line 66
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    .line 68
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    .line 69
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    .line 469
    new-instance v0, Lcom/android/incallui/CallList$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallList$1;-><init>(Lcom/android/incallui/CallList;)V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallList;
    .param p1, "x1"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/services/telephony/common/Call;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/CallList;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallList;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/incallui/CallList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private finishDisconnectedCall(Lcom/android/services/telephony/common/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 461
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setState(I)V

    .line 462
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    .line 463
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyListenersOfChange()V

    .line 464
    return-void
.end method

.method private getDelayForDisconnect(Lcom/android/services/telephony/common/Call;)I
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 412
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 415
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v0

    .line 417
    .local v0, "cause":Lcom/android/services/telephony/common/Call$DisconnectCause;
    sget-object v2, Lcom/android/incallui/CallList$2;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call$DisconnectCause;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 431
    const/16 v1, 0x1388

    .line 435
    .local v1, "delay":I
    :goto_1
    return v1

    .line 412
    .end local v0    # "cause":Lcom/android/services/telephony/common/Call$DisconnectCause;
    .end local v1    # "delay":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 419
    .restart local v0    # "cause":Lcom/android/services/telephony/common/Call$DisconnectCause;
    :pswitch_0
    const/16 v1, 0xc8

    .line 420
    .restart local v1    # "delay":I
    goto :goto_1

    .line 423
    .end local v1    # "delay":I
    :pswitch_1
    const/16 v1, 0x7d0

    .line 424
    .restart local v1    # "delay":I
    goto :goto_1

    .line 428
    .end local v1    # "delay":I
    :pswitch_2
    const/4 v1, 0x0

    .line 429
    .restart local v1    # "delay":I
    goto :goto_1

    .line 417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/incallui/CallList;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/incallui/CallList;->sInstance:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method private isCallDead(Lcom/android/services/telephony/common/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v1, 0x1

    .line 453
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    .line 454
    .local v0, "state":I
    if-eq v1, v0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyListenersOfChange()V
    .locals 3

    .prologue
    .line 364
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    .line 365
    .local v1, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v1, p0}, Lcom/android/incallui/CallList$Listener;->onCallListChange(Lcom/android/incallui/CallList;)V

    goto :goto_0

    .line 367
    .end local v1    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method private notifyListenersOfDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 370
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    .line 371
    .local v1, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v1, p1}, Lcom/android/incallui/CallList$Listener;->onDisconnect(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 373
    .end local v1    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method private updateCallInMap(Lcom/android/services/telephony/common/Call;)Z
    .locals 6
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 380
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const/4 v2, 0x0

    .line 384
    .local v2, "updated":Z
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 386
    .local v0, "id":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 388
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    iget-object v3, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 395
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->getDelayForDisconnect(Lcom/android/services/telephony/common/Call;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 397
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const/4 v2, 0x1

    .line 408
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v2

    .line 400
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 401
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const/4 v2, 0x1

    goto :goto_0

    .line 403
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateCallTextMap(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V
    .locals 2
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/services/telephony/common/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p2, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 443
    .local v0, "id":Ljava/lang/Integer;
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 444
    if-eqz p2, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 447
    .restart local p2    # "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addCallUpdateListener(ILcom/android/incallui/CallList$CallUpdateListener;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "listener"    # Lcom/android/incallui/CallList$CallUpdateListener;

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 178
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-nez v0, :cond_0

    .line 179
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method public addListener(Lcom/android/incallui/CallList$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$Listener;

    .prologue
    .line 199
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-interface {p1, p0}, Lcom/android/incallui/CallList$Listener;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 205
    return-void
.end method

.method public clearDisconnectStateForVT()V
    .locals 3

    .prologue
    .line 598
    const-string v2, "clearDisconnectVTCall()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 600
    .local v1, "disconnectingCall":Lcom/android/services/telephony/common/Call;
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 601
    .local v0, "disconnectedCall":Lcom/android/services/telephony/common/Call;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 602
    invoke-direct {p0, v1}, Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/services/telephony/common/Call;)V

    .line 604
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 605
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/services/telephony/common/Call;)V

    .line 607
    :cond_1
    return-void
.end method

.method public clearOnDisconnect()Z
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v3, 0x1

    .line 339
    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 340
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    .line 343
    .local v2, "state":I
    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    .line 356
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    .end local v2    # "state":I
    :cond_1
    :goto_1
    return v3

    .line 346
    .restart local v0    # "call":Lcom/android/services/telephony/common/Call;
    .restart local v2    # "state":I
    :cond_2
    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    if-eq v2, v5, :cond_0

    .line 350
    invoke-virtual {v0, v5}, Lcom/android/services/telephony/common/Call;->setState(I)V

    .line 351
    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v4}, Lcom/android/services/telephony/common/Call;->setDisconnectCause(Lcom/android/services/telephony/common/Call$DisconnectCause;)V

    .line 352
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    goto :goto_0

    .line 355
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    .end local v2    # "state":I
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyListenersOfChange()V

    .line 356
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public dumpCallList()V
    .locals 4

    .prologue
    .line 610
    const-string v1, "-----dumpCallList Begin------"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----size of CallList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 614
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id / Call : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 618
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    const-string v1, "-----dumpCallList End------"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method public existsLiveCall()Z
    .locals 3

    .prologue
    .line 292
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 293
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    const/4 v2, 0x1

    .line 297
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getActiveCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getActiveCallWithPhoneType(I)Lcom/android/services/telephony/common/Call;
    .locals 4
    .param p1, "phoneType"    # I

    .prologue
    .line 576
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 577
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 581
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 255
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 258
    :cond_0
    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getCall(I)Lcom/android/services/telephony/common/Call;
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method public getCallMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCallWithState(II)Lcom/android/services/telephony/common/Call;
    .locals 5
    .param p1, "state"    # I
    .param p2, "positionToFind"    # I

    .prologue
    .line 316
    const/4 v3, 0x0

    .line 317
    .local v3, "retval":Lcom/android/services/telephony/common/Call;
    const/4 v2, 0x0

    .line 318
    .local v2, "position":I
    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 319
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 320
    if-lt v2, p2, :cond_2

    .line 321
    move-object v3, v0

    .line 329
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_1
    return-object v3

    .line 324
    .restart local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getCdmaActiveCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getActiveCallWithPhoneType(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectedCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 242
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectingCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 246
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCall()Lcom/android/services/telephony/common/Call;
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 272
    .local v0, "result":Lcom/android/services/telephony/common/Call;
    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 275
    :cond_0
    if-nez v0, :cond_1

    .line 276
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 278
    :cond_1
    if-nez v0, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 281
    :cond_2
    if-nez v0, :cond_3

    .line 282
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 284
    :cond_3
    return-object v0
.end method

.method public getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/services/telephony/common/Call;
    .locals 2

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 565
    .local v0, "result":Lcom/android/services/telephony/common/Call;
    if-nez v0, :cond_0

    .line 566
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 568
    :cond_0
    return-object v0
.end method

.method public getGsmActiveCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getActiveCallWithPhoneType(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingCall()Lcom/android/services/telephony/common/Call;
    .locals 2

    .prologue
    .line 262
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 263
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-nez v0, :cond_0

    .line 264
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 267
    :cond_0
    return-object v0
.end method

.method public getIncomingOrActive()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 219
    .local v0, "retval":Lcom/android/services/telephony/common/Call;
    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 222
    :cond_0
    return-object v0
.end method

.method public getOutgoingCall()Lcom/android/services/telephony/common/Call;
    .locals 2

    .prologue
    .line 226
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 227
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-nez v0, :cond_0

    .line 228
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 230
    :cond_0
    return-object v0
.end method

.method public getSecondBackgroundCall()Lcom/android/services/telephony/common/Call;
    .locals 2

    .prologue
    .line 250
    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSecondIncomingCall()Lcom/android/services/telephony/common/Call;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 556
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 557
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-nez v0, :cond_0

    .line 558
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 560
    :cond_0
    return-object v0
.end method

.method public getSecondaryIncomingCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextResponses(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public isGsmPhoneFirst()Z
    .locals 1

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getGsmActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getCdmaActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCallUpdateListeners(Lcom/android/services/telephony/common/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 162
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 163
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v2, :cond_0

    .line 164
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$CallUpdateListener;

    .line 165
    .local v1, "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    invoke-interface {v1, p1}, Lcom/android/incallui/CallList$CallUpdateListener;->onCallStateChanged(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 168
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    :cond_0
    return-void
.end method

.method public onCrssSuppServiceNumberUpdate(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callId"    # I
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCrssSuppServiceNumberUpdate, callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0, p2}, Lcom/android/incallui/CallList;->getCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 626
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0, p3}, Lcom/android/services/telephony/common/Call;->setNumber(Ljava/lang/String;)V

    .line 628
    invoke-static {p1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->updateContactInfoCache(Lcom/android/services/telephony/common/CallIdentification;)V

    .line 630
    :cond_0
    return-void
.end method

.method public onDisconnect(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 105
    const-string v2, "onDisconnect: "

    invoke-static {p0, v2, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    invoke-direct {p0, p2}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    .line 109
    .local v1, "updated":Z
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0, p2}, Lcom/android/incallui/CallList;->notifyCallUpdateListeners(Lcom/android/services/telephony/common/Call;)V

    .line 114
    invoke-direct {p0, p2}, Lcom/android/incallui/CallList;->notifyListenersOfDisconnect(Lcom/android/services/telephony/common/Call;)V

    .line 117
    invoke-static {p2}, Lcom/mediatek/incallui/vt/VTUtils;->isVTCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/mediatek/incallui/InCallUtils;->isIncomingCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTAutoDropBack:Z

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->clearDisconnectStateForVT()V

    .line 120
    iput-object p1, p0, Lcom/android/incallui/CallList;->mContext:Landroid/content/Context;

    .line 121
    iget-object v2, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 122
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 126
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onIncoming(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/services/telephony/common/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p2, "textMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIncoming - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    .line 137
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    .line 138
    .local v1, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v1, p1}, Lcom/android/incallui/CallList$Listener;->onIncomingCall(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 140
    .end local v1    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method public onStorageFull()V
    .locals 3

    .prologue
    .line 529
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    .line 530
    .local v1, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v1}, Lcom/android/incallui/CallList$Listener;->onStorageFull()V

    goto :goto_0

    .line 532
    .end local v1    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method public onSuppServiceFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 542
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onSuppServiceFailed(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public onUpdate(Lcom/android/services/telephony/common/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 91
    const-string v0, "onUpdate - "

    invoke-static {p0, v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    .line 94
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyListenersOfChange()V

    .line 95
    return-void
.end method

.method public onUpdate(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "callsToUpdate":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    const-string v2, "onUpdate(...)"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 150
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    .line 153
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->notifyCallUpdateListeners(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 158
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyListenersOfChange()V

    .line 159
    return-void
.end method

.method public onUpdateRecordState(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateRecordState: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ;customValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    .line 537
    .local v1, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v1, p1, p2}, Lcom/android/incallui/CallList$Listener;->onUpdateRecordState(II)V

    goto :goto_0

    .line 539
    .end local v1    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method public removeCallUpdateListener(ILcom/android/incallui/CallList$CallUpdateListener;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "listener"    # Lcom/android/incallui/CallList$CallUpdateListener;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 193
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 196
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/CallList$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$Listener;

    .prologue
    .line 208
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public requestUpdateScreen()V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyListenersOfChange()V

    .line 548
    return-void
.end method
