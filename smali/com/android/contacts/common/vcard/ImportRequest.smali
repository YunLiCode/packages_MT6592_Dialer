.class public Lcom/android/contacts/common/vcard/ImportRequest;
.super Ljava/lang/Object;
.source "ImportRequest.java"


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final data:[B

.field public final displayName:Ljava/lang/String;

.field public final entryCount:I

.field public final estimatedCharset:Ljava/lang/String;

.field public final estimatedVCardType:I

.field public final uri:Landroid/net/Uri;

.field public final vcardVersion:I


# direct methods
.method public constructor <init>(Landroid/accounts/Account;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "data"    # [B
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "estimatedType"    # I
    .param p6, "estimatedCharset"    # Ljava/lang/String;
    .param p7, "vcardVersion"    # I
    .param p8, "entryCount"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportRequest;->account:Landroid/accounts/Account;

    .line 102
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportRequest;->data:[B

    .line 103
    iput-object p3, p0, Lcom/android/contacts/common/vcard/ImportRequest;->uri:Landroid/net/Uri;

    .line 104
    iput-object p4, p0, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    .line 105
    iput p5, p0, Lcom/android/contacts/common/vcard/ImportRequest;->estimatedVCardType:I

    .line 106
    iput-object p6, p0, Lcom/android/contacts/common/vcard/ImportRequest;->estimatedCharset:Ljava/lang/String;

    .line 107
    iput p7, p0, Lcom/android/contacts/common/vcard/ImportRequest;->vcardVersion:I

    .line 108
    iput p8, p0, Lcom/android/contacts/common/vcard/ImportRequest;->entryCount:I

    .line 109
    return-void
.end method