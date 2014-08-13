.class public abstract Lcom/mediatek/dialer/calllogex/IntentProviderEx;
.super Ljava/lang/Object;
.source "IntentProviderEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallDetailIntentProvider(Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;IJI)Lcom/mediatek/dialer/calllogex/IntentProviderEx;
    .locals 6
    .param p0, "adapter"    # Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "groupSize"    # I

    .prologue
    .line 73
    new-instance v0, Lcom/mediatek/dialer/calllogex/IntentProviderEx$2;

    move-object v1, p0

    move v2, p1

    move v3, p4

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/dialer/calllogex/IntentProviderEx$2;-><init>(Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;IIJ)V

    return-object v0
.end method

.method public static getPlayVoicemailIntentProvider(JLjava/lang/String;)Lcom/mediatek/dialer/calllogex/IntentProviderEx;
    .locals 1
    .param p0, "rowId"    # J
    .param p2, "voicemailUri"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Lcom/mediatek/dialer/calllogex/IntentProviderEx$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/dialer/calllogex/IntentProviderEx$1;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public static getReturnCallIntentProvider(Ljava/lang/String;J)Lcom/mediatek/dialer/calllogex/IntentProviderEx;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "simId"    # J

    .prologue
    .line 123
    new-instance v0, Lcom/mediatek/dialer/calllogex/IntentProviderEx$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/dialer/calllogex/IntentProviderEx$3;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public abstract getIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method
