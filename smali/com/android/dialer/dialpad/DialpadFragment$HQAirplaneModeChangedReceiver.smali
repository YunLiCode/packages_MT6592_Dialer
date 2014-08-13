.class Lcom/android/dialer/dialpad/DialpadFragment$HQAirplaneModeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HQAirplaneModeChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0

    .prologue
    .line 2992
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$HQAirplaneModeChangedReceiver;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;Lcom/android/dialer/dialpad/DialpadFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;
    .param p2, "x1"    # Lcom/android/dialer/dialpad/DialpadFragment$1;

    .prologue
    .line 2992
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment$HQAirplaneModeChangedReceiver;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2995
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2997
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3000
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$HQAirplaneModeChangedReceiver;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # invokes: Lcom/android/dialer/dialpad/DialpadFragment;->updateDialandEccButton()V
    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$1400(Lcom/android/dialer/dialpad/DialpadFragment;)V

    .line 3003
    :cond_0
    return-void
.end method
