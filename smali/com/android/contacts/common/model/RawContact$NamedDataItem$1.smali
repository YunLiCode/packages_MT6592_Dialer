.class final Lcom/android/contacts/common/model/RawContact$NamedDataItem$1;
.super Ljava/lang/Object;
.source "RawContact.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/RawContact$NamedDataItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/contacts/common/model/RawContact$NamedDataItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 98
    new-instance v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;

    invoke-direct {v0, p1}, Lcom/android/contacts/common/model/RawContact$NamedDataItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContact$NamedDataItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/common/model/RawContact$NamedDataItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 103
    new-array v0, p1, [Lcom/android/contacts/common/model/RawContact$NamedDataItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContact$NamedDataItem$1;->newArray(I)[Lcom/android/contacts/common/model/RawContact$NamedDataItem;

    move-result-object v0

    return-object v0
.end method