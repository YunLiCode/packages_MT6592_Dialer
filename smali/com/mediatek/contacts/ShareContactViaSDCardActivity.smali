.class public Lcom/mediatek/contacts/ShareContactViaSDCardActivity;
.super Landroid/app/Activity;
.source "ShareContactViaSDCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;,
        Lcom/mediatek/contacts/ShareContactViaSDCardActivity$CancelListener;
    }
.end annotation


# static fields
.field static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field static final PHONE_ID_COLUMN_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShareContactViaSDCardActivity"

.field private static sFile:Ljava/io/File;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCancelListener:Lcom/mediatek/contacts/ShareContactViaSDCardActivity$CancelListener;

.field private mDataUri:Landroid/net/Uri;

.field private mIntent:Landroid/content/Intent;

.field private mLookUpUris:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mSdIsVisible:Z

.field private mSearchContactThread:Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;

.field private mSingleContactId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->sFile:Ljava/io/File;

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mAction:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mDataUri:Landroid/net/Uri;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mSingleContactId:I

    .line 78
    iput-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mLookUpUris:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mIntent:Landroid/content/Intent;

    .line 80
    iput-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 81
    iput-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mSearchContactThread:Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mSdIsVisible:Z

    .line 350
    new-instance v0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$CancelListener;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$CancelListener;-><init>(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;Lcom/mediatek/contacts/ShareContactViaSDCardActivity$1;)V

    iput-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mCancelListener:Lcom/mediatek/contacts/ShareContactViaSDCardActivity$CancelListener;

    .line 352
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/contacts/ShareContactViaSDCardActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mDataUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mLookUpUris:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/contacts/ShareContactViaSDCardActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->shareViaSDCard(Ljava/lang/String;)V

    return-void
.end method

