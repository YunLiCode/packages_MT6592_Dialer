.class public Lcom/android/contacts/common/list/ContactTileAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactTileAdapter$1;,
        Lcom/android/contacts/common/list/ContactTileAdapter$ViewTypes;,
        Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;,
        Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mColumnCount:I

.field protected mContactCursor:Landroid/database/Cursor;

.field private mContext:Landroid/content/Context;

.field private mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

.field private mDividerPosition:I

.field protected mIdIndex:I

.field private mIsQuickContactEnabled:Z

.field private mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field protected mLookupIndex:I

.field protected mNameIndex:I

.field protected mNumFrequents:I

.field private final mPaddingInPixels:I

.field private mPhoneNumberIndex:I

.field private mPhoneNumberLabelIndex:I

.field private mPhoneNumberTypeIndex:I

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field protected mPhotoUriIndex:I

.field protected mPresenceIndex:I

.field private mResources:Landroid/content/res/Resources;

.field private mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

.field private mStarredIndex:I

.field protected mStatusIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;ILcom/android/contacts/common/list/ContactTileAdapter$DisplayType;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/contacts/common/list/ContactTileView$Listener;
    .param p3, "numCols"    # I
    .param p4, "displayType"    # Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    .line 91
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    .line 133
    iput-object p2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    .line 134
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    .line 136
    sget-object v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-ne p4, v0, :cond_0

    const/4 p3, 0x1

    .end local p3    # "numCols":I
    :cond_0
    iput p3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    .line 137
    iput-object p4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    .line 138
    iput v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    .line 141
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I

    .line 144
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->bindColumnIndices()V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/ContactTileAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/ContactTileAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getLayoutResourceId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/ContactTileAdapter;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/list/ContactTileView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/ContactTileAdapter;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/common/list/ContactTileAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/ContactTileAdapter;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I

    return v0
.end method

.method private getLayoutResourceId(I)I
    .locals 3
    .param p1, "viewType"    # I

    .prologue
    .line 501
    packed-switch p1, :pswitch_data_0

    .line 511
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized viewType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7f04001e

    .line 509
    :goto_0
    return v0

    .line 503
    :cond_0
    const v0, 0x7f04001d

    goto :goto_0

    .line 506
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-ne v0, v1, :cond_1

    const v0, 0x7f04001b

    goto :goto_0

    :cond_1
    const v0, 0x7f04001a

    goto :goto_0

    .line 509
    :pswitch_3
    const v0, 0x7f04001c

    goto :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bindColumnIndices()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x5

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIdIndex:I

    .line 169
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mLookupIndex:I

    .line 170
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoUriIndex:I

    .line 171
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNameIndex:I

    .line 172
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStarredIndex:I

    .line 173
    iput v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPresenceIndex:I

    .line 174
    iput v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    .line 176
    iput v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhoneNumberIndex:I

    .line 177
    iput v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhoneNumberTypeIndex:I

    .line 178
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhoneNumberLabelIndex:I

    .line 179
    return-void
.end method

