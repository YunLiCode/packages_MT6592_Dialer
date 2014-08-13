.class public Lcom/mediatek/dialer/widget/SimPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dialer/widget/SimPickerAdapter$1;,
        Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;,
        Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_ACCOUNT:I = 0x3

.field public static final ITEM_TYPE_INTERNET:I = 0x1

.field public static final ITEM_TYPE_SIM:I = 0x0

.field public static final ITEM_TYPE_TEXT:I = 0x2

.field public static final ITEM_TYPE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SimPickerAdapter"


# instance fields
.field mContext:Landroid/content/Context;

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field mSingleChoice:Z

.field mSingleChoiceIndex:I

.field mSuggestedSimId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "suggestedSimId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mContext:Landroid/content/Context;

    .line 47
    iput-wide p3, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mSuggestedSimId:J

    .line 48
    iput-object p2, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mItems:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mSingleChoice:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mSingleChoiceIndex:I

    .line 51
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 83
    iget-object v1, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;

    .line 84
    .local v0, "itemHolder":Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;
    iget v1, v0, Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;->type:I

    if-nez v1, :cond_0

    .line 85
    iget-object v1, v0, Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v1, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 86
    :cond_0
    iget v1, v0, Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 87
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 88
    :cond_1
    iget v1, v0, Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, v0, Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 89
    :cond_2
    iget-object v1, v0, Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    goto :goto_0

    .line 91
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 96
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    iget-object v1, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;

    .line 67
    .local v0, "itemHolder":Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;
    iget v1, v0, Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;->type:I

    return v1
.end method

