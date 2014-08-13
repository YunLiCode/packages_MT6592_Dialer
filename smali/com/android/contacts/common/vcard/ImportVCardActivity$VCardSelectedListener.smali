.class Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardSelectedListener"
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mSelectedIndexSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Z)V
    .locals 1
    .param p2, "multipleSelect"    # Z

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mCurrentIndex:I

    .line 682
    if-eqz p2, :cond_0

    .line 683
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    .line 685
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, -0x1

    .line 688
    if-ne p2, v6, :cond_4

    .line 689
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v5, :cond_3

    .line 690
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .local v3, "selectedVCardFileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;>;"
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$600(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 693
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 694
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 695
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$600(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 698
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # invokes: Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCardFromSDCard(Ljava/util/List;)V
    invoke-static {v5, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)V

    .line 706
    .end local v2    # "i":I
    .end local v3    # "selectedVCardFileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;>;"
    .end local v4    # "size":I
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v6, 0x1b208

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->setResult(I)V

    .line 731
    :cond_2
    :goto_2
    return-void

    .line 700
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$600(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v5

    iget v7, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mCurrentIndex:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    # invokes: Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCardFromSDCard(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;)V
    invoke-static {v6, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$900(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;)V

    goto :goto_1

    .line 710
    :cond_4
    const/4 v5, -0x2

    if-ne p2, v5, :cond_5

    .line 711
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto :goto_2

    .line 714
    :cond_5
    iput p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mCurrentIndex:I

    .line 715
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v5, :cond_2

    .line 717
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVcardFileSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$800(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 718
    .local v0, "btnOK":Landroid/widget/Button;
    const/4 v1, 0x1

    .line 719
    .local v1, "enabled":Z
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 720
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 721
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 722
    const/4 v1, 0x0

    .line 727
    :cond_6
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 725
    :cond_7
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, p3, :cond_1

    .line 735
    :cond_0
    const-string v1, "ImportVCardActivity"

    const-string v2, "Inconsist state in index %d (%s)"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$600(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :goto_0
    return-void

    .line 738
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method