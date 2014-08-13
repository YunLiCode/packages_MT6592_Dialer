.class public interface abstract Lcom/mediatek/dialer/DialerSearchHelper$DialerSearchQuery;
.super Ljava/lang/Object;
.source "DialerSearchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/DialerSearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DialerSearchQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 336
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "vds_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vds_call_date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vds_call_log_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "vds_call_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vds_geocoded_location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "vds_sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "vds_vtcall"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vds_indicate_phone_sim"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "vds_starred"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "vds_photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "vds_phone_type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "vds_name"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "vds_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "vds_lookup"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "vds_is_sdn_contact"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "matched_data_offsets"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "matched_name_offsets"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/dialer/DialerSearchHelper$DialerSearchQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
