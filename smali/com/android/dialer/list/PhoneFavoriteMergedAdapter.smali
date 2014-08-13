.class public Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhoneFavoriteMergedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;,
        Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;
    }
.end annotation


# static fields
.field private static final ALL_CONTACTS_BUTTON_ITEM_ID:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TILE_INTERACTION_TEASER_VIEW_ID:I = -0x2

.field private static final TILE_INTERACTION_TEASER_VIEW_POSITION:I = 0x2


# instance fields
.field private final mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

.field private final mCallLogOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

.field private final mCallLogPadding:I

.field private final mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

.field private final mCallLogQueryHandlerListener:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;

.field private final mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;

.field private final mObserver:Landroid/database/DataSetObserver;

.field private final mShowAllContactsButton:Landroid/view/View;

.field private final mTileInteractionTeaserView:Lcom/android/dialer/list/TileInteractionTeaserView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoritesTileAdapter;Lcom/android/dialer/calllog/CallLogAdapter;Landroid/view/View;Lcom/android/dialer/list/TileInteractionTeaserView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/dialer/list/PhoneFavoriteFragment;
    .param p3, "contactTileAdapter"    # Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
    .param p4, "callLogAdapter"    # Lcom/android/dialer/calllog/CallLogAdapter;
    .param p5, "showAllContactsButton"    # Landroid/view/View;
    .param p6, "tileInteractionTeaserView"    # Lcom/android/dialer/list/TileInteractionTeaserView;

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 73
    new-instance v1, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$1;-><init>(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)V

    iput-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    .line 93
    new-instance v1, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$2;-><init>(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)V

    iput-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogQueryHandlerListener:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    .local v0, "resources":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;

    .line 127
    const v1, 0x7f0800cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogPadding:I

    .line 128
    iput-object p3, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    .line 129
    iput-object p4, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    .line 130
    new-instance v1, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;-><init>(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$1;)V

    iput-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 131
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 132
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 133
    iput-object p5, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mShowAllContactsButton:Landroid/view/View;

    .line 134
    iput-object p6, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mTileInteractionTeaserView:Lcom/android/dialer/list/TileInteractionTeaserView;

    .line 139
    new-instance v1, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogQueryHandlerListener:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;

    invoke-direct {v1, v2, v3}, Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;-><init>(Landroid/content/ContentResolver;Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;)V

    iput-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogQueryHandler:Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)Lcom/android/dialer/list/PhoneFavoriteFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)Lcom/android/dialer/calllog/CallLogAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogPadding:I

    return v0
.end method

.method private getAdjustedFavoritePosition(II)I
    .locals 2
    .param p1, "position"    # I
    .param p2, "callLogAdapterCount"    # I

    .prologue
    .line 310
    sub-int v0, p1, p2

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mTileInteractionTeaserView:Lcom/android/dialer/list/TileInteractionTeaserView;

    invoke-virtual {v0}, Lcom/android/dialer/list/TileInteractionTeaserView;->getShouldDisplayInList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    sub-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    .line 314
    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, p2

    goto :goto_0
.end method

