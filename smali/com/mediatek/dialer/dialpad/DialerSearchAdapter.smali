.class public Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;
.super Landroid/widget/CursorAdapter;
.source "DialerSearchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;,
        Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;,
        Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$Listener;
    }
.end annotation


# static fields
.field public static final CALL_GEOCODED_LOCATION_INDEX:I = 0x5

.field public static final CALL_LOG_DATE_INDEX:I = 0x2

.field public static final CALL_LOG_ID_INDEX:I = 0x3

.field public static final CALL_TYPE_INDEX:I = 0x4

.field public static final CONTACT_ID_INDEX:I = 0x1

.field public static final CONTACT_NAME_LOOKUP_INDEX:I = 0xe

.field public static final CONTACT_STARRED_INDEX:I = 0x9

.field public static final DS_MATCHED_DATA_DIVIDER:I = 0x3

.field public static final DS_MATCHED_DATA_INIT_POS:I = 0x3

.field public static final DS_MATCHED_DATA_OFFSETS:I = 0x10

.field public static final DS_MATCHED_NAME_OFFSETS:I = 0x11

.field public static final INDICATE_PHONE_SIM_INDEX:I = 0x8

.field public static final IS_SDN_CONTACT:I = 0xf

.field public static final NAME_INDEX:I = 0xc

.field public static final NAME_LOOKUP_ID_INDEX:I = 0x0

.field public static final NUMBER_TYPE_EMERGENCY:I = 0x5

.field public static final NUMBER_TYPE_NORMAL:I = 0x0

.field public static final NUMBER_TYPE_PAYPHONE:I = 0x4

.field public static final NUMBER_TYPE_PRIVATE:I = 0x3

.field public static final NUMBER_TYPE_UNKNOWN:I = 0x1

.field public static final NUMBER_TYPE_VOICEMAIL:I = 0x2

.field public static final PHOTO_ID_INDEX:I = 0xa

.field public static final SEARCH_PHONE_NUMBER_INDEX:I = 0xd

.field public static final SEARCH_PHONE_TYPE_INDEX:I = 0xb

.field public static final SIM_ID_INDEX:I = 0x6

.field private static final TAG:Ljava/lang/String; = "DialerSearchAdapter"

.field public static final VIEW_TYPE_CALL_LOG:I = 0x1

.field public static final VIEW_TYPE_CONTACT:I = 0x0

.field public static final VIEW_TYPE_CONTACT_CALL_LOG:I = 0x2

.field public static final VIEW_TYPE_COUNT:I = 0x1

.field public static final VIEW_TYPE_UNKNOWN:I = -0x1

.field public static final VTCALL:I = 0x7


# instance fields
.field protected mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

.field mCallOptionHandler:Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;

.field protected mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

.field private mCallView:Landroid/widget/ImageView;

.field protected mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field protected mContext:Landroid/content/Context;

.field protected mDialerSearchCursor:Landroid/database/Cursor;

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mEmergency:Ljava/lang/String;

.field private mHitDownEvent:Z

.field mHyphonManager:Lcom/mediatek/phone/HyphonManager;

.field private mListener:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$Listener;

.field private mNeedClearDigits:Z

.field protected mNumberTypeMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mOperatorHorizontalPaddingLeft:I

.field protected mOperatorHorizontalPaddingRight:I

.field protected mOperatorVerticalPadding:I

.field protected mPayphoneNumber:Ljava/lang/String;

.field protected mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

.field private mPhotoBitmap:Landroid/graphics/Bitmap;

.field protected mPrivateNumber:Ljava/lang/String;

.field private mQuickView:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

.field protected mSpanColorBg:I

.field protected mSpanColorFg:I

.field protected mSpecialNumberMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mUnknownNumber:Ljava/lang/String;

.field protected mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

.field protected mVoiceMail:Ljava/lang/String;

.field protected mVoiceMailNumber:Ljava/lang/String;

