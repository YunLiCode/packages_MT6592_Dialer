.class public Lcom/android/dialer/PhoneCallDetailsHelper;
.super Ljava/lang/Object;
.source "PhoneCallDetailsHelper.java"


# static fields
.field private static final MAX_CALL_TYPE_ICONS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PhoneCallDetailsHelper"


# instance fields
.field private final mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

.field private mContext:Landroid/content/Context;

.field private mCurrentTimeMillisForTest:Ljava/lang/Long;

.field private final mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

.field private final mPhoneNumberUtilsWrapper:Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/dialer/calllog/CallTypeHelper;Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "callTypeHelper"    # Lcom/android/dialer/calllog/CallTypeHelper;
    .param p3, "phoneUtils"    # Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    .line 78
    iput-object p2, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    .line 79
    new-instance v0, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    invoke-direct {v0, p1}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    .line 80
    iput-object p3, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberUtilsWrapper:Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/dialer/calllog/CallTypeHelper;Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;Landroid/content/Context;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "callTypeHelper"    # Lcom/android/dialer/calllog/CallTypeHelper;
    .param p3, "phoneUtils"    # Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    .line 256
    iput-object p2, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    .line 257
    new-instance v0, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    invoke-direct {v0, p1}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    .line 258
    iput-object p3, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberUtilsWrapper:Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    .line 259
    iput-object p4, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    .line 260
    return-void
.end method

.method private addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 242
    const/16 v0, 0x12

    .line 243
    .local v0, "flags":I
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 244
    .local v1, "result":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 245
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 246
    return-object v1
.end method

