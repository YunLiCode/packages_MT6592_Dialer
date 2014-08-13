.class Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SpecialCharSequenceMgrProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 414
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 415
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 447
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete token = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    move-object/from16 v3, p2

    .line 448
    check-cast v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;

    .line 449
    .local v3, "sc":Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete sc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 450
    if-nez v3, :cond_1

    .line 451
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete sc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 452
    if-eqz p3, :cond_0

    .line 453
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v5, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 460
    .local v9, "context":Landroid/content/Context;
    iget-object v5, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_2

    .line 461
    iget-object v5, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 465
    :cond_2
    invoke-virtual {v3}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->getTextField()Landroid/widget/EditText;

    move-result-object v14

    .line 467
    .local v14, "text":Landroid/widget/EditText;
    const/4 v11, 0x0

    .line 468
    .local v11, "name":Ljava/lang/String;
    const/4 v12, 0x0

    .line 470
    .local v12, "number":Ljava/lang/String;
    if-eqz p3, :cond_5

    if-eqz v14, :cond_5

    .line 471
    const/4 v5, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 472
    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 473
    invoke-static/range {p1 .. p1}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;->fdnRequest(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 474
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fdnRequest for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 488
    :cond_4
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 491
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sc.mFoundForSlot["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mFoundForSlot:Landroid/util/SparseBooleanArray;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 493
    iget-object v5, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mSimNameForSlot:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 494
    iget-object v5, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mSimNumberForSlot:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 495
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 497
    iget-boolean v5, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mIsSingleQuery:Z

    if-eqz v5, :cond_8

    .line 498
    iget-object v5, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_6

    iget-object v5, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 499
    iget-object v5, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 500
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 503
    :cond_6
    iget-object v5, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mFoundForSlot:Landroid/util/SparseBooleanArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 504
    invoke-virtual {p0, v9, v3, v11, v12}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;->showToast(Landroid/content/Context;Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 478
    :cond_7
    const-string v5, "index"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iget v6, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->contactNum:I

    if-ne v5, v6, :cond_3

    .line 479
    const-string v5, "name"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 481
    const-string v5, "number"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 484
    iget-object v5, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mFoundForSlot:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    move/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_1

    .line 507
    :cond_8
    # getter for: Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;->sStateReadySlotList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;->access$100()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 508
    iget-object v5, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_9

    iget-object v5, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 510
    iget-object v5, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 511
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 514
    :cond_9
    new-instance v13, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler$1;

    invoke-direct {v13, p0, v3, v9}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler$1;-><init>(Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;Landroid/content/Context;)V

    .line 543
    .local v13, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    const v5, 0x7f0a0398

    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v9, v5, v6, v13}, Lcom/mediatek/dialer/widget/SimPickerDialog;->create(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v10

    .line 546
    .local v10, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 547
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onquerycomplete: show the selector dialog = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 549
    .end local v10    # "dialog":Landroid/app/AlertDialog;
    .end local v13    # "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_a
    invoke-virtual {v3}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->getQueryHandler()Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;

    move-result-object v1

    .line 550
    .local v1, "handler":Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;
    # getter for: Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;->sStateReadySlotList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;->access$100()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 551
    .local v2, "nextQuerySlotId":I
    invoke-static {v2}, Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;->getSimUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 552
    .local v4, "uri":Landroid/net/Uri;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "index"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onQueryComplete]next slot to query is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected showToast(Landroid/content/Context;Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sc"    # Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f0a045d

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 418
    # getter for: Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mTextField:Landroid/widget/EditText;
    invoke-static {p2}, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->access$000(Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;)Landroid/widget/EditText;

    move-result-object v1

    .line 419
    .local v1, "text":Landroid/widget/EditText;
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    .line 421
    .local v0, "len":I
    :goto_0
    iget-object v3, p2, Lcom/mediatek/dialer/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->text:Ljava/lang/String;

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 438
    :goto_1
    return-void

    .end local v0    # "len":I
    :cond_0
    move v0, v2

    .line 419
    goto :goto_0

    .line 425
    .restart local v0    # "len":I
    :cond_1
    if-le v0, v4, :cond_2

    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    const-string v3, "#"

    invoke-virtual {p4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 431
    :cond_2
    invoke-virtual {v1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 432
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 435
    const v3, 0x7f0a05a6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 436
    invoke-static {p1, p3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
