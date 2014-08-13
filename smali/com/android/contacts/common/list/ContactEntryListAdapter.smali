.class public abstract Lcom/android/contacts/common/list/ContactEntryListAdapter;
.super Lcom/android/contacts/common/list/IndexerListAdapter;
.source "ContactEntryListAdapter.java"


# static fields
.field public static final LOCAL_INVISIBLE_DIRECTORY_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "ContactEntryListAdapter"


# instance fields
.field private mContactsCount:Ljava/lang/String;

.field private mDarkTheme:Z

.field private mDefaultFilterHeaderText:Ljava/lang/CharSequence;

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mDisplayPhotos:Z

.field private mEmptyListEnabled:Z

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mIncludeProfile:Z

.field private mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

.field private mProfileExists:Z

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSelectionVisible:Z

.field public mShowCTInternationNumber:Z

.field private mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

.field private mSlot:I

.field private mSortOrder:I

.field private mUpperCaseQueryString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/IndexerListAdapter;-><init>(Landroid/content/Context;)V

    .line 89
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 91
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    .line 728
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSlot:I

    .line 762
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mShowCTInternationNumber:Z

    .line 104
    const v0, 0x7f0a04b3

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDefaultFilterHeaderText(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartitions()V

    .line 106
    return-void
.end method

.method public static isRemoteDirectory(J)Z
    .locals 2
    .param p0, "directoryId"    # J

    .prologue
    .line 723
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addPartitions()V
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->createDefaultDirectoryPartition()Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    .line 140
    return-void
.end method

.method public areAllPartitionsEmpty()Z
    .locals 3

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 531
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 532
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isPartitionEmpty(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 533
    const/4 v2, 0x0

    .line 536
    :goto_1
    return v2

    .line 531
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 536
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 568
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v7

    .line 569
    .local v7, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v8, v7, Lcom/android/contacts/common/list/DirectoryPartition;

    if-nez v8, :cond_0

    .line 587
    :goto_0
    return-void

    :cond_0
    move-object v3, v7

    .line 573
    check-cast v3, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 574
    .local v3, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 575
    .local v0, "directoryId":J
    const v8, 0x7f0d0095

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 576
    .local v6, "labelTextView":Landroid/widget/TextView;
    const v8, 0x7f0d00e7

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 577
    .local v5, "displayNameTextView":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    invoke-static {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isRemoteDirectory(J)Z

    move-result v8

    if-nez v8, :cond_1

    .line 579
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 581
    :cond_1
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, "directoryName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v4, v2

    .line 585
    .local v4, "displayName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 582
    .end local v4    # "displayName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryType()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method protected bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIII)V
    .locals 12
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "photoIdColumn"    # I
    .param p5, "photoUriColumn"    # I
    .param p6, "contactIdColumn"    # I
    .param p7, "lookUpKeyColumn"    # I

    .prologue
    .line 665
    const-wide/16 v4, 0x0

    .line 666
    .local v4, "photoId":J
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 667
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 671
    :cond_0
    const-string v9, "indicate_phone_or_sim_contact"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 673
    .local v2, "indicatePhoneSim":I
    if-lez v2, :cond_1

    .line 674
    const-string v9, "is_sdn_contact"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 675
    .local v3, "isSdnContact":I
    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getSimType(II)J

    move-result-wide v4

    .line 678
    .end local v3    # "isSdnContact":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v8

    .line 679
    .local v8, "quickContact":Landroid/widget/QuickContactBadge;
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 682
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-nez v9, :cond_2

    const/4 v9, -0x1

    move/from16 v0, p5

    if-ne v0, v9, :cond_3

    .line 683
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    invoke-virtual {v9, v8, v4, v5, v10}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 694
    :goto_0
    return-void

    .line 688
    :cond_3
    move/from16 v0, p5

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 689
    .local v7, "photoUriString":Ljava/lang/String;
    if-nez v7, :cond_4

    const/4 v6, 0x0

    .line 690
    .local v6, "photoUri":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v9

    const/4 v10, -0x1

    iget-boolean v11, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    invoke-virtual {v9, v8, v6, v10, v11}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    goto :goto_0

    .line 689
    .end local v6    # "photoUri":Landroid/net/Uri;
    :cond_4
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_1
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 435
    .local v0, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v1, :cond_2

    .line 436
    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v0    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    .line 439
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isPhotoSupported(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/common/ContactPhotoManager;->refreshCache()V

    .line 443
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/IndexerListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 445
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 446
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 452
    return-void
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 374
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_0

    .line 377
    const-string v11, "ContactEntryListAdapter"

    const-string v12, "Directory search loader returned an empty cursor, which implies we have no directory entries."

    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v11, v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    :goto_0
    return-void

    .line 381
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 383
    .local v1, "directoryIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 384
    .local v7, "idColumnIndex":I
    const-string v11, "directoryType"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 385
    .local v2, "directoryTypeColumnIndex":I
    const-string v11, "displayName"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 386
    .local v3, "displayNameColumnIndex":I
    const-string v11, "photoSupport"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 390
    .local v10, "photoSupportColumnIndex":I
    const/4 v11, -0x1

    invoke-interface {p1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 391
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 392
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 393
    .local v5, "id":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionByDirectoryId(J)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 395
    new-instance v8, Lcom/android/contacts/common/list/DirectoryPartition;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v8, v11, v12}, Lcom/android/contacts/common/list/DirectoryPartition;-><init>(ZZ)V

    .line 396
    .local v8, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v8, v5, v6}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryId(J)V

    .line 397
    invoke-static {v5, v6}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isRemoteDirectory(J)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 398
    iget-object v11, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f0a04b2

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    .line 402
    :goto_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 403
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setDisplayName(Ljava/lang/String;)V

    .line 404
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 405
    .local v9, "photoSupport":I
    const/4 v11, 0x1

    if-eq v9, v11, :cond_2

    const/4 v11, 0x3

    if-ne v9, v11, :cond_4

    :cond_2
    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 407
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    goto :goto_1

    .line 400
    .end local v9    # "photoSupport":I
    :cond_3
    iget-object v11, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    goto :goto_2

    .line 405
    .restart local v9    # "photoSupport":I
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 412
    .end local v5    # "id":J
    .end local v8    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    .end local v9    # "photoSupport":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 413
    .local v0, "count":I
    move v4, v0

    .local v4, "i":I
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_7

    .line 414
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v8

    .line 415
    .local v8, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v11, v8, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v11, :cond_6

    .line 416
    check-cast v8, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v8    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v8}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v5

    .line 417
    .restart local v5    # "id":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 418
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->removePartition(I)V

    goto :goto_4

    .line 423
    .end local v5    # "id":J
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->invalidate()V

    .line 424
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public clearPartitions()V
    .locals 5

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 228
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 229
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 230
    .local v3, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 231
    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 232
    .local v1, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    .line 228
    .end local v1    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v3    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->clearPartitions()V

    .line 236
    return-void
.end method

.method protected clearPinnedHeaderContactsCount(Landroid/view/View;)V
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 135
    check-cast p1, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;

    .end local p1    # "header":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setCountView(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public configureDefaultPartition(ZZ)V
    .locals 8
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 543
    const/4 v1, -0x1

    .line 544
    .local v1, "defaultPartitionIndex":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 545
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 546
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 547
    .local v3, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v3    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 549
    move v1, v2

    .line 553
    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 554
    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setShowIfEmpty(IZ)V

    .line 555
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    .line 557
    :cond_1
    return-void

    .line 545
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public abstract configureLoader(Landroid/content/CursorLoader;J)V
.end method

.method protected createDefaultDirectoryPartition()Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 143
    new-instance v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-direct {v0, v3, v3}, Lcom/android/contacts/common/list/DirectoryPartition;-><init>(ZZ)V

    .line 144
    .local v0, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryId(J)V

    .line 145
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a04b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/DirectoryPartition;->setPriorityDirectory(Z)V

    .line 147
    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 148
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    .line 149
    return-object v0
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 114
    new-instance v0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public abstract getContactDisplayName(I)Ljava/lang/String;
.end method

.method public getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayOrder:I

    return v0
.end method

.method protected getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 9
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "contactIdColumn"    # I
    .param p4, "lookUpKeyColumn"    # I

    .prologue
    .line 698
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 699
    .local v0, "contactId":J
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 700
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 703
    .local v2, "directoryId":J
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v2, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isRemoteDirectory(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 704
    const/4 v5, 0x0

    .line 711
    :cond_0
    :goto_0
    return-object v5

    .line 706
    :cond_1
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 707
    .local v5, "uri":Landroid/net/Uri;
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 708
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method public getContactsCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    return-object v0
.end method

.method protected getDirectoryById(J)Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 6
    .param p1, "id"    # J

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 189
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 190
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 191
    .local v3, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 192
    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 193
    .local v1, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 198
    .end local v1    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    .end local v3    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :goto_1
    return-object v1

    .line 189
    .restart local v3    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    .end local v3    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDirectoryResultLimit()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    return v0
.end method

.method public getDirectoryResultLimit(Lcom/android/contacts/common/list/DirectoryPartition;)I
    .locals 2
    .param p1, "directoryPartition"    # Lcom/android/contacts/common/list/DirectoryPartition;

    .prologue
    .line 277
    invoke-virtual {p1}, Lcom/android/contacts/common/list/DirectoryPartition;->getResultLimit()I

    move-result v0

    .line 278
    .local v0, "limit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .end local v0    # "limit":I
    :cond_0
    return v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    return v0
.end method

.method public getDisplayPhotos()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    return v0
.end method

.method public getFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method public getItemViewType(II)I
    .locals 3
    .param p1, "partitionIndex"    # I
    .param p2, "position"    # I

    .prologue
    .line 490
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/IndexerListAdapter;->getItemViewType(II)I

    move-result v1

    .line 491
    .local v1, "type":I
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isUserProfile(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 494
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object v0

    .line 495
    .local v0, "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    iget-boolean v2, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v2, :cond_1

    .line 497
    .end local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    .end local v1    # "type":I
    :cond_0
    :goto_0
    return v1

    .line 495
    .restart local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    .restart local v1    # "type":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getPartitionByDirectoryId(J)I
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 176
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 177
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 178
    .local v2, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_0

    .line 179
    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v2    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 184
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 176
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method public getQuantityText(III)Ljava/lang/String;
    .locals 4
    .param p1, "count"    # I
    .param p2, "zeroResourceId"    # I
    .param p3, "pluralResourceId"    # I

    .prologue
    .line 625
    if-nez p1, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 630
    :goto_0
    return-object v1

    .line 628
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "format":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method protected getResultCount(Landroid/database/Cursor;)I
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 593
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSimType(II)J
    .locals 7
    .param p1, "indicate"    # I
    .param p2, "isSdnContact"    # I

    .prologue
    .line 732
    const-wide/16 v1, 0x0

    .line 733
    .local v1, "photoId":J
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    if-nez v4, :cond_0

    .line 734
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    .line 737
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    invoke-virtual {v4, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSlot:I

    .line 738
    const/4 v0, -0x1

    .line 739
    .local v0, "i":I
    const-string v4, "ContactEntryListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSimType] mSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSlot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    iget v5, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSlot:I

    invoke-virtual {v4, v5}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    .line 741
    .local v3, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v3, :cond_1

    .line 742
    iget v0, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 745
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v4

    iget v5, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSlot:I

    const-string v6, "ExtensionForOP09"

    invoke-virtual {v4, p2, v0, v5, v6}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getEnhancementPhotoId(IIILjava/lang/String;)J

    move-result-wide v1

    .line 747
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_2

    .line 748
    new-instance v4, Lcom/mediatek/contacts/util/SimContactPhotoUtils;

    invoke-direct {v4}, Lcom/mediatek/contacts/util/SimContactPhotoUtils;-><init>()V

    invoke-virtual {v4, p2, v0}, Lcom/mediatek/contacts/util/SimContactPhotoUtils;->getPhotoId(II)J

    move-result-wide v1

    .line 750
    :cond_2
    const-string v4, "ContactEntryListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSimType] i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | isSdnContact : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const-string v4, "ContactEntryListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSimType] photoId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-wide v1
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSortOrder:I

    return v0
.end method

.method public getUpperCaseQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasProfile()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mProfileExists:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    if-nez v0, :cond_0

    .line 509
    const/4 v0, 0x0

    .line 513
    :goto_0
    return v0

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 513
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isEmptyListEnabled()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    return v0
.end method

.method public isLoading()Z
    .locals 4

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 519
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 520
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 521
    .local v2, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v2    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 523
    const/4 v3, 0x1

    .line 526
    :goto_1
    return v3

    .line 519
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isPhotoSupported(I)Z
    .locals 2
    .param p1, "partitionIndex"    # I

    .prologue
    .line 635
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 636
    .local v0, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v1, :cond_0

    .line 637
    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v0    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->isPhotoSupported()Z

    move-result v1

    .line 639
    :goto_0
    return v1

    .restart local v0    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isQuickContactEnabled()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSearchMode:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSelectionVisible:Z

    return v0
.end method

.method protected isUserProfile(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 602
    const/4 v1, 0x0

    .line 603
    .local v1, "isUserProfile":Z
    if-nez p1, :cond_1

    .line 604
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v3

    .line 605
    .local v3, "partition":I
    if-ltz v3, :cond_1

    .line 608
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 609
    .local v2, "offset":I
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 610
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 611
    const-string v6, "is_user_profile"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 612
    .local v4, "profileColumnIndex":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 613
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v5, :cond_2

    move v1, v5

    .line 616
    :cond_0
    :goto_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 620
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "offset":I
    .end local v3    # "partition":I
    .end local v4    # "profileColumnIndex":I
    :cond_1
    return v1

    .line 613
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "offset":I
    .restart local v3    # "partition":I
    .restart local v4    # "profileColumnIndex":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 562
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 563
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDataReload()V
    .locals 6

    .prologue
    .line 208
    const/4 v3, 0x0

    .line 209
    .local v3, "notify":Z
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 210
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 211
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v4

    .line 212
    .local v4, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v5, v4, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 213
    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 214
    .local v1, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v5

    if-nez v5, :cond_0

    .line 215
    const/4 v3, 0x1

    .line 217
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    .line 210
    .end local v1    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v4    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_2
    if-eqz v3, :cond_3

    .line 221
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 223
    :cond_3
    return-void
.end method

.method public removeDirectoriesAfterDefault()V
    .locals 7

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v2

    .line 163
    .local v2, "partitionCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    .line 165
    .local v1, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v3, v1, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v1    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 172
    :cond_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->removePartition(I)V

    .line 163
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 0
    .param p1, "displayOrder"    # I

    .prologue
    .line 290
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayOrder:I

    .line 291
    return-void
.end method

.method public setContactsCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "count"    # Ljava/lang/String;

    .prologue
    .line 715
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    .line 716
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    .line 367
    return-void
.end method

.method protected setDefaultFilterHeaderText(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    .line 110
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 282
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 283
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 269
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    .line 270
    return-void
.end method

.method public setDisplayPhotos(Z)V
    .locals 0
    .param p1, "displayPhotos"    # Z

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    .line 315
    return-void
.end method

.method public setEmptyListEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    .line 323
    return-void
.end method

.method public setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 651
    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 0
    .param p1, "includeProfile"    # Z

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mIncludeProfile:Z

    .line 347
    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p1, "photoLoader"    # Lcom/android/contacts/common/ContactPhotoManager;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    .line 303
    return-void
.end method

.method protected setPinnedHeaderContactsCount(Landroid/view/View;)V
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mProfileExists:Z

    if-eqz v0, :cond_0

    .line 127
    check-cast p1, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;

    .end local p1    # "header":Landroid/view/View;
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setCountView(Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 129
    .restart local p1    # "header":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->clearPinnedHeaderContactsCount(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "pinnedHeaderView"    # Landroid/view/View;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 119
    check-cast p1, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;

    .end local p1    # "pinnedHeaderView":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setSectionHeader(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public setProfileExists(Z)V
    .locals 3
    .param p1, "exists"    # Z

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mProfileExists:Z

    .line 352
    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    .line 354
    .local v0, "indexer":Landroid/widget/SectionIndexer;
    if-eqz v0, :cond_0

    .line 355
    check-cast v0, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    .end local v0    # "indexer":Landroid/widget/SectionIndexer;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a04b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactsSectionIndexer;->setProfileHeader(Ljava/lang/String;)V

    .line 359
    :cond_0
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    .line 258
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/SearchUtil;->cleanStartAndEndOfSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1, "quickContactEnabled"    # Z

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    .line 339
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSearchMode:Z

    .line 244
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSelectionVisible:Z

    .line 331
    return-void
.end method

.method public setShowCTInternationNumber(Z)V
    .locals 0
    .param p1, "canDelete"    # Z

    .prologue
    .line 765
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mShowCTInternationNumber:Z

    .line 766
    return-void
.end method

.method public setSortOrder(I)V
    .locals 0
    .param p1, "sortOrder"    # I

    .prologue
    .line 298
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSortOrder:I

    .line 299
    return-void
.end method

.method public shouldIncludeProfile()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mIncludeProfile:Z

    return v0
.end method

.method public updateIndexer(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 465
    if-nez p1, :cond_0

    .line 466
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    .line 479
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 471
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 472
    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "sections":[Ljava/lang/String;
    const-string v3, "address_book_index_counts"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 475
    .local v1, "counts":[I
    new-instance v3, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    invoke-direct {v3, v2, v1}, Lcom/android/contacts/common/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0

    .line 477
    .end local v1    # "counts":[I
    .end local v2    # "sections":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0
.end method
