.class public Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;
.super Ljava/lang/Object;
.source "PhoneCallDetailsHelperEx.java"


# static fields
.field private static final MAX_CALL_TYPE_ICONS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhoneCallDetailsHelper"


# instance fields
.field private final mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

.field private final mCallTypeHelper:Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTimeMillisForTest:Ljava/lang/Long;

.field private mLPadding:I

.field private final mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

.field private mRPadding:I

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;Landroid/content/Context;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "callTypeHelper"    # Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;
    .param p3, "phoneNumberHelper"    # Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;
    .param p4, "callLogSimInfoHelper"    # Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mResources:Landroid/content/res/Resources;

    .line 338
    iput-object p2, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mCallTypeHelper:Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;

    .line 339
    iput-object p3, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    .line 340
    iput-object p4, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    .line 341
    iput-object p5, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mContext:Landroid/content/Context;

    .line 342
    iget-object v0, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mRPadding:I

    .line 343
    iget-object v0, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mLPadding:I

    .line 345
    return-void
.end method

.method private addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 321
    const/16 v0, 0x12

    .line 322
    .local v0, "flags":I
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 323
    .local v1, "result":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 324
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 325
    return-object v1
.end method

.method private getCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 288
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 403
    const-string v0, "PhoneCallDetailsHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void
.end method

.method private setCallCount(Landroid/widget/TextView;ILjava/lang/Integer;)V
    .locals 7
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "callCount"    # I
    .param p3, "highlightColor"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 377
    const-string v1, ""

    .line 378
    .local v1, "text":Ljava/lang/CharSequence;
    if-le p2, v4, :cond_0

    .line 381
    iget-object v2, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0395

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    :goto_0
    if-eqz p3, :cond_1

    .line 394
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 399
    .local v0, "formattedText":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    return-void

    .line 388
    .end local v0    # "formattedText":Ljava/lang/CharSequence;
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 396
    :cond_1
    move-object v0, v1

    .restart local v0    # "formattedText":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method private setCallDate(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "dateText"    # Ljava/lang/CharSequence;
    .param p3, "highlightColor"    # Ljava/lang/Integer;

    .prologue
    .line 364
    if-eqz p3, :cond_0

    .line 365
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 370
    .local v0, "formattedText":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    return-void

    .line 367
    .end local v0    # "formattedText":Ljava/lang/CharSequence;
    :cond_0
    move-object v0, p2

    .restart local v0    # "formattedText":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private setSimInfo(Landroid/widget/TextView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "simName"    # Ljava/lang/String;
    .param p3, "simColor"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x1

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimInfo() simName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->log(Ljava/lang/String;)V

    .line 350
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const-string v0, "setSimInfo() simName is null or   simColor is null, simname will not show"

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->log(Ljava/lang/String;)V

    .line 352
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    :goto_0
    return-void

    .line 355
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iget v0, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mLPadding:I

    iget v1, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mRPadding:I

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public setCallDetailsHeader(Landroid/widget/TextView;Lcom/mediatek/dialer/PhoneCallDetailsEx;)V
    .locals 6
    .param p1, "nameView"    # Landroid/widget/TextView;
    .param p2, "details"    # Lcom/mediatek/dialer/PhoneCallDetailsEx;

    .prologue
    .line 252
    iget-object v2, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    iget-object v3, p2, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a055f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 255
    .local v0, "displayNumber":Ljava/lang/CharSequence;
    iget-object v2, p2, Lcom/mediatek/dialer/PhoneCallDetailsEx;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 258
    iget-object v2, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    iget-object v3, p2, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/mediatek/dialer/PhoneCallDetailsEx;->contactUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a04b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "nameText":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    return-void

    .line 260
    .end local v1    # "nameText":Ljava/lang/CharSequence;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    iget-object v3, p2, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    iget v4, p2, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isVoicemailNumber(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    iget-object v2, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0182

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 262
    .end local v1    # "nameText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    iget-object v3, p2, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    iget v4, p2, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isEmergencyNumber(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    iget-object v2, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a03a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 265
    .end local v1    # "nameText":Ljava/lang/CharSequence;
    :cond_2
    move-object v1, v0

    .restart local v1    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 269
    .end local v1    # "nameText":Ljava/lang/CharSequence;
    :cond_3
    iget-object v1, p2, Lcom/mediatek/dialer/PhoneCallDetailsEx;->name:Ljava/lang/CharSequence;

    .restart local v1    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public setCurrentTimeForTest(J)V
    .locals 1
    .param p1, "currentTimeMillis"    # J
    .annotation build Lcom/android/contacts/common/test/NeededForTesting;
    .end annotation

    .prologue
    .line 276
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    .line 277
    return-void
.end method