.method protected getSimStatusIcon(I)I
    .locals 5
    .param p1, "slot"    # I

    .prologue
    .line 221
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getSimIndicatorState(I)I

    move-result v1

    .line 222
    .local v1, "state":I
    const-string v2, "SimPickerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getSimStatusIcon] sim state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "resourceId":I
    packed-switch v1, :pswitch_data_0

    .line 251
    :goto_0
    :pswitch_0
    return v0

    .line 227
    :pswitch_1
    const v0, 0x20200f9

    .line 228
    goto :goto_0

    .line 230
    :pswitch_2
    const v0, 0x202010c

    .line 231
    goto :goto_0

    .line 233
    :pswitch_3
    const v0, 0x2020111

    .line 234
    goto :goto_0

    .line 236
    :pswitch_4
    const v0, 0x2020113

    .line 237
    goto :goto_0

    .line 239
    :pswitch_5
    const v0, 0x20200f2

    .line 240
    goto :goto_0

    .line 242
    :pswitch_6
    const v0, 0x20200e9

    .line 243
    goto :goto_0

    .line 245
    :pswitch_7
    const v0, 0x2020112

    .line 246
    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getSingleChoice()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mSingleChoice:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    move-object v7, p2

    .line 101
    .local v7, "view":Landroid/view/View;
    const/4 v2, 0x0

    .line 102
    .local v2, "holder":Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/mediatek/dialer/widget/SimPickerAdapter;->getItemViewType(I)I

    move-result v8

    .line 103
    .local v8, "viewType":I
    if-nez v7, :cond_1

    .line 104
    iget-object v9, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 105
    .local v3, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;

    .end local v2    # "holder":Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;
    const/4 v9, 0x0

    invoke-direct {v2, p0, v9}, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;-><init>(Lcom/mediatek/dialer/widget/SimPickerAdapter;Lcom/mediatek/dialer/widget/SimPickerAdapter$1;)V

    .line 107
    .restart local v2    # "holder":Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;
    if-nez v8, :cond_4

    .line 108
    const v9, 0x7f040053

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 109
    const v9, 0x7f0d0151

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mSimSignal:Landroid/widget/TextView;

    .line 110
    const v9, 0x7f0d0150

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mSimStatus:Landroid/widget/ImageView;

    .line 111
    const v9, 0x7f0d0152

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mShortPhoneNumber:Landroid/widget/TextView;

    .line 112
    const v9, 0x7f0d0154

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    .line 113
    const v9, 0x7f0d0155

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    .line 114
    const v9, 0x7f0d014f

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mSimIcon:Landroid/view/View;

    .line 115
    const v9, 0x7f0d0153

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mSuggested:Landroid/widget/ImageView;

    .line 116
    const v9, 0x7f0d0146

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {v7, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "holder":Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;
    check-cast v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;

    .line 131
    .restart local v2    # "holder":Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;
    iget-boolean v9, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mSingleChoice:Z

    if-eqz v9, :cond_7

    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v9, :cond_7

    .line 132
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 137
    :goto_1
    if-nez v8, :cond_d

    .line 138
    iget-object v9, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;

    iget-object v5, v9, Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 139
    .local v5, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    iget-object v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mSimIcon:Landroid/view/View;

    sget-object v10, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightRes:[I

    iget v11, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 142
    iget-wide v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    iget-wide v11, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mSuggestedSimId:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_8

    .line 143
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mSuggested:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    :goto_2
    :try_start_0
    const-string v4, ""

    .line 150
    .local v4, "shortNumber":Ljava/lang/String;
    iget-object v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 151
    iget v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    packed-switch v9, :pswitch_data_0

    .line 173
    :goto_3
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    :goto_4
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mShortPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mSimSignal:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v9, :cond_2

    .line 181
    iget v9, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mSingleChoiceIndex:I

    int-to-long v9, v9

    iget-wide v11, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_c

    .line 182
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v4    # "shortNumber":Ljava/lang/String;
    :cond_2
    :goto_5
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mSimStatus:Landroid/widget/ImageView;

    iget v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {p0, v10}, Lcom/mediatek/dialer/widget/SimPickerAdapter;->getSimStatusIcon(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    .end local v5    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_3
    :goto_6
    return-object v7

    .line 117
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 118
    const v9, 0x7f040054

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 119
    const v9, 0x7f0d0156

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mInternetIcon:Landroid/widget/ImageView;

    .line 120
    const v9, 0x7f0d0146

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    goto/16 :goto_0

    .line 121
    :cond_5
    const/4 v9, 0x2

    if-eq v8, v9, :cond_6

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 122
    :cond_6
    const v9, 0x7f040055

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 123
    const v9, 0x7f0d00cf

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    .line 124
    const v9, 0x7f0d0146

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    goto/16 :goto_0

    .line 134
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_7
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 145
    .restart local v5    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_8
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mSuggested:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 153
    .restart local v4    # "shortNumber":Ljava/lang/String;
    :pswitch_0
    :try_start_1
    iget-object v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-gt v9, v10, :cond_9

    .line 154
    iget-object v4, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    goto/16 :goto_3

    .line 156
    :cond_9
    iget-object v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 158
    goto/16 :goto_3

    .line 160
    :pswitch_1
    iget-object v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-gt v9, v10, :cond_a

    .line 161
    iget-object v4, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    goto/16 :goto_3

    .line 163
    :cond_a
    iget-object v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    iget-object v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    iget-object v11, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 166
    goto/16 :goto_3

    .line 168
    :pswitch_2
    const-string v4, ""

    .line 169
    goto/16 :goto_3

    .line 176
    :cond_b
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 187
    .end local v4    # "shortNumber":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mShortPhoneNumber:Landroid/widget/TextView;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 184
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "shortNumber":Ljava/lang/String;
    :cond_c
    :try_start_2
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 191
    .end local v4    # "shortNumber":Ljava/lang/String;
    .end local v5    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_d
    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    .line 192
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mInternetIcon:Landroid/widget/ImageView;

    const v10, 0x20200e0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 194
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v9, :cond_3

    .line 195
    iget v9, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mSingleChoiceIndex:I

    const/16 v10, 0x4e24

    if-ne v9, v10, :cond_e

    .line 196
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_6

    .line 198
    :cond_e
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_6

    .line 201
    :cond_f
    const/4 v9, 0x2

    if-ne v8, v9, :cond_11

    .line 202
    iget-object v9, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;

    iget-object v6, v9, Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 203
    .local v6, "text":Ljava/lang/String;
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v9, :cond_3

    .line 206
    iget v9, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mSingleChoiceIndex:I

    const/16 v10, 0x4e25

    if-ne v9, v10, :cond_10

    .line 207
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_6

    .line 209
    :cond_10
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_6

    .line 212
    .end local v6    # "text":Ljava/lang/String;
    :cond_11
    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    .line 213
    iget-object v9, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;

    iget-object v0, v9, Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    check-cast v0, Landroid/accounts/Account;

    .line 214
    .local v0, "account":Landroid/accounts/Account;
    iget-object v9, v2, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x4

    return v0
.end method

.method public setSingleChoice(Z)V
    .locals 0
    .param p1, "singleChoice"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mSingleChoice:Z

    .line 72
    return-void
.end method

.method public setSingleChoiceIndex(I)V
    .locals 0
    .param p1, "singleChoiceIndex"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter;->mSingleChoiceIndex:I

    .line 80
    return-void
.end method