.field protected mVoiceMailNumber2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$Listener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$Listener;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 156
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v5}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 126
    const/4 v1, 0x6

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    .line 127
    const/4 v1, 0x6

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mSpecialNumberMaps:Ljava/util/HashMap;

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mNumberTypeMaps:Ljava/util/HashMap;

    .line 141
    iput-boolean v5, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mNeedClearDigits:Z

    .line 157
    iput-object p1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    .line 158
    iput-object p2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mListener:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$Listener;

    .line 160
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mEmergency:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0182

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mVoiceMail:Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mPrivateNumber:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mPayphoneNumber:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mUnknownNumber:Ljava/lang/String;

    .line 166
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mSpanColorFg:I

    .line 167
    const-string v1, "#39caff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mSpanColorBg:I

    .line 177
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v6

    .line 179
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v7

    .line 181
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v8

    .line 184
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020152

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v9

    .line 186
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020151

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 189
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v6

    .line 191
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v7

    .line 193
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v8

    .line 196
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020152

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v9

    .line 198
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 201
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mSpecialNumberMaps:Ljava/util/HashMap;

    const-string v2, "-1"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mSpecialNumberMaps:Ljava/util/HashMap;

    const-string v2, "-2"

    const-string v3, "-2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mSpecialNumberMaps:Ljava/util/HashMap;

    const-string v2, "-3"

    const-string v3, "-3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {p1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 206
    new-instance v1, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    iget-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    .line 208
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 209
    .local v0, "r":Landroid/content/res/Resources;
    iput v5, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mOperatorVerticalPadding:I

    .line 210
    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mOperatorHorizontalPaddingRight:I

    .line 212
    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mOperatorHorizontalPaddingLeft:I

    .line 215
    invoke-static {}, Lcom/mediatek/phone/HyphonManager;->getInstance()Lcom/mediatek/phone/HyphonManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mHyphonManager:Lcom/mediatek/phone/HyphonManager;

    .line 217
    new-instance v1, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    iget-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$Listener;Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$Listener;
    .param p3, "callOptionHandler"    # Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;-><init>(Landroid/content/Context;Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$Listener;)V

    .line 223
    iput-object p3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mCallOptionHandler:Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;

    .line 224
    return-void
.end method

