.class Lcom/mediatek/dialer/util/Worker$MyHandler;
.super Landroid/os/Handler;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/util/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/util/Worker;


# direct methods
.method public constructor <init>(Lcom/mediatek/dialer/util/Worker;Landroid/os/Looper;)V
    .locals 0
    .param p2, "loop"    # Landroid/os/Looper;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mediatek/dialer/util/Worker$MyHandler;->this$0:Lcom/mediatek/dialer/util/Worker;

    .line 41
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    return-void
.end method
