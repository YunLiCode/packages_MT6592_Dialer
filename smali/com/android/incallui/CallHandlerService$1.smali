.class Lcom/android/incallui/CallHandlerService$1;
.super Lcom/android/services/telephony/common/ICallHandlerService$Stub;
.source "CallHandlerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallHandlerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallHandlerService;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallHandlerService;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    invoke-direct {p0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public answerVTCallPre()V
    .locals 4

    .prologue
    .line 284
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "answerVTCallPre()..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing answerVTCallPre()."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public bringToForeground(Z)V
    .locals 5
    .param p1, "showDialpad"    # Z

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x7

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    return-void

    :cond_0
    move v0, v1

    .line 194
    goto :goto_0
.end method

.method public dialVTCallSuccess()V
    .locals 4

    .prologue
    .line 275
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dialVTCallSuccess()..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing dialVTCallSuccess()."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onAudioModeChange(IZ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "muted"    # Z

    .prologue
    .line 171
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioModeChange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v1, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_1
    return-void

    .line 173
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onAudioModeChange() call."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public onCrssSuppServiceNumberUpdate(ILjava/lang/String;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 317
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCrssSuppServiceNumberUpdate()... callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x14

    const/4 v4, -0x1

    invoke-virtual {v2, v3, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onCrssSuppServiceNumberUpdate()..."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 138
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onDisconnect() call."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onIncoming(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V
    .locals 5
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
    .line 148
    .local p2, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIncomingCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    .local v1, "incomingCall":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/services/telephony/common/Call;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v1    # "incomingCall":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/services/telephony/common/Call;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error processing onIncoming() call."

    invoke-static {v2, v3, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onPostDialWait(ILjava/lang/String;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void
.end method

.method public onStorageFull()V
    .locals 4

    .prologue
    .line 229
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onStorageFull"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onStorageFull()."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onSuppServiceFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 238
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onSuppServiceFailed"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onSuppServiceFailed()."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onSupportedAudioModeChange(I)V
    .locals 6
    .param p1, "modeMask"    # I

    .prologue
    .line 183
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSupportedAudioModeChange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onSupportedAudioModeChange() call."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
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
    .line 161
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onUpdate() call."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onUpdateRecordState(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 219
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "customValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onUpdateRecordState()."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onVTConnected()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onVTOpen()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public onVTReady()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onVTStateChanged(I)V
    .locals 5
    .param p1, "msgVT"    # I

    .prologue
    .line 248
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVTStateChanged()... state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onVTStateChanged()."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onVoLteConferenceUpdate(ILjava/util/List;)V
    .locals 4
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
    .line 309
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/services/telephony/common/VoLteConferenceMember;>;"
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onVoLteConferenceUpdate~~"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/mediatek/incallui/volte/VoLteConfCallList;->dumpVoLTEConfMemberList(ILjava/util/List;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x15

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    return-void
.end method

.method public pushVTManagerParams(Lcom/android/services/telephony/common/VTManagerParams;)V
    .locals 4
    .param p1, "params"    # Lcom/android/services/telephony/common/VTManagerParams;

    .prologue
    .line 294
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pushVTManagerParams()..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing pushVTManagerParams()."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public pushVTSettingParams(Lcom/android/services/telephony/common/VTSettingParams;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "params"    # Lcom/android/services/telephony/common/VTSettingParams;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 257
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pushVTSettingParams()..."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "KEY_VT_SETTING_PARAMS"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 260
    const-string v3, "KEY_VT_SETTING_PARAMS_BITMAP"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 261
    iget-object v3, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 262
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 263
    iget-object v3, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error processing pushVTSettingParams()."

    invoke-static {v3, v4, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public startCallService(Lcom/android/services/telephony/common/ICallCommandService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/services/telephony/common/ICallCommandService;

    .prologue
    .line 127
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCallService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing setCallCommandservice() call"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateDualtalkCallStatus(Lcom/android/services/telephony/common/DualtalkCallInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/services/telephony/common/DualtalkCallInfo;

    .prologue
    .line 303
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateDualtalkCallStatus], info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    return-void
.end method