.method protected createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;
    .locals 19
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "position"    # I

    .prologue
    .line 263
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move/from16 v0, p2

    if-gt v1, v0, :cond_1

    :cond_0
    const/4 v7, 0x0

    .line 356
    :goto_0
    return-object v7

    .line 265
    :cond_1
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 266
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIdIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 267
    .local v10, "id":J
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoUriIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 268
    .local v15, "photoUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mLookupIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 270
    .local v13, "lookupKey":Ljava/lang/String;
    new-instance v7, Lcom/android/contacts/common/list/ContactEntry;

    invoke-direct {v7}, Lcom/android/contacts/common/list/ContactEntry;-><init>()V

    .line 279
    .local v7, "contact":Lcom/android/contacts/common/list/ContactEntry;
    iput-wide v10, v7, Lcom/android/contacts/common/list/ContactEntry;->contact_id:J

    .line 284
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNameIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 285
    .local v14, "name":Ljava/lang/String;
    if-eqz v14, :cond_3

    .end local v14    # "name":Ljava/lang/String;
    :goto_1
    iput-object v14, v7, Lcom/android/contacts/common/list/ContactEntry;->name:Ljava/lang/String;

    .line 286
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/contacts/common/list/ContactEntry;->status:Ljava/lang/String;

    .line 293
    const-string v1, "indicate_phone_or_sim_contact"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/android/contacts/common/list/ContactEntry;->indexSimOrPhone:I

    .line 294
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    iget v2, v7, Lcom/android/contacts/common/list/ContactEntry;->indexSimOrPhone:I

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getSlotIdBySimId(I)I

    move-result v5

    .line 295
    .local v5, "slotId":I
    const/4 v8, -0x1

    .line 296
    .local v8, "i":I
    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[createContactEntryFromCursor] mSlot = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    if-nez v1, :cond_2

    .line 298
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    .line 301
    :cond_2
    if-gez v5, :cond_5

    .line 302
    if-eqz v15, :cond_4

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_2
    iput-object v1, v7, Lcom/android/contacts/common/list/ContactEntry;->photoUri:Landroid/net/Uri;

    .line 316
    :goto_3
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v1, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v7, Lcom/android/contacts/common/list/ContactEntry;->lookupKey:Landroid/net/Uri;

    .line 318
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStarredIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, v7, Lcom/android/contacts/common/list/ContactEntry;->isFavorite:Z

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    sget-object v2, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-ne v1, v2, :cond_8

    .line 322
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhoneNumberTypeIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 323
    .local v3, "phoneNumberType":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhoneNumberLabelIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, "phoneNumberCustomLabel":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/mediatek/contacts/ext/ContactAccountExtension;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    const-string v6, "ExtensionForAAS"

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v7, Lcom/android/contacts/common/list/ContactEntry;->phoneLabel:Ljava/lang/String;

    .line 330
    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createContactEntryFromCursor() contact.phoneLabel="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v7, Lcom/android/contacts/common/list/ContactEntry;->phoneLabel:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhoneNumberIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 285
    .end local v3    # "phoneNumberType":I
    .end local v4    # "phoneNumberCustomLabel":Ljava/lang/String;
    .end local v5    # "slotId":I
    .end local v8    # "i":I
    .restart local v14    # "name":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a04b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 302
    .end local v14    # "name":Ljava/lang/String;
    .restart local v5    # "slotId":I
    .restart local v8    # "i":I
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 304
    :cond_5
    const-string v1, "is_sdn_contact"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 305
    .local v12, "isSdnContact":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    invoke-virtual {v1, v5}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v17

    .line 306
    .local v17, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v17, :cond_6

    .line 307
    move-object/from16 v0, v17

    iget v8, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 309
    :cond_6
    new-instance v1, Lcom/mediatek/contacts/util/SimContactPhotoUtils;

    invoke-direct {v1}, Lcom/mediatek/contacts/util/SimContactPhotoUtils;-><init>()V

    invoke-virtual {v1, v12, v8}, Lcom/mediatek/contacts/util/SimContactPhotoUtils;->getPhotoUri(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v7, Lcom/android/contacts/common/list/ContactEntry;->photoUri:Landroid/net/Uri;

    .line 310
    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[createContactEntryFromCursor] i = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " | isSdn : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 318
    .end local v12    # "isSdnContact":I
    .end local v17    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 336
    :cond_8
    const/4 v9, 0x0

    .line 337
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    const/16 v16, 0x0

    .line 338
    .local v16, "presence":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPresenceIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 339
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPresenceIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    move/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/contacts/common/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 342
    :cond_9
    iput-object v9, v7, Lcom/android/contacts/common/list/ContactEntry;->presenceIcon:Landroid/graphics/drawable/Drawable;

    .line 344
    const/16 v18, 0x0

    .line 345
    .local v18, "statusMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 346
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 350
    :cond_a
    if-nez v18, :cond_b

    if-eqz v16, :cond_b

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    move/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/contacts/common/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    .line 353
    :cond_b
    move-object/from16 v0, v18

    iput-object v0, v7, Lcom/android/contacts/common/list/ContactEntry;->status:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public enableQuickContact(Z)V
    .locals 0
    .param p1, "enableQuickContact"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    .line 161
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    return v0
.end method

.method public getCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 368
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 388
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    sget-object v2, Lcom/android/contacts/common/list/ContactTileAdapter$1;->$SwitchMap$com$android$contacts$common$list$ContactTileAdapter$DisplayType:[I

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 390
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized DisplayType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    goto :goto_0

    .line 378
    :pswitch_1
    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v1

    .line 382
    .local v1, "starredRowCount":I
    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    if-nez v2, :cond_2

    .line 385
    .local v0, "frequentRowCount":I
    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    .line 382
    .end local v0    # "frequentRowCount":I
    :cond_2
    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 388
    .end local v1    # "starredRowCount":I
    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDivider()Landroid/view/View;
    .locals 3

    .prologue
    .line 495
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    sget-object v2, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-ne v0, v2, :cond_0

    const v0, 0x7f0a04ba

    :goto_0
    invoke-static {v1, v0}, Lcom/android/contacts/common/MoreContactUtils;->createHeaderView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0a04bb

    goto :goto_0
.end method

.method protected getDividerPosition(Landroid/database/Cursor;)I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, -0x1

    .line 230
    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to access cursor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$1;->$SwitchMap$com$android$contacts$common$list$ContactTileAdapter$DisplayType:[I

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 239
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStarredIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 241
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 257
    :goto_0
    :pswitch_1
    return v0

    .line 250
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 257
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getFrequentHeaderPosition()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 413
    .local v2, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactEntry;>;"
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    mul-int v1, p1, v3

    .line 415
    .local v1, "contactIndex":I
    sget-object v3, Lcom/android/contacts/common/list/ContactTileAdapter$1;->$SwitchMap$com$android$contacts$common$list$ContactTileAdapter$DisplayType:[I

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 445
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized DisplayType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 417
    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_0
    :goto_0
    return-object v2

    .line 420
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "columnCounter":I
    :goto_1
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v3, :cond_0

    .line 421
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    add-int/lit8 v1, v1, 0x1

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    .end local v0    # "columnCounter":I
    :pswitch_2
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 428
    const/4 v0, 0x0

    .line 429
    .restart local v0    # "columnCounter":I
    :goto_2
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v3, :cond_0

    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    if-eq v1, v3, :cond_0

    .line 430
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    add-int/lit8 v1, v1, 0x1

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 440
    .end local v0    # "columnCounter":I
    :cond_1
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v3

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    add-int v1, v3, v4

    .line 441
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 455
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 529
    sget-object v3, Lcom/android/contacts/common/list/ContactTileAdapter$1;->$SwitchMap$com$android$contacts$common$list$ContactTileAdapter$DisplayType:[I

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 551
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :pswitch_0
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 549
    :goto_0
    :pswitch_1
    return v0

    .line 533
    :cond_0
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 534
    goto :goto_0

    :cond_1
    move v0, v2

    .line 536
    goto :goto_0

    .line 539
    :pswitch_2
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 540
    const/4 v0, 0x3

    goto :goto_0

    .line 541
    :cond_2
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-ne p1, v0, :cond_3

    move v0, v1

    .line 542
    goto :goto_0

    :cond_3
    move v0, v2

    .line 544
    goto :goto_0

    :pswitch_3
    move v0, v2

    .line 549
    goto :goto_0

    .line 529
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getNumFrequents()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    return v0
.end method

.method protected getRowCount(I)I
    .locals 2
    .param p1, "entryCount"    # I

    .prologue
    .line 399
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    .line 471
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItemViewType(I)I

    move-result v2

    .line 473
    .local v2, "itemViewType":I
    if-ne v2, v3, :cond_1

    .line 475
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getDivider()Landroid/view/View;

    move-result-object p2

    .line 487
    .end local p2    # "convertView":Landroid/view/View;
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    move-object v1, p2

    .line 478
    check-cast v1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;

    .line 479
    .local v1, "contactTileRowView":Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 481
    .local v0, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactEntry;>;"
    if-nez v1, :cond_2

    .line 483
    new-instance v1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;

    .end local v1    # "contactTileRowView":Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v4, v2}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;-><init>(Lcom/android/contacts/common/list/ContactTileAdapter;Landroid/content/Context;I)V

    .line 486
    .restart local v1    # "contactTileRowView":Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_3

    :goto_1
    invoke-virtual {v1, v0, v3}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->configureRow(Ljava/util/ArrayList;Z)V

    move-object p2, v1

    .line 487
    goto :goto_0

    .line 486
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 466
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected saveNumFrequentsFromCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 191
    sget-object v0, Lcom/android/contacts/common/list/ContactTileAdapter$1;->$SwitchMap$com$android$contacts$common$list$ContactTileAdapter$DisplayType:[I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    .line 205
    :goto_0
    return-void

    .line 197
    :pswitch_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    goto :goto_0

    .line 200
    :pswitch_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setColumnCount(I)V
    .locals 0
    .param p1, "columnCount"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    .line 153
    return-void
.end method

.method public setContactCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getDividerPosition(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->saveNumFrequentsFromCursor(Landroid/database/Cursor;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->notifyDataSetChanged()V

    .line 220
    return-void
.end method

.method public setDisplayType(Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;)V
    .locals 0
    .param p1, "displayType"    # Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    .line 157
    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p1, "photoLoader"    # Lcom/android/contacts/common/ContactPhotoManager;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 149
    return-void
.end method
