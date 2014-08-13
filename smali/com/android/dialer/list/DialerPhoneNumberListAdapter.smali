.class public Lcom/android/dialer/list/DialerPhoneNumberListAdapter;
.super Lcom/android/contacts/common/list/PhoneNumberListAdapter;
.source "DialerPhoneNumberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/DialerPhoneNumberListAdapter$1;,
        Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final SHORTCUT_ADD_NUMBER_TO_CONTACTS:I = 0x1

.field public static final SHORTCUT_COUNT:I = 0x2

.field public static final SHORTCUT_DIRECT_CALL:I = 0x0

.field public static final SHORTCUT_INVALID:I = -0x1


# instance fields
.field private final CALL_GEOCODED_LOCATION_INDEX:I

.field private final CALL_LOG_DATE_INDEX:I

.field private final CALL_LOG_ID_INDEX:I

.field private final CALL_TYPE_INDEX:I

.field private final CONTACT_ID_INDEX:I

.field private final CONTACT_NAME_LOOKUP_INDEX:I

.field private final CONTACT_STARRED_INDEX:I

.field private final DATA_ID_INDEX:I

.field private final DS_MATCHED_DATA_DIVIDER:I

.field private final DS_MATCHED_DATA_INIT_POS:I

.field private final DS_MATCHED_DATA_OFFSETS:I

.field private final DS_MATCHED_NAME_OFFSETS:I

.field private final INDICATE_PHONE_SIM_INDEX:I

.field private final IS_SDN_CONTACT:I

.field private final NAME_INDEX:I

.field private final NAME_LOOKUP_ID_INDEX:I

.field private final NUMBER_TYPE_EMERGENCY:I

.field private final NUMBER_TYPE_NORMAL:I

.field private final NUMBER_TYPE_PAYPHONE:I

.field private final NUMBER_TYPE_PRIVATE:I

.field private final NUMBER_TYPE_UNKNOWN:I

.field private final NUMBER_TYPE_VOICEMAIL:I

.field private final PHOTO_ID_INDEX:I

.field private final SEARCH_PHONE_NUMBER_INDEX:I

.field private final SEARCH_PHONE_TYPE_INDEX:I

.field private final SIM_ID_INDEX:I

.field private final TAG:Ljava/lang/String;

.field private final VIEW_TYPE_CALL_LOG:I

.field private final VIEW_TYPE_CONTACT:I

.field private final VIEW_TYPE_UNKNOWN:I

.field private final VTCALL:I

.field private mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

.field private mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mCountryIso:Ljava/lang/String;

.field private mEmergency:Ljava/lang/String;

.field private mFormattedQueryString:Ljava/lang/String;

.field private mHyphonManager:Lcom/mediatek/phone/HyphonManager;

.field private mOperatorHorizontalPaddingLeft:I

.field private mOperatorHorizontalPaddingRight:I

.field private mOperatorVerticalPadding:I

.field private mPayphoneNumber:Ljava/lang/String;

.field private mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

.field private mPrivateNumber:Ljava/lang/String;

