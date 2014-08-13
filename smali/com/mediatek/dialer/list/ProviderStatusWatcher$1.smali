.class Lcom/mediatek/dialer/list/ProviderStatusWatcher$1;
.super Ljava/lang/Object;
.source "ProviderStatusWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/list/ProviderStatusWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/list/ProviderStatusWatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/list/ProviderStatusWatcher;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mediatek/dialer/list/ProviderStatusWatcher$1;->this$0:Lcom/mediatek/dialer/list/ProviderStatusWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/dialer/list/ProviderStatusWatcher$1;->this$0:Lcom/mediatek/dialer/list/ProviderStatusWatcher;

    # invokes: Lcom/mediatek/dialer/list/ProviderStatusWatcher;->startLoading()V
    invoke-static {v0}, Lcom/mediatek/dialer/list/ProviderStatusWatcher;->access$000(Lcom/mediatek/dialer/list/ProviderStatusWatcher;)V

    .line 93
    return-void
.end method
