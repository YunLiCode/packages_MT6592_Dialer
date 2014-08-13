.class Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask$1;
.super Ljava/lang/Object;
.source "CallLogFragmentEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$mainActionIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask$1;->this$1:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;

    iput-object p2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask$1;->val$mainActionIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask$1;->this$1:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask$1;->val$mainActionIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->startActivity(Landroid/content/Intent;)V

    .line 1579
    return-void
.end method
