.class Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler$1;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgrProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sc:Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler$1;->this$0:Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;

    iput-object p2, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler$1;->val$sc:Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;

    iput-object p3, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 517
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 518
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 519
    .local v3, "listAdapter":Landroid/widget/ListAdapter;
    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 520
    .local v4, "slot":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick slot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  dialog = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 523
    invoke-static {v4}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimInserted(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 524
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 525
    const-string v5, "onClick sim is not inserted"

    invoke-static {v5}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 540
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v3    # "listAdapter":Landroid/widget/ListAdapter;
    .end local v4    # "slot":I
    :goto_0
    return-void

    .line 530
    .restart local v1    # "alert":Landroid/app/AlertDialog;
    .restart local v3    # "listAdapter":Landroid/widget/ListAdapter;
    .restart local v4    # "slot":I
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 531
    iget-object v5, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler$1;->val$sc:Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;

    iget-object v5, v5, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mFoundForSlot:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 532
    iget-object v7, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler$1;->this$0:Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;

    iget-object v8, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler$1;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler$1;->val$sc:Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;

    iget-object v5, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler$1;->val$sc:Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;

    iget-object v5, v5, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mSimNameForSlot:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler$1;->val$sc:Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;

    iget-object v6, v6, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mSimNumberForSlot:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v5, v6}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;->showToast(Landroid/content/Context;Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick dismiss dialog = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 536
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v3    # "listAdapter":Landroid/widget/ListAdapter;
    .end local v4    # "slot":I
    :catch_0
    move-exception v2

    .line 537
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "SpecialCharSequenceMgrProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v5, "SpecialCharSequenceMgrProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
