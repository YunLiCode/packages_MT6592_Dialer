.class Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$9;
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
    .line 2066
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$9;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2069
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$9;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->fourthIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->startActivity(Landroid/content/Intent;)V

    .line 2070
    return-void
.end method
