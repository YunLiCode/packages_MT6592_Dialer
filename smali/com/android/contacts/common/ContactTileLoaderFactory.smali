.class public final Lcom/android/contacts/common/ContactTileLoaderFactory;
.super Ljava/lang/Object;
.source "ContactTileLoaderFactory.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final COLUMNS_PHONE_ONLY:[Ljava/lang/String;

.field public static final CONTACT_ID:I = 0x0

.field public static final CONTACT_ID_FOR_DATA:I = 0xa

.field public static final CONTACT_PRESENCE:I = 0x5

.field public static final CONTACT_STATUS:I = 0x6

.field public static final DISPLAY_NAME:I = 0x1

.field public static final IS_DEFAULT_NUMBER:I = 0x8

.field public static final LOOKUP_KEY:I = 0x4

.field public static final PHONE_NUMBER:I = 0x5

.field public static final PHONE_NUMBER_LABEL:I = 0x7

.field public static final PHONE_NUMBER_TYPE:I = 0x6

.field public static final PHOTO_URI:I = 0x3

.field public static final PINNED:I = 0x9

.field public static final STARRED:I = 0x2

.field private static final STARRED_ORDER:Ljava/lang/String; = "display_name COLLATE NOCASE ASC"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_uri"

    aput-object v1, v0, v6

    const-string v1, "lookup"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_sdn_contact"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/ContactTileLoaderFactory;->COLUMNS:[Ljava/lang/String;

    .line 72
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_uri"

    aput-object v1, v0, v6

    const-string v1, "lookup"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pinned"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "is_sdn_contact"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/ContactTileLoaderFactory;->COLUMNS_PHONE_ONLY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFrequentLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 125
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_FREQUENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/common/ContactTileLoaderFactory;->COLUMNS:[Ljava/lang/String;

    const-string v4, "starred=?"

    new-array v5, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "0"

    aput-object v6, v5, v1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v0, "cursorLoader":Landroid/content/CursorLoader;
    invoke-static {v0, v7, p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->fixSortOrderByPreference(Landroid/content/CursorLoader;ILandroid/content/Context;)V

    .line 128
    return-object v0
.end method

.method public static createStarredLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 118
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/common/ContactTileLoaderFactory;->COLUMNS:[Ljava/lang/String;

    const-string v4, "starred=?"

    new-array v5, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "display_name ASC"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v0, "cursorLoader":Landroid/content/CursorLoader;
    invoke-static {v0, v7, p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->fixSortOrderByPreference(Landroid/content/CursorLoader;ILandroid/content/Context;)V

    .line 121
    return-object v0
.end method

.method public static createStrequentLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 95
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/common/ContactTileLoaderFactory;->COLUMNS:[Ljava/lang/String;

    const-string v4, "indicate_phone_or_sim_contact=-1 "

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v0, "cursorLoader":Landroid/content/CursorLoader;
    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->fixSortOrderByPreference(Landroid/content/CursorLoader;ILandroid/content/Context;)V

    .line 98
    return-object v0
.end method

.method public static createStrequentPhoneOnlyLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 103
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "strequent_phone_only"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 110
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v3, Lcom/android/contacts/common/ContactTileLoaderFactory;->COLUMNS_PHONE_ONLY:[Ljava/lang/String;

    const-string v4, "indicate_phone_or_sim_contact=-1 "

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v0, "cursorLoader":Landroid/content/CursorLoader;
    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->fixSortOrderByPreference(Landroid/content/CursorLoader;ILandroid/content/Context;)V

    .line 113
    return-object v0
.end method
