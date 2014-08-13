.class final Lcom/mediatek/dialer/calllogex/DefaultVoicemailNotifierEx$DefaultNameLookupQuery;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifierEx.java"

# interfaces
.implements Lcom/mediatek/dialer/calllogex/DefaultVoicemailNotifierEx$NameLookupQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/calllogex/DefaultVoicemailNotifierEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultNameLookupQuery"
.end annotation


# static fields
.field private static final DISPLAY_NAME_COLUMN_INDEX:I

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 317
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/dialer/calllogex/DefaultVoicemailNotifierEx$DefaultNameLookupQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/DefaultVoicemailNotifierEx$DefaultNameLookupQuery;->mContentResolver:Landroid/content/ContentResolver;

    .line 324
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Lcom/mediatek/dialer/calllogex/DefaultVoicemailNotifierEx$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/ContentResolver;
    .param p2, "x1"    # Lcom/mediatek/dialer/calllogex/DefaultVoicemailNotifierEx$1;

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/calllogex/DefaultVoicemailNotifierEx$DefaultNameLookupQuery;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public query(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 328
    const/4 v6, 0x0

    .line 330
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/DefaultVoicemailNotifierEx$DefaultNameLookupQuery;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/mediatek/dialer/calllogex/DefaultVoicemailNotifierEx$DefaultNameLookupQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 333
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 336
    :cond_0
    if-eqz v6, :cond_1

    .line 337
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v7

    .line 334
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 336
    if-eqz v6, :cond_2

    .line 337
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 337
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_4
    throw v0
.end method