.method public setPhoneCallDetails(Lcom/mediatek/dialer/calllog/CallLogListItemView;Lcom/mediatek/dialer/PhoneCallDetailsEx;ZZZ)V
    .locals 16
    .param p1, "views"    # Lcom/mediatek/dialer/calllog/CallLogListItemView;
    .param p2, "details"    # Lcom/mediatek/dialer/PhoneCallDetailsEx;
    .param p3, "isHighlighted"    # Z
    .param p4, "isEmergencyNumber"    # Z
    .param p5, "isVoiceMailNumber"    # Z

    .prologue
    .line 109
    move-object/from16 v0, p2

    iget v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->callType:I

    move-object/from16 v0, p2

    iget v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->vtCall:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->setCallType(II)V

    .line 111
    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mCallTypeHelper:Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;

    move-object/from16 v0, p2

    iget v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->callType:I

    invoke-virtual {v1, v2}, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;->getHighlightedColor(I)Ljava/lang/Integer;

    move-result-object v11

    .line 128
    .local v11, "highlightColor":Ljava/lang/Integer;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->date:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, "dateText":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCallTimeTextView()Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8, v11}, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->setCallDate(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCallCountTextView()Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p2

    iget v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->callCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v11}, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->setCallCount(Landroid/widget/TextView;ILjava/lang/Integer;)V

    .line 133
    const/4 v13, 0x0

    .line 135
    .local v13, "numberFormattedLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    move-object/from16 v0, p2

    iget v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->numberType:I

    if-nez v1, :cond_5

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0459

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 187
    :cond_0
    :goto_1
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    const/4 v7, 0x1

    .line 191
    .local v7, "bSpecialNumber":Z
    :goto_2
    if-eqz p4, :cond_7

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a03a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 193
    .local v12, "nameText":Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    .line 231
    .local v14, "numberText":Ljava/lang/CharSequence;
    :goto_3
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->name:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v7, :cond_f

    :cond_2
    if-nez p4, :cond_f

    if-nez p5, :cond_f

    const/4 v15, 0x1

    .line 233
    .local v15, "onlyNumber":Z
    :goto_4
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v15, :cond_10

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->setCallLogName(Ljava/lang/CharSequence;Z)V

    .line 234
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v15, :cond_11

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->setNumber(Ljava/lang/CharSequence;Z)V

    .line 237
    const-string v1, "setPhoneCallDetails()  MTK_GEMINI_SUPPORT"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->log(Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    if-eqz v1, :cond_3

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getSimNameTextView()Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->getSimDisplayNameById(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->getSimColorDrawableById(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->setSimInfo(Landroid/widget/TextView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 247
    :cond_3
    return-void

    .line 111
    .end local v7    # "bSpecialNumber":Z
    .end local v8    # "dateText":Ljava/lang/String;
    .end local v11    # "highlightColor":Ljava/lang/Integer;
    .end local v12    # "nameText":Ljava/lang/CharSequence;
    .end local v13    # "numberFormattedLabel":Ljava/lang/CharSequence;
    .end local v14    # "numberText":Ljava/lang/CharSequence;
    .end local v15    # "onlyNumber":Z
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 146
    .restart local v8    # "dateText":Ljava/lang/String;
    .restart local v11    # "highlightColor":Ljava/lang/Integer;
    .restart local v13    # "numberFormattedLabel":Ljava/lang/CharSequence;
    :cond_5
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    move-object/from16 v0, p2

    iget v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v5

    .line 147
    .local v5, "slotId":I
    const-string v1, "PhoneCallDetailsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhoneCallDetails() simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/mediatek/contacts/ext/ContactAccountExtension;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->numberType:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->numberLabel:Ljava/lang/CharSequence;

    const-string v6, "ExtensionForAAS"

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    goto/16 :goto_1

    .line 187
    .end local v5    # "slotId":I
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 194
    .restart local v7    # "bSpecialNumber":Z
    :cond_7
    if-eqz p5, :cond_8

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0182

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 196
    .restart local v12    # "nameText":Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    .restart local v14    # "numberText":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 199
    .end local v12    # "nameText":Ljava/lang/CharSequence;
    .end local v14    # "numberText":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 201
    .local v10, "dsplNumber":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v9, v10

    .line 203
    .local v9, "displayNumber":Ljava/lang/CharSequence;
    :goto_7
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->name:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz v7, :cond_d

    .line 206
    :cond_9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v7, :cond_b

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 212
    .restart local v12    # "nameText":Ljava/lang/CharSequence;
    :goto_8
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->geocode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a05a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "numberText":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 201
    .end local v9    # "displayNumber":Ljava/lang/CharSequence;
    .end local v12    # "nameText":Ljava/lang/CharSequence;
    .end local v14    # "numberText":Ljava/lang/CharSequence;
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x202d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x202c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    .line 209
    .restart local v9    # "displayNumber":Ljava/lang/CharSequence;
    :cond_b
    move-object v12, v9

    .restart local v12    # "nameText":Ljava/lang/CharSequence;
    goto :goto_8

    .line 215
    :cond_c
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->geocode:Ljava/lang/String;

    .restart local v14    # "numberText":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 218
    .end local v12    # "nameText":Ljava/lang/CharSequence;
    .end local v14    # "numberText":Ljava/lang/CharSequence;
    :cond_d
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->name:Ljava/lang/CharSequence;

    .line 219
    .restart local v12    # "nameText":Ljava/lang/CharSequence;
    if-eqz v13, :cond_e

    .line 220
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v6, 0x21

    invoke-static {v1, v2, v3, v4, v6}, Lcom/android/contacts/common/format/FormatUtils;->applyStyleToSpan(ILjava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object v14

    .restart local v14    # "numberText":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 226
    .end local v14    # "numberText":Ljava/lang/CharSequence;
    :cond_e
    move-object v14, v9

    .restart local v14    # "numberText":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 231
    .end local v9    # "displayNumber":Ljava/lang/CharSequence;
    .end local v10    # "dsplNumber":Ljava/lang/String;
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 233
    .restart local v15    # "onlyNumber":Z
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 234
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_6
.end method
