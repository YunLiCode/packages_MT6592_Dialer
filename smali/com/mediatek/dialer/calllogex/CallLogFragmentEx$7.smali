.class Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$7;
.super Ljava/lang/Object;
.source "CallLogFragmentEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
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
    .line 2047
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$7;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$7;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # invokes: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->finishPhoneNumerSelectedActionModeIfShown()Z
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$4300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2054
    :goto_0
    return-void

    .line 2053
    :cond_0
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$7;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
