.class Lcom/android/contacts/common/ContactPhotoManagerImpl;
.super Lcom/android/contacts/common/ContactPhotoManager;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;,
        Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;,
        Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    }
.end annotation


# static fields
.field private static final BITMAP_CACHE_SIZE:I = 0x1b0000

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final FADE_TRANSITION_DURATION:I = 0xc8

.field private static final HOLDER_CACHE_SIZE:I = 0x1e8480

.field private static final LARGE_RAM_THRESHOLD:I = 0x28000000

.field private static final LOADER_THREAD_NAME:Ljava/lang/String; = "ContactPhotoLoader"

.field private static final MESSAGE_PHOTOS_LOADED:I = 0x2

.field private static final MESSAGE_REQUEST_LOADING:I = 0x1


# instance fields
.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBitmapHolderCacheAllUnfresh:Z

.field private final mBitmapHolderCacheRedZoneBytes:I

.field private final mContext:Landroid/content/Context;

.field private final mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mIccExt:Lcom/mediatek/contacts/ext/IccCardExtension;

.field private mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 453
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 455
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManager;-><init>()V

    .line 501
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 519
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 525
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 552
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 555
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1515
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getIccCardExtension()Lcom/mediatek/contacts/ext/IccCardExtension;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mIccExt:Lcom/mediatek/contacts/ext/IccCardExtension;

    .line 558
    iput-object p1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    .line 560
    invoke-static {}, Lcom/android/contacts/common/util/MemoryUtils;->getTotalMemorySize()J

    move-result-wide v3

    const-wide/32 v5, 0x28000000

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    const/high16 v1, 0x3f800000

    .line 562
    .local v1, "cacheSizeAdjustment":F
    :goto_0
    const/high16 v3, 0x49d80000

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 563
    .local v0, "bitmapCacheSize":I
    new-instance v3, Lcom/android/contacts/common/ContactPhotoManagerImpl$1;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$1;-><init>(Lcom/android/contacts/common/ContactPhotoManagerImpl;I)V

    iput-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    .line 573
    const v3, 0x49f42400

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 574
    .local v2, "holderCacheSize":I
    new-instance v3, Lcom/android/contacts/common/ContactPhotoManagerImpl$2;

    invoke-direct {v3, p0, v2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$2;-><init>(Lcom/android/contacts/common/ContactPhotoManagerImpl;I)V

    iput-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    .line 584
    int-to-double v3, v2

    const-wide/high16 v5, 0x3fe8000000000000L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    .line 585
    const-string v3, "ContactPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache adj: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void

    .line 560
    .end local v0    # "bitmapCacheSize":I
    .end local v1    # "cacheSizeAdjustment":F
    .end local v2    # "holderCacheSize":I
    :cond_0
    const/high16 v1, 0x3f000000

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/ContactPhotoManagerImpl;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/common/ContactPhotoManagerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/ContactPhotoManagerImpl;

    .prologue
    .line 436
    iget v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/ContactPhotoManagerImpl;
    .param p1, "x1"    # Ljava/util/Set;
    .param p2, "x2"    # Ljava/util/Set;
    .param p3, "x3"    # Ljava/util/Set;

    .prologue
    .line 436
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/ContactPhotoManagerImpl;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # [B
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .prologue
    .line 436
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/ContactPhotoManagerImpl;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static btk(I)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # I

    .prologue
    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v1, p0, 0x3ff

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cacheBitmap(Ljava/lang/Object;[BZI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "bytes"    # [B
    .param p3, "preloading"    # Z
    .param p4, "requestedExtent"    # I

    .prologue
    .line 1039
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    if-nez p2, :cond_1

    const/4 v1, -0x1

    :goto_0
    invoke-direct {v0, p2, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    .line 1044
    .local v0, "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    if-nez p3, :cond_0

    .line 1045
    invoke-static {v0, p4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 1048
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 1050
    return-void

    .line 1039
    .end local v0    # "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    :cond_1
    invoke-static {p2}, Lcom/android/contacts/common/util/BitmapUtil;->getSmallerExtentFromBytes([B)I

    move-result v1

    goto :goto_0
.end method

.method private dumpStats()V
    .locals 0

    .prologue
    .line 605
    return-void
.end method

.method private static inflateBitmap(Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V
    .locals 6
    .param p0, "holder"    # Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    .param p1, "requestedExtent"    # I

    .prologue
    .line 853
    iget v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->originalSmallerExtent:I

    invoke-static {v4, p1}, Lcom/android/contacts/common/util/BitmapUtil;->findOptimalSampleSize(II)I

    move-result v3

    .line 855
    .local v3, "sampleSize":I
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    .line 856
    .local v1, "bytes":[B
    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_1

    .line 857
    :cond_0
    const-string v4, "ContactPhotoManager"

    const-string v5, "[inflateBitmap] bytes == null || bytes.length == 0"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :goto_0
    return-void

    .line 861
    :cond_1
    iget v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    if-ne v3, v4, :cond_2

    .line 864
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v4, :cond_2

    .line 865
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 866
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 867
    const-string v4, "ContactPhotoManager"

    const-string v5, "[inflateBitmap] holder.bitmap != null cache still valid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 874
    :cond_2
    :try_start_0
    invoke-static {v1, v3}, Lcom/android/contacts/common/util/BitmapUtil;->decodeBitmapFromBytes([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 892
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iput v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    .line 893
    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 894
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 900
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 901
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "ContactPhotoManager"

    const-string v5, "[inflateBitmap]cached OutOfMemoryError"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;Z)Z
    .locals 11
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "request"    # Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    .param p3, "fadeIn"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 779
    iget-object v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    .line 780
    .local v2, "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    if-nez v2, :cond_0

    .line 782
    invoke-virtual {p2, p1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;)V

    move v6, v7

    .line 844
    :goto_0
    return v6

    .line 786
    :cond_0
    iget-object v6, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-nez v6, :cond_1

    .line 787
    invoke-virtual {p2, p1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;)V

    .line 788
    iget-boolean v6, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    .line 791
    :cond_1
    iget-object v6, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-nez v6, :cond_2

    move-object v0, v8

    .line 792
    .local v0, "cachedBitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-nez v0, :cond_3

    .line 808
    invoke-virtual {p2, p1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;)V

    .line 809
    const-string v6, "ContactPhotoManager"

    const-string v8, "[loadCachedPhoto]cachedBitmap == null"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 810
    goto :goto_0

    .line 791
    .end local v0    # "cachedBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v6, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    move-object v0, v6

    goto :goto_1

    .line 814
    .restart local v0    # "cachedBitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 815
    .local v4, "previousDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_6

    if-eqz v4, :cond_6

    .line 816
    const/4 v6, 0x2

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    .line 818
    .local v3, "layers":[Landroid/graphics/drawable/Drawable;
    instance-of v6, v4, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v6, :cond_5

    move-object v5, v4

    .line 819
    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    .line 821
    .local v5, "previousTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v7

    .line 826
    .end local v5    # "previousTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    :goto_2
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v6, v3, v10

    .line 827
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 828
    .local v1, "drawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 829
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 830
    const/16 v6, 0xc8

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 837
    .end local v1    # "drawable":Landroid/graphics/drawable/TransitionDrawable;
    .end local v3    # "layers":[Landroid/graphics/drawable/Drawable;
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v7}, Landroid/util/LruCache;->maxSize()I

    move-result v7

    div-int/lit8 v7, v7, 0x6

    if-ge v6, v7, :cond_4

    .line 838
    iget-object v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    :cond_4
    iput-object v8, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 844
    iget-boolean v6, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    .line 824
    .restart local v3    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_5
    aput-object v4, v3, v7

    goto :goto_2

    .line 832
    .end local v3    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method

.method private loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "request"    # Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    .prologue
    .line 741
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;Z)Z

    move-result v0

    .line 742
    .local v0, "loaded":Z
    if-eqz v0, :cond_1

    .line 743
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    iget-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 748
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->requestLoading()V

    goto :goto_0
.end method

.method private obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1071
    .local p1, "photoIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, "photoIdsAsStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;>;"
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1072
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 1073
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 1075
    const/4 v2, 0x0

    .line 1085
    .local v2, "jpegsDecoded":Z
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1086
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1087
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    .line 1088
    .local v3, "request":Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    .line 1089
    .local v0, "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v4, :cond_1

    iget-boolean v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1092
    :cond_0
    invoke-virtual {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 1093
    const/4 v2, 0x1

    goto :goto_0

    .line 1095
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-nez v4, :cond_4

    .line 1096
    :cond_2
    invoke-virtual {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->isUriRequest()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1097
    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1099
    :cond_3
    const-string v4, "ContactPhotoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[obtainPhotoIdsAndUrisToLoad]request is id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-virtual {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1101
    # getter for: Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mId:J
    invoke-static {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->access$000(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1104
    :cond_4
    const-string v4, "ContactPhotoManager"

    const-string v5, "[obtainPhotoIdsAndUrisToLoad]holder != null && holder.fresh, and jpgs not decoded"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1109
    .end local v0    # "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    .end local v3    # "request":Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    :cond_5
    if-eqz v2, :cond_6

    .line 1110
    const-string v4, "ContactPhotoManager"

    const-string v5, "[obtainPhotoIdsAndUrisToLoad]jpegsDecoded, send msg MESSAGE_PHOTOS_LOADED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1113
    :cond_6
    return-void
.end method

.method private processLoadedImages()V
    .locals 6

    .prologue
    .line 994
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 995
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 996
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 997
    .local v3, "view":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    .line 998
    .local v1, "key":Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;Z)Z

    move-result v2

    .line 999
    .local v2, "loaded":Z
    if-eqz v2, :cond_0

    .line 1000
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1004
    .end local v1    # "key":Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    .end local v2    # "loaded":Z
    .end local v3    # "view":Landroid/widget/ImageView;
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->softenCache()V

    .line 1006
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1007
    const-string v4, "ContactPhotoManager"

    const-string v5, "[processLoadedImages]mPendingRequests is not empty, requestLoading again"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->requestLoading()V

    .line 1010
    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 939
    iget-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 940
    iput-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 941
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 943
    :cond_0
    return-void
.end method

.method private static final safeDiv(II)I
    .locals 1
    .param p0, "dividend"    # I
    .param p1, "divisor"    # I

    .prologue
    .line 598
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    div-int v0, p0, p1

    goto :goto_0
.end method

.method private softenCache()V
    .locals 3

    .prologue
    .line 1017
    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    .line 1018
    .local v0, "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1020
    .end local v0    # "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    :cond_0
    return-void
.end method


# virtual methods
.method public cacheBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
    .locals 6
    .param p1, "photoUri"    # Landroid/net/Uri;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "photoBytes"    # [B

    .prologue
    const/4 v5, 0x0

    .line 1054
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1057
    .local v2, "smallerExtent":I
    sget-object v3, Lcom/android/contacts/common/ContactPhotoManagerImpl;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    invoke-static {p1, v2, v5, v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->createFromUri(Landroid/net/Uri;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    move-result-object v1

    .line 1058
    .local v1, "request":Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    invoke-direct {v0, p3, v2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    .line 1059
    .local v0, "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    .line 1060
    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    iput-boolean v5, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 1062
    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 909
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 910
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 911
    return-void
.end method

.method public ensureLoaderThread()V
    .locals 2

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    if-nez v0, :cond_0

    .line 984
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;-><init>(Lcom/android/contacts/common/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    .line 985
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->start()V

    .line 987
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 950
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 979
    :cond_0
    :goto_0
    return v0

    .line 952
    :pswitch_0
    const-string v2, "ContactPhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Main handleMessage MESSAGE_REQUEST_LOADING, paused: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iput-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 954
    iget-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 955
    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 956
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->requestLoading()V

    goto :goto_0

    .line 962
    :pswitch_1
    const-string v1, "ContactPhotoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Main handleMessage MESSAGE_PHOTOS_LOADED, paused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_1

    .line 964
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->processLoadedImages()V

    goto :goto_0

    .line 969
    :cond_1
    const-string v1, "ContactPhotoManager"

    const-string v2, "The loaded caches ignored, refresh them"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->refreshCache()V

    goto :goto_0

    .line 950
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "requestedExtent"    # I
    .param p4, "darkTheme"    # Z
    .param p5, "defaultProvider"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .prologue
    .line 707
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 708
    .local v0, "argsForExt":Landroid/os/Bundle;
    const-string v4, "key_photo_uri"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 709
    const-string v4, "key_dark_theme"

    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 710
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mIccExt:Lcom/mediatek/contacts/ext/IccCardExtension;

    const-string v5, "ExtensionForOP09"

    invoke-virtual {v4, v0, v5}, Lcom/mediatek/contacts/ext/IccCardExtension;->getIccPhotoDrawable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 711
    .local v1, "photoDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 712
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 713
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const-string v4, "ContactPhotoManager"

    const-string v5, "ext set photo"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :goto_0
    return-void

    .line 721
    :cond_0
    if-nez p2, :cond_1

    .line 723
    invoke-virtual {p5, p1, p3, p4}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZ)V

    .line 724
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 727
    :cond_1
    invoke-static {p2}, Lcom/mediatek/contacts/util/SimContactPhotoUtils;->isSimPhotoUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 728
    invoke-static {p2}, Lcom/mediatek/contacts/util/SimContactPhotoUtils;->getPhotoIdByPhotoUri(Landroid/net/Uri;)J

    move-result-wide v2

    .line 729
    .local v2, "photoId":J
    invoke-virtual {p5, p1, v2, v3, p4}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;->applySimDefaultImage(Landroid/widget/ImageView;JZ)V

    .line 730
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 735
    .end local v2    # "photoId":J
    :cond_2
    invoke-static {p2, p3, p4, p5}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->createFromUri(Landroid/net/Uri;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public loadThumbnail(Landroid/widget/ImageView;JZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J
    .param p4, "darkTheme"    # Z
    .param p5, "defaultProvider"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .prologue
    .line 667
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 668
    .local v0, "argsForExt":Landroid/os/Bundle;
    const-string v2, "key_photo_id"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 669
    const-string v2, "key_dark_theme"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 670
    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mIccExt:Lcom/mediatek/contacts/ext/IccCardExtension;

    const-string v3, "ExtensionForOP09"

    invoke-virtual {v2, v0, v3}, Lcom/mediatek/contacts/ext/IccCardExtension;->getIccPhotoDrawable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 671
    .local v1, "photoDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 672
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 673
    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string v2, "ContactPhotoManager"

    const-string v3, "ext set photo"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :goto_0
    return-void

    .line 681
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 682
    const-string v2, "ContactPhotoManager"

    const-string v3, "[loadThumbnail]photoId == 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v2, -0x1

    invoke-virtual {p5, p1, v2, p4}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZ)V

    .line 685
    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 688
    :cond_1
    invoke-static {p2, p3}, Lcom/mediatek/contacts/util/SimContactPhotoUtils;->isSimPhotoId(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 689
    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;->applySimDefaultImage(Landroid/widget/ImageView;JZ)V

    .line 690
    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 695
    :cond_2
    invoke-static {p2, p3, p4, p5}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->createFromThumbnailId(JZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 648
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->clear()V

    .line 652
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    .line 916
    return-void
.end method

.method public preloadPhotosInBackground()V
    .locals 1

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 657
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 658
    return-void
.end method

.method public refreshCache()V
    .locals 5

    .prologue
    .line 761
    const-string v2, "ContactPhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[refreshCache]mBitmapHolderCacheAllUnfresh = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-boolean v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    if-eqz v2, :cond_1

    .line 771
    :cond_0
    return-void

    .line 767
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 768
    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    .line 769
    .local v0, "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0
.end method

.method public removePhoto(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 755
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 756
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    .line 920
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    .line 922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 923
    .local v0, "currentRequests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    .line 924
    .local v2, "key":Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    invoke-virtual {v2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 926
    .end local v2    # "key":Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    :cond_0
    const-string v3, "ContactPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[resume] pendingRequests : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 928
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->requestLoading()V

    .line 930
    :cond_1
    return-void
.end method
