.class Lcom/android/dialer/CallDetailActivity$1;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    # invokes: Lcom/android/dialer/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z
    invoke-static {v0}, Lcom/android/dialer/CallDetailActivity;->access$200(Lcom/android/dialer/CallDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    const-string v2, "follow_sim_management"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
