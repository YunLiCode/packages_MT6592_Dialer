.class Lcom/mediatek/contacts/ShareContactViaSDCardActivity$1;
.super Ljava/lang/Object;
.source "ShareContactViaSDCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->showAlertDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$1;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$1;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    invoke-virtual {v0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->finish()V

    .line 256
    return-void
.end method
