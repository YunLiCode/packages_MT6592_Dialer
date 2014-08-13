.class Lcom/android/incallui/InCallActivity$17;
.super Landroid/content/BroadcastReceiver;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$17;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 1332
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1333
    .local v0, "level":I
    const-string v2, "status"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1334
    .local v1, "status":I
    const-string v2, "chaoyongan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPowerReceiver BroadcastReceiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1343
    const/4 v2, 0x5

    if-gt v0, v2, :cond_1

    .line 1344
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$17;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->showDialog_Level5:Z
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$800(Lcom/android/incallui/InCallActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1345
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$17;->this$0:Lcom/android/incallui/InCallActivity;

    # invokes: Lcom/android/incallui/InCallActivity;->playLowBatterySound(Landroid/content/Context;)V
    invoke-static {v2, p1}, Lcom/android/incallui/InCallActivity;->access$900(Lcom/android/incallui/InCallActivity;Landroid/content/Context;)V

    .line 1346
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$17;->this$0:Lcom/android/incallui/InCallActivity;

    # invokes: Lcom/android/incallui/InCallActivity;->showLowPowerDialog()V
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$1000(Lcom/android/incallui/InCallActivity;)V

    .line 1347
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$17;->this$0:Lcom/android/incallui/InCallActivity;

    # setter for: Lcom/android/incallui/InCallActivity;->showDialog_Level5:Z
    invoke-static {v2, v5}, Lcom/android/incallui/InCallActivity;->access$802(Lcom/android/incallui/InCallActivity;Z)Z

    .line 1363
    :cond_0
    :goto_0
    return-void

    .line 1349
    :cond_1
    const/16 v2, 0xa

    if-gt v0, v2, :cond_2

    .line 1350
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$17;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->showDialog_Level10:Z
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$1100(Lcom/android/incallui/InCallActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1351
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$17;->this$0:Lcom/android/incallui/InCallActivity;

    # invokes: Lcom/android/incallui/InCallActivity;->playLowBatterySound(Landroid/content/Context;)V
    invoke-static {v2, p1}, Lcom/android/incallui/InCallActivity;->access$900(Lcom/android/incallui/InCallActivity;Landroid/content/Context;)V

    .line 1352
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$17;->this$0:Lcom/android/incallui/InCallActivity;

    # invokes: Lcom/android/incallui/InCallActivity;->showLowPowerDialog()V
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$1000(Lcom/android/incallui/InCallActivity;)V

    .line 1353
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$17;->this$0:Lcom/android/incallui/InCallActivity;

    # setter for: Lcom/android/incallui/InCallActivity;->showDialog_Level10:Z
    invoke-static {v2, v5}, Lcom/android/incallui/InCallActivity;->access$1102(Lcom/android/incallui/InCallActivity;Z)Z

    goto :goto_0

    .line 1355
    :cond_2
    const/16 v2, 0xf

    if-gt v0, v2, :cond_0

    .line 1356
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$17;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->showDialog_Level15:Z
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$1200(Lcom/android/incallui/InCallActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1357
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$17;->this$0:Lcom/android/incallui/InCallActivity;

    # invokes: Lcom/android/incallui/InCallActivity;->playLowBatterySound(Landroid/content/Context;)V
    invoke-static {v2, p1}, Lcom/android/incallui/InCallActivity;->access$900(Lcom/android/incallui/InCallActivity;Landroid/content/Context;)V

    .line 1358
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$17;->this$0:Lcom/android/incallui/InCallActivity;

    # invokes: Lcom/android/incallui/InCallActivity;->showLowPowerDialog()V
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$1000(Lcom/android/incallui/InCallActivity;)V

    .line 1359
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$17;->this$0:Lcom/android/incallui/InCallActivity;

    # setter for: Lcom/android/incallui/InCallActivity;->showDialog_Level15:Z
    invoke-static {v2, v5}, Lcom/android/incallui/InCallActivity;->access$1202(Lcom/android/incallui/InCallActivity;Z)Z

    goto :goto_0
.end method
