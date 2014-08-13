.class Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardCacheThread"
.end annotation


# instance fields
.field private mCanceled:Z

.field private final mDisplayName:Ljava/lang/String;

.field private final mSource:[B

.field private final mSourceUris:[Landroid/net/Uri;

.field private mVCardParser:Lcom/android/vcard/VCardParser;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;[Landroid/net/Uri;)V
    .locals 4
    .param p1, "context"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p2, "sourceUris"    # [Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 294
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 295
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    .line 296
    iput-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B

    .line 298
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 300
    .local v0, "powerManager":Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "ImportVCardActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 303
    iput-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    .line 304
    return-void
.end method

.method private constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/common/vcard/ImportRequest;
    .locals 22
    .param p1, "data"    # [B
    .param p2, "localDataUri"    # Landroid/net/Uri;
    .param p3, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 553
    .local v20, "resolver":Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 554
    .local v11, "counter":Lcom/android/vcard/VCardEntryCounter;
    const/4 v13, 0x0

    .line 555
    .local v13, "detector":Lcom/android/vcard/VCardSourceDetector;
    const/4 v9, 0x1

    .line 557
    .local v9, "vcardVersion":I
    const/16 v21, 0x0

    .line 559
    .local v21, "shouldUseV30":Z
    if-eqz p1, :cond_2

    .line 560
    :try_start_0
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v18, "is":Ljava/io/InputStream;
    move-object/from16 v19, v18

    .line 564
    .end local v18    # "is":Ljava/io/InputStream;
    .local v19, "is":Ljava/io/InputStream;
    :goto_0
    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 566
    :try_start_1
    new-instance v12, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v12}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 567
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v12, "counter":Lcom/android/vcard/VCardEntryCounter;
    :try_start_2
    new-instance v14, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v14}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 568
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .local v14, "detector":Lcom/android/vcard/VCardSourceDetector;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v12}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v14}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 594
    if-eqz v19, :cond_0

    .line 596
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_4 .. :try_end_4} :catch_7

    :cond_0
    :goto_1
    move-object/from16 v18, v19

    .end local v19    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 602
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    :cond_1
    :goto_2
    if-eqz v21, :cond_5

    const/4 v9, 0x2

    .line 608
    .end local v18    # "is":Ljava/io/InputStream;
    :goto_3
    new-instance v2, Lcom/android/contacts/common/vcard/ImportRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-static {v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$500(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v7

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntryCounter;->getCount()I

    move-result v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/contacts/common/vcard/ImportRequest;-><init>(Landroid/accounts/Account;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V

    return-object v2

    .line 562
    :cond_2
    :try_start_5
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_5
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v18

    .restart local v18    # "is":Ljava/io/InputStream;
    move-object/from16 v19, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v19    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 571
    :catch_0
    move-exception v16

    move-object v14, v13

    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v12, v11

    .line 573
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v16, "e1":Lcom/android/vcard/exception/VCardVersionException;
    :goto_4
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 577
    :goto_5
    const/16 v21, 0x1

    .line 578
    if-eqz p1, :cond_3

    .line 579
    :try_start_7
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 583
    .end local v19    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    :goto_6
    :try_start_8
    new-instance v2, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 585
    :try_start_9
    new-instance v11, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v11}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_9
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 586
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    :try_start_a
    new-instance v13, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v13}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_a
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 587
    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v11}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v13}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_b
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 594
    if-eqz v18, :cond_1

    .line 596
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_2

    .line 597
    :catch_1
    move-exception v2

    goto :goto_2

    .line 581
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v19    # "is":Ljava/io/InputStream;
    :cond_3
    :try_start_d
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result-object v18

    .end local v19    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 590
    :catch_2
    move-exception v17

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 591
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v17, "e2":Lcom/android/vcard/exception/VCardVersionException;
    :goto_7
    :try_start_e
    new-instance v2, Lcom/android/vcard/exception/VCardException;

    const-string v3, "vCard with unspported version."

    invoke-direct {v2, v3}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 594
    .end local v17    # "e2":Lcom/android/vcard/exception/VCardVersionException;
    :catchall_0
    move-exception v2

    .end local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    :goto_8
    if-eqz v18, :cond_4

    .line 596
    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_f .. :try_end_f} :catch_3

    .line 594
    :cond_4
    :goto_9
    :try_start_10
    throw v2
    :try_end_10
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_10 .. :try_end_10} :catch_3

    .line 603
    .end local v18    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v15

    .line 604
    .local v15, "e":Lcom/android/vcard/exception/VCardNestedException;
    :goto_a
    const-string v2, "ImportVCardActivity"

    const-string v3, "Nested Exception is found (it may be false-positive)."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 602
    .end local v15    # "e":Lcom/android/vcard/exception/VCardNestedException;
    .restart local v18    # "is":Ljava/io/InputStream;
    :cond_5
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 574
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .restart local v19    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v2

    goto :goto_5

    .line 597
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .end local v19    # "is":Ljava/io/InputStream;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v18    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v3

    goto :goto_9

    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v19    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v2

    goto/16 :goto_1

    .line 603
    :catch_7
    move-exception v15

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_a

    .line 594
    :catchall_1
    move-exception v2

    move-object/from16 v18, v19

    .end local v19    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    goto :goto_8

    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v19    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v2

    move-object/from16 v18, v19

    .end local v19    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_8

    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v19    # "is":Ljava/io/InputStream;
    :catchall_3
    move-exception v2

    move-object/from16 v18, v19

    .end local v19    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_8

    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    :catchall_4
    move-exception v2

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_8

    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catchall_5
    move-exception v2

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    goto :goto_8

    .line 590
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catch_8
    move-exception v17

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    goto :goto_7

    :catch_9
    move-exception v17

    goto :goto_7

    .line 571
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v19    # "is":Ljava/io/InputStream;
    :catch_a
    move-exception v16

    move-object v14, v13

    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    goto/16 :goto_4

    :catch_b
    move-exception v16

    goto/16 :goto_4
