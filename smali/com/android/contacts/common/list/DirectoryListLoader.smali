.class public Lcom/android/contacts/common/list/DirectoryListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "DirectoryListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/DirectoryListLoader$DirectoryQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final DIRECTORY_TYPE:Ljava/lang/String; = "directoryType"

.field private static final RESULT_PROJECTION:[Ljava/lang/String;

.field public static final SEARCH_MODE_CONTACT_SHORTCUT:I = 0x2

.field public static final SEARCH_MODE_DATA_SHORTCUT:I = 0x3

.field public static final SEARCH_MODE_DEFAULT:I = 0x1

.field public static final SEARCH_MODE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactEntryListAdapter"


# instance fields
.field private mDefaultDirectoryList:Landroid/database/MatrixCursor;

.field private mDirectorySearchMode:I

.field private mLocalInvisibleDirectoryEnabled:Z

.field private final mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "directoryType"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photoSupport"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/list/DirectoryListLoader;->RESULT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Lcom/android/contacts/common/list/DirectoryListLoader$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/list/DirectoryListLoader$1;-><init>(Lcom/android/contacts/common/list/DirectoryListLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mObserver:Landroid/database/ContentObserver;

    .line 87
    return-void
.end method

.method private getDefaultDirectories()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 177
    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/contacts/common/list/DirectoryListLoader;->RESULT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    .line 179
    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    new-array v1, v7, [Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a04b0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v8, v1, v6

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    new-array v1, v7, [Ljava/lang/Object;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a04b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v8, v1, v6

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    return-object v0
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 19

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDirectorySearchMode:I

    if-nez v1, :cond_0

    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getDefaultDirectories()Landroid/database/Cursor;

    move-result-object v17

    .line 173
    :goto_0
    return-object v17

    .line 119
    :cond_0
    new-instance v17, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/contacts/common/list/DirectoryListLoader;->RESULT_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 120
    .local v17, "result":Landroid/database/MatrixCursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 121
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 123
    .local v16, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDirectorySearchMode:I

    packed-switch v1, :pswitch_data_0

    .line 144
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported directory search mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDirectorySearchMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/common/list/DirectoryListLoader;->mLocalInvisibleDirectoryEnabled:Z

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    .line 148
    .local v4, "selection":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/common/list/DirectoryListLoader$DirectoryQuery;->URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/common/list/DirectoryListLoader$DirectoryQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 151
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_2
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 152
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 153
    .local v9, "directoryId":J
    const/4 v11, 0x0

    .line 155
    .local v11, "directoryType":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 156
    .local v14, "packageName":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 157
    .local v18, "typeResourceId":I
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    if-eqz v18, :cond_1

    .line 159
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 165
    :cond_1
    :goto_3
    const/4 v1, 0x3

    :try_start_2
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 166
    .local v12, "displayName":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 167
    .local v15, "photoSupport":I
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v11, v1, v2

    const/4 v2, 0x2

    aput-object v12, v1, v2

    const/4 v2, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 170
    .end local v9    # "directoryId":J
    .end local v11    # "directoryType":Ljava/lang/String;
    .end local v12    # "displayName":Ljava/lang/String;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "photoSupport":I
    .end local v18    # "typeResourceId":I
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 125
    .end local v4    # "selection":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    const-string v4, "_id!=1"

    goto :goto_1

    .line 130
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shortcutSupport=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/common/list/DirectoryListLoader;->mLocalInvisibleDirectoryEnabled:Z

    if-eqz v1, :cond_3

    const-string v1, ""

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    .restart local v4    # "selection":Ljava/lang/String;
    goto/16 :goto_1

    .line 130
    .end local v4    # "selection":Ljava/lang/String;
    :cond_3
    const-string v1, " AND _id!=1"

    goto :goto_4

    .line 136
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shortcutSupport IN (2, 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/common/list/DirectoryListLoader;->mLocalInvisibleDirectoryEnabled:Z

    if-eqz v1, :cond_4

    const-string v1, ""

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 141
    .restart local v4    # "selection":Ljava/lang/String;
    goto/16 :goto_1

    .line 136
    .end local v4    # "selection":Ljava/lang/String;
    :cond_4
    const-string v1, " AND _id!=1"

    goto :goto_5

    .line 161
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "directoryId":J
    .restart local v11    # "directoryType":Ljava/lang/String;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v18    # "typeResourceId":I
    :catch_0
    move-exception v13

    .line 162
    .local v13, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "ContactEntryListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot obtain directory type from package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 170
    .end local v9    # "directoryId":J
    .end local v11    # "directoryType":Ljava/lang/String;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v18    # "typeResourceId":I
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->stopLoading()V

    .line 196
    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->forceLoad()V

    .line 106
    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 111
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDirectorySearchMode:I

    .line 91
    return-void
.end method

.method public setLocalInvisibleDirectoryEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mLocalInvisibleDirectoryEnabled:Z

    .line 99
    return-void
.end method
