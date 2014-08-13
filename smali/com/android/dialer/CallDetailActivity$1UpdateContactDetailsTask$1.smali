.class Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/mediatek/dialer/PhoneCallDetailsEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;

.field final synthetic val$mainActionIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;->this$1:Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;

    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;->val$mainActionIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 716
    :try_start_0
    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;->this$1:Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v2, v2, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;->val$mainActionIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_0
    return-void

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;->this$1:Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v2, v2, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0a05ae

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 721
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