.end method

.method private copyTo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 495
    const-string v7, "ImportVCardActivity"

    const-string v8, "Copy a Uri to app local storage (%s -> %s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    .line 498
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 499
    .local v6, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 500
    .local v4, "inputChannel":Ljava/nio/channels/ReadableByteChannel;
    const/4 v5, 0x0

    .line 501
    .local v5, "outputChannel":Ljava/nio/channels/WritableByteChannel;
    const/4 v2, 0x0

    .line 503
    .local v2, "destUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v4

    .line 504
    invoke-virtual {v1, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 505
    const/4 v7, 0x0

    invoke-virtual {v1, p2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 506
    const/16 v7, 0x2000

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 507
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-interface {v4, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 508
    iget-boolean v7, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v7, :cond_2

    .line 509
    const-string v7, "ImportVCardActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Canceled during caching "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    const/4 v2, 0x0

    .line 521
    .end local v2    # "destUri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 523
    :try_start_1
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 528
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 530
    :try_start_2
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 536
    :cond_1
    :goto_2
    return-object v2

    .line 512
    .restart local v2    # "destUri":Landroid/net/Uri;
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 513
    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 514
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 521
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_3

    .line 523
    :try_start_4
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 528
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 530
    :try_start_5
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 521
    :cond_4
    :goto_4
    throw v7

    .line 516
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_5
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 517
    :goto_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 518
    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 524
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v3

    .line 525
    .local v3, "e":Ljava/io/IOException;
    const-string v8, "ImportVCardActivity"

    const-string v9, "Failed to close inputChannel."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 531
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 532
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "ImportVCardActivity"

    const-string v9, "Failed to close outputChannel"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 524
    .end local v2    # "destUri":Landroid/net/Uri;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v3

    .line 525
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "ImportVCardActivity"

    const-string v8, "Failed to close inputChannel."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 531
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 532
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "ImportVCardActivity"

    const-string v8, "Failed to close outputChannel"

    :goto_6
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 521
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "destUri":Landroid/net/Uri;
    :cond_6
    if-eqz v4, :cond_7

    .line 523
    :try_start_7
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 528
    :cond_7
    :goto_7
    if-eqz v5, :cond_1

    .line 530
    :try_start_8
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 531
    :catch_4
    move-exception v3

    .line 532
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "ImportVCardActivity"

    const-string v8, "Failed to close outputChannel"

    goto :goto_6

    .line 524
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 525
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "ImportVCardActivity"

    const-string v8, "Failed to close inputChannel."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    .line 621
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 624
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "ImportVCardActivity"

    const-string v1, "WakeLock is being held."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 312
    :cond_0
    return-void
.end method

.method public getSourceUris()[Landroid/net/Uri;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 628
    const-string v0, "ImportVCardActivity"

    const-string v1, "Cancel request has come. Abort caching vCard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->cancel()V

    .line 630
    return-void
.end method

.method public run()V
    .locals 24

    .prologue
    .line 316
    const-string v4, "ImportVCardActivity"

    const-string v5, "vCard cache thread starts running."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    if-nez v4, :cond_0

    .line 318
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "vCard cache thread must be launched after a service connection is established"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 322
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 325
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->setVCardCaching(Z)V

    .line 327
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 328
    const-string v4, "ImportVCardActivity"

    const-string v5, "vCard cache operation is canceled."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    const-string v4, "ImportVCardActivity"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->setVCardCaching(Z)V

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->isServiceBinded()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$302(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    .line 485
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    :goto_1
    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    .line 489
    return-void

    .line 332
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    .line 341
    .local v10, "context":Landroid/content/Context;
    const/4 v9, 0x0

    .line 342
    .local v9, "cache_index":I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v22, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    .line 345
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/common/vcard/ImportRequest;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->sendImportRequest(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 472
    :goto_3
    const-string v4, "ImportVCardActivity"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->setVCardCaching(Z)V

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->isServiceBinded()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$302(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    .line 485
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    goto/16 :goto_1

    .line 346
    :catch_0
    move-exception v13

    .line 347
    .local v13, "e":Lcom/android/vcard/exception/VCardException;
    :try_start_4
    const-string v4, "ImportVCardActivity"

    const-string v5, "Maybe the file is in wrong format"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v5, 0x7f0a0517

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 472
    const-string v4, "ImportVCardActivity"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->setVCardCaching(Z)V

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->isServiceBinded()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$302(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    .line 485
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    goto/16 :goto_1

    .line 352
    .end local v13    # "e":Lcom/android/vcard/exception/VCardException;
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 354
    .local v2, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    .local v8, "arr$":[Landroid/net/Uri;
    array-length v0, v8

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_6
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget-object v3, v8, v16

    .line 355
    .local v3, "sourceUri":Landroid/net/Uri;
    const/4 v15, 0x0

    .line 358
    .local v15, "filename":Ljava/lang/String;
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "import_tmp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".vcf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 359
    invoke-virtual {v10, v15}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 360
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 369
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->copyTo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 370
    .local v19, "localDataUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v4, :cond_6

    .line 371
    const-string v4, "ImportVCardActivity"

    const-string v5, "vCard cache operation is canceled."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 452
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "sourceUri":Landroid/net/Uri;
    .end local v8    # "arr$":[Landroid/net/Uri;
    .end local v9    # "cache_index":I
    .end local v10    # "context":Landroid/content/Context;
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "localDataUri":Landroid/net/Uri;
    .end local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :catch_1
    move-exception v13

    .line 453
    .local v13, "e":Ljava/lang/OutOfMemoryError;
    :try_start_6
    const-string v4, "ImportVCardActivity"

    const-string v5, "OutOfMemoryError occured during caching vCard"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 455
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v5, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v23, 0x7f0a0515

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 472
    const-string v4, "ImportVCardActivity"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->setVCardCaching(Z)V

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->isServiceBinded()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$302(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    .line 485
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    goto/16 :goto_1

    .line 363
    .end local v13    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "sourceUri":Landroid/net/Uri;
    .restart local v8    # "arr$":[Landroid/net/Uri;
    .restart local v9    # "cache_index":I
    .restart local v10    # "context":Landroid/content/Context;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v15    # "filename":Ljava/lang/String;
    .restart local v16    # "i$":I
    .restart local v18    # "len$":I
    .restart local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :cond_4
    const v4, 0x7fffffff

    if-ne v9, v4, :cond_5

    .line 364
    :try_start_7
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exceeded cache limit"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 457
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "sourceUri":Landroid/net/Uri;
    .end local v8    # "arr$":[Landroid/net/Uri;
    .end local v9    # "cache_index":I
    .end local v10    # "context":Landroid/content/Context;
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    .end local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :catch_2
    move-exception v13

    .line 459
    .local v13, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    const-string v4, "ImportVCardActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[run] the vcf file is not found when import! exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v5, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread$1;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;)V

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 472
    const-string v4, "ImportVCardActivity"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->setVCardCaching(Z)V

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->isServiceBinded()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$302(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    .line 485
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    goto/16 :goto_1

    .line 366
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "sourceUri":Landroid/net/Uri;
    .restart local v8    # "arr$":[Landroid/net/Uri;
    .restart local v9    # "cache_index":I
    .restart local v10    # "context":Landroid/content/Context;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v15    # "filename":Ljava/lang/String;
    .restart local v16    # "i$":I
    .restart local v18    # "len$":I
    .restart local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 368
    goto/16 :goto_7

    .line 374
    .restart local v19    # "localDataUri":Landroid/net/Uri;
    :cond_6
    if-nez v19, :cond_7

    .line 375
    :try_start_9
    const-string v4, "ImportVCardActivity"

    const-string v5, "destUri is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 467
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "sourceUri":Landroid/net/Uri;
    .end local v8    # "arr$":[Landroid/net/Uri;
    .end local v9    # "cache_index":I
    .end local v10    # "context":Landroid/content/Context;
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "localDataUri":Landroid/net/Uri;
    .end local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :catch_3
    move-exception v13

    .line 468
    .local v13, "e":Ljava/io/IOException;
    :try_start_a
    const-string v4, "ImportVCardActivity"

    const-string v5, "IOException during caching vCard"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v5, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v23, 0x7f0a0514

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 472
    const-string v4, "ImportVCardActivity"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->setVCardCaching(Z)V

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->isServiceBinded()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$302(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    .line 485
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    goto/16 :goto_1

    .line 379
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "sourceUri":Landroid/net/Uri;
    .restart local v8    # "arr$":[Landroid/net/Uri;
    .restart local v9    # "cache_index":I
    .restart local v10    # "context":Landroid/content/Context;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v15    # "filename":Ljava/lang/String;
    .restart local v16    # "i$":I
    .restart local v18    # "len$":I
    .restart local v19    # "localDataUri":Landroid/net/Uri;
    .restart local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :cond_7
    const/4 v12, 0x0

    .line 380
    .local v12, "displayName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 384
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x1

    :try_start_b
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 387
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 388
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    .line 389
    const-string v4, "ImportVCardActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected multiple rows: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_8
    const-string v4, "_display_name"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 393
    .local v17, "index":I
    if-ltz v17, :cond_9

    .line 394
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v12

    .line 404
    .end local v17    # "index":I
    :cond_9
    if-eqz v11, :cond_a

    .line 405
    :try_start_c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 408
    :cond_a
    :goto_b
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 409
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v12

    .line 414
    :cond_b
    const/4 v4, 0x0

    :try_start_d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v1, v12}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/common/vcard/ImportRequest;
    :try_end_d
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v21

    .line 440
    .local v21, "request":Lcom/android/contacts/common/vcard/ImportRequest;
    :try_start_e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v4, :cond_d

    .line 441
    const-string v4, "ImportVCardActivity"

    const-string v5, "vCard cache operation is canceled."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 472
    const-string v4, "ImportVCardActivity"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->setVCardCaching(Z)V

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->isServiceBinded()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$302(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    .line 485
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    goto/16 :goto_1

    .line 398
    .end local v21    # "request":Lcom/android/contacts/common/vcard/ImportRequest;
    :catch_4
    move-exception v13

    .line 401
    .local v13, "e":Ljava/lang/Exception;
    :try_start_f
    const-string v4, "ImportVCardActivity"

    const-string v5, "exception caught "

    invoke-static {v4, v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 404
    if-eqz v11, :cond_a

    .line 405
    :try_start_10
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_b

    .line 472
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "sourceUri":Landroid/net/Uri;
    .end local v8    # "arr$":[Landroid/net/Uri;
    .end local v9    # "cache_index":I
    .end local v10    # "context":Landroid/content/Context;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "displayName":Ljava/lang/String;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "localDataUri":Landroid/net/Uri;
    .end local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :catchall_0
    move-exception v4

    const-string v5, "ImportVCardActivity"

    const-string v6, "Finished caching vCard."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->setVCardCaching(Z)V

    .line 476
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 478
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->isServiceBinded()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 479
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v6, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$302(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    .line 485
    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 486
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v6, 0x0

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v5, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 487
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    .line 472
    throw v4

    .line 404
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "sourceUri":Landroid/net/Uri;
    .restart local v8    # "arr$":[Landroid/net/Uri;
    .restart local v9    # "cache_index":I
    .restart local v10    # "context":Landroid/content/Context;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "displayName":Ljava/lang/String;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v15    # "filename":Ljava/lang/String;
    .restart local v16    # "i$":I
    .restart local v18    # "len$":I
    .restart local v19    # "localDataUri":Landroid/net/Uri;
    .restart local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :catchall_1
    move-exception v4

    if-eqz v11, :cond_c

    .line 405
    :try_start_11
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_c
    throw v4

    .line 415
    :catch_5
    move-exception v13

    .line 416
    .local v13, "e":Lcom/android/vcard/exception/VCardException;
    const-string v4, "ImportVCardActivity"

    const-string v5, "Maybe the file is in wrong format"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v5, 0x7f0a0517

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 419
    .local v20, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v12, v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(Ljava/lang/String;Ljava/lang/String;I)V

    .line 354
    .end local v13    # "e":Lcom/android/vcard/exception/VCardException;
    .end local v20    # "reason":Ljava/lang/String;
    :goto_e
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 424
    :catch_6
    move-exception v13

    .line 425
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "ImportVCardActivity"

    const-string v5, "Maybe the file is in wrong format"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v5, 0x7f0a0517

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 428
    .restart local v20    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v12, v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_e

    .line 433
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    .end local v20    # "reason":Ljava/lang/String;
    :catch_7
    move-exception v13

    .line 434
    .local v13, "e":Ljava/io/IOException;
    const-string v4, "ImportVCardActivity"

    const-string v5, "Unexpected IOException"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v5, 0x7f0a0514

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 437
    .restart local v20    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v12, v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_e

    .line 444
    .end local v13    # "e":Ljava/io/IOException;
    .end local v20    # "reason":Ljava/lang/String;
    .restart local v21    # "request":Lcom/android/contacts/common/vcard/ImportRequest;
    :cond_d
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 450
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "sourceUri":Landroid/net/Uri;
    .end local v8    # "arr$":[Landroid/net/Uri;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "displayName":Ljava/lang/String;
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "localDataUri":Landroid/net/Uri;
    .end local v21    # "request":Lcom/android/contacts/common/vcard/ImportRequest;
    :cond_e
    const-string v4, "ImportVCardActivity"

    const-string v5, "Empty import requests. Ignore it."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_3

    .line 482
    .end local v9    # "cache_index":I
    .end local v10    # "context":Landroid/content/Context;
    .end local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :cond_f
    const-string v5, "ImportVCardActivity"

    const-string v6, "in VcardCacheThread, Run(), mConnection==null !!! "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .local v13, "e":Ljava/lang/OutOfMemoryError;
    :cond_10
    const-string v4, "ImportVCardActivity"

    const-string v5, "in VcardCacheThread, Run(), mConnection==null !!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .local v13, "e":Ljava/io/FileNotFoundException;
    :cond_11
    const-string v4, "ImportVCardActivity"

    const-string v5, "in VcardCacheThread, Run(), mConnection==null !!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .local v13, "e":Ljava/io/IOException;
    :cond_12
    const-string v4, "ImportVCardActivity"

    const-string v5, "in VcardCacheThread, Run(), mConnection==null !!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .end local v13    # "e":Ljava/io/IOException;
    :cond_13
    const-string v4, "ImportVCardActivity"

    const-string v5, "in VcardCacheThread, Run(), mConnection==null !!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v9    # "cache_index":I
    .restart local v10    # "context":Landroid/content/Context;
    .local v13, "e":Lcom/android/vcard/exception/VCardException;
    .restart local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :cond_14
    const-string v4, "ImportVCardActivity"

    const-string v5, "in VcardCacheThread, Run(), mConnection==null !!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .end local v13    # "e":Lcom/android/vcard/exception/VCardException;
    :cond_15
    const-string v4, "ImportVCardActivity"

    const-string v5, "in VcardCacheThread, Run(), mConnection==null !!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "sourceUri":Landroid/net/Uri;
    .restart local v8    # "arr$":[Landroid/net/Uri;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "displayName":Ljava/lang/String;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v15    # "filename":Ljava/lang/String;
    .restart local v16    # "i$":I
    .restart local v18    # "len$":I
    .restart local v19    # "localDataUri":Landroid/net/Uri;
    .restart local v21    # "request":Lcom/android/contacts/common/vcard/ImportRequest;
    :cond_16
    const-string v4, "ImportVCardActivity"

    const-string v5, "in VcardCacheThread, Run(), mConnection==null !!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method