.method private getCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 213
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private setCallCountAndDate(Lcom/android/dialer/PhoneCallDetailsViews;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "views"    # Lcom/android/dialer/PhoneCallDetailsViews;
    .param p2, "callCount"    # Ljava/lang/Integer;
    .param p3, "dateText"    # Ljava/lang/CharSequence;
    .param p4, "highlightColor"    # Ljava/lang/Integer;

    .prologue
    .line 222
    if-eqz p2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a057d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_0
    if-eqz p4, :cond_1

    .line 232
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/dialer/PhoneCallDetailsHelper;->addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 237
    .local v0, "formattedText":Ljava/lang/CharSequence;
    :goto_1
    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetailsViews;->callTypeAndDate:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    return-void

    .line 226
    .end local v0    # "formattedText":Ljava/lang/CharSequence;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    move-object v1, p3

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 234
    :cond_1
    move-object v0, v1

    .restart local v0    # "formattedText":Ljava/lang/CharSequence;
    goto :goto_1
.end method


# virtual methods
.method public setCallDetailsHeader(Landroid/widget/TextView;Lcom/android/dialer/PhoneCallDetails;)V
    .locals 6
    .param p1, "nameView"    # Landroid/widget/TextView;
    .param p2, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 189
    iget-object v2, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    iget-object v3, p2, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a055f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 190
    .local v0, "displayNumber":Ljava/lang/CharSequence;
    iget-object v2, p2, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    move-object v1, v0

    .line 196
    .local v1, "nameText":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-void

    .line 193
    .end local v1    # "nameText":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p2, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .restart local v1    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public setCurrentTimeForTest(J)V
    .locals 1
    .param p1, "currentTimeMillis"    # J
    .annotation build Lcom/android/contacts/common/test/NeededForTesting;
    .end annotation

    .prologue
    .line 201
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    .line 202
    return-void
.end method

.method public setPhoneCallDetails(Lcom/android/dialer/PhoneCallDetailsViews;Lcom/android/dialer/PhoneCallDetails;Z)V
    .locals 19
    .param p1, "views"    # Lcom/android/dialer/PhoneCallDetailsViews;
    .param p2, "details"    # Lcom/android/dialer/PhoneCallDetails;
    .param p3, "isHighlighted"    # Z

    .prologue
    .line 87
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-virtual {v2}, Lcom/android/dialer/calllog/CallTypeIconsView;->clear()V

    .line 88
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    array-length v10, v2

    .line 89
    .local v10, "count":I
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_0
    if-ge v14, v10, :cond_0

    const/4 v2, 0x3

    if-ge v14, v2, :cond_0

    .line 94
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    aget v3, v3, v14

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/dialer/PhoneCallDetails;->isVtCall:I

    invoke-virtual {v2, v3, v4}, Lcom/android/dialer/calllog/CallTypeIconsView;->add(II)V

    .line 89
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 97
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-virtual {v2}, Lcom/android/dialer/calllog/CallTypeIconsView;->requestLayout()V

    .line 98
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/dialer/calllog/CallTypeIconsView;->setVisibility(I)V

    .line 102
    const/4 v2, 0x3

    if-le v10, v2, :cond_3

    .line 103
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 108
    .local v9, "callCount":Ljava/lang/Integer;
    :goto_1
    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/dialer/calllog/CallTypeHelper;->getHighlightedColor(I)Ljava/lang/Integer;

    move-result-object v13

    .line 112
    .local v13, "highlightColor":Ljava/lang/Integer;
    :goto_2
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/dialer/PhoneCallDetails;->date:J

    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/PhoneCallDetailsHelper;->getCurrentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    const/high16 v8, 0x40000

    invoke-static/range {v2 .. v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v11

    .line 119
    .local v11, "dateText":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/dialer/PhoneCallDetails;->date:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 125
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v11, v13}, Lcom/android/dialer/PhoneCallDetailsHelper;->setCallCountAndDate(Lcom/android/dialer/PhoneCallDetailsViews;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    .line 129
    invoke-virtual/range {p0 .. p2}, Lcom/android/dialer/PhoneCallDetailsHelper;->updateNameAndLabelForEcc(Lcom/android/dialer/PhoneCallDetailsViews;Lcom/android/dialer/PhoneCallDetails;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p2}, Lcom/android/dialer/PhoneCallDetailsHelper;->updateNameAndLabelForVoiceMail(Lcom/android/dialer/PhoneCallDetailsViews;Lcom/android/dialer/PhoneCallDetails;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 131
    :cond_2
    const-string v2, "PhoneCallDetailsHelper"

    const-string v3, "setPhoneCallDetails: updateNameAndLabelForEcc or updateNameAndLabelForVoiceMail"

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_3
    return-void

    .line 105
    .end local v9    # "callCount":Ljava/lang/Integer;
    .end local v11    # "dateText":Ljava/lang/CharSequence;
    .end local v13    # "highlightColor":Ljava/lang/Integer;
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "callCount":Ljava/lang/Integer;
    goto :goto_1

    .line 108
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 136
    .restart local v11    # "dateText":Ljava/lang/CharSequence;
    .restart local v13    # "highlightColor":Ljava/lang/Integer;
    :cond_5
    const/16 v17, 0x0

    .line 138
    .local v17, "numberFormattedLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 140
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    sget-object v3, Lcom/android/dialer/calllog/ContactInfo;->GEOCODE_AS_LABEL:Ljava/lang/String;

    if-ne v2, v3, :cond_8

    .line 141
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 151
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 152
    .local v12, "displayNumber":Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 158
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0151

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 164
    .local v16, "nameText":Ljava/lang/CharSequence;
    :goto_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberUtilsWrapper:Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 166
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a05a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 170
    .local v18, "numberText":Ljava/lang/CharSequence;
    :goto_6
    move-object/from16 v15, v18

    .line 172
    .local v15, "labelText":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 180
    :goto_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsViews;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/dialer/PhoneCallDetailsViews;->labelView:Landroid/widget/TextView;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x8

    :goto_8
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 143
    .end local v12    # "displayNumber":Ljava/lang/CharSequence;
    .end local v15    # "labelText":Ljava/lang/CharSequence;
    .end local v16    # "nameText":Ljava/lang/CharSequence;
    .end local v18    # "numberText":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/dialer/PhoneCallDetails;->numberType:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    goto/16 :goto_4

    .line 161
    .restart local v12    # "displayNumber":Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v16, v12

    .restart local v16    # "nameText":Ljava/lang/CharSequence;
    goto :goto_5

    .line 168
    :cond_a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    move-object/from16 v18, v0

    .restart local v18    # "numberText":Ljava/lang/CharSequence;
    goto :goto_6

    .line 174
    .end local v16    # "nameText":Ljava/lang/CharSequence;
    .end local v18    # "numberText":Ljava/lang/CharSequence;
    :cond_b
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    .line 175
    .restart local v16    # "nameText":Ljava/lang/CharSequence;
    move-object/from16 v18, v12

    .line 176
    .restart local v18    # "numberText":Ljava/lang/CharSequence;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v15, v18

    .restart local v15    # "labelText":Ljava/lang/CharSequence;
    :goto_9
    goto :goto_7

    .end local v15    # "labelText":Ljava/lang/CharSequence;
    :cond_c
    move-object/from16 v15, v17

    goto :goto_9

    .line 183
    .restart local v15    # "labelText":Ljava/lang/CharSequence;
    :cond_d
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public updateNameAndLabelForEcc(Lcom/android/dialer/PhoneCallDetailsViews;Lcom/android/dialer/PhoneCallDetails;)Z
    .locals 4
    .param p1, "views"    # Lcom/android/dialer/PhoneCallDetailsViews;
    .param p2, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 263
    iget-object v1, p2, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget v2, p2, Lcom/android/dialer/PhoneCallDetails;->simId:I

    invoke-static {v1, v2}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isECCNumber(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 265
    .local v0, "isEmergencyNumber":Z
    if-eqz v0, :cond_0

    .line 266
    iget-object v1, p1, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a03a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v1, p1, Lcom/android/dialer/PhoneCallDetailsViews;->labelView:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetailsViews;->labelView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    :cond_0
    return v0

    .line 268
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateNameAndLabelForVoiceMail(Lcom/android/dialer/PhoneCallDetailsViews;Lcom/android/dialer/PhoneCallDetails;)Z
    .locals 4
    .param p1, "views"    # Lcom/android/dialer/PhoneCallDetailsViews;
    .param p2, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 274
    iget-object v1, p2, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget v2, p2, Lcom/android/dialer/PhoneCallDetails;->simId:I

    invoke-static {v1, v2}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isSimVoiceMailNumber(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 275
    .local v0, "isVoiceMailNumber":Z
    if-eqz v0, :cond_0

    .line 276
    iget-object v1, p1, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0182

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v1, p1, Lcom/android/dialer/PhoneCallDetailsViews;->labelView:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetailsViews;->labelView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    :cond_0
    return v0

    .line 278
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
