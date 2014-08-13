.class public interface abstract Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;
.super Ljava/lang/Object;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/DialerDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeleteContactQuery"
.end annotation


# static fields
.field public static final DELECTED_TIMESTAMP:I = 0x1

.field public static final DELETED_CONTACT_ID:I = 0x0

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SELECT_UPDATED_CLAUSE:Ljava/lang/String; = "contact_deleted_timestamp > ?"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 170
    sget-object v0, Landroid/provider/ContactsContract$DeletedContacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;->URI:Landroid/net/Uri;

    .line 172
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_deleted_timestamp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
