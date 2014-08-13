.class public Lcom/android/ex/chips/MTKContactObserver;
.super Ljava/lang/Object;
.source "MTKContactObserver.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;,
        Lcom/android/ex/chips/MTKContactObserver$ContactListener;
    }
.end annotation


# static fields
.field private static CONTACT_IDIndex:I = 0x0

.field private static final DEINIT_DELAY:I = 0xbb8

.field private static DELETEDIndex:I = 0x0

.field private static DIRTYIndex:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MTKRecipContactObserver"

.field private static VERSIONIndex:I = 0x0

.field private static _IDIndex:I = 0x0

.field private static sPreDirtyContactMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProjection:[Ljava/lang/String;

.field private static final sSelection:Ljava/lang/String; = "dirty=? or deleted=?"

.field private static final sSelectionArgs:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDeInitRunnable:Ljava/lang/Runnable;

.field private mDirtyContactSet:Ljava/util/Set;

.field private mInitRunnable:Ljava/lang/Runnable;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/MTKContactObserver$ContactListener;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/database/ContentObserver;

.field private mPreDirtyContactSet:Ljava/util/Set;

.field private mQueryHandler:Landroid/os/Handler;

.field private mQueryThread:Landroid/os/HandlerThread;

.field private mResolver:Landroid/content/ContentResolver;

.field private mStateReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    sput v3, Lcom/android/ex/chips/MTKContactObserver;->_IDIndex:I

    .line 29
    sput v3, Lcom/android/ex/chips/MTKContactObserver;->CONTACT_IDIndex:I

    .line 30
    sput v3, Lcom/android/ex/chips/MTKContactObserver;->DIRTYIndex:I

    .line 31
    sput v3, Lcom/android/ex/chips/MTKContactObserver;->DELETEDIndex:I

    .line 32
    sput v3, Lcom/android/ex/chips/MTKContactObserver;->VERSIONIndex:I

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "dirty"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/ex/chips/MTKContactObserver;->sProjection:[Ljava/lang/String;

    .line 44
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/ex/chips/MTKContactObserver;->sSelectionArgs:[Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ex/chips/MTKContactObserver;->sPreDirtyContactMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mContext:Landroid/content/Context;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mStateReady:Z

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mPreDirtyContactSet:Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mDirtyContactSet:Ljava/util/Set;

    .line 52
    iput-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mQueryThread:Landroid/os/HandlerThread;

    .line 53
    iput-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mQueryHandler:Landroid/os/Handler;

    .line 54
    iput-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mObserver:Landroid/database/ContentObserver;

    .line 55
    iput-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mResolver:Landroid/content/ContentResolver;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mListeners:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Lcom/android/ex/chips/MTKContactObserver$1;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/MTKContactObserver$1;-><init>(Lcom/android/ex/chips/MTKContactObserver;)V

    iput-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mInitRunnable:Ljava/lang/Runnable;

    .line 64
    new-instance v0, Lcom/android/ex/chips/MTKContactObserver$2;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/MTKContactObserver$2;-><init>(Lcom/android/ex/chips/MTKContactObserver;)V

    iput-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mDeInitRunnable:Ljava/lang/Runnable;

    .line 284
    iput-object p1, p0, Lcom/android/ex/chips/MTKContactObserver;->mContext:Landroid/content/Context;

    .line 285
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/ex/chips/MTKContactObserver;->sPreDirtyContactMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/ex/chips/MTKContactObserver;ZLandroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKContactObserver;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKContactObserver;->contactChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method private contactChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mStateReady:Z

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    const-string v0, "MTKRecipContactObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selfChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0}, Lcom/android/ex/chips/MTKContactObserver;->loadCurrentDirtyContact()V

    goto :goto_0
.end method

.method private loadCurrentDirtyContact()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 227
    invoke-virtual {p0, v6, v6}, Lcom/android/ex/chips/MTKContactObserver;->queryDirtyRawContact(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    .line 229
    :try_start_0
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    sget-object v7, Lcom/android/ex/chips/MTKContactObserver;->sPreDirtyContactMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 230
    const-string v6, "MTKRecipContactObserver"

    const-string v7, "loadCurrentDirtyContact1+++"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 232
    .local v5, "tmpDirtyContactSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;>;"
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mDirtyContactSet:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 233
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mPreDirtyContactSet:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 234
    :goto_0
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 235
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v6}, Lcom/android/ex/chips/MTKContactObserver;->getDirtyContactItem(Landroid/database/Cursor;)Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;

    move-result-object v0

    .line 236
    .local v0, "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mPreDirtyContactSet:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 276
    .end local v0    # "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    .end local v5    # "tmpDirtyContactSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;>;"
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    const-string v6, "MTKRecipContactObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cursor position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 239
    .restart local v5    # "tmpDirtyContactSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;>;"
    :cond_0
    :try_start_2
    sget-object v6, Lcom/android/ex/chips/MTKContactObserver;->sPreDirtyContactMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 240
    .local v4, "oldSet":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 241
    .local v2, "it":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 242
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;

    .line 243
    .local v0, "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 244
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    iget v9, v0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->version:I

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->update(IIII)V

    .line 245
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mDirtyContactSet:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v6, "MTKRecipContactObserver"

    invoke-virtual {v0}, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 279
    .end local v0    # "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v4    # "oldSet":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;>;"
    .end local v5    # "tmpDirtyContactSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;>;"
    :catchall_0
    move-exception v6

    const-string v7, "MTKRecipContactObserver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cursor position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v7, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v6

    .line 249
    .restart local v2    # "it":Ljava/util/Iterator;
    .restart local v4    # "oldSet":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;>;"
    .restart local v5    # "tmpDirtyContactSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;>;"
    :cond_2
    :try_start_3
    const-string v6, "MTKRecipContactObserver"

    const-string v7, "loadCurrentDirtyContact1---"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ex/chips/MTKContactObserver$ContactListener;

    .line 251
    .local v3, "l":Lcom/android/ex/chips/MTKContactObserver$ContactListener;
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mDirtyContactSet:Ljava/util/Set;

    invoke-interface {v3, v6}, Lcom/android/ex/chips/MTKContactObserver$ContactListener;->onContactChange(Ljava/util/Set;)V

    goto :goto_3

    .line 253
    .end local v3    # "l":Lcom/android/ex/chips/MTKContactObserver$ContactListener;
    :cond_3
    sget-object v6, Lcom/android/ex/chips/MTKContactObserver;->sPreDirtyContactMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 254
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 255
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 256
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;

    .line 257
    .restart local v0    # "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    sget-object v6, Lcom/android/ex/chips/MTKContactObserver;->sPreDirtyContactMap:Ljava/util/HashMap;

    iget-wide v7, v0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->_ID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 279
    .end local v0    # "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    :cond_4
    const-string v6, "MTKRecipContactObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cursor position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 261
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v4    # "oldSet":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;>;"
    .end local v5    # "tmpDirtyContactSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;>;"
    :cond_5
    :try_start_4
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mDirtyContactSet:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 262
    const-string v6, "MTKRecipContactObserver"

    const-string v7, "loadCurrentDirtyContact2+++"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_6
    :goto_5
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 264
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v6}, Lcom/android/ex/chips/MTKContactObserver;->getDirtyContactItem(Landroid/database/Cursor;)Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;

    move-result-object v0

    .line 265
    .restart local v0    # "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mPreDirtyContactSet:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 266
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mPreDirtyContactSet:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mDirtyContactSet:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v6, Lcom/android/ex/chips/MTKContactObserver;->sPreDirtyContactMap:Ljava/util/HashMap;

    iget-wide v7, v0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->_ID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v6, "MTKRecipContactObserver"

    invoke-virtual {v0}, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 272
    .end local v0    # "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    :cond_7
    const-string v6, "MTKRecipContactObserver"

    const-string v7, "loadCurrentDirtyContact2---"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ex/chips/MTKContactObserver$ContactListener;

    .line 274
    .restart local v3    # "l":Lcom/android/ex/chips/MTKContactObserver$ContactListener;
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mDirtyContactSet:Ljava/util/Set;

    invoke-interface {v3, v6}, Lcom/android/ex/chips/MTKContactObserver$ContactListener;->onContactChange(Ljava/util/Set;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 279
    .end local v3    # "l":Lcom/android/ex/chips/MTKContactObserver$ContactListener;
    :cond_8
    const-string v6, "MTKRecipContactObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cursor position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v6, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method


# virtual methods
.method public addContactListener(Lcom/android/ex/chips/MTKContactObserver$ContactListener;)V
    .locals 3
    .param p1, "l"    # Lcom/android/ex/chips/MTKContactObserver$ContactListener;

    .prologue
    .line 75
    const-string v0, "MTKRecipContactObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addContactListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mQueryHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "MTKRecipContactObserver"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mQueryThread:Landroid/os/HandlerThread;

    .line 81
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mQueryThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/ex/chips/MTKContactObserver;->mQueryThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mQueryHandler:Landroid/os/Handler;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mQueryHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/ex/chips/MTKContactObserver;->mDeInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mQueryHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/ex/chips/MTKContactObserver;->mInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    monitor-exit v1

    .line 88
    :cond_1
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method deInitState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    const-string v0, "MTKRecipContactObserver"

    const-string v1, "deInitState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mStateReady:Z

    .line 158
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 159
    iput-object v2, p0, Lcom/android/ex/chips/MTKContactObserver;->mObserver:Landroid/database/ContentObserver;

    .line 160
    iput-object v2, p0, Lcom/android/ex/chips/MTKContactObserver;->mResolver:Landroid/content/ContentResolver;

    .line 161
    iput-object v2, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    .line 162
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mPreDirtyContactSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 163
    sget-object v0, Lcom/android/ex/chips/MTKContactObserver;->sPreDirtyContactMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 164
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mDirtyContactSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 165
    iget-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mQueryThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mQueryThread:Landroid/os/HandlerThread;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mQueryHandler:Landroid/os/Handler;

    .line 169
    monitor-exit v1

    .line 171
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDirtyContactItem(Landroid/database/Cursor;)Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    .locals 9
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 287
    sget v8, Lcom/android/ex/chips/MTKContactObserver;->_IDIndex:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 288
    .local v1, "_ID":J
    sget v8, Lcom/android/ex/chips/MTKContactObserver;->CONTACT_IDIndex:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 289
    .local v3, "contactID":J
    sget v8, Lcom/android/ex/chips/MTKContactObserver;->DELETEDIndex:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 290
    .local v6, "delete":I
    sget v8, Lcom/android/ex/chips/MTKContactObserver;->DIRTYIndex:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 291
    .local v5, "dirty":I
    sget v8, Lcom/android/ex/chips/MTKContactObserver;->VERSIONIndex:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 292
    .local v7, "version":I
    new-instance v0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;

    invoke-direct/range {v0 .. v7}, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;-><init>(JJIII)V

    .line 293
    .local v0, "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    return-object v0
.end method

.method initCursorIndex()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/ex/chips/MTKContactObserver;->_IDIndex:I

    .line 206
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    const-string v1, "contact_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/ex/chips/MTKContactObserver;->CONTACT_IDIndex:I

    .line 207
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    const-string v1, "deleted"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/ex/chips/MTKContactObserver;->DELETEDIndex:I

    .line 208
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    const-string v1, "dirty"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/ex/chips/MTKContactObserver;->DIRTYIndex:I

    .line 209
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    const-string v1, "version"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/ex/chips/MTKContactObserver;->VERSIONIndex:I

    .line 210
    return-void
.end method

.method initState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 173
    iget-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 174
    iget-object v2, p0, Lcom/android/ex/chips/MTKContactObserver;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 175
    :try_start_0
    new-instance v1, Lcom/android/ex/chips/MTKContactObserver$3;

    iget-object v3, p0, Lcom/android/ex/chips/MTKContactObserver;->mQueryHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v3}, Lcom/android/ex/chips/MTKContactObserver$3;-><init>(Lcom/android/ex/chips/MTKContactObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mObserver:Landroid/database/ContentObserver;

    .line 183
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    iget-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mResolver:Landroid/content/ContentResolver;

    .line 185
    iget-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/ex/chips/MTKContactObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 190
    :cond_0
    invoke-virtual {p0, v5, v5}, Lcom/android/ex/chips/MTKContactObserver;->queryDirtyRawContact(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    .line 191
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKContactObserver;->initCursorIndex()V

    .line 193
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/MTKContactObserver;->getDirtyContactItem(Landroid/database/Cursor;)Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;

    move-result-object v0

    .line 195
    .local v0, "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    iget-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mPreDirtyContactSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v1, Lcom/android/ex/chips/MTKContactObserver;->sPreDirtyContactMap:Ljava/util/HashMap;

    iget-wide v2, v0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->_ID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    .end local v0    # "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    .line 183
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 201
    iput-boolean v4, p0, Lcom/android/ex/chips/MTKContactObserver;->mStateReady:Z

    .line 202
    const-string v1, "MTKRecipContactObserver"

    const-string v2, "initState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method queryDirtyRawContact(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/ex/chips/MTKContactObserver;->sProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 218
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v0, "MTKRecipContactObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryDirtyRawContact cursor count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-object v6
.end method

.method public removeContactListener(Lcom/android/ex/chips/MTKContactObserver$ContactListener;)V
    .locals 5
    .param p1, "l"    # Lcom/android/ex/chips/MTKContactObserver$ContactListener;

    .prologue
    .line 90
    const-string v0, "MTKRecipContactObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeContactListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/ex/chips/MTKContactObserver;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver;->mQueryHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/ex/chips/MTKContactObserver;->mDeInitRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    monitor-exit v1

    .line 97
    :cond_0
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
