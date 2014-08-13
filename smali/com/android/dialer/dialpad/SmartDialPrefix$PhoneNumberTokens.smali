.class public Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;
.super Ljava/lang/Object;
.source "SmartDialPrefix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/SmartDialPrefix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumberTokens"
.end annotation


# instance fields
.field final countryCode:Ljava/lang/String;

.field final countryCodeOffset:I

.field final nanpCodeOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "countryCodeOffset"    # I
    .param p3, "nanpCodeOffset"    # I

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;->countryCode:Ljava/lang/String;

    .line 118
    iput p2, p0, Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;->countryCodeOffset:I

    .line 119
    iput p3, p0, Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;->nanpCodeOffset:I

    .line 120
    return-void
.end method
