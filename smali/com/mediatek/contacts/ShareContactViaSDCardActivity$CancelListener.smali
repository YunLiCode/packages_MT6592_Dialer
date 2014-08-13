.class Lcom/mediatek/contacts/ShareContactViaSDCardActivity$CancelListener;
.super Ljava/lang/Object;
.source "ShareContactViaSDCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/ShareContactViaSDCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$CancelListener;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;Lcom/mediatek/contacts/ShareContactViaSDCardActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/contacts/ShareContactViaSDCardActivity;
    .param p2, "x1"    # Lcom/mediatek/contacts/ShareContactViaSDCardActivity$1;

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$CancelListener;-><init>(Lcom/mediatek/contacts/ShareContactViaSDCardActivity;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$CancelListener;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    invoke-virtual {v0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->finish()V

    .line 342
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$CancelListener;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    invoke-virtual {v0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->finish()V

    .line 335
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$CancelListener;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    invoke-virtual {v0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->finish()V

    .line 331
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCardActivity$CancelListener;->this$0:Lcom/mediatek/contacts/ShareContactViaSDCardActivity;

    invoke-virtual {v0}, Lcom/mediatek/contacts/ShareContactViaSDCardActivity;->finish()V

    .line 346
    const/4 v0, 0x0

    return v0
.end method
