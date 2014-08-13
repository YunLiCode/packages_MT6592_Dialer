.class Lcom/android/contacts/common/vcard/ImportVCardActivity$3;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

.field final synthetic val$displayTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$3;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$3;->val$displayTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$3;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$3;->val$displayTitle:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1297
    return-void
.end method
