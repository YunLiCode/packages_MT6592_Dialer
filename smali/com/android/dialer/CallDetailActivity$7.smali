.class Lcom/android/dialer/CallDetailActivity$7;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/CallDetailActivity;->updateVoicemailStatusMessage(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;

.field final synthetic val$message:Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;)V
    .locals 0

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$7;->this$0:Lcom/android/dialer/CallDetailActivity;

    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$7;->val$message:Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$7;->this$0:Lcom/android/dialer/CallDetailActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity$7;->val$message:Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    iget-object v3, v3, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1273
    return-void
.end method
