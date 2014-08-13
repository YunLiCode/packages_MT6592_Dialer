.class public Lcom/android/contacts/common/util/AccountFilterUtil;
.super Ljava/lang/Object;
.source "AccountFilterUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/contacts/common/util/AccountFilterUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountDisplayNameByAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "accountType"    # Ljava/lang/String;
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "accountDisplayName":Ljava/lang/String;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 225
    :cond_0
    sget-object v6, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string v7, "[getAccountDisplayNameByAccount] accountType or accountName is null, returned null."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 249
    .end local v0    # "accountDisplayName":Ljava/lang/String;
    .local v1, "accountDisplayName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 229
    .end local v1    # "accountDisplayName":Ljava/lang/String;
    .restart local v0    # "accountDisplayName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/GlobalEnv;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 230
    .local v4, "context":Landroid/content/Context;
    if-nez v4, :cond_2

    .line 231
    sget-object v6, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string v7, "[getAccountDisplayNameByAccount] contactsApp is null, returned null."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 232
    .end local v0    # "accountDisplayName":Ljava/lang/String;
    .restart local v1    # "accountDisplayName":Ljava/lang/String;
    goto :goto_0

    .line 234
    .end local v1    # "accountDisplayName":Ljava/lang/String;
    .restart local v0    # "accountDisplayName":Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v2

    .line 237
    .local v2, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    if-nez v2, :cond_3

    .line 238
    sget-object v6, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string v7, "[getAccountDisplayNameByAccount] accounts is null, returned null."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 239
    .end local v0    # "accountDisplayName":Ljava/lang/String;
    .restart local v1    # "accountDisplayName":Ljava/lang/String;
    goto :goto_0

    .line 241
    .end local v1    # "accountDisplayName":Ljava/lang/String;
    .restart local v0    # "accountDisplayName":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 242
    .local v3, "ads":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    instance-of v6, v3, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    if-eqz v6, :cond_4

    .line 243
    iget-object v6, v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 244
    check-cast v3, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    .end local v3    # "ads":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-virtual {v3}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v1, v0

    .line 249
    .end local v0    # "accountDisplayName":Ljava/lang/String;
    .restart local v1    # "accountDisplayName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static handleAccountFilterResult(Lcom/android/contacts/common/list/ContactListFilterController;ILandroid/content/Intent;)V
    .locals 4
    .param p0, "filterController"    # Lcom/android/contacts/common/list/ContactListFilterController;
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 205
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 206
    const-string v1, "contactListFilter"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    .line 208
    .local v0, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    if-nez v0, :cond_1

    .line 218
    .end local v0    # "filter":Lcom/android/contacts/common/list/ContactListFilter;
    :cond_0
    :goto_0
    return-void

    .line 211
    .restart local v0    # "filter":Lcom/android/contacts/common/list/ContactListFilter;
    :cond_1
    iget v1, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 212
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterController;->selectCustomFilter()V

    goto :goto_0

    .line 214
    :cond_2
    sget-object v1, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V

    goto :goto_0
.end method

.method public static startAccountFilterActivityForResult(Landroid/app/Activity;ILcom/android/contacts/common/list/ContactListFilter;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "currentFilter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/list/AccountFilterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "currentFilter"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    return-void
.end method

.method public static startAccountFilterActivityForResult(Landroid/app/Fragment;ILcom/android/contacts/common/list/ContactListFilter;)V
    .locals 4
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "requestCode"    # I
    .param p2, "currentFilter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 187
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 188
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/common/list/AccountFilterActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "currentFilter"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v1, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 194
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 192
    :cond_0
    sget-object v2, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string v3, "getActivity() returned null. Ignored"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;ZZ)Z
    .locals 11
    .param p0, "filterContainer"    # Landroid/view/View;
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;
    .param p2, "showTitleForAllAccounts"    # Z
    .param p3, "forPhone"    # Z

    .prologue
    const v10, 0x7f0a0468

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x2

    const/4 v6, -0x3

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    .local v0, "context":Landroid/content/Context;
    const v4, 0x7f0d0033

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 82
    .local v2, "headerTextView":Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 83
    .local v3, "textWasSet":Z
    if-eqz p1, :cond_d

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, "displayName":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/contacts/common/util/AccountFilterUtil;->getAccountDisplayNameByAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    if-nez v1, :cond_0

    .line 90
    iget-object v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->displayName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 91
    iget-object v1, p1, Lcom/android/contacts/common/list/ContactListFilter;->displayName:Ljava/lang/String;

    .line 104
    :cond_0
    :goto_0
    if-eqz p3, :cond_7

    .line 105
    iget v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v4, v7, :cond_3

    .line 106
    if-eqz p2, :cond_1

    .line 107
    const v4, 0x7f0a04bd

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 108
    const/4 v3, 0x1

    .line 161
    .end local v1    # "displayName":Ljava/lang/String;
    :cond_1
    :goto_1
    return v3

    .line 96
    .restart local v1    # "displayName":Ljava/lang/String;
    :cond_2
    iget-object v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    if-nez v1, :cond_0

    .line 98
    iget-object v1, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_3
    iget v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v4, :cond_5

    .line 116
    iget-object v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-static {v4}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->isLocalPhone(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_4
    const v4, 0x7f0a0504

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const/4 v3, 0x1

    goto :goto_1

    .line 123
    :cond_5
    iget v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v4, v6, :cond_6

    .line 124
    const v4, 0x7f0a0505

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 125
    const/4 v3, 0x1

    goto :goto_1

    .line 127
    :cond_6
    sget-object v4, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filter type \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" isn\'t expected."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    :cond_7
    iget v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v4, v7, :cond_8

    .line 131
    if-eqz p2, :cond_1

    .line 132
    const v4, 0x7f0a04f7

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 133
    const/4 v3, 0x1

    goto :goto_1

    .line 135
    :cond_8
    iget v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v4, :cond_a

    .line 141
    iget-object v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-static {v4}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->isLocalPhone(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 142
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    :cond_9
    const v4, 0x7f0a0504

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 148
    :cond_a
    iget v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v4, v6, :cond_b

    .line 149
    const v4, 0x7f0a0505

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 150
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 151
    :cond_b
    iget v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v5, -0x6

    if-ne v4, v5, :cond_c

    .line 152
    const v4, 0x7f0a0506

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 153
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 155
    :cond_c
    sget-object v4, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filter type \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" isn\'t expected."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 159
    .end local v1    # "displayName":Ljava/lang/String;
    :cond_d
    sget-object v4, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string v5, "Filter is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static updateAccountFilterTitleForPeople(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;Z)Z
    .locals 1
    .param p0, "filterContainer"    # Landroid/view/View;
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;
    .param p2, "showTitleForAllAccounts"    # Z

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/common/util/AccountFilterUtil;->updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;ZZ)Z

    move-result v0

    return v0
.end method

.method public static updateAccountFilterTitleForPhone(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;Z)Z
    .locals 1
    .param p0, "filterContainer"    # Landroid/view/View;
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;
    .param p2, "showTitleForAllAccounts"    # Z

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/common/util/AccountFilterUtil;->updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;ZZ)Z

    move-result v0

    return v0
.end method
