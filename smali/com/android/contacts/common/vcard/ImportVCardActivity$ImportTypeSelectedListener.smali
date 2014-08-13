.class Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportTypeSelectedListener"
.end annotation


# static fields
.field public static final IMPORT_ALL:I = 0x2

.field public static final IMPORT_MULTIPLE:I = 0x1

.field public static final IMPORT_ONE:I = 0x0

.field public static final IMPORT_TYPE_SIZE:I = 0x3


# instance fields
.field private mCurrentIndex:I

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p2, "x1"    # Lcom/android/contacts/common/vcard/ImportVCardActivity$1;

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, -0x1

    .line 643
    if-ne p2, v3, :cond_0

    .line 644
    iget v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->mCurrentIndex:I

    packed-switch v1, :pswitch_data_0

    .line 656
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v2, 0x7f0d000d

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showDialog(I)V

    .line 663
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v2, 0x1b208

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->setResult(I)V

    .line 672
    :goto_1
    return-void

    .line 646
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$600(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v2

    # invokes: Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCardFromSDCard(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)V

    goto :goto_0

    .line 649
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v2, 0x7f0d000e

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showDialog(I)V

    .line 651
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVcardFileSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$800(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 652
    .local v0, "btnOK":Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 667
    .end local v0    # "btnOK":Landroid/widget/Button;
    :cond_0
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 668
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto :goto_1

    .line 670
    :cond_1
    iput p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->mCurrentIndex:I

    goto :goto_1

    .line 644
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
