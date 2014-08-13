.class public Lcom/android/contacts/common/util/AccountSelectionUtil;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AccountSelectionUtil"

.field public static mPath:Landroid/net/Uri;

.field public static mVCardShare:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/common/util/AccountSelectionUtil;->mVCardShare:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static doImport(Landroid/content/Context;ILcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 159
    :pswitch_0
    invoke-static {p0, p2}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImportFromSim(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 163
    :pswitch_1
    invoke-static {p0, p2}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImportFromSdCard(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x7f0a0508
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static doImportFromSdCard(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 182
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v1, "importIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 184
    const-string v2, "account_name"

    iget-object v3, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v2, "account_type"

    iget-object v3, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v2, "data_set"

    iget-object v3, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    :cond_0
    sget-boolean v2, Lcom/android/contacts/common/util/AccountSelectionUtil;->mVCardShare:Z

    if-eqz v2, :cond_1

    .line 190
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    sget-object v2, Lcom/android/contacts/common/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 193
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/contacts/common/util/AccountSelectionUtil;->mVCardShare:Z

    .line 194
    const/4 v2, 0x0

    sput-object v2, Lcom/android/contacts/common/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    .line 201
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    move-object v0, p0

    .line 202
    check-cast v0, Landroid/app/Activity;

    .line 203
    .local v0, "activity":Landroid/app/Activity;
    const v2, 0x1b207

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 210
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 205
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static doImportFromSdCard(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceStorage"    # Ljava/lang/String;
    .param p2, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 216
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v1, "importIntent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 219
    const-string v2, "account_name"

    iget-object v3, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v2, "account_type"

    iget-object v3, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v2, "data_set"

    iget-object v3, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v2, "source_path"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    move-object v0, p0

    .line 225
    check-cast v0, Landroid/app/Activity;

    .line 226
    .local v0, "activity":Landroid/app/Activity;
    const v2, 0x1b207

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 227
    return-void
.end method

.method public static doImportFromSim(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "importIntent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/sim-contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    if-eqz p1, :cond_0

    .line 173
    const-string v1, "account_name"

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "account_type"

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v1, "data_set"

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    :cond_0
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.SimContacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method public static getSelectAccountDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-static {p0, p1, v0, v0}, Lcom/android/contacts/common/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/common/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 95
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v5

    .line 96
    .local v5, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 98
    .local v3, "writableAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    const-string v1, "AccountSelectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The number of available accounts: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v7, Landroid/view/ContextThemeWrapper;

    const v1, 0x103000c

    invoke-direct {v7, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 105
    .local v7, "dialogContext":Landroid/content/Context;
    const-string v1, "layout_inflater"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 107
    .local v4, "dialogInflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/contacts/common/util/AccountSelectionUtil$1;

    const v2, 0x1090004

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/util/AccountSelectionUtil$1;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;Lcom/android/contacts/common/model/AccountTypeManager;)V

    .line 137
    .local v0, "accountAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    if-nez p2, :cond_0

    .line 138
    new-instance v6, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

    invoke-direct {v6, p0, v3, p1}, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 140
    .local v6, "accountSelectedListener":Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;
    move-object p2, v6

    .line 142
    .end local v6    # "accountSelectedListener":Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;
    :cond_0
    if-nez p3, :cond_1

    .line 143
    new-instance p3, Lcom/android/contacts/common/util/AccountSelectionUtil$2;

    .end local p3    # "onCancelListener":Landroid/content/DialogInterface$OnCancelListener;
    invoke-direct {p3}, Lcom/android/contacts/common/util/AccountSelectionUtil$2;-><init>()V

    .line 149
    .restart local p3    # "onCancelListener":Landroid/content/DialogInterface$OnCancelListener;
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0507

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
