.class public Lcom/android/dialer/database/DialerDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/database/DialerDatabaseHelper$1;,
        Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;,
        Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;,
        Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;,
        Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialSortingOrder;,
        Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;,
        Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;,
        Lcom/android/dialer/database/DialerDatabaseHelper$PropertiesColumns;,
        Lcom/android/dialer/database/DialerDatabaseHelper$PrefixColumns;,
        Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialDbColumns;,
        Lcom/android/dialer/database/DialerDatabaseHelper$Tables;
    }
.end annotation


# static fields
.field private static final DATABASE_LAST_CREATED_SHARED_PREF:Ljava/lang/String; = "com.android.dialer"

.field public static final DATABASE_NAME:Ljava/lang/String; = "dialer.db"

.field public static final DATABASE_VERSION:I = 0x4

.field private static final DATABASE_VERSION_PROPERTY:Ljava/lang/String; = "database_version"

.field private static final DEBUG:Z = false

.field private static final LAST_UPDATED_MILLIS:Ljava/lang/String; = "last_updated_millis"

.field private static final MAX_ENTRIES:I = 0x14

.field private static final TAG:Ljava/lang/String; = "DialerDatabaseHelper"

.field private static final mLock:Ljava/lang/Object;

.field private static final sInUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sSingleton:Lcom/android/dialer/database/DialerDatabaseHelper;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->sSingleton:Lcom/android/dialer/database/DialerDatabaseHelper;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->sInUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 326
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/database/DialerDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 327
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "dbVersion"    # I

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 331
    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    .line 332
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    const-class v1, Lcom/android/dialer/database/DialerDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->sSingleton:Lcom/android/dialer/database/DialerDatabaseHelper;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lcom/android/dialer/database/DialerDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "dialer.db"

    invoke-direct {v0, v2, v3}, Lcom/android/dialer/database/DialerDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->sSingleton:Lcom/android/dialer/database/DialerDatabaseHelper;

    .line 314
    :cond_0
    sget-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->sSingleton:Lcom/android/dialer/database/DialerDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getNewInstanceForTest(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 322
    new-instance v0, Lcom/android/dialer/database/DialerDatabaseHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/database/DialerDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private removeDeletedContacts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "last_update_time"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 509
    iget-object v0, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "contact_deleted_timestamp > ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 515
    .local v7, "deletedContactCursor":Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 517
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 520
    .local v6, "deleteContactId":Ljava/lang/Long;
    const-string v0, "smartdial_table"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 522
    const-string v0, "prefix_table"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 528
    .end local v6    # "deleteContactId":Ljava/lang/Long;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 529
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 528
    throw v0

    .line 526
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 529
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 531
    return-void
.end method

.method private removePotentiallyCorruptedContacts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "last_update_time"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 542
    const-string v0, "prefix_table"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_id IN (SELECT contact_id FROM smartdial_table WHERE last_smartdial_update_time > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 548
    const-string v0, "smartdial_table"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_smartdial_update_time > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 550
    return-void
.end method

.method private removeUpdatedContacts(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "updatedContactCursor"    # Landroid/database/Cursor;

    .prologue
    .line 577
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 579
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 582
    .local v0, "contactId":Ljava/lang/Long;
    const-string v1, "smartdial_table"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 584
    const-string v1, "prefix_table"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 590
    .end local v0    # "contactId":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 588
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 592
    return-void
.end method

.method private resetSmartDialLastUpdatedTime()V
    .locals 5

    .prologue
    .line 461
    iget-object v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "com.android.dialer"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 463
    .local v0, "databaseLastUpdateSharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 464
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_updated_millis"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 465
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 466
    return-void
.end method

.method private setupTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/android/dialer/database/DialerDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 346
    const-string v0, "CREATE TABLE smartdial_table (id INTEGER PRIMARY KEY AUTOINCREMENT,data_id INTEGER, phone_number TEXT,contact_id INTEGER,lookup_key TEXT,display_name TEXT, photo_id INTEGER, last_smartdial_update_time LONG, last_time_used LONG, times_used INTEGER, starred INTEGER, is_super_primary INTEGER, in_visible_group INTEGER, is_primary INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 363
    const-string v0, "CREATE TABLE prefix_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,prefix TEXT COLLATE NOCASE, contact_id INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 369
    const-string v0, "CREATE TABLE properties (property_key TEXT PRIMARY KEY, property_value TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 374
    const-string v0, "database_version"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/database/DialerDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Lcom/android/dialer/database/DialerDatabaseHelper;->resetSmartDialLastUpdatedTime()V

    .line 376
    return-void
.end method


# virtual methods
.method countPrefixTableRows(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 566
    const-string v0, "SELECT COUNT(1) FROM prefix_table"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 379
    const-string v0, "DROP TABLE IF EXISTS prefix_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 380
    const-string v0, "DROP TABLE IF EXISTS smartdial_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 381
    const-string v0, "DROP TABLE IF EXISTS properties"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public getLooseMatches(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialNameMatcher;)Ljava/util/ArrayList;
    .locals 32
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "nameMatcher"    # Lcom/android/dialer/dialpad/SmartDialNameMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/dialer/dialpad/SmartDialNameMatcher;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 886
    sget-object v2, Lcom/android/dialer/database/DialerDatabaseHelper;->sInUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v24

    .line 887
    .local v24, "inUpdate":Z
    if-eqz v24, :cond_0

    .line 888
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v28

    .line 982
    :goto_0
    return-object v28

    .line 891
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/database/DialerDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v22

    .line 894
    .local v22, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v30, "%"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 896
    .local v25, "looseQuery":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v28

    .line 898
    .local v28, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;>;"
    const/16 v29, 0x0

    check-cast v29, Lcom/android/contacts/common/util/StopWatch;

    .line 900
    .local v29, "stopWatch":Lcom/android/contacts/common/util/StopWatch;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    .line 903
    .local v20, "currentTimeStamp":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "SELECT data_id, display_name, photo_id, phone_number, contact_id, lookup_key FROM smartdial_table WHERE contact_id IN  (SELECT contact_id FROM prefix_table WHERE prefix_table.prefix LIKE \'"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v30, "\')"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v30, " ORDER BY "

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v30, "smartdial_table.starred DESC, smartdial_table.is_super_primary DESC, (CASE WHEN ( ?1 - smartdial_table.last_time_used) < 259200000 THEN 0  WHEN ( ?1 - smartdial_table.last_time_used) < 2592000000 THEN 1  ELSE 2 END), smartdial_table.times_used DESC, smartdial_table.in_visible_group DESC, smartdial_table.display_name, smartdial_table.contact_id, smartdial_table.is_primary DESC"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v20, v30, v31

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 924
    .local v21, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 925
    .local v12, "columnDataId":I
    const/4 v13, 0x1

    .line 926
    .local v13, "columnDisplayNamePrimary":I
    const/16 v17, 0x2

    .line 927
    .local v17, "columnPhotoId":I
    const/16 v16, 0x3

    .line 928
    .local v16, "columnNumber":I
    const/4 v14, 0x4

    .line 929
    .local v14, "columnId":I
    const/4 v15, 0x5

    .line 934
    .local v15, "columnLookupKey":I
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 935
    .local v23, "duplicates":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;>;"
    const/16 v19, 0x0

    .line 941
    .local v19, "counter":I
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x14

    move/from16 v0, v19

    if-ge v0, v2, :cond_4

    .line 942
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 943
    .local v5, "dataID":J
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 944
    .local v7, "displayName":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 945
    .local v8, "phoneNumber":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 946
    .local v3, "id":J
    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 947
    .local v10, "photoId":J
    const/4 v2, 0x5

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 952
    .local v9, "lookupKey":Ljava/lang/String;
    new-instance v18, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v3, v4}, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;-><init>(Lcom/android/dialer/database/DialerDatabaseHelper;Ljava/lang/String;J)V

    .line 953
    .local v18, "contactMatch":Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 961
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matches(Ljava/lang/String;)Z

    move-result v26

    .line 962
    .local v26, "nameMatches":Z
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v2

    if-eqz v2, :cond_3

    const/16 v27, 0x1

    .line 964
    .local v27, "numberMatches":Z
    :goto_2
    if-nez v26, :cond_2

    if-eqz v27, :cond_1

    .line 966
    :cond_2
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 967
    new-instance v2, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;

    invoke-direct/range {v2 .. v11}, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 962
    .end local v27    # "numberMatches":Z
    :cond_3
    const/16 v27, 0x0

    goto :goto_2

    .line 980
    .end local v3    # "id":J
    .end local v5    # "dataID":J
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v8    # "phoneNumber":Ljava/lang/String;
    .end local v9    # "lookupKey":Ljava/lang/String;
    .end local v10    # "photoId":J
    .end local v18    # "contactMatch":Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;
    .end local v26    # "nameMatches":Z
    :catchall_0
    move-exception v2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_4
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 433
    :try_start_0
    const-string v1, "properties"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "property_value"

    aput-object v3, v2, v0

    const-string v3, "property_key=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 437
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 439
    .local v10, "value":Ljava/lang/String;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 443
    :cond_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 445
    if-eqz v10, :cond_1

    .line 447
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "value":Ljava/lang/String;
    :goto_0
    return-object v10

    .line 443
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 446
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "value":Ljava/lang/String;
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    move-object v10, p3

    .line 447
    goto :goto_0

    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "value":Ljava/lang/String;
    :cond_1
    move-object v10, p3

    .line 445
    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/dialer/database/DialerDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/dialer/database/DialerDatabaseHelper;->getProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyAsInt(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 452
    const-string v2, ""

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/dialer/database/DialerDatabaseHelper;->getProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "stored":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 456
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .line 455
    .restart local p3    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method insertNamePrefixes(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "nameCursor"    # Landroid/database/Cursor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 681
    const-string v7, "display_name"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 683
    .local v1, "columnIndexName":I
    const-string v7, "contact_id"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 685
    .local v0, "columnIndexContactId":I
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 687
    :try_start_0
    const-string v6, "INSERT INTO prefix_table (contact_id, prefix)  VALUES (?, ?)"

    .line 691
    .local v6, "sqlInsert":Ljava/lang/String;
    const-string v7, "INSERT INTO prefix_table (contact_id, prefix)  VALUES (?, ?)"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 693
    .local v3, "insert":Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 695
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/dialer/dialpad/SmartDialPrefix;->generateNamePrefixes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 698
    .local v5, "namePrefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 699
    .local v4, "namePrefix":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 700
    const/4 v7, 0x2

    invoke-virtual {v3, v7, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 701
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 702
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 708
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "insert":Landroid/database/sqlite/SQLiteStatement;
    .end local v4    # "namePrefix":Ljava/lang/String;
    .end local v5    # "namePrefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sqlInsert":Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 706
    .restart local v3    # "insert":Landroid/database/sqlite/SQLiteStatement;
    .restart local v6    # "sqlInsert":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 710
    return-void
.end method

.method protected insertUpdatedContactsAndNumberPrefix(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/lang/Long;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "updatedContactCursor"    # Landroid/database/Cursor;
    .param p3, "currentMillis"    # Ljava/lang/Long;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 604
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 606
    :try_start_0
    const-string v8, "INSERT INTO smartdial_table (data_id, phone_number, contact_id, lookup_key, display_name, photo_id, last_time_used, times_used, starred, is_super_primary, in_visible_group, is_primary, last_smartdial_update_time)  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 621
    .local v8, "sqlInsert":Ljava/lang/String;
    const-string v9, "INSERT INTO smartdial_table (data_id, phone_number, contact_id, lookup_key, display_name, photo_id, last_time_used, times_used, starred, is_super_primary, in_visible_group, is_primary, last_smartdial_update_time)  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 623
    .local v3, "insert":Landroid/database/sqlite/SQLiteStatement;
    const-string v7, "INSERT INTO prefix_table (contact_id, prefix)  VALUES (?, ?)"

    .line 627
    .local v7, "numberSqlInsert":Ljava/lang/String;
    const-string v9, "INSERT INTO prefix_table (contact_id, prefix)  VALUES (?, ?)"

    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 629
    .local v4, "numberInsert":Landroid/database/sqlite/SQLiteStatement;
    const/4 v9, -0x1

    invoke-interface {p2, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 630
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 631
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 632
    const/4 v9, 0x2

    const/4 v10, 0x3

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 633
    const/4 v9, 0x3

    const/4 v10, 0x4

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 634
    const/4 v9, 0x4

    const/4 v10, 0x5

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 635
    const/4 v9, 0x6

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "displayName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 638
    const/4 v9, 0x5

    iget-object v10, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a04b9

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 642
    :goto_0
    const/4 v9, 0x6

    const/4 v10, 0x7

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 643
    const/4 v9, 0x7

    const/16 v10, 0x8

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 644
    const/16 v9, 0x8

    const/16 v10, 0x9

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 645
    const/16 v9, 0x9

    const/16 v10, 0xa

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 646
    const/16 v9, 0xa

    const/16 v10, 0xb

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 647
    const/16 v9, 0xb

    const/16 v10, 0xc

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 648
    const/16 v9, 0xc

    const/16 v10, 0xd

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 649
    const/16 v9, 0xd

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 650
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 651
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 653
    const/4 v9, 0x3

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "contactPhoneNumber":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/dialer/dialpad/SmartDialPrefix;->parseToNumberTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 658
    .local v6, "numberPrefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 659
    .local v5, "numberPrefix":Ljava/lang/String;
    const/4 v9, 0x1

    const/4 v10, 0x4

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v4, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 661
    const/4 v9, 0x2

    invoke-virtual {v4, v9, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 662
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 663
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 669
    .end local v0    # "contactPhoneNumber":Ljava/lang/String;
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "insert":Landroid/database/sqlite/SQLiteStatement;
    .end local v4    # "numberInsert":Landroid/database/sqlite/SQLiteStatement;
    .end local v5    # "numberPrefix":Ljava/lang/String;
    .end local v6    # "numberPrefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "numberSqlInsert":Ljava/lang/String;
    .end local v8    # "sqlInsert":Ljava/lang/String;
    :catchall_0
    move-exception v9

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9

    .line 640
    .restart local v1    # "displayName":Ljava/lang/String;
    .restart local v3    # "insert":Landroid/database/sqlite/SQLiteStatement;
    .restart local v4    # "numberInsert":Landroid/database/sqlite/SQLiteStatement;
    .restart local v7    # "numberSqlInsert":Ljava/lang/String;
    .restart local v8    # "sqlInsert":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x5

    :try_start_1
    invoke-virtual {v3, v9, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 667
    .end local v1    # "displayName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 671
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/android/dialer/database/DialerDatabaseHelper;->setupTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 342
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldNumber"    # I
    .param p3, "newNumber"    # I

    .prologue
    const/4 v3, 0x4

    .line 391
    const-string v1, "database_version"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/dialer/database/DialerDatabaseHelper;->getPropertyAsInt(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v0

    .line 393
    .local v0, "oldVersion":I
    if-nez v0, :cond_0

    .line 394
    const-string v1, "DialerDatabaseHelper"

    const-string v2, "Malformed database version..recreating database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    if-ge v0, v3, :cond_1

    .line 398
    invoke-direct {p0, p1}, Lcom/android/dialer/database/DialerDatabaseHelper;->setupTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 408
    :goto_0
    return-void

    .line 402
    :cond_1
    if-eq v0, v3, :cond_2

    .line 403
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error upgrading the database to version 4"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_2
    const-string v1, "database_version"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/dialer/database/DialerDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method removeAllContacts(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 557
    const-string v0, "smartdial_table"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 558
    const-string v0, "prefix_table"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 559
    return-void
.end method

.method public setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 418
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 419
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "property_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v1, "property_value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v1, "properties"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 422
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/dialer/database/DialerDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/dialer/database/DialerDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public startSmartDialUpdateThread()V
    .locals 2

    .prologue
    .line 472
    new-instance v0, Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;-><init>(Lcom/android/dialer/database/DialerDatabaseHelper;Lcom/android/dialer/database/DialerDatabaseHelper$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 473
    return-void
.end method

.method public updateSmartDialDatabase()V
    .locals 17

    .prologue
    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/database/DialerDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 722
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v16, Lcom/android/dialer/database/DialerDatabaseHelper;->mLock:Ljava/lang/Object;

    monitor-enter v16

    .line 726
    const/4 v14, 0x0

    :try_start_0
    check-cast v14, Lcom/android/contacts/common/util/StopWatch;

    .line 729
    .local v14, "stopWatch":Lcom/android/contacts/common/util/StopWatch;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "com.android.dialer"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 731
    .local v8, "databaseLastUpdateSharedPref":Landroid/content/SharedPreferences;
    const-string v1, "last_updated_millis"

    const-wide/16 v2, 0x0

    invoke-interface {v8, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 740
    .local v12, "lastUpdateMillis":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;->URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "contact_last_updated_timestamp > ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v12, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 745
    .local v15, "updatedContactCursor":Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 751
    .local v7, "currentMillis":Ljava/lang/Long;
    if-nez v15, :cond_0

    .line 755
    monitor-exit v16

    .line 875
    :goto_0
    return-void

    .line 759
    :cond_0
    sget-object v1, Lcom/android/dialer/database/DialerDatabaseHelper;->sInUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 762
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/android/dialer/database/DialerDatabaseHelper;->removeDeletedContacts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 763
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/android/dialer/database/DialerDatabaseHelper;->removePotentiallyCorruptedContacts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    :try_start_1
    const-string v1, "0"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 777
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/android/dialer/database/DialerDatabaseHelper;->removeUpdatedContacts(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 784
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v15, v7}, Lcom/android/dialer/database/DialerDatabaseHelper;->insertUpdatedContactsAndNumberPrefix(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 790
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT DISTINCT display_name, contact_id FROM smartdial_table WHERE last_smartdial_update_time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    .line 807
    .local v13, "nameCursor":Landroid/database/Cursor;
    if-eqz v13, :cond_2

    .line 810
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/android/dialer/database/DialerDatabaseHelper;->insertNamePrefixes(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 815
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 820
    :cond_2
    const-string v1, "CREATE INDEX IF NOT EXISTS smartdial_contact_id_index ON smartdial_table (contact_id);"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 823
    const-string v1, "CREATE INDEX IF NOT EXISTS smartdial_last_update_index ON smartdial_table (last_smartdial_update_time);"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 827
    const-string v1, "CREATE INDEX IF NOT EXISTS smartdial_sort_index ON smartdial_table (starred, is_super_primary, last_time_used, times_used, in_visible_group, display_name, contact_id, is_primary);"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 839
    const-string v1, "CREATE INDEX IF NOT EXISTS nameprefix_index ON prefix_table (prefix);"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 842
    const-string v1, "CREATE INDEX IF NOT EXISTS nameprefix_contact_id_index ON prefix_table (contact_id);"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 854
    :try_start_5
    const-string v1, "ANALYZE smartdial_table"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 855
    const-string v1, "ANALYZE prefix_table"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 856
    const-string v1, "ANALYZE smartdial_contact_id_index"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 857
    const-string v1, "ANALYZE smartdial_last_update_index"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 858
    const-string v1, "ANALYZE nameprefix_index"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 859
    const-string v1, "ANALYZE nameprefix_contact_id_index"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 869
    :goto_1
    :try_start_6
    sget-object v1, Lcom/android/dialer/database/DialerDatabaseHelper;->sInUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 871
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 872
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_updated_millis"

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v10, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 873
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 874
    monitor-exit v16

    goto/16 :goto_0

    .end local v7    # "currentMillis":Ljava/lang/Long;
    .end local v8    # "databaseLastUpdateSharedPref":Landroid/content/SharedPreferences;
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "lastUpdateMillis":Ljava/lang/String;
    .end local v13    # "nameCursor":Landroid/database/Cursor;
    .end local v14    # "stopWatch":Lcom/android/contacts/common/util/StopWatch;
    .end local v15    # "updatedContactCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 790
    .restart local v7    # "currentMillis":Ljava/lang/Long;
    .restart local v8    # "databaseLastUpdateSharedPref":Landroid/content/SharedPreferences;
    .restart local v12    # "lastUpdateMillis":Ljava/lang/String;
    .restart local v14    # "stopWatch":Lcom/android/contacts/common/util/StopWatch;
    .restart local v15    # "updatedContactCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    :try_start_7
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v1

    .line 815
    .restart local v13    # "nameCursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1

    .line 860
    :catch_0
    move-exception v11

    .line 861
    .local v11, "ex":Landroid/database/sqlite/SQLiteFullException;
    const-string v1, "DialerDatabaseHelper"

    const-string v2, "[updateSmartDialDatabase]catch SQLiteFullException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method
