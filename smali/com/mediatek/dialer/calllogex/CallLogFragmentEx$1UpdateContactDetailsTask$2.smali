.class Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask$2;
.super Ljava/lang/Object;
.source "CallLogFragmentEx.java"

# interfaces
.implements Lcom/android/dialer/BackScrollManager$ScrollableHeader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->onPostExecute([Lcom/mediatek/dialer/PhoneCallDetailsEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;)V
    .locals 0

    .prologue
    .line 1729
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask$2;->this$1:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaximumScrollableHeaderOffset()I
    .locals 2

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask$2;->this$1:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHeader:Landroid/view/View;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3500(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask$2;->this$1:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoto:Landroid/view/View;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3600(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask$2;->this$1:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;

    iget-object v1, v1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHeader:Landroid/view/View;
    invoke-static {v1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3500(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1745
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask$2;->this$1:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoto:Landroid/view/View;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3600(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask$2;->this$1:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;

    iget-object v1, v1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSeparator:Landroid/view/View;
    invoke-static {v1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3700(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public setOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask$2;->this$1:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mControls:Landroid/view/View;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;

    move-result-object v0

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 1734
    return-void
.end method
