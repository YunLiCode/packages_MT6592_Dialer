.class public Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DisplayAdapter"
.end annotation


# instance fields
.field private mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

.field private mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

.field private mChildWithPhones:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 653
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mChildWithPhones:Z

    .line 654
    iput-object p1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    .line 655
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 656
    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 657
    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 752
    iget-object v2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v2, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    .line 753
    .local v0, "account":Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    if-ltz p2, :cond_0

    iget-object v2, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    const/4 v1, 0x1

    .line 755
    .local v1, "validChild":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 756
    iget-object v2, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 758
    :goto_1
    return-object v2

    .line 753
    .end local v1    # "validChild":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 758
    .restart local v1    # "validChild":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildId(II)J
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 764
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .line 765
    .local v0, "child":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 767
    .local v1, "childId":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 769
    .end local v1    # "childId":Ljava/lang/Long;
    :cond_0
    return-wide v2
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 720
    if-nez p4, :cond_0

    .line 721
    iget-object v7, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040021

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 725
    :cond_0
    const v7, 0x1020014

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 726
    .local v5, "text1":Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 727
    .local v6, "text2":Landroid/widget/TextView;
    const v7, 0x1020001

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 729
    .local v1, "checkbox":Landroid/widget/CheckBox;
    iget-object v7, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v7, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    .line 730
    .local v0, "account":Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .line 731
    .local v2, "child":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v2, :cond_1

    .line 733
    invoke-virtual {v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getVisible()Z

    move-result v4

    .line 734
    .local v4, "groupVisible":Z
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 735
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 737
    iget-object v7, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 738
    .local v3, "groupTitle":Ljava/lang/CharSequence;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 747
    .end local v3    # "groupTitle":Ljava/lang/CharSequence;
    .end local v4    # "groupVisible":Z
    :goto_0
    return-object p4

    .line 742
    :cond_1
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 743
    const v7, 0x7f0a04ff

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 744
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 5
    .param p1, "groupPosition"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 776
    iget-object v4, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v4, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    .line 777
    .local v0, "account":Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v4, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v1, v2

    .line 778
    .local v1, "anyHidden":Z
    :goto_0
    iget-object v4, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v1, :cond_1

    :goto_1
    add-int/2addr v2, v4

    return v2

    .end local v1    # "anyHidden":Z
    :cond_0
    move v1, v3

    .line 777
    goto :goto_0

    .restart local v1    # "anyHidden":Z
    :cond_1
    move v2, v3

    .line 778
    goto :goto_1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    if-nez v0, :cond_0

    .line 789
    const/4 v0, 0x0

    .line 791
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 796
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 675
    if-nez p3, :cond_0

    .line 676
    iget-object v5, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040020

    invoke-virtual {v5, v8, p4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 680
    :cond_0
    const v5, 0x1020014

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 681
    .local v3, "text1":Landroid/widget/TextView;
    const v5, 0x1020015

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 683
    .local v4, "text2":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    .line 685
    .local v0, "account":Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v5, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v8, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mDataSet:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    .line 694
    .local v1, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    const/4 v2, 0x0

    .line 695
    .local v2, "displayName":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/android/contacts/common/util/AccountFilterUtil;->getAccountDisplayNameByAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 697
    if-nez v2, :cond_1

    .line 698
    iget-object v5, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    :goto_0
    iget-object v5, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    if-nez v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    iget-object v5, v1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->isLocalPhone(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 707
    iget-object v5, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 714
    :goto_2
    return-object p3

    .line 700
    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v5, v7

    .line 705
    goto :goto_1

    .line 711
    :cond_3
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 712
    iget-object v5, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 801
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 806
    const/4 v0, 0x1

    return v0
.end method

.method public setAccounts(Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 0
    .param p1, "accounts"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    .line 661
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 662
    return-void
.end method

.method public setChildDescripWithPhones(Z)V
    .locals 0
    .param p1, "withPhones"    # Z

    .prologue
    .line 669
    iput-boolean p1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mChildWithPhones:Z

    .line 670
    return-void
.end method
