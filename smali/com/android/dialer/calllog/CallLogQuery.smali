.class public final Lcom/android/dialer/calllog/CallLogQuery;
.super Ljava/lang/Object;
.source "CallLogQuery.java"


# static fields
.field public static final CACHED_FORMATTED_NUMBER:I = 0xf

.field public static final CACHED_LOOKUP_URI:I = 0xb

.field public static final CACHED_MATCHED_NUMBER:I = 0xc

.field public static final CACHED_NAME:I = 0x8

.field public static final CACHED_NORMALIZED_NUMBER:I = 0xd

.field public static final CACHED_NUMBER_LABEL:I = 0xa

.field public static final CACHED_NUMBER_TYPE:I = 0x9

.field public static final CACHED_PHOTO_ID:I = 0xe

.field public static final CALL_TYPE:I = 0x4

.field public static final COUNTRY_ISO:I = 0x5

.field public static final DATE:I = 0x2

.field public static final DURATION:I = 0x3

.field public static final GEOCODED_LOCATION:I = 0x7

.field public static final ID:I = 0x0

.field public static final IS_READ:I = 0x10

.field public static final NUMBER:I = 0x1

.field public static final NUMBER_PRESENTATION:I = 0x11

.field public static final VOICEMAIL_URI:I = 0x6

.field public static final _PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "voicemail_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lookup_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "matched_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "formatted_number"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "is_read"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "presentation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
