.class Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

.field final synthetic val$accountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/util/AccountsListAdapter;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->val$accountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 101
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 106
    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->val$accountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-virtual {v1, p2}, Lcom/android/contacts/common/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v1

    # setter for: Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-static {v0, v1}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->access$002(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 107
    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    # getter for: Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-static {v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->access$000(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    instance-of v0, v0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->val$accountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/contacts/common/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    # setter for: Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-static {v1, v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->access$002(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 109
    iget-object v1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    # getter for: Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-static {v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->access$000(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-virtual {v0}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->getSlotId()I

    move-result v0

    # setter for: Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mSlotId:I
    invoke-static {v1, v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->access$102(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;I)I

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    # getter for: Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mSlotId:I
    invoke-static {v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->access$100(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    # getter for: Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mSlotId:I
    invoke-static {v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->access$100(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    # getter for: Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->access$200(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    # getter for: Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->access$200(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 117
    :cond_1
    const-string v0, "SelectAccountDialogFragment"

    const-string v1, "[onClick]PhoneBook is not ready for use"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    # getter for: Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-static {v1}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->access$000(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v1

    # invokes: Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    invoke-static {v0, v1}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->access$300(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 123
    :cond_3
    const-string v0, "SelectAccountDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCreateDialog]slotId is invalid: mSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    # getter for: Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mSlotId:I
    invoke-static {v2}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->access$100(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    # getter for: Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-static {v1}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->access$000(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v1

    # invokes: Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    invoke-static {v0, v1}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->access$300(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0
.end method
