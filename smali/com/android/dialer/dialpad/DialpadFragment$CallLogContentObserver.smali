.class Lcom/android/dialer/dialpad/DialpadFragment$CallLogContentObserver;
.super Landroid/database/ContentObserver;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallLogContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 1

    .prologue
    .line 2958
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$CallLogContentObserver;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    .line 2959
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2960
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 2964
    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/dialer/dialpad/DialpadFragment;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastNumberDialed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$CallLogContentObserver;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->access$900(Lcom/android/dialer/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2966
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$CallLogContentObserver;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2967
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$CallLogContentObserver;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # invokes: Lcom/android/dialer/dialpad/DialpadFragment;->queryLastOutgoingCall()V
    invoke-static {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->access$1300(Lcom/android/dialer/dialpad/DialpadFragment;)V

    .line 2969
    :cond_0
    return-void
.end method
