.class public interface abstract Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;
.super Ljava/lang/Object;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/DialerDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhoneQuery"
.end annotation


# static fields
.field public static final PHONE_CONTACT_ID:I = 0x4

.field public static final PHONE_DISPLAY_NAME:I = 0x6

.field public static final PHONE_ID:I = 0x0

.field public static final PHONE_IN_VISIBLE_GROUP:I = 0xc

.field public static final PHONE_IS_PRIMARY:I = 0xd

.field public static final PHONE_IS_SUPER_PRIMARY:I = 0xb

.field public static final PHONE_LABEL:I = 0x2

.field public static final PHONE_LAST_TIME_USED:I = 0x8

.field public static final PHONE_LOOKUP_KEY:I = 0x5

.field public static final PHONE_NUMBER:I = 0x3

.field public static final PHONE_PHOTO_ID:I = 0x7

.field public static final PHONE_STARRED:I = 0xa

.field public static final PHONE_TIMES_USED:I = 0x9

.field public static final PHONE_TYPE:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SELECT_UPDATED_CLAUSE:Ljava/lang/String; = "contact_last_updated_timestamp > ?"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 125
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "directory"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remove_duplicate_entries"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;->URI:Landroid/net/Uri;

    .line 131
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "last_time_used"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "times_used"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "in_visible_group"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