.field private final mShortcutEnabled:[Z

.field private mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

.field private mUnknownNumber:Ljava/lang/String;

.field private mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

.field private mVoiceMail:Ljava/lang/String;

.field private mVoiceMailNumber:Ljava/lang/String;

.field private mVoiceMailNumber2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 71
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 68
    new-array v1, v5, [Z

    iput-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    .line 210
    const-string v1, "DialerPhoneNumberListAdapter"

    iput-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->TAG:Ljava/lang/String;

    .line 212
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->VIEW_TYPE_UNKNOWN:I

    .line 213
    iput v4, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->VIEW_TYPE_CONTACT:I

    .line 214
    iput v2, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->VIEW_TYPE_CALL_LOG:I

    .line 216
    iput v4, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->NUMBER_TYPE_NORMAL:I

    .line 217
    iput v2, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->NUMBER_TYPE_UNKNOWN:I

    .line 218
    iput v5, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->NUMBER_TYPE_VOICEMAIL:I

    .line 219
    iput v3, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->NUMBER_TYPE_PRIVATE:I

    .line 220
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->NUMBER_TYPE_PAYPHONE:I

    .line 221
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->NUMBER_TYPE_EMERGENCY:I

    .line 223
    iput v3, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->DS_MATCHED_DATA_INIT_POS:I

    .line 224
    iput v3, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->DS_MATCHED_DATA_DIVIDER:I

    .line 226
    iput v4, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->NAME_LOOKUP_ID_INDEX:I

    .line 227
    iput v2, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->CONTACT_ID_INDEX:I

    .line 228
    iput v5, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->DATA_ID_INDEX:I

    .line 229
    iput v3, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->CALL_LOG_DATE_INDEX:I

    .line 230
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->CALL_LOG_ID_INDEX:I

    .line 231
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->CALL_TYPE_INDEX:I

    .line 232
    iput v6, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->CALL_GEOCODED_LOCATION_INDEX:I

    .line 233
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->SIM_ID_INDEX:I

    .line 234
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->VTCALL:I

    .line 235
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->INDICATE_PHONE_SIM_INDEX:I

    .line 236
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->CONTACT_STARRED_INDEX:I

    .line 237
    const/16 v1, 0xb

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->PHOTO_ID_INDEX:I

    .line 238
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->SEARCH_PHONE_TYPE_INDEX:I

    .line 239
    const/16 v1, 0xd

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->NAME_INDEX:I

    .line 240
    const/16 v1, 0xe

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->SEARCH_PHONE_NUMBER_INDEX:I

    .line 241
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->CONTACT_NAME_LOOKUP_INDEX:I

    .line 242
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->IS_SDN_CONTACT:I

    .line 243
    const/16 v1, 0x11

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->DS_MATCHED_DATA_OFFSETS:I

    .line 244
    const/16 v1, 0x12

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->DS_MATCHED_NAME_OFFSETS:I

    .line 266
    new-array v1, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    .line 267
    new-array v1, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-static {p1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mCountryIso:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    aput-boolean v2, v1, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->initResources(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method private assignShortcutToView(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 7
    .param p1, "v"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "shortcutType"    # I

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 176
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "number":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 187
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid shortcut type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 179
    :pswitch_0
    const v4, 0x7f0a05d5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "text":Ljava/lang/CharSequence;
    const v0, 0x7f0200e5

    .line 189
    .local v0, "drawableId":I
    :goto_0
    const v4, 0x7f02011b

    invoke-virtual {p1, v4, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setDrawableResource(II)V

    .line 190
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 191
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPhotoPosition()Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    .line 192
    return-void

    .line 183
    .end local v0    # "drawableId":I
    .end local v3    # "text":Ljava/lang/CharSequence;
    :pswitch_1
    const v4, 0x7f0a05d6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    .restart local v3    # "text":Ljava/lang/CharSequence;
    const v0, 0x7f02007c

    .line 185
    .restart local v0    # "drawableId":I
    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private bindCallLogView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 31
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 491
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;

    .line 493
    .local v25, "viewHolder":Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->callType:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    const/16 v26, 0xe

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 499
    .local v17, "number":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mHyphonManager:Lcom/mediatek/phone/HyphonManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->numberLeftToRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 500
    .local v12, "formatNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getNumberType(Ljava/lang/String;)I

    move-result v18

    .line 502
    .local v18, "numberType":I
    const/16 v26, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 503
    .local v23, "type":I
    const/16 v26, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 504
    .local v24, "videoCall":I
    const/16 v26, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 505
    .local v21, "simId":I
    const/16 v26, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 506
    .local v7, "date":J
    const/16 v26, 0x9

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 507
    .local v15, "indicate":I
    const/16 v26, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 511
    .local v13, "geocode":Ljava/lang/String;
    const-string v26, "DialerPhoneNumberListAdapter"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "bindCallLogView : type = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " videoCall = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " simId = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " number = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " geocode = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "formatNumber = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const/16 v26, 0xb

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 515
    .local v19, "photoId":J
    if-lez v15, :cond_0

    .line 516
    const/16 v26, 0x10

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 517
    .local v16, "isSdnContact":I
    invoke-static/range {v15 .. v16}, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->getSimType(II)J

    move-result-wide v19

    .line 520
    .end local v16    # "isSdnContact":I
    :cond_0
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->quickContactBadge:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignContactUri(Landroid/net/Uri;)V

    .line 521
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->quickContactBadge:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v27

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->quickContactBadge:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-wide/from16 v2, v19

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 525
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a05a5

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 529
    :cond_1
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->isSpecialNumber(I)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 532
    const/16 v26, 0x2

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    const/16 v26, 0x5

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 533
    :cond_2
    const/16 v26, 0x2

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 534
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mVoiceMail:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    :goto_0
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v14

    .line 541
    .local v14, "highlight":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 542
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v12, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v22

    .line 543
    .local v22, "style":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    .end local v14    # "highlight":Ljava/lang/String;
    .end local v22    # "style":Landroid/text/SpannableStringBuilder;
    :cond_3
    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    .line 564
    .local v9, "dateFormat":Ljava/text/DateFormat;
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 565
    .local v10, "dateString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->getSimDisplayNameById(I)Ljava/lang/String;

    move-result-object v11

    .line 566
    .local v11, "display":Ljava/lang/String;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    .line 569
    .local v5, "callTypeDrawables":[Landroid/graphics/drawable/Drawable;
    :goto_2
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->callType:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    aget-object v27, v5, v23

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_a

    .line 572
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->getSimColorDrawableById(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mOperatorHorizontalPaddingLeft:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mOperatorVerticalPadding:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mOperatorHorizontalPaddingRight:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mOperatorVerticalPadding:I

    move/from16 v30, v0

    invoke-virtual/range {v26 .. v30}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 576
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x10

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setGravity(I)V

    .line 580
    :goto_3
    return-void

    .line 536
    .end local v5    # "callTypeDrawables":[Landroid/graphics/drawable/Drawable;
    .end local v9    # "dateFormat":Ljava/text/DateFormat;
    .end local v10    # "dateString":Ljava/lang/String;
    .end local v11    # "display":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mEmergency:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 545
    .restart local v14    # "highlight":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 548
    .end local v14    # "highlight":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->specialNumberToString(I)Ljava/lang/String;

    move-result-object v6

    .line 549
    .local v6, "convert":Ljava/lang/String;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 552
    .end local v6    # "convert":Ljava/lang/String;
    :cond_7
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 553
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v14

    .line 554
    .restart local v14    # "highlight":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_8

    .line 555
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v12, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v22

    .line 556
    .restart local v22    # "style":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 558
    .end local v22    # "style":Landroid/text/SpannableStringBuilder;
    :cond_8
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 568
    .end local v14    # "highlight":Ljava/lang/String;
    .restart local v9    # "dateFormat":Ljava/text/DateFormat;
    .restart local v10    # "dateString":Ljava/lang/String;
    .restart local v11    # "display":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 578
    .restart local v5    # "callTypeDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_a
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 23
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 375
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;

    .line 376
    .local v19, "viewHolder":Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->callType:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    const/16 v20, 0xe

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 382
    .local v12, "number":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mHyphonManager:Lcom/mediatek/phone/HyphonManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/mediatek/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->numberLeftToRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "formatNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getNumberType(Ljava/lang/String;)I

    move-result v13

    .line 385
    .local v13, "numberType":I
    const/16 v20, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 386
    .local v16, "simId":I
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v17

    .line 387
    .local v17, "slotID":I
    invoke-static/range {v17 .. v17}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getVoiceMailNumberForSlot(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mVoiceMailNumber:Ljava/lang/String;

    .line 389
    const/16 v20, 0xc

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 390
    .local v10, "labelType":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v10, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 392
    .local v9, "label":Ljava/lang/CharSequence;
    const/16 v20, 0xd

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 400
    .local v11, "name":Ljava/lang/CharSequence;
    const-string v20, "DialerPhoneNumberListAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "bindContactView. name = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " number = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " label = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v3

    .line 403
    .local v3, "contactUri":Landroid/net/Uri;
    const-string v20, "DialerPhoneNumberListAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "bindContactView, contactUri: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/16 v20, 0xb

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 406
    .local v14, "photoId":J
    const/16 v20, 0x9

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 408
    .local v7, "indicate":I
    if-lez v7, :cond_0

    .line 409
    const/16 v20, 0x10

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 410
    .local v8, "isSdnContact":I
    invoke-static {v7, v8}, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->getSimType(II)J

    move-result-wide v14

    .line 413
    .end local v8    # "isSdnContact":I
    :cond_0
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v13, v0, :cond_1

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v13, v0, :cond_4

    .line 414
    :cond_1
    const-wide/16 v14, 0x0

    .line 415
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->quickContactBadge:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 416
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->quickContactBadge:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignContactUri(Landroid/net/Uri;)V

    .line 422
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->quickContactBadge:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v14, v15, v2}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 424
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->isSpecialNumber(I)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 425
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v13, v0, :cond_2

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v13, v0, :cond_7

    .line 426
    :cond_2
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v13, v0, :cond_5

    .line 427
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mVoiceMail:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    :goto_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 434
    .local v6, "highlight":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 435
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5, v12}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    .line 436
    .local v18, "style":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    .end local v6    # "highlight":Ljava/lang/String;
    .end local v18    # "style":Landroid/text/SpannableStringBuilder;
    :cond_3
    :goto_2
    return-void

    .line 418
    :cond_4
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->quickContactBadge:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 419
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->quickContactBadge:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 429
    :cond_5
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mEmergency:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 438
    .restart local v6    # "highlight":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 441
    .end local v6    # "highlight":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->specialNumberToString(I)Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "convert":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 446
    .end local v4    # "convert":Ljava/lang/String;
    :cond_8
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 448
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getNameHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 449
    .restart local v6    # "highlight":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 450
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->highlightString(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    .line 451
    .restart local v18    # "style":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->isRegularSearch(Landroid/database/Cursor;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 455
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->highlightName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    .end local v18    # "style":Landroid/text/SpannableStringBuilder;
    :cond_9
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 463
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 464
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5, v12}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    .line 465
    .restart local v18    # "style":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v9, v2}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->setLabelAndNumber(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_2

    .line 458
    .end local v18    # "style":Landroid/text/SpannableStringBuilder;
    :cond_a
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 467
    :cond_b
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v9, v5}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->setLabelAndNumber(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 471
    .end local v6    # "highlight":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 475
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 476
    .restart local v6    # "highlight":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 477
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5, v12}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    .line 478
    .restart local v18    # "style":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 480
    .end local v18    # "style":Landroid/text/SpannableStringBuilder;
    :cond_d
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 483
    .end local v6    # "highlight":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private createViewHolder()Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;
    .locals 2

    .prologue
    .line 731
    new-instance v0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;-><init>(Lcom/android/dialer/list/DialerPhoneNumberListAdapter;Lcom/android/dialer/list/DialerPhoneNumberListAdapter$1;)V

    .line 732
    .local v0, "viewHolder":Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;
    return-object v0
.end method

.method private getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 610
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, "lookup":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 612
    .local v0, "contactId":I
    int-to-long v2, v0

    invoke-static {v2, v3, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private getNameHighlight(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 660
    const-string v1, "matched_name_offsets"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 661
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 673
    const-string v1, "matched_data_offsets"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 674
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNumberType(Ljava/lang/String;)I
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "type":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 606
    .end local v0    # "type":I
    .local v1, "type":I
    :goto_0
    return v1

    .line 588
    .end local v1    # "type":I
    .restart local v0    # "type":I
    :cond_0
    const-string v2, "-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 589
    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v1, v0

    .line 606
    .end local v0    # "type":I
    .restart local v1    # "type":I
    goto :goto_0

    .line 590
    .end local v1    # "type":I
    .restart local v0    # "type":I
    :cond_2
    const-string v2, "-2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 591
    const/4 v0, 0x3

    goto :goto_1

    .line 592
    :cond_3
    const-string v2, "-3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 593
    const/4 v0, 0x4

    goto :goto_1

    .line 601
    :cond_4
    iget-object v2, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mVoiceMailNumber:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 602
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private getViewType(Landroid/database/Cursor;)I
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 319
    const/4 v2, -0x1

    .line 320
    .local v2, "retval":I
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 321
    .local v1, "contactId":I
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 323
    .local v0, "callLogId":I
    const-string v3, "DialerPhoneNumberListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getViewType: contactId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,callLogId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    if-lez v1, :cond_1

    .line 326
    const/4 v2, 0x0

    .line 331
    :cond_0
    :goto_0
    return v2

    .line 327
    :cond_1
    if-lez v0, :cond_0

    .line 328
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "highlight"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "origin"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 643
    if-nez p2, :cond_1

    .line 644
    const-string v2, "DialerPhoneNumberListAdapter"

    const-string v3, "[highlightHyphon] target is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v1, 0x0

    .line 656
    :cond_0
    :goto_0
    return-object v1

    .line 647
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 648
    .local v1, "style":Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p3}, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->adjustHighlitePositionForHyphen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 650
    .local v0, "numberHighlightOffset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 651
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x21

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private highlightName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "highlight"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/CharSequence;

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "highlightedPrefix":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 636
    new-instance v1, Lcom/android/contacts/common/format/TextHighlighter;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/contacts/common/format/TextHighlighter;-><init>(I)V

    iput-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    .line 637
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    invoke-virtual {v1, p2, v0}, Lcom/android/contacts/common/format/TextHighlighter;->applyPrefixHighlight(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 639
    :cond_0
    return-object p2
.end method

.method private highlightString(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 7
    .param p1, "highlight"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/CharSequence;

    .prologue
    .line 620
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 621
    .local v2, "style":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 622
    .local v1, "length":I
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 623
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-gt v3, v4, :cond_0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 630
    :cond_0
    return-object v2

    .line 627
    :cond_1
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 622
    add-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method private initResources(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 272
    invoke-static {}, Lcom/mediatek/phone/HyphonManager;->getInstance()Lcom/mediatek/phone/HyphonManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mHyphonManager:Lcom/mediatek/phone/HyphonManager;

    .line 273
    invoke-static {p1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 274
    new-instance v1, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mEmergency:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0182

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mVoiceMail:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mPrivateNumber:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mPayphoneNumber:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mUnknownNumber:Ljava/lang/String;

    .line 281
    new-instance v1, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    .line 285
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    .line 287
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v5

    .line 289
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v6

    .line 292
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020152

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v7

    .line 294
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020151

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v8

    .line 297
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    .line 299
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v5

    .line 301
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v6

    .line 304
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020152

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v7

    .line 306
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v8

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 310
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mOperatorVerticalPadding:I

    .line 311
    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mOperatorHorizontalPaddingRight:I

    .line 313
    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mOperatorHorizontalPaddingLeft:I

    .line 315
    return-void
.end method

.method private isRegularSearch(Landroid/database/Cursor;)Z
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 665
    const-string v2, "matched_data_offsets"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 666
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "regularSearch":Ljava/lang/String;
    :goto_0
    const-string v2, "DialerPhoneNumberListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 666
    .end local v1    # "regularSearch":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSpecialNumber(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 616
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private numberLeftToRight(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 737
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "origin":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "origin":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x202d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x202c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private setLabelAndNumber(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "number"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 678
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    :goto_0
    return-void

    .line 682
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 684
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 685
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 687
    :cond_2
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 688
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setLabelAndNumber(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 693
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    :goto_0
    return-void

    .line 698
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 700
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 701
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 703
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private specialNumberToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 708
    packed-switch p1, :pswitch_data_0

    .line 718
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 710
    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mUnknownNumber:Ljava/lang/String;

    goto :goto_0

    .line 712
    :pswitch_2
    iget-object v0, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mPrivateNumber:Ljava/lang/String;

    goto :goto_0

    .line 714
    :pswitch_3
    iget-object v0, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mPayphoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 708
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 336
    const-string v1, "DialerPhoneNumberListAdapter"

    const-string v2, "---bindView---begin"

    invoke-static {v1, v2}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-direct {p0, p3}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getViewType(Landroid/database/Cursor;)I

    move-result v0

    .line 340
    .local v0, "viewType":I
    packed-switch v0, :pswitch_data_0

    .line 350
    :goto_0
    const-string v1, "DialerPhoneNumberListAdapter"

    const-string v2, "---bindView---end"

    invoke-static {v1, v2}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void

    .line 342
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 345
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->bindCallLogView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFormattedQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mFormattedQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutTypeFromPosition(I)I

    move-result v0

    .line 104
    .local v0, "shortcut":I
    if-ltz v0, :cond_0

    .line 106
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v1, v0

    .line 108
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_0
.end method

.method public getShortcutCount()I
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 95
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_1
    return v0
.end method

.method public getShortcutTypeFromPosition(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCount()I

    move-result v2

    sub-int v1, p1, v2

    .line 142
    .local v1, "shortcutCount":I
    if-ltz v1, :cond_2

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 147
    add-int/lit8 v1, v1, -0x1

    .line 148
    if-gez v1, :cond_0

    .line 154
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 145
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid position - greater than cursor count  but not a shortcut."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutTypeFromPosition(I)I

    move-result v0

    .line 121
    .local v0, "shortcutType":I
    if-ltz v0, :cond_1

    .line 122
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 123
    check-cast v2, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-direct {p0, v2, v0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->assignShortcutToView(Lcom/android/contacts/common/list/ContactListItemView;I)V

    .line 131
    .end local p2    # "convertView":Landroid/view/View;
    :goto_0
    return-object p2

    .line 126
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    new-instance v1, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    .local v1, "v":Lcom/android/contacts/common/list/ContactListItemView;
    invoke-direct {p0, v1, v0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->assignShortcutToView(Lcom/android/contacts/common/list/ContactListItemView;I)V

    move-object p2, v1

    .line 128
    goto :goto_0

    .line 131
    .end local v1    # "v":Lcom/android/contacts/common/list/ContactListItemView;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutTypeFromPosition(I)I

    move-result v0

    .line 165
    .local v0, "shortcutType":I
    if-ltz v0, :cond_0

    .line 166
    const/4 v1, 0x1

    .line 168
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isEnabled(I)Z

    move-result v1

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 356
    const-string v2, "DialerPhoneNumberListAdapter"

    const-string v3, "---newView---begin"

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const v2, 0x7f040042

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->createViewHolder()Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;

    move-result-object v1

    .line 361
    .local v1, "viewHolder":Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;
    const v2, 0x7f0d0094

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 362
    const v2, 0x7f0d0120

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    .line 363
    const v2, 0x7f0d0121

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->callType:Landroid/widget/ImageView;

    .line 364
    const v2, 0x7f0d0122

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    .line 365
    const v2, 0x7f0d0064

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 366
    const v2, 0x7f0d0093

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    iput-object v2, v1, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->quickContactBadge:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    .line 367
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 369
    const-string v2, "DialerPhoneNumberListAdapter"

    const-string v3, "---newView---end"

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-object v0
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertAndStrip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mCountryIso:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mFormattedQueryString:Ljava/lang/String;

    .line 206
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public setShortcutEnabled(IZ)V
    .locals 1
    .param p1, "shortcutType"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    aput-boolean p2, v0, p1

    .line 196
    return-void
.end method
