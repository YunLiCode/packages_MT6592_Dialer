.class public Lcom/android/dialerbind/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newCachedNumberLookupService()Lcom/android/dialer/service/CachedNumberLookupService;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newCallLogAdapter(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;ZZ)Lcom/android/dialer/calllog/CallLogAdapter;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callFetcher"    # Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
    .param p2, "contactInfoHelper"    # Lcom/android/dialer/calllog/ContactInfoHelper;
    .param p3, "useCallAsPrimaryAction"    # Z
    .param p4, "isCallLog"    # Z

    .prologue
    .line 40
    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;ZZ)V

    return-object v0
.end method
