.class Lcom/android/dialer/list/AllContactsActivity$1;
.super Ljava/lang/Object;
.source "AllContactsActivity.java"

# interfaces
.implements Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/AllContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/AllContactsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/AllContactsActivity;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/dialer/list/AllContactsActivity$1;->this$0:Lcom/android/dialer/list/AllContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallNumberDirectly(Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/dialer/list/AllContactsActivity$1;->this$0:Lcom/android/dialer/list/AllContactsActivity;

    invoke-virtual {v1, v0}, Lcom/android/dialer/list/AllContactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method

.method public onHomeInActionBarSelected()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/list/AllContactsActivity$1;->this$0:Lcom/android/dialer/list/AllContactsActivity;

    const-class v2, Lcom/android/dialer/DialtactsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/android/dialer/list/AllContactsActivity$1;->this$0:Lcom/android/dialer/list/AllContactsActivity;

    invoke-virtual {v1, v0}, Lcom/android/dialer/list/AllContactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method public onPickPhoneNumberAction(Landroid/net/Uri;)V
    .locals 2
    .param p1, "dataUri"    # Landroid/net/Uri;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/dialer/list/AllContactsActivity$1;->this$0:Lcom/android/dialer/list/AllContactsActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Lcom/android/contacts/common/activity/TransactionSafeActivity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    # getter for: Lcom/android/dialer/list/AllContactsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/dialer/list/AllContactsActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported intent has come ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method
