.class Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$2;
.super Ljava/lang/Object;
.source "CallLogFragmentEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->updateOnEntry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$2;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$2;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    const/4 v1, 0x1

    # invokes: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->updateOnTransition(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$900(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Z)V

    .line 970
    return-void
.end method