.method private getTeaserViewCount()I
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mTileInteractionTeaserView:Lcom/android/dialer/list/TileInteractionTeaserView;

    invoke-virtual {v0}, Lcom/android/dialer/list/TileInteractionTeaserView;->getShouldDisplayInList()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->getTeaserViewCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v0

    .line 158
    .local v0, "callLogAdapterCount":I
    if-lez v0, :cond_0

    .line 159
    if-ge p1, v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 166
    :goto_0
    return-object v1

    .line 164
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->getAdjustedFavoritePosition(II)I

    move-result p1

    .line 166
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v1, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v0

    .line 185
    .local v0, "callLogAdapterCount":I
    if-ge p1, v0, :cond_0

    .line 187
    rsub-int/lit8 v1, p1, -0x3

    int-to-long v1, v1

    .line 197
    :goto_0
    return-wide v1

    .line 188
    :cond_0
    add-int/lit8 v1, v0, 0x2

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mTileInteractionTeaserView:Lcom/android/dialer/list/TileInteractionTeaserView;

    invoke-virtual {v1}, Lcom/android/dialer/list/TileInteractionTeaserView;->getShouldDisplayInList()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    const-wide/16 v1, -0x2

    goto :goto_0

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->getTeaserViewCount()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_2

    .line 193
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->getAdjustedFavoritePosition(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    .line 197
    :cond_2
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v0

    .line 218
    .local v0, "callLogAdapterCount":I
    if-ge p1, v0, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getViewTypeCount()I

    move-result v1

    .line 232
    :goto_0
    return v1

    .line 222
    :cond_0
    add-int/lit8 v1, v0, 0x2

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mTileInteractionTeaserView:Lcom/android/dialer/list/TileInteractionTeaserView;

    invoke-virtual {v1}, Lcom/android/dialer/list/TileInteractionTeaserView;->getShouldDisplayInList()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getViewTypeCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_2

    .line 227
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->getAdjustedFavoritePosition(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_0

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getViewTypeCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 238
    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v7}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v0

    .line 240
    .local v0, "callLogAdapterCount":I
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne p1, v7, :cond_0

    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v7}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 241
    iget-object v6, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mShowAllContactsButton:Landroid/view/View;

    .line 290
    :goto_0
    return-object v6

    .line 244
    :cond_0
    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mTileInteractionTeaserView:Lcom/android/dialer/list/TileInteractionTeaserView;

    invoke-virtual {v7}, Lcom/android/dialer/list/TileInteractionTeaserView;->getShouldDisplayInList()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 245
    add-int/lit8 v7, v0, 0x2

    if-ne p1, v7, :cond_1

    .line 246
    iget-object v6, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mTileInteractionTeaserView:Lcom/android/dialer/list/TileInteractionTeaserView;

    goto :goto_0

    .line 250
    :cond_1
    if-lez v0, :cond_4

    .line 251
    if-nez p1, :cond_4

    .line 253
    if-nez p2, :cond_2

    .line 254
    new-instance v6, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;

    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;-><init>(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;Landroid/content/Context;)V

    .line 255
    .local v6, "wrapper":Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;
    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    invoke-virtual {v6, v7}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->setOnItemSwipeListener(Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;)V

    .line 264
    :goto_1
    iget-object v8, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    if-nez p2, :cond_3

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v8, p1, v7, p3}, Lcom/android/dialer/calllog/CallLogAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 266
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v6}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->removeAllViews()V

    .line 267
    const v7, 0x7f0d0090

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 269
    .local v1, "callLogItem":Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 270
    const/high16 v7, 0x3f800000

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 271
    invoke-virtual {v6, v5}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->addView(Landroid/view/View;)V

    goto :goto_0

    .end local v1    # "callLogItem":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "wrapper":Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;
    :cond_2
    move-object v6, p2

    .line 257
    check-cast v6, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;

    .restart local v6    # "wrapper":Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;
    goto :goto_1

    .line 264
    :cond_3
    invoke-virtual {v6, v9}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_2

    .line 278
    .end local v6    # "wrapper":Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$SwipeableCallLogRow;
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->getAdjustedFavoritePosition(II)I

    move-result p1

    .line 281
    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 282
    .restart local v5    # "view":Landroid/view/View;
    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v7}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getMaxTiledRows()I

    move-result v7

    if-lt p1, v7, :cond_5

    move-object v3, v5

    .line 283
    check-cast v3, Landroid/widget/FrameLayout;

    .line 284
    .local v3, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 285
    .local v2, "child":Landroid/view/View;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 288
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    move-object v6, v5

    .line 290
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getViewTypeCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogAdapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->getTeaserViewCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 300
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v0

    .line 301
    .local v0, "callLogAdapterCount":I
    if-ge p1, v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->isEnabled(I)Z

    move-result v1

    .line 304
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->getAdjustedFavoritePosition(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isEnabled(I)Z

    move-result v1

    goto :goto_0
.end method
