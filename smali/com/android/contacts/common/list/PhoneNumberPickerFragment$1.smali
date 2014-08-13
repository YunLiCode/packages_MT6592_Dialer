.class Lcom/android/contacts/common/list/PhoneNumberPickerFragment$1;
.super Landroid/os/Handler;
.source "PhoneNumberPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->reloadDataIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/PhoneNumberPickerFragment;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$1;->this$0:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 438
    # getter for: Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start reloading data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$1;->this$0:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->reloadData()V

    .line 440
    return-void
.end method
