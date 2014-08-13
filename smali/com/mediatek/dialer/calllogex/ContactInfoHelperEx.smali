.class public Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;
.super Ljava/lang/Object;
.source "ContactInfoHelperEx.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentCountryIso"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;->mCurrentCountryIso:Ljava/lang/String;

    .line 34
    return-void
.end method
