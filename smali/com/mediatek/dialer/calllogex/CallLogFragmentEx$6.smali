.class Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$6;
.super Ljava/lang/Object;
.source "CallLogFragmentEx.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 2036
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$6;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 2039
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$6;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # invokes: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->finishPhoneNumerSelectedActionModeIfShown()Z
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$4300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2043
    :goto_0
    return v1

    .line 2042
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$6;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # invokes: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->startPhoneNumberSelectedActionMode(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$4400(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Landroid/view/View;)V

    goto :goto_0
.end method