.method private changeLookupUrisToSelection(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "lookUpUris"    # Ljava/lang/String;

    .prologue
    .line 276
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "tempUris":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "lookup in ("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .local v2, "selection":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 280
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_0

    .line 283
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_1
    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    return-object v2
.end method

.method private checkSDCardAvaliable()Z
    .locals 2

    .prologue
    .line 293
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "defaultPath"    # Ljava/lang/String;

    .prologue
    .line 241
    const-string v0, "ShareContactViaSDCardActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDirectory]path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",defaultPath :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    if-nez p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getExternalStorageDirectory()Ljava/io/File;
    .locals 5

    .prologue
    .line 231
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 234
    .local v0, "file":Ljava/io/File;
    const-string v2, "ShareContactViaSDCardActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getExternalStorageDirectory]file.path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-object v0
.end method

.method private static getExternalStorageState()Ljava/lang/String;
    .locals 5

    .prologue
    .line 220
    :try_start_0
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 222
    .local v0, "mountService":Landroid/os/storage/IMountService;
    const-string v2, "ShareContactViaSDCardActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getExternalStorageState] file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->sFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v2, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->sFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 226
    :goto_0
    return-object v2

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "rex":Ljava/lang/Exception;
    const-string v2, "ShareContactViaSDCardActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getExternalStorageState] Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v2, "removed"

    goto :goto_0
.end method

.method private isSDCardFull()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 297
    invoke-static {}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, "state":Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 299
    sget-object v8, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->sFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "path":Ljava/lang/String;
    const-string v8, "ShareContactViaSDCardActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[isSDCardFull]storage path is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 323
    .end local v3    # "path":Ljava/lang/String;
    :goto_0
    return v7

    .line 305
    .restart local v3    # "path":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .line 307
    .local v4, "sf":Landroid/os/StatFs;
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    .end local v4    # "sf":Landroid/os/StatFs;
    invoke-direct {v4, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .restart local v4    # "sf":Landroid/os/StatFs;
    if-nez v4, :cond_1

    .line 315
    const-string v6, "ShareContactViaSDCardActivity"

    const-string v8, "[isSDCardFull] sf is null."

    invoke-static {v6, v8}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    .end local v4    # "sf":Landroid/os/StatFs;
    :catch_0
    move-exception v2

    .line 309
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 310
    const-string v6, "ShareContactViaSDCardActivity"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "sf":Landroid/os/StatFs;
    :cond_1
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 320
    .local v0, "availCount":J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gtz v8, :cond_2

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    .end local v0    # "availCount":J
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "sf":Landroid/os/StatFs;
    :cond_3
    move v7, v6

    .line 323
    goto :goto_0
.end method

.method private shareViaSDCard(Ljava/lang/String;)V
    .locals 15
    .param p1, "lookUpUris"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v7, "contactsID":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 177
    .local v8, "curIndex":I
    const/4 v10, 0x0

    .line 178
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 180
    .local v12, "id":Ljava/lang/String;
    iget v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mSingleContactId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 181
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->changeLookupUrisToSelection(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 182
    .local v14, "selection":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 185
    if-eqz v10, :cond_3

    .line 186
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    if-eqz v10, :cond_0

    .line 188
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 190
    :cond_0
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "curIndex":I
    .local v9, "curIndex":I
    if-eqz v8, :cond_1

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v9

    .end local v9    # "curIndex":I
    .restart local v8    # "curIndex":I
    goto :goto_0

    .line 193
    .end local v8    # "curIndex":I
    .restart local v9    # "curIndex":I
    :cond_1
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v9

    .end local v9    # "curIndex":I
    .restart local v8    # "curIndex":I
    goto :goto_0

    .line 196
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 203
    .end local v14    # "selection":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 205
    .local v11, "exportselection":Ljava/lang/String;
    const-string v0, "ShareContactViaSDCardActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[shareViaSDCard]exportselection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "CALLING_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, "callingActivity":Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    const-class v0, Lcom/android/contacts/common/vcard/ExportVCardActivity;

    invoke-direct {v13, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v13, "it":Landroid/content/Intent;
    const-string v0, "multi_export_type"

    const/4 v1, 0x1

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    const-string v0, "exportselection"

    invoke-virtual {v13, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v0, "CALLING_ACTIVITY"

    invoke-virtual {v13, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v13}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    invoke-virtual {p0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->finish()V

    .line 214
    return-void

    .line 199
    .end local v6    # "callingActivity":Ljava/lang/String;
    .end local v11    # "exportselection":Ljava/lang/String;
    .end local v13    # "it":Landroid/content/Intent;
    :cond_4
    iget v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mSingleContactId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 200
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private showAlertDialog(II)V
    .locals 3
    .param p1, "msgText"    # I
    .param p2, "msgTitle"    # I

    .prologue
    .line 246
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 247
    .local v0, "alert":Landroid/app/AlertDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 248
    invoke-virtual {p0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 250
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIconAttribute(I)V

    .line 251
    invoke-virtual {p0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mCancelListener:Lcom/mediatek/contacts/ShareContactViaSDCardActivity$CancelListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 253
    new-instance v1, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$1;

    invoke-direct {v1, p0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$1;-><init>(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 258
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 260
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mSdIsVisible:Z

    .line 261
    return-void
.end method

.method private showProgressDialog()V
    .locals 4

    .prologue
    const v3, 0x7f0a03d2

    .line 264
    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_0

    .line 265
    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "message":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 269
    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mSearchContactThread:Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 270
    new-instance v2, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;

    invoke-direct {v2, p0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;-><init>(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;)V

    iput-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mSearchContactThread:Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;

    .line 271
    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mSearchContactThread:Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;

    invoke-virtual {v2}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$SearchContactThread;->start()V

    .line 273
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0a03c4

    const/4 v6, 0x0

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mIntent:Landroid/content/Intent;

    .line 101
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mAction:Ljava/lang/String;

    .line 107
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mLookUpUris:Ljava/lang/String;

    .line 108
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 109
    .local v1, "extraUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mLookUpUris:Ljava/lang/String;

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mIntent:Landroid/content/Intent;

    const-string v4, "contactId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "contactId":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mIntent:Landroid/content/Intent;

    const-string v4, "userProfile"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "userProfile":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    const-string v3, "ShareContactViaSDCardActivity"

    const-string v4, "[onCreate]user profile can not support sd card,return."

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a041b

    invoke-virtual {p0, v4}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 122
    invoke-virtual {p0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->finish()V

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mSingleContactId:I

    .line 130
    :cond_3
    const-string v3, "ShareContactViaSDCardActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onCreate]mAction is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->checkSDCardAvaliable()Z

    move-result v3

    if-nez v3, :cond_4

    .line 133
    const-string v3, "ShareContactViaSDCardActivity"

    const-string v4, "[onCreate]sd card is not avaliable."

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const v3, 0x7f0a0522

    const v4, 0x7f0a038b

    invoke-direct {p0, v3, v4}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->showAlertDialog(II)V

    goto :goto_0

    .line 139
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    sput-object v3, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->sFile:Ljava/io/File;

    .line 141
    invoke-direct {p0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->isSDCardFull()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 142
    const-string v3, "ShareContactViaSDCardActivity"

    const-string v4, "[onCreate]sd card is full."

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, v7, v7}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->showAlertDialog(II)V

    goto :goto_0

    .line 147
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mSingleContactId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mLookUpUris:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    :cond_7
    const-string v3, "ShareContactViaSDCardActivity"

    const-string v4, "[onCreate]file is already on sd card,return."

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0419

    invoke-virtual {p0, v4}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 152
    invoke-virtual {p0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 162
    iget-boolean v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mSdIsVisible:Z

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "android.intent.action.SEND"

    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->showProgressDialog()V

    .line 168
    :cond_0
    return-void
.end method
