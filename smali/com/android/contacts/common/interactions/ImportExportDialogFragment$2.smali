.class Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;
.super Ljava/lang/Object;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$callingActivity:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Landroid/widget/ArrayAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$callingActivity:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 123
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 124
    .local v2, "resId":I
    sparse-switch v2, :sswitch_data_0

    .line 144
    const/4 v0, 0x1

    .line 145
    .local v0, "dismissDialog":Z
    const-string v3, "ImportExportDialogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v5}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    if-eqz v0, :cond_0

    .line 150
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 152
    :cond_0
    return-void

    .line 127
    .end local v0    # "dismissDialog":Z
    :sswitch_0
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    # invokes: Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->handleImportRequest(I)Z
    invoke-static {v3, v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->access$000(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;I)Z

    move-result v0

    .line 128
    .restart local v0    # "dismissDialog":Z
    goto :goto_0

    .line 131
    .end local v0    # "dismissDialog":Z
    :sswitch_1
    const/4 v0, 0x1

    .line 132
    .restart local v0    # "dismissDialog":Z
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/contacts/common/vcard/ExportVCardActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v1, "exportIntent":Landroid/content/Intent;
    const-string v3, "CALLING_ACTIVITY"

    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$callingActivity:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 139
    .end local v0    # "dismissDialog":Z
    .end local v1    # "exportIntent":Landroid/content/Intent;
    :sswitch_2
    const/4 v0, 0x1

    .line 140
    .restart local v0    # "dismissDialog":Z
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    # invokes: Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->doShareVisibleContacts()V
    invoke-static {v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->access$100(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V

    goto :goto_0

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0508 -> :sswitch_0
        0x7f0a0509 -> :sswitch_0
        0x7f0a053d -> :sswitch_1
        0x7f0a053e -> :sswitch_2
    .end sparse-switch
.end method
