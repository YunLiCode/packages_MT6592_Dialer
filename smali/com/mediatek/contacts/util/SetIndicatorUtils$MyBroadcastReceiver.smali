.class Lcom/mediatek/contacts/util/SetIndicatorUtils$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SetIndicatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/util/SetIndicatorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/util/SetIndicatorUtils;


# direct methods
.method private constructor <init>(Lcom/mediatek/contacts/util/SetIndicatorUtils;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils$MyBroadcastReceiver;->this$0:Lcom/mediatek/contacts/util/SetIndicatorUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/contacts/util/SetIndicatorUtils;Lcom/mediatek/contacts/util/SetIndicatorUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/contacts/util/SetIndicatorUtils;
    .param p2, "x1"    # Lcom/mediatek/contacts/util/SetIndicatorUtils$1;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/util/SetIndicatorUtils$MyBroadcastReceiver;-><init>(Lcom/mediatek/contacts/util/SetIndicatorUtils;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "action":Ljava/lang/String;
    const-string v1, "SetIndicatorUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onReceive] action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "android.intent.action.VOICE_CALL_DEFAULT_SIM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "SetIndicatorUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onReceive]mShowSimIndicator : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils$MyBroadcastReceiver;->this$0:Lcom/mediatek/contacts/util/SetIndicatorUtils;

    # getter for: Lcom/mediatek/contacts/util/SetIndicatorUtils;->mShowSimIndicator:Z
    invoke-static {v3}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->access$100(Lcom/mediatek/contacts/util/SetIndicatorUtils;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils$MyBroadcastReceiver;->this$0:Lcom/mediatek/contacts/util/SetIndicatorUtils;

    # getter for: Lcom/mediatek/contacts/util/SetIndicatorUtils;->mShowSimIndicator:Z
    invoke-static {v1}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->access$100(Lcom/mediatek/contacts/util/SetIndicatorUtils;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils$MyBroadcastReceiver;->this$0:Lcom/mediatek/contacts/util/SetIndicatorUtils;

    const/4 v2, 0x1

    const/4 v3, 0x0

    # invokes: Lcom/mediatek/contacts/util/SetIndicatorUtils;->setSimIndicatorVisibility(ZLandroid/app/Activity;)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->access$200(Lcom/mediatek/contacts/util/SetIndicatorUtils;ZLandroid/app/Activity;)V

    .line 149
    :cond_0
    return-void
.end method
