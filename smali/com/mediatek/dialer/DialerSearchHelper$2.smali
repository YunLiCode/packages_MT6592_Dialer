.class Lcom/mediatek/dialer/DialerSearchHelper$2;
.super Ljava/lang/Object;
.source "DialerSearchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/dialer/DialerSearchHelper;->dialerSearchUpdateAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/DialerSearchHelper;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/DialerSearchHelper;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mediatek/dialer/DialerSearchHelper$2;->this$0:Lcom/mediatek/dialer/DialerSearchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper$2;->this$0:Lcom/mediatek/dialer/DialerSearchHelper;

    # invokes: Lcom/mediatek/dialer/DialerSearchHelper;->dialerSearchInit()V
    invoke-static {v0}, Lcom/mediatek/dialer/DialerSearchHelper;->access$200(Lcom/mediatek/dialer/DialerSearchHelper;)V

    .line 110
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper$2;->this$0:Lcom/mediatek/dialer/DialerSearchHelper;

    # invokes: Lcom/mediatek/dialer/DialerSearchHelper;->notifyContentChange()V
    invoke-static {v0}, Lcom/mediatek/dialer/DialerSearchHelper;->access$300(Lcom/mediatek/dialer/DialerSearchHelper;)V

    .line 111
    return-void
.end method
