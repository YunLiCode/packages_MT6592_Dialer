.class final Lcom/android/contacts/common/vcard/SelectAccountActivity$2;
.super Landroid/widget/ArrayAdapter;
.source "SelectAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/vcard/SelectAccountActivity;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;Lcom/android/contacts/common/model/AccountTypeManager;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I

    .prologue
    .line 181
    .local p3, "x2":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    iput-object p4, p0, Lcom/android/contacts/common/vcard/SelectAccountActivity$2;->val$dialogInflater:Landroid/view/LayoutInflater;

    iput-object p5, p0, Lcom/android/contacts/common/vcard/SelectAccountActivity$2;->val$accountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 185
    if-nez p2, :cond_0

    .line 186
    iget-object v5, p0, Lcom/android/contacts/common/vcard/SelectAccountActivity$2;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040052

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 191
    :cond_0
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 192
    .local v3, "text1":Landroid/widget/TextView;
    const v5, 0x1020015

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 194
    .local v4, "text2":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/vcard/SelectAccountActivity$2;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 195
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v5, p0, Lcom/android/contacts/common/vcard/SelectAccountActivity$2;->val$accountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    .line 197
    .local v1, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/SelectAccountActivity$2;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 199
    .local v2, "context":Landroid/content/Context;
    iget-object v5, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    return-object p2
.end method
