.class Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p2, "x1"    # Lcom/android/contacts/common/vcard/ImportVCardActivity$1;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->setResult(I)V

    .line 216
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    .line 217
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->setResult(I)V

    .line 203
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    .line 204
    return-void
.end method
