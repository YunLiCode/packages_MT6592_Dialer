.class Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection$1;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection$1;->this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection$1;->this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a052b

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;I)V

    .line 242
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection$1;->this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    .line 243
    return-void
.end method
