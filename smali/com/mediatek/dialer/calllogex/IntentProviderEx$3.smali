.class final Lcom/mediatek/dialer/calllogex/IntentProviderEx$3;
.super Lcom/mediatek/dialer/calllogex/IntentProviderEx;
.source "IntentProviderEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/dialer/calllogex/IntentProviderEx;->getReturnCallIntentProvider(Ljava/lang/String;J)Lcom/mediatek/dialer/calllogex/IntentProviderEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$simId:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/IntentProviderEx$3;->val$number:Ljava/lang/String;

    iput-wide p2, p0, Lcom/mediatek/dialer/calllogex/IntentProviderEx$3;->val$simId:J

    invoke-direct {p0}, Lcom/mediatek/dialer/calllogex/IntentProviderEx;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/IntentProviderEx$3;->val$number:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/dialer/util/DialerUtils;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.extra.original"

    iget-wide v2, p0, Lcom/mediatek/dialer/calllogex/IntentProviderEx$3;->val$simId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