.method private numberLeftToRight(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 941
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


# virtual methods
.method public bindCallLogView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 32
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 638
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;

    .line 639
    .local v26, "viewHolder":Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->type:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 640
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->date:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 642
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 644
    const/16 v27, 0xd

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 645
    .local v18, "number":Ljava/lang/String;
    const/16 v27, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 646
    .local v24, "type":I
    const/16 v27, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 647
    .local v25, "videoCall":I
    const/16 v27, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 648
    .local v22, "simId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->getNumberType(Ljava/lang/String;I)I

    move-result v19

    .line 649
    .local v19, "numberType":I
    const/16 v27, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 650
    .local v8, "date":J
    const/16 v27, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 651
    .local v16, "indicate":I
    const/16 v27, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 653
    .local v14, "geocode":Ljava/lang/String;
    const/16 v27, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->callId:I

    .line 655
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "in bindCallLogView : type = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " videoCall = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " simId = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " number = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " geocode = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mHyphonManager:Lcom/mediatek/phone/HyphonManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->numberLeftToRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 661
    .local v13, "formatNumber":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "formatNumber = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 663
    const/16 v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v27, 0x3

    move/from16 v0, v27

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v27, 0x4

    move/from16 v0, v27

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 665
    :cond_0
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 666
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->divider:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 672
    :goto_0
    const/16 v27, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 673
    .local v20, "photoId":J
    if-lez v16, :cond_1

    .line 674
    const/16 v27, 0xf

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 675
    .local v17, "isSdnContact":I
    invoke-static/range {v16 .. v17}, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->getSimType(II)J

    move-result-wide v20

    .line 678
    .end local v17    # "isSdnContact":I
    :cond_1
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignContactUri(Landroid/net/Uri;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v20

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 682
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a05a5

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 686
    :cond_2
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->isSpecialNumber(I)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 690
    const/16 v27, 0x2

    move/from16 v0, v19

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    const/16 v27, 0x5

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 691
    :cond_3
    const/16 v27, 0x2

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 692
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mVoiceMail:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    :goto_1
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v15

    .line 699
    .local v15, "highlight":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_7

    .line 700
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v13, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 701
    .local v23, "style":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    .end local v15    # "highlight":Ljava/lang/String;
    .end local v23    # "style":Landroid/text/SpannableStringBuilder;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    .line 726
    .local v10, "dateFormat":Ljava/text/DateFormat;
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 727
    .local v11, "dateString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->getSimDisplayNameById(I)Ljava/lang/String;

    move-result-object v12

    .line 728
    .local v12, "display":Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->date:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    .line 732
    .local v6, "callTypeDrawables":[Landroid/graphics/drawable/Drawable;
    :goto_3
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->type:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    aget-object v28, v6, v24

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 734
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_d

    .line 735
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->getSimColorDrawableById(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 738
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mOperatorHorizontalPaddingLeft:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mOperatorVerticalPadding:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mOperatorHorizontalPaddingRight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mOperatorVerticalPadding:I

    move/from16 v31, v0

    invoke-virtual/range {v27 .. v31}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 740
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x10

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setGravity(I)V

    .line 745
    :goto_4
    new-instance v5, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;-><init>(Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;)V

    .line 746
    .local v5, "callInfo":Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;
    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;->number:Ljava/lang/String;

    .line 747
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    iput-wide v0, v5, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;->id:J

    .line 748
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 749
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/contacts/ExtensionManager;->getDialerSearchAdapterExtension()Lcom/mediatek/contacts/ext/DialerSearchAdapterExtension;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/contacts/ext/DialerSearchAdapterExtension;->bindCallLogViewPost(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 752
    return-void

    .line 668
    .end local v5    # "callInfo":Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;
    .end local v6    # "callTypeDrawables":[Landroid/graphics/drawable/Drawable;
    .end local v10    # "dateFormat":Ljava/text/DateFormat;
    .end local v11    # "dateString":Ljava/lang/String;
    .end local v12    # "display":Ljava/lang/String;
    .end local v20    # "photoId":J
    :cond_5
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 669
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->divider:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 694
    .restart local v20    # "photoId":J
    :cond_6
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mEmergency:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 703
    .restart local v15    # "highlight":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 706
    .end local v15    # "highlight":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->specialNumberToString(I)Ljava/lang/String;

    move-result-object v7

    .line 707
    .local v7, "convert":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 708
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 710
    :cond_9
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 714
    .end local v7    # "convert":Ljava/lang/String;
    :cond_a
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 715
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v15

    .line 716
    .restart local v15    # "highlight":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_b

    .line 717
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v13, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 718
    .restart local v23    # "style":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 720
    .end local v23    # "style":Landroid/text/SpannableStringBuilder;
    :cond_b
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 730
    .end local v15    # "highlight":Ljava/lang/String;
    .restart local v10    # "dateFormat":Ljava/text/DateFormat;
    .restart local v11    # "dateString":Ljava/lang/String;
    .restart local v12    # "display":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    .line 742
    .restart local v6    # "callTypeDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_d
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public bindContactCallLogView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 755
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;

    .line 756
    .local v14, "viewHolder":Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;
    iget-object v15, v14, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 759
    invoke-virtual/range {p0 .. p3}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 764
    iget-object v15, v14, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 765
    iget-object v15, v14, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->date:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 766
    iget-object v15, v14, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->type:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 768
    const/4 v15, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 769
    .local v12, "type":I
    const/4 v15, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 770
    .local v13, "videoCall":I
    const/4 v15, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 771
    .local v11, "simId":I
    const/16 v15, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 772
    .local v10, "number":Ljava/lang/String;
    const/4 v15, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 774
    .local v5, "date":J
    const/4 v15, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v14, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->callId:I

    .line 776
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bindContactCallLogView type = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " videoCall = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " simId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    .line 786
    .local v7, "dateFormat":Ljava/text/DateFormat;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 787
    .local v8, "dateString":Ljava/lang/String;
    iget-object v15, v14, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    const/4 v15, 0x1

    if-ne v13, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    .line 794
    .local v4, "callTypeDrawables":[Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v15, v14, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->type:Landroid/widget/ImageView;

    aget-object v16, v4, v12

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    invoke-virtual {v15, v11}, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->getSimDisplayNameById(I)Ljava/lang/String;

    move-result-object v9

    .line 798
    .local v9, "display":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 799
    iget-object v15, v14, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v15, v14, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;->getSimColorDrawableById(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 802
    iget-object v15, v14, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mOperatorHorizontalPaddingLeft:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mOperatorVerticalPadding:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mOperatorHorizontalPaddingRight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mOperatorVerticalPadding:I

    move/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 804
    iget-object v15, v14, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setGravity(I)V

    .line 809
    :goto_1
    new-instance v3, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;-><init>(Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;)V

    .line 810
    .local v3, "callInfo":Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;
    int-to-long v15, v11

    iput-wide v15, v3, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;->id:J

    .line 811
    iput-object v10, v3, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;->number:Ljava/lang/String;

    .line 812
    iget-object v15, v14, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    invoke-virtual {v15, v3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 813
    iget-object v15, v14, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mediatek/contacts/ExtensionManager;->getDialerSearchAdapterExtension()Lcom/mediatek/contacts/ext/DialerSearchAdapterExtension;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/mediatek/contacts/ext/DialerSearchAdapterExtension;->bindContactCallLogViewPost(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 817
    return-void

    .line 792
    .end local v3    # "callInfo":Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;
    .end local v4    # "callTypeDrawables":[Landroid/graphics/drawable/Drawable;
    .end local v9    # "display":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 806
    .restart local v4    # "callTypeDrawables":[Landroid/graphics/drawable/Drawable;
    .restart local v9    # "display":Ljava/lang/String;
    :cond_1
    iget-object v15, v14, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 505
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;

    .line 506
    .local v23, "viewHolder":Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->type:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 508
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->date:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    const/16 v2, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 512
    .local v16, "number":Ljava/lang/String;
    const/16 v2, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 513
    .local v4, "labelType":I
    const/16 v2, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 514
    .local v12, "indicate":I
    const/4 v2, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 515
    .local v20, "simId":I
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v21

    .line 516
    .local v21, "slotID":I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getVoiceMailNumberForSlot(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mVoiceMailNumber:Ljava/lang/String;

    .line 517
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->getNumberType(Ljava/lang/String;)I

    move-result v17

    .line 519
    .local v17, "numberType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mHyphonManager:Lcom/mediatek/phone/HyphonManager;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/mediatek/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->numberLeftToRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 520
    .local v10, "formatNumber":Ljava/lang/String;
    const/16 v2, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 522
    .local v15, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 526
    .local v14, "label":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v6

    .line 527
    .local v6, "slotId":I
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/mediatek/contacts/ext/ContactAccountExtension;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v5, 0x0

    const-string v7, "ExtensionForAAS"

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " label = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 533
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->contactUri:Landroid/net/Uri;

    .line 535
    const/16 v2, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 536
    .local v18, "photoId":J
    if-lez v12, :cond_0

    .line 537
    const/16 v2, 0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 538
    .local v13, "isSdnContact":I
    invoke-static {v12, v13}, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->getSimType(II)J

    move-result-wide v18

    .line 540
    .end local v13    # "isSdnContact":I
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, v17

    if-eq v2, v0, :cond_1

    const/4 v2, 0x3

    move/from16 v0, v17

    if-eq v2, v0, :cond_1

    const/4 v2, 0x4

    move/from16 v0, v17

    if-ne v2, v0, :cond_5

    .line 542
    :cond_1
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 543
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->divider:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 548
    :goto_0
    const/4 v2, 0x2

    move/from16 v0, v17

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    .line 549
    :cond_2
    const-wide/16 v18, 0x0

    .line 550
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 551
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignContactUri(Landroid/net/Uri;)V

    .line 562
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    const/4 v5, 0x1

    move-wide/from16 v0, v18

    invoke-virtual {v2, v3, v0, v1, v5}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 564
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->isSpecialNumber(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 565
    const/4 v2, 0x2

    move/from16 v0, v17

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    move/from16 v0, v17

    if-ne v0, v2, :cond_9

    .line 566
    :cond_3
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    .line 567
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mVoiceMail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    :goto_2
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 573
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 574
    .local v11, "highlight":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 575
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v10, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v22

    .line 576
    .local v22, "style":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    .end local v11    # "highlight":Ljava/lang/String;
    .end local v22    # "style":Landroid/text/SpannableStringBuilder;
    :cond_4
    :goto_3
    new-instance v8, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;-><init>(Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;)V

    .line 631
    .local v8, "callInfo":Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;
    const-wide/16 v2, -0x5

    iput-wide v2, v8, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;->id:J

    .line 632
    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;->number:Ljava/lang/String;

    .line 633
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 634
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    return-void

    .line 545
    .end local v8    # "callInfo":Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;
    :cond_5
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 546
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->divider:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 553
    :cond_6
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 554
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->contactUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 569
    :cond_7
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mEmergency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 578
    .restart local v11    # "highlight":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 581
    .end local v11    # "highlight":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->specialNumberToString(I)Ljava/lang/String;

    move-result-object v9

    .line 582
    .local v9, "convert":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 583
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 585
    :cond_a
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 590
    .end local v9    # "convert":Ljava/lang/String;
    :cond_b
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 592
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->getNameHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 593
    .restart local v11    # "highlight":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 594
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v15}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->highlightString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v22

    .line 595
    .restart local v22    # "style":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    .end local v22    # "style":Landroid/text/SpannableStringBuilder;
    :goto_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 602
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 603
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 604
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v10, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v22

    .line 606
    .restart local v22    # "style":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v14, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->setLabelAndNumber(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_3

    .line 597
    .end local v22    # "style":Landroid/text/SpannableStringBuilder;
    :cond_c
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 608
    :cond_d
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14, v10}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->setLabelAndNumber(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 612
    .end local v11    # "highlight":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 615
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 616
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 617
    .restart local v11    # "highlight":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 618
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v10, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v22

    .line 620
    .restart local v22    # "style":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 622
    .end local v22    # "style":Landroid/text/SpannableStringBuilder;
    :cond_f
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 625
    .end local v11    # "highlight":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 258
    const-string v2, "+bindView"

    invoke-virtual {p0, v2}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, p3}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->getViewType(Landroid/database/Cursor;)I

    move-result v1

    .line 260
    .local v1, "viewType":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;

    .line 262
    .local v0, "viewHolder":Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;
    packed-switch v1, :pswitch_data_0

    .line 278
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 280
    const-string v2, "-bindView"

    invoke-virtual {p0, v2}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 281
    return-void

    .line 264
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 265
    const/4 v2, 0x0

    iput v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->viewType:I

    goto :goto_0

    .line 268
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->bindCallLogView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 269
    const/4 v2, 0x1

    iput v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->viewType:I

    goto :goto_0

    .line 272
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->bindContactCallLogView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 273
    const/4 v2, 0x2

    iput v2, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->viewType:I

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected createViewHolder()Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;-><init>(Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;)V

    .line 363
    .local v0, "viewHolder":Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;
    return-object v0
.end method

.method protected getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 499
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "lookup":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 501
    .local v0, "contactId":I
    int-to-long v2, v0

    invoke-static {v2, v3, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method protected getNameHighlight(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 372
    const-string v1, "matched_name_offsets"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 373
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

.method protected getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 367
    const-string v1, "matched_data_offsets"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 368
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

.method protected getNumberType(Ljava/lang/String;)I
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "type":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 435
    .end local v0    # "type":I
    .local v1, "type":I
    :goto_0
    return v1

    .line 412
    .end local v1    # "type":I
    .restart local v0    # "type":I
    :cond_0
    const-string v2, "-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 413
    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v1, v0

    .line 435
    .end local v0    # "type":I
    .restart local v1    # "type":I
    goto :goto_0

    .line 414
    .end local v1    # "type":I
    .restart local v0    # "type":I
    :cond_2
    const-string v2, "-2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 415
    const/4 v0, 0x3

    goto :goto_1

    .line 416
    :cond_3
    const-string v2, "-3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 417
    const/4 v0, 0x4

    goto :goto_1

    .line 430
    :cond_4
    iget-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mVoiceMailNumber:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    const/4 v0, 0x2

    goto :goto_1
.end method

.method protected getNumberType(Ljava/lang/String;I)I
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "type":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 403
    .end local v0    # "type":I
    .local v1, "type":I
    :goto_0
    return v1

    .line 388
    .end local v1    # "type":I
    .restart local v0    # "type":I
    :cond_0
    const-string v2, "-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v1, v0

    .line 403
    .end local v0    # "type":I
    .restart local v1    # "type":I
    goto :goto_0

    .line 390
    .end local v1    # "type":I
    .restart local v0    # "type":I
    :cond_2
    const-string v2, "-2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 391
    const/4 v0, 0x3

    goto :goto_1

    .line 392
    :cond_3
    const-string v2, "-3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " convertView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mDialerSearchCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_0
    if-nez p2, :cond_1

    .line 249
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mDialerSearchCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "v":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mDialerSearchCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 254
    return-object v0

    .line 251
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public getViewType(Landroid/database/Cursor;)I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 346
    const/4 v2, -0x1

    .line 347
    .local v2, "retval":I
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 348
    .local v1, "contactId":I
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 350
    .local v0, "callLogId":I
    if-lez v1, :cond_1

    if-lez v0, :cond_1

    .line 351
    const/4 v2, 0x2

    .line 358
    :cond_0
    :goto_0
    return v2

    .line 352
    :cond_1
    if-lez v1, :cond_2

    .line 353
    const/4 v2, 0x0

    goto :goto_0

    .line 354
    :cond_2
    if-lez v0, :cond_0

    .line 355
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x1

    return v0
.end method

.method protected highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "highlight"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "origin"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 457
    if-nez p2, :cond_1

    .line 458
    const-string v2, "DialerSearchAdapter"

    const-string v3, "[highlightHyphon] target is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v1, 0x0

    .line 470
    :cond_0
    :goto_0
    return-object v1

    .line 461
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 462
    .local v1, "style":Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p3}, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->adjustHighlitePositionForHyphen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 464
    .local v0, "numberHighlightOffset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 465
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mSpanColorBg:I

    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

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

.method protected highlightString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 7
    .param p1, "highlight"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 443
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 444
    .local v2, "style":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 445
    .local v1, "length":I
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 446
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

    .line 453
    :cond_0
    return-object v2

    .line 450
    :cond_1
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mSpanColorBg:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 445
    add-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public isDigitsCleared()Z
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mNeedClearDigits:Z

    return v0
.end method

.method protected isSpecialNumber(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 439
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 239
    const-string v0, "DialerSearchAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method protected newItemClickIntent(Landroid/view/View;)Landroid/content/Intent;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;

    .line 476
    .local v2, "viewHolder":Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;
    iget v3, v2, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->viewType:I

    packed-switch v3, :pswitch_data_0

    .line 495
    :cond_0
    :goto_0
    return-object v0

    .line 479
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/dialer/CallDetailActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 480
    .restart local v0    # "intent":Landroid/content/Intent;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    iget v4, v2, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->callId:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 486
    :pswitch_1
    iget-object v1, v2, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->contactUri:Landroid/net/Uri;

    .line 487
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 488
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 284
    const-string v2, "+newView"

    invoke-virtual {p0, v2}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 285
    const v2, 0x7f040042

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->createViewHolder()Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;

    move-result-object v1

    .line 288
    .local v1, "viewHolder":Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;
    const v2, 0x7f0d0094

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 289
    const v2, 0x7f0d0120

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    .line 290
    const v2, 0x7f0d0121

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->type:Landroid/widget/ImageView;

    .line 291
    const v2, 0x7f0d0122

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    .line 292
    const v2, 0x7f0d0064

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 294
    iget-object v2, v1, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mCallView:Landroid/widget/ImageView;

    .line 295
    const v2, 0x7f0d0093

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    iput-object v2, v1, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    .line 297
    iget-object v2, v1, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    iput-object v2, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mQuickView:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 300
    const-string v2, "-newView"

    invoke-virtual {p0, v2}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 302
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 893
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 909
    :pswitch_0
    const-string v3, "onClick(), view id = dialer_search_item_view"

    invoke-virtual {p0, v3}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 911
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getDialtactsExtension()Lcom/mediatek/contacts/ext/DialtactsExtension;

    move-result-object v3

    const-string v4, "ExtensionForOP01"

    invoke-virtual {v3, v4}, Lcom/mediatek/contacts/ext/DialtactsExtension;->startActivity(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 913
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mNeedClearDigits:Z

    .line 914
    invoke-virtual {p0, p1}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->newItemClickIntent(Landroid/view/View;)Landroid/content/Intent;

    move-result-object v1

    .line 915
    .local v1, "intentForSearch":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 916
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 919
    .end local v1    # "intentForSearch":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;

    .line 920
    .local v2, "viewHolder":Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;
    iget-object v3, v2, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;

    .line 921
    .local v0, "callInfoForSearch":Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;
    if-eqz v0, :cond_0

    .line 922
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mListener:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$Listener;

    if-eqz v3, :cond_0

    .line 923
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callinfo number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 924
    const-string v3, "-1"

    iget-object v4, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "-2"

    iget-object v4, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "-3"

    iget-object v4, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 927
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mListener:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$Listener;

    iget-object v4, v0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;->number:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$Listener;->onListViewItemClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 893
    :pswitch_data_0
    .packed-switch 0x7f0d011f
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->updateVoiceMailNumber()V

    .line 233
    invoke-virtual {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->notifyDataSetChanged()V

    .line 236
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 834
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->pause()V

    .line 839
    :goto_0
    return-void

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 306
    invoke-virtual {p2}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_6

    .line 307
    const/4 v1, -0x1

    .line 308
    .local v1, "leftSide":I
    const/4 v2, -0x1

    .line 310
    .local v2, "rightSide":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 312
    .local v0, "ix":F
    iget-object v5, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mCallView:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 313
    iget-object v5, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mCallView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    .line 316
    :cond_0
    iget-object v5, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mQuickView:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    if-eqz v5, :cond_1

    .line 317
    iget-object v5, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mQuickView:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    invoke-virtual {v5}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->getRight()I

    move-result v1

    .line 320
    :cond_1
    if-ltz v2, :cond_2

    if-eqz v2, :cond_2

    int-to-float v5, v2

    cmpg-float v5, v0, v5

    if-gez v5, :cond_5

    :cond_2
    if-ltz v1, :cond_3

    int-to-float v5, v1

    cmpl-float v5, v0, v5

    if-lez v5, :cond_5

    .line 323
    :cond_3
    iput-boolean v3, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mHitDownEvent:Z

    move v3, v4

    .line 331
    .end local v0    # "ix":F
    .end local v1    # "leftSide":I
    .end local v2    # "rightSide":I
    :cond_4
    :goto_0
    return v3

    .line 326
    .restart local v0    # "ix":F
    .restart local v1    # "leftSide":I
    .restart local v2    # "rightSide":I
    :cond_5
    iput-boolean v4, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mHitDownEvent:Z

    goto :goto_0

    .line 331
    .end local v0    # "ix":F
    .end local v1    # "leftSide":I
    .end local v2    # "rightSide":I
    :cond_6
    iget-boolean v5, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mHitDownEvent:Z

    if-eqz v5, :cond_4

    move v3, v4

    goto :goto_0
.end method

.method public resetDigitsState()V
    .locals 1

    .prologue
    .line 949
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mNeedClearDigits:Z

    .line 950
    return-void
.end method

.method protected setLabelAndNumber(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "number"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 858
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    :goto_0
    return-void

    .line 863
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 864
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 865
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 866
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 868
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

    .line 869
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setLabelAndNumber(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 842
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    :goto_0
    return-void

    .line 847
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 849
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 850
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 852
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

.method public setResultCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mDialerSearchCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mDialerSearchCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_0
    iput-object p1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mDialerSearchCursor:Landroid/database/Cursor;

    .line 339
    return-void
.end method

.method specialNumberToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 820
    packed-switch p1, :pswitch_data_0

    .line 830
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 822
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mUnknownNumber:Ljava/lang/String;

    goto :goto_0

    .line 824
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mPrivateNumber:Ljava/lang/String;

    goto :goto_0

    .line 826
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;->mPayphoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 820
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
