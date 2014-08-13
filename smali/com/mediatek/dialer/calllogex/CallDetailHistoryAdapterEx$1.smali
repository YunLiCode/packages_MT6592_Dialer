.class Lcom/mediatek/dialer/calllogex/CallDetailHistoryAdapterEx$1;
.super Ljava/lang/Object;
.source "CallDetailHistoryAdapterEx.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/calllogex/CallDetailHistoryAdapterEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/calllogex/CallDetailHistoryAdapterEx;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/calllogex/CallDetailHistoryAdapterEx;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallDetailHistoryAdapterEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallDetailHistoryAdapterEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 69
    if-eqz p2, :cond_0

    .line 70
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallDetailHistoryAdapterEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallDetailHistoryAdapterEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallDetailHistoryAdapterEx;->mControls:Landroid/view/View;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallDetailHistoryAdapterEx;->access$000(Lcom/mediatek/dialer/calllogex/CallDetailHistoryAdapterEx;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 72
    :cond_0
    return-void
.end method
