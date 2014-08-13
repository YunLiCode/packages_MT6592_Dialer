.class public Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhoneFavoritesTileAdapter.java"

# interfaces
.implements Lcom/android/dialer/list/PhoneFavoriteListView$OnDragDropListener;
.implements Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ViewTypes;,
        Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;,
        Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final PIN_LIMIT:I = 0x14

.field public static final ROW_LIMIT_DEFAULT:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TILES_SOFT_LIMIT:I = 0x14


# instance fields
.field private mAwaitingRemove:Z

.field protected mColumnCount:I

.field protected mContactEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mContactEntryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mContactIdIndex:I

.field private mContext:Landroid/content/Context;

.field private mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

.field private mDragEnteredEntryIndex:I

.field private mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

.field private mDraggedEntryIndex:I

.field private mDropEntryIndex:I

.field protected mIdIndex:I

.field private mIdToKeepInPlace:J

.field private mInDragging:Z

.field private mIsDefaultNumberIndex:I

.field private mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field protected mLookupIndex:I

.field private mMaxTiledRows:I

.field protected mNameIndex:I

.field protected mNumFrequents:I

.field protected mNumStarred:I

.field private final mPaddingInPixels:I

.field private mPhoneNumberIndex:I

.field private mPhoneNumberLabelIndex:I

.field private mPhoneNumberTypeIndex:I

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field protected mPhotoUriIndex:I

.field protected mPinnedIndex:I

.field private mPotentialRemoveEntryIndex:I

.field protected mPresenceIndex:I

.field private mResources:Landroid/content/res/Resources;

.field private mStarredIndex:I

.field protected mStatusIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/contacts/common/list/ContactTileView$Listener;
    .param p3, "dataSetChangedListener"    # Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;
    .param p4, "numCols"    # I
    .param p5, "maxTiledRows"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 147
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    .line 79
    iput-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    .line 81
    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    .line 83
    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    .line 85
    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    .line 87
    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPotentialRemoveEntryIndex:I

    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mIdToKeepInPlace:J

    .line 90
    iput-boolean v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mMaxTiledRows:I

    .line 117
    iput-boolean v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mInDragging:Z

    .line 130
    new-instance v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$1;-><init>(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntryComparator:Ljava/util/Comparator;

    .line 148
    iput-object p3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    .line 149
    iput-object p2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    .line 150
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mResources:Landroid/content/res/Resources;

    .line 152
    iput p4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    .line 153
    iput v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNumFrequents:I

    .line 154
    iput p5, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mMaxTiledRows:I

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    .line 157
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPaddingInPixels:I

    .line 160
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->bindColumnIndices()V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getLayoutResourceId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)Lcom/android/contacts/common/list/ContactTileView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPaddingInPixels:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getFirstContactEntryIndexForPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mMaxTiledRows:I

    return v0
.end method

.method private getFirstContactEntryIndexForPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getMaxContactsInTiles()I

    move-result v0

    .line 441
    .local v0, "maxContactsInTiles":I
    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getRowCount(I)I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 443
    iget v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    mul-int/2addr v1, p1

    .line 448
    :goto_0
    return v1

    :cond_0
    add-int v1, v0, p1

    iget v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mMaxTiledRows:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private getLayoutResourceId(I)I
    .locals 3
    .param p1, "viewType"    # I

    .prologue
    .line 527
    packed-switch p1, :pswitch_data_0

    .line 533
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

    .line 529
    :pswitch_0
    const v0, 0x7f040063

    .line 531
    :goto_0
    return v0

    :pswitch_1
    const v0, 0x7f040064

    goto :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getMaxContactsInTiles()I
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mMaxTiledRows:I

    mul-int/2addr v0, v1

    return v0
.end method

