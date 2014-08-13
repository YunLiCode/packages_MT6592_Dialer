.class public Lcom/android/dialer/dialpad/DialpadFragment$HQSimStateReceive;
.super Landroid/content/BroadcastReceiver;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HQSimStateReceive"
.end annotation


# static fields
.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final SIM_INVALID:I = 0x1

.field private static final SIM_VALID:I


# instance fields
.field private simState:I

.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 1

    .prologue
    .line 3007
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$HQSimStateReceive;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3011
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$HQSimStateReceive;->simState:I

    return-void
.end method


# virtual methods
.method public getSimState()I
    .locals 1

    .prologue
    .line 3014
    iget v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$HQSimStateReceive;->simState:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 3019
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "sim state changed"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3020
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3021
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 3022
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 3023
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 3033
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$HQSimStateReceive;->simState:I

    .line 3034
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$HQSimStateReceive;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mEccDialButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->access$1500(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3035
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$HQSimStateReceive;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->access$1600(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3039
    .end local v0    # "state":I
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 3025
    .restart local v0    # "state":I
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    :pswitch_0
    iput v4, p0, Lcom/android/dialer/dialpad/DialpadFragment$HQSimStateReceive;->simState:I

    .line 3026
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$HQSimStateReceive;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mEccDialButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->access$1500(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3027
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$HQSimStateReceive;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->access$1600(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3023
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
