.class final Lcom/mediatek/dialer/calllogex/DefaultVoicemailNotifierEx$NewCall;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifierEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/calllogex/DefaultVoicemailNotifierEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NewCall"
.end annotation


# instance fields
.field public final callsUri:Landroid/net/Uri;

.field public final number:Ljava/lang/String;

.field public final voicemailUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "callsUri"    # Landroid/net/Uri;
    .param p2, "voicemailUri"    # Landroid/net/Uri;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/DefaultVoicemailNotifierEx$NewCall;->callsUri:Landroid/net/Uri;

    .line 228
    iput-object p2, p0, Lcom/mediatek/dialer/calllogex/DefaultVoicemailNotifierEx$NewCall;->voicemailUri:Landroid/net/Uri;

    .line 229
    iput-object p3, p0, Lcom/mediatek/dialer/calllogex/DefaultVoicemailNotifierEx$NewCall;->number:Ljava/lang/String;

    .line 230
    return-void
.end method