.method private isIndexInBound(I)Z
    .locals 1
    .param p1, "itemIndex"    # I

    .prologue
    .line 570
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markDropArea(I)V
    .locals 4
    .param p1, "itemIndex"    # I

    .prologue
    .line 579
    iget v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-direct {p0, v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    invoke-interface {v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->cacheOffsetsForDatasetChange()V

    .line 582
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    .line 583
    .local v0, "oldIndex":I
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 584
    iput p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    .line 585
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    sget-object v3, Lcom/android/contacts/common/list/ContactEntry;->BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 586
    sget-object v1, Lcom/android/contacts/common/list/ContactEntry;->BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;

    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    iget-wide v2, v2, Lcom/android/contacts/common/list/ContactEntry;->id:J

    iput-wide v2, v1, Lcom/android/contacts/common/list/ContactEntry;->id:J

    .line 587
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-interface {v1, v2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->onDataSetChangedForAnimation([J)V

    .line 588
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->notifyDataSetChanged()V

    .line 590
    .end local v0    # "oldIndex":I
    :cond_0
    return-void
.end method

.method private saveCursorToCache(Landroid/database/Cursor;)V
    .locals 19
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 255
    const/16 v17, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 257
    new-instance v4, Landroid/util/LongSparseArray;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 260
    .local v4, "duplicates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 262
    .local v3, "counter":I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 264
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mStarredIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 269
    .local v16, "starred":I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    const/16 v17, 0x14

    move/from16 v0, v17

    if-lt v3, v0, :cond_2

    .line 319
    .end local v16    # "starred":I
    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->arrangeContactsByPinnedPosition(Ljava/util/ArrayList;)V

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->notifyDataSetChanged()V

    .line 324
    return-void

    .line 272
    .restart local v16    # "starred":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactIdIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 275
    .local v6, "id":J
    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactEntry;

    .line 276
    .local v5, "existing":Lcom/android/contacts/common/list/ContactEntry;
    if-eqz v5, :cond_3

    .line 279
    iget-boolean v0, v5, Lcom/android/contacts/common/list/ContactEntry;->isDefaultNumber:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 280
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/contacts/common/list/ContactEntry;->phoneLabel:Ljava/lang/String;

    .line 281
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 286
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhotoUriIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 287
    .local v14, "photoUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mLookupIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 288
    .local v10, "lookupKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPinnedIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 289
    .local v15, "pinned":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNameIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 290
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mStarredIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-lez v17, :cond_4

    const/4 v9, 0x1

    .line 291
    .local v9, "isStarred":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mIsDefaultNumberIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-lez v17, :cond_5

    const/4 v8, 0x1

    .line 293
    .local v8, "isDefaultNumber":Z
    :goto_2
    new-instance v2, Lcom/android/contacts/common/list/ContactEntry;

    invoke-direct {v2}, Lcom/android/contacts/common/list/ContactEntry;-><init>()V

    .line 295
    .local v2, "contact":Lcom/android/contacts/common/list/ContactEntry;
    iput-wide v6, v2, Lcom/android/contacts/common/list/ContactEntry;->id:J

    .line 296
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .end local v11    # "name":Ljava/lang/String;
    :goto_3
    iput-object v11, v2, Lcom/android/contacts/common/list/ContactEntry;->name:Ljava/lang/String;

    .line 298
    if-eqz v14, :cond_7

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    :goto_4
    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/contacts/common/list/ContactEntry;->photoUri:Landroid/net/Uri;

    .line 299
    sget-object v17, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/contacts/common/list/ContactEntry;->lookupKey:Landroid/net/Uri;

    .line 301
    iput-boolean v9, v2, Lcom/android/contacts/common/list/ContactEntry;->isFavorite:Z

    .line 302
    iput-boolean v8, v2, Lcom/android/contacts/common/list/ContactEntry;->isDefaultNumber:Z

    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberTypeIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 306
    .local v13, "phoneNumberType":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberLabelIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 307
    .local v12, "phoneNumberCustomLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v13, v12}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/contacts/common/list/ContactEntry;->phoneLabel:Ljava/lang/String;

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    .line 311
    iput v15, v2, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-virtual {v4, v6, v7, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 316
    add-int/lit8 v3, v3, 0x1

    .line 317
    goto/16 :goto_0

    .line 290
    .end local v2    # "contact":Lcom/android/contacts/common/list/ContactEntry;
    .end local v8    # "isDefaultNumber":Z
    .end local v9    # "isStarred":Z
    .end local v12    # "phoneNumberCustomLabel":Ljava/lang/String;
    .end local v13    # "phoneNumberType":I
    .restart local v11    # "name":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 291
    .restart local v9    # "isStarred":Z
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 296
    .restart local v2    # "contact":Lcom/android/contacts/common/list/ContactEntry;
    .restart local v8    # "isDefaultNumber":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f0a04b9

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 298
    .end local v11    # "name":Ljava/lang/String;
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_4
.end method

.method private unstarAndUnpinContact(Landroid/net/Uri;)V
    .locals 4
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 1069
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1070
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "starred"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1071
    const-string v1, "pinned"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1072
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1073
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x1

    return v0
.end method

.method arrangeContactsByPinnedPosition(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "toArrange":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactEntry;>;"
    const/16 v10, 0x14

    .line 1088
    new-instance v5, Ljava/util/PriorityQueue;

    iget-object v8, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntryComparator:Ljava/util/Comparator;

    invoke-direct {v5, v10, v8}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 1091
    .local v5, "pinnedQueue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/contacts/common/list/ContactEntry;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1093
    .local v7, "unpinnedContacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/list/ContactEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1094
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1095
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactEntry;

    .line 1097
    .local v0, "contact":Lcom/android/contacts/common/list/ContactEntry;
    iget v8, v0, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    if-le v8, v10, :cond_1

    .line 1098
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1099
    :cond_1
    iget v8, v0, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_0

    .line 1104
    invoke-virtual {v5, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1108
    .end local v0    # "contact":Lcom/android/contacts/common/list/ContactEntry;
    :cond_2
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1110
    .local v4, "maxToPin":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1111
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_5

    .line 1112
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/list/ContactEntry;

    iget v8, v8, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    if-gt v8, v2, :cond_4

    .line 1113
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactEntry;

    .line 1114
    .local v6, "toPin":Lcom/android/contacts/common/list/ContactEntry;
    iput v2, v6, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    .line 1115
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    .end local v6    # "toPin":Lcom/android/contacts/common/list/ContactEntry;
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1116
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1117
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1125
    :cond_5
    :goto_4
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1126
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactEntry;

    .line 1127
    .local v1, "entry":Lcom/android/contacts/common/list/ContactEntry;
    const v8, 0x7fffffff

    iput v8, v1, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    .line 1128
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1133
    .end local v1    # "entry":Lcom/android/contacts/common/list/ContactEntry;
    :cond_6
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1134
    return-void
.end method

.method protected bindColumnIndices()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x5

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mIdIndex:I

    .line 195
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mLookupIndex:I

    .line 196
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhotoUriIndex:I

    .line 197
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNameIndex:I

    .line 198
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mStarredIndex:I

    .line 199
    iput v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPresenceIndex:I

    .line 200
    iput v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mStatusIndex:I

    .line 202
    iput v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberIndex:I

    .line 203
    iput v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberTypeIndex:I

    .line 204
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberLabelIndex:I

    .line 205
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mIsDefaultNumberIndex:I

    .line 206
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPinnedIndex:I

    .line 207
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactIdIndex:I

    .line 208
    return-void
.end method

.method public cleanTempVariables()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 682
    iput v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    .line 683
    iput v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    .line 684
    iput v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    .line 686
    iput v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPotentialRemoveEntryIndex:I

    .line 687
    return-void
.end method

.method public dropToUnsupportedView()V
    .locals 3

    .prologue
    .line 633
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-direct {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 635
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 636
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->notifyDataSetChanged()V

    .line 638
    :cond_0
    return-void
.end method

.method public getAdjustedItemId(J)J
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 472
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mMaxTiledRows:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    return v0
.end method

.method protected getContactEntryFromCache(I)Lcom/android/contacts/common/list/ContactEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 v0, 0x0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactEntry;

    goto :goto_0
.end method

.method public getCount()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 365
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v3

    .line 369
    :cond_1
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 371
    .local v2, "total":I
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getMaxContactsInTiles()I

    move-result v4

    sub-int v4, v2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 373
    .local v0, "nonTiledRows":I
    sub-int v3, v2, v0

    invoke-virtual {p0, v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getRowCount(I)I

    move-result v1

    .line 374
    .local v1, "tiledRows":I
    add-int v3, v0, v1

    goto :goto_0
.end method

.method public getInDragging()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mInDragging:Z

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/ArrayList;
    .locals 7
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
    .line 413
    new-instance v4, Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 415
    .local v4, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactEntry;>;"
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getFirstContactEntryIndexForPosition(I)I

    move-result v2

    .line 417
    .local v2, "entryIndex":I
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItemViewType(I)I

    move-result v5

    .line 420
    .local v5, "viewType":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 421
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    .line 426
    .local v0, "columnCount":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 427
    add-int v6, v2, v3

    invoke-virtual {p0, v6}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getContactEntryFromCache(I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v1

    .line 428
    .local v1, "entry":Lcom/android/contacts/common/list/ContactEntry;
    if-nez v1, :cond_2

    .line 432
    .end local v1    # "entry":Lcom/android/contacts/common/list/ContactEntry;
    :cond_0
    return-object v4

    .line 423
    .end local v0    # "columnCount":I
    .end local v3    # "i":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "columnCount":I
    goto :goto_0

    .line 429
    .restart local v1    # "entry":Lcom/android/contacts/common/list/ContactEntry;
    .restart local v3    # "i":I
    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactEntry;

    iget-wide v0, v0, Lcom/android/contacts/common/list/ContactEntry;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getAdjustedItemId(J)J

    move-result-wide v0

    .line 464
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getMaxContactsInTiles()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getRowCount(I)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 544
    const/4 v0, 0x1

    .line 546
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxTiledRows()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mMaxTiledRows:I

    return v0
.end method

.method public getNumFrequents()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNumFrequents:I

    return v0
.end method

.method protected getNumStarredContacts(Landroid/database/Cursor;)I
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 333
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 334
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mStarredIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 336
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 342
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method getReflowedPinnedPositions(Ljava/util/ArrayList;Lcom/android/contacts/common/list/ContactEntry;II)Landroid/content/ContentValues;
    .locals 7
    .param p2, "entryToPin"    # Lcom/android/contacts/common/list/ContactEntry;
    .param p3, "oldPos"    # I
    .param p4, "newPinPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;",
            "Lcom/android/contacts/common/list/ContactEntry;",
            "II)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 1150
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactEntry;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1151
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1152
    .local v3, "lowerBound":I
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1153
    .local v4, "upperBound":I
    move v2, v3

    .local v2, "i":I
    :goto_0
    if-gt v2, v4, :cond_1

    .line 1154
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactEntry;

    .line 1155
    .local v1, "entry":Lcom/android/contacts/common/list/ContactEntry;
    iget v5, v1, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    if-ne v5, v2, :cond_0

    .line 1153
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1156
    :cond_0
    iget-wide v5, v1, Lcom/android/contacts/common/list/ContactEntry;->id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1158
    .end local v1    # "entry":Lcom/android/contacts/common/list/ContactEntry;
    :cond_1
    return-object v0
.end method

.method protected getRowCount(I)I
    .locals 3
    .param p1, "entryCount"    # I

    .prologue
    .line 386
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 388
    :goto_0
    return v1

    .line 387
    :cond_0
    add-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    div-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 388
    .local v0, "nonLimitedRows":I
    iget v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mMaxTiledRows:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method public getRowIndex(I)I
    .locals 2
    .param p1, "entryIndex"    # I

    .prologue
    .line 396
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mMaxTiledRows:I

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    mul-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 397
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    div-int v0, p1, v0

    .line 399
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mMaxTiledRows:I

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    mul-int/2addr v0, v1

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mMaxTiledRows:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 506
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItemViewType(I)I

    move-result v2

    .line 508
    .local v2, "itemViewType":I
    const/4 v1, 0x0

    .line 510
    .local v1, "contactTileRowView":Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;
    instance-of v3, p2, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 511
    check-cast v1, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;

    .line 514
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 516
    .local v0, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactEntry;>;"
    if-nez v1, :cond_1

    .line 518
    new-instance v1, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;

    .end local v1    # "contactTileRowView":Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3, v2, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;-><init>(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;Landroid/content/Context;II)V

    .line 521
    .restart local v1    # "contactTileRowView":Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v0, p1, v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$ContactTileRow;->configureRow(Ljava/util/ArrayList;IZ)V

    .line 523
    return-object v1

    .line 521
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x2

    return v0
.end method

.method public handleDrop()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    if-eqz v3, :cond_2

    .line 598
    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-direct {p0, v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    if-eq v3, v4, :cond_3

    .line 603
    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    iput v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    .line 604
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 605
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    iget-wide v3, v3, Lcom/android/contacts/common/list/ContactEntry;->id:J

    invoke-virtual {p0, v3, v4}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getAdjustedItemId(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mIdToKeepInPlace:J

    .line 606
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    invoke-interface {v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->cacheOffsetsForDatasetChange()V

    .line 607
    const/4 v0, 0x1

    .line 617
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    const/16 v4, 0x14

    if-ge v3, v4, :cond_1

    .line 618
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    iget v5, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    iget v6, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getReflowedPinnedPositions(Ljava/util/ArrayList;Lcom/android/contacts/common/list/ContactEntry;II)Landroid/content/ContentValues;

    move-result-object v1

    .line 620
    .local v1, "cv":Landroid/content/ContentValues;
    sget-object v3, Landroid/provider/ContactsContract$PinnedPositions;->UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 622
    .local v2, "pinUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 624
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "pinUri":Landroid/net/Uri;
    :cond_1
    iput-object v7, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    .line 626
    :cond_2
    return-void

    .line 608
    :cond_3
    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    invoke-direct {p0, v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 611
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 612
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 613
    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    iput v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    .line 614
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public hasPotentialRemoveEntryIndex()Z
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPotentialRemoveEntryIndex:I

    invoke-direct {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 1189
    iget-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 497
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 498
    return-void
.end method

.method public onDragFinished()V
    .locals 1

    .prologue
    .line 1210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->setInDragging(Z)V

    .line 1211
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->handleDrop()V

    .line 1212
    return-void
.end method

.method public onDragHovered(I)V
    .locals 1
    .param p1, "itemIndex"    # I

    .prologue
    .line 1200
    iget-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mInDragging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    if-ge p1, v0, :cond_0

    .line 1204
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->markDropArea(I)V

    .line 1206
    :cond_0
    return-void
.end method

.method public onDragStarted(I)V
    .locals 1
    .param p1, "itemIndex"    # I

    .prologue
    .line 1194
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->setInDragging(Z)V

    .line 1195
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->popContactEntry(I)V

    .line 1196
    return-void
.end method

.method public onSwipe(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1169
    const v2, 0x7f0d017a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/list/PhoneFavoriteTileView;

    .line 1172
    .local v1, "tileView":Lcom/android/dialer/list/PhoneFavoriteTileView;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/dialer/list/SwipeHelper;->setSwipeable(Landroid/view/View;Z)V

    .line 1173
    invoke-virtual {v1}, Lcom/android/dialer/list/PhoneFavoriteTileView;->displayRemovalDialog()V

    .line 1175
    const v2, 0x7f0d001c

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/PhoneFavoriteTileView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1178
    .local v0, "entryIndex":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->setPotentialRemoveEntryIndex(I)V

    .line 1179
    return-void
.end method

.method public onTouch()V
    .locals 0

    .prologue
    .line 1183
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->removePendingContactEntry()Z

    .line 1184
    return-void
.end method

.method public popContactEntry(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactEntry;

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    .line 559
    iput p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    .line 560
    iput p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    .line 561
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-direct {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->markDropArea(I)V

    .line 563
    :cond_0
    return-void
.end method

.method public removePendingContactEntry()Z
    .locals 4

    .prologue
    .line 656
    const/4 v1, 0x0

    .line 657
    .local v1, "removed":Z
    iget v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPotentialRemoveEntryIndex:I

    invoke-direct {p0, v2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPotentialRemoveEntryIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactEntry;

    .line 659
    .local v0, "entry":Lcom/android/contacts/common/list/ContactEntry;
    iget-object v2, v0, Lcom/android/contacts/common/list/ContactEntry;->lookupKey:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->unstarAndUnpinContact(Landroid/net/Uri;)V

    .line 660
    const/4 v1, 0x1

    .line 661
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    .line 663
    .end local v0    # "entry":Lcom/android/contacts/common/list/ContactEntry;
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->cleanTempVariables()V

    .line 664
    return v1
.end method

.method protected saveNumFrequentsFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 218
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNumStarred:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNumFrequents:I

    .line 219
    return-void
.end method

.method public setColumnCount(I)V
    .locals 0
    .param p1, "columnCount"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mColumnCount:I

    .line 173
    return-void
.end method

.method public setContactCursor(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 227
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getNumStarredContacts(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNumStarred:I

    .line 229
    iget-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    invoke-interface {v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->cacheOffsetsForDatasetChange()V

    .line 233
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->saveNumFrequentsFromCursor(Landroid/database/Cursor;)V

    .line 234
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->saveCursorToCache(Landroid/database/Cursor;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->notifyDataSetChanged()V

    .line 238
    iget-wide v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mIdToKeepInPlace:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    const/4 v1, 0x1

    new-array v1, v1, [J

    iget-wide v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mIdToKeepInPlace:J

    aput-wide v2, v1, v4

    invoke-interface {v0, v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->onDataSetChangedForAnimation([J)V

    .line 243
    :goto_0
    iput-wide v5, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mIdToKeepInPlace:J

    .line 245
    :cond_1
    return-void

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    new-array v1, v4, [J

    invoke-interface {v0, v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->onDataSetChangedForAnimation([J)V

    goto :goto_0
.end method

.method public setInDragging(Z)V
    .locals 0
    .param p1, "inDragging"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mInDragging:Z

    .line 182
    return-void
.end method

.method public setMaxRowCount(I)V
    .locals 0
    .param p1, "maxRows"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mMaxTiledRows:I

    .line 169
    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p1, "photoLoader"    # Lcom/android/contacts/common/ContactPhotoManager;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 165
    return-void
.end method

.method public setPotentialRemoveEntryIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 647
    iput p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPotentialRemoveEntryIndex:I

    .line 648
    return-void
.end method

.method public undoPotentialRemoveEntryIndex()V
    .locals 1

    .prologue
    .line 671
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPotentialRemoveEntryIndex:I

    .line 672
    return-void
.end method
