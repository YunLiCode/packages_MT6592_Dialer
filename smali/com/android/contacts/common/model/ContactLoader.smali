.class public Lcom/android/contacts/common/model/ContactLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/ContactLoader$GroupQuery;,
        Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;,
        Lcom/android/contacts/common/model/ContactLoader$ContactQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/contacts/common/model/Contact;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sCachedResult:Lcom/android/contacts/common/model/Contact;


# instance fields
.field private mComputeFormattedPhoneNumber:Z

.field private mContact:Lcom/android/contacts/common/model/Contact;

.field private mLoadGroupMetaData:Z

.field private mLoadInvitableAccountTypes:Z

.field private mLookupUri:Landroid/net/Uri;

.field private final mNotifiedRawContactIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/common/model/Contact;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mPostViewNotification:Z

.field private final mRequestedUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    const-class v0, Lcom/android/contacts/common/model/ContactLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/common/model/ContactLoader;->DEBUG:Z

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "postViewNotification"    # Z

    .prologue
    const/4 v3, 0x0

    .line 99
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "loadGroupMetaData"    # Z
    .param p4, "loadInvitableAccountTypes"    # Z
    .param p5, "postViewNotification"    # Z
    .param p6, "computeFormattedPhoneNumber"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    .line 106
    iput-object p2, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 107
    iput-object p2, p0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    .line 108
    iput-boolean p3, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadGroupMetaData:Z

    .line 109
    iput-boolean p4, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    .line 110
    iput-boolean p5, p0, Lcom/android/contacts/common/model/ContactLoader;->mPostViewNotification:Z

    .line 111
    iput-boolean p6, p0, Lcom/android/contacts/common/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    .line 112
    return-void
.end method

.method private computeFormattedPhoneNumbers(Lcom/android/contacts/common/model/Contact;)V
    .locals 11
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "countryIso":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    .line 895
    .local v9, "rawContacts":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/common/model/RawContact;>;"
    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v7

    .line 896
    .local v7, "rawContactCount":I
    const/4 v8, 0x0

    .local v8, "rawContactIndex":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 897
    invoke-virtual {v9, v8}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/RawContact;

    .line 898
    .local v6, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v6}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v4

    .line 899
    .local v4, "dataItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 900
    .local v1, "dataCount":I
    const/4 v2, 0x0

    .local v2, "dataIndex":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 901
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 902
    .local v3, "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    instance-of v10, v3, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    if-eqz v10, :cond_0

    move-object v5, v3

    .line 903
    check-cast v5, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    .line 904
    .local v5, "phoneDataItem":Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
    invoke-virtual {v5, v0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->computeFormattedPhoneNumber(Ljava/lang/String;)V

    .line 900
    .end local v5    # "phoneDataItem":Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 896
    .end local v3    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 908
    .end local v1    # "dataCount":I
    .end local v2    # "dataIndex":I
    .end local v4    # "dataItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    .end local v6    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_2
    return-void
.end method

.method private cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "index"    # I

    .prologue
    .line 774
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 788
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :pswitch_1
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 790
    :goto_0
    :pswitch_2
    return-void

    .line 782
    :pswitch_3
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 785
    :pswitch_4
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 774
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 21
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 493
    const-string v2, "entities"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 494
    .local v3, "entityUri":Landroid/net/Uri;
    sget-object v4, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "raw_contact_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 496
    .local v11, "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 497
    sget-object v2, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    const-string v4, "No cursor returned in loadContactEntity"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/contacts/common/model/Contact;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v8

    .line 550
    :goto_0
    return-object v8

    .line 502
    :cond_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 503
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/contacts/common/model/Contact;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 550
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 512
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/android/contacts/common/model/ContactLoader;->loadContactHeaderDataEX(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v8

    .line 517
    .local v8, "contact":Lcom/android/contacts/common/model/Contact;
    const-wide/16 v9, -0x1

    .line 518
    .local v9, "currentRawContactId":J
    const/4 v15, 0x0

    .line 519
    .local v15, "rawContact":Lcom/android/contacts/common/model/RawContact;
    new-instance v18, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct/range {v18 .. v18}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 521
    .local v18, "rawContactsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/common/model/RawContact;>;"
    new-instance v20, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct/range {v20 .. v20}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 524
    .local v20, "statusesBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Long;Lcom/android/contacts/common/util/DataStatus;>;"
    :cond_2
    const/16 v2, 0xe

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 525
    .local v16, "rawContactId":J
    cmp-long v2, v16, v9

    if-eqz v2, :cond_3

    .line 528
    move-wide/from16 v9, v16

    .line 529
    new-instance v15, Lcom/android/contacts/common/model/RawContact;

    .end local v15    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/contacts/common/model/ContactLoader;->loadRawContactValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    .line 530
    .restart local v15    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 532
    :cond_3
    const/16 v2, 0x1c

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 533
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/contacts/common/model/ContactLoader;->loadDataValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v12

    .line 534
    .local v12, "data":Landroid/content/ContentValues;
    invoke-virtual {v15, v12}, Lcom/android/contacts/common/model/RawContact;->addDataItemValues(Landroid/content/ContentValues;)V

    .line 536
    const/16 v2, 0x36

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x38

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 538
    :cond_4
    new-instance v19, Lcom/android/contacts/common/util/DataStatus;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Lcom/android/contacts/common/util/DataStatus;-><init>(Landroid/database/Cursor;)V

    .line 539
    .local v19, "status":Lcom/android/contacts/common/util/DataStatus;
    const/16 v2, 0x1c

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 540
    .local v13, "dataId":J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 543
    .end local v12    # "data":Landroid/content/ContentValues;
    .end local v13    # "dataId":J
    .end local v19    # "status":Lcom/android/contacts/common/util/DataStatus;
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 545
    invoke-virtual/range {v18 .. v18}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/contacts/common/model/Contact;->setRawContacts(Lcom/google/common/collect/ImmutableList;)V

    .line 546
    invoke-virtual/range {v20 .. v20}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/contacts/common/model/Contact;->setStatuses(Lcom/google/common/collect/ImmutableMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8    # "contact":Lcom/android/contacts/common/model/Contact;
    .end local v9    # "currentRawContactId":J
    .end local v15    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .end local v16    # "rawContactId":J
    .end local v18    # "rawContactsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/common/model/RawContact;>;"
    .end local v20    # "statusesBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Long;Lcom/android/contacts/common/util/DataStatus;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 27
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 650
    const-string v1, "directory"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 652
    .local v26, "directoryParameter":Ljava/lang/String;
    if-nez v26, :cond_1

    const-wide/16 v5, 0x0

    .line 655
    .local v5, "directoryId":J
    :goto_0
    const/16 v1, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 656
    .local v8, "contactId":J
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 657
    .local v7, "lookupKey":Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 658
    .local v10, "nameRawContactId":J
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 659
    .local v12, "displayNameSource":I
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 660
    .local v16, "displayName":Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 661
    .local v17, "altDisplayName":Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 662
    .local v18, "phoneticName":Ljava/lang/String;
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 663
    .local v13, "photoId":J
    const/16 v1, 0x3d

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 664
    .local v15, "photoUri":Ljava/lang/String;
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v19, 0x1

    .line 665
    .local v19, "starred":Z
    :goto_1
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v20, 0x0

    .line 668
    .local v20, "presence":Ljava/lang/Integer;
    :goto_2
    const/16 v1, 0x3e

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/16 v21, 0x1

    .line 669
    .local v21, "sendToVoicemail":Z
    :goto_3
    const/16 v1, 0x3f

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 670
    .local v22, "customRingtone":Ljava/lang/String;
    const/16 v1, 0x40

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/16 v23, 0x1

    .line 672
    .local v23, "isUserProfile":Z
    :goto_4
    const/16 v1, 0x41

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/16 v25, 0x1

    .line 673
    .local v25, "blockVideoCall":Z
    :goto_5
    const/16 v1, 0x45

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 677
    .local v24, "isSdnContact":I
    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    cmp-long v1, v5, v1

    if-nez v1, :cond_7

    .line 678
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v1, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 692
    .local v4, "lookupUri":Landroid/net/Uri;
    :goto_6
    new-instance v1, Lcom/android/contacts/common/model/Contact;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v25}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZIZ)V

    return-object v1

    .line 652
    .end local v4    # "lookupUri":Landroid/net/Uri;
    .end local v5    # "directoryId":J
    .end local v7    # "lookupKey":Ljava/lang/String;
    .end local v8    # "contactId":J
    .end local v10    # "nameRawContactId":J
    .end local v12    # "displayNameSource":I
    .end local v13    # "photoId":J
    .end local v15    # "photoUri":Ljava/lang/String;
    .end local v16    # "displayName":Ljava/lang/String;
    .end local v17    # "altDisplayName":Ljava/lang/String;
    .end local v18    # "phoneticName":Ljava/lang/String;
    .end local v19    # "starred":Z
    .end local v20    # "presence":Ljava/lang/Integer;
    .end local v21    # "sendToVoicemail":Z
    .end local v22    # "customRingtone":Ljava/lang/String;
    .end local v23    # "isUserProfile":Z
    .end local v24    # "isSdnContact":I
    .end local v25    # "blockVideoCall":Z
    :cond_1
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto/16 :goto_0

    .line 664
    .restart local v5    # "directoryId":J
    .restart local v7    # "lookupKey":Ljava/lang/String;
    .restart local v8    # "contactId":J
    .restart local v10    # "nameRawContactId":J
    .restart local v12    # "displayNameSource":I
    .restart local v13    # "photoId":J
    .restart local v15    # "photoUri":Ljava/lang/String;
    .restart local v16    # "displayName":Ljava/lang/String;
    .restart local v17    # "altDisplayName":Ljava/lang/String;
    .restart local v18    # "phoneticName":Ljava/lang/String;
    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .line 665
    .restart local v19    # "starred":Z
    :cond_3
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    goto :goto_2

    .line 668
    .restart local v20    # "presence":Ljava/lang/Integer;
    :cond_4
    const/16 v21, 0x0

    goto :goto_3

    .line 670
    .restart local v21    # "sendToVoicemail":Z
    .restart local v22    # "customRingtone":Ljava/lang/String;
    :cond_5
    const/16 v23, 0x0

    goto :goto_4

    .line 672
    .restart local v23    # "isUserProfile":Z
    :cond_6
    const/16 v25, 0x0

    goto :goto_5

    .line 681
    .restart local v24    # "isSdnContact":I
    .restart local v25    # "blockVideoCall":Z
    :cond_7
    move-object/from16 v4, p2

    .restart local v4    # "lookupUri":Landroid/net/Uri;
    goto :goto_6
.end method

.method private loadContactHeaderDataEX(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 1044
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/model/ContactLoader;->loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    .line 1047
    .local v0, "contact":Lcom/android/contacts/common/model/Contact;
    const/16 v3, 0x43

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/Contact;->setIndicate(I)V

    .line 1048
    const/16 v3, 0x44

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/Contact;->setSimIndex(I)V

    .line 1050
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->getIndicate()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 1052
    .local v1, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v1, :cond_0

    .line 1053
    const/4 v2, -0x1

    .line 1057
    .local v2, "slotId":I
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/Contact;->setSlot(I)V

    .line 1058
    return-object v0

    .line 1055
    .end local v2    # "slotId":I
    :cond_0
    iget v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .restart local v2    # "slotId":I
    goto :goto_0
.end method

.method private loadDataValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 730
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 732
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0x1c

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 734
    const/16 v1, 0x1d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 735
    const/16 v1, 0x1e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 736
    const/16 v1, 0x1f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 737
    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 738
    const/16 v1, 0x21

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 739
    const/16 v1, 0x22

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 740
    const/16 v1, 0x23

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 741
    const/16 v1, 0x24

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 742
    const/16 v1, 0x25

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 743
    const/16 v1, 0x26

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 744
    const/16 v1, 0x27

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 745
    const/16 v1, 0x28

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 746
    const/16 v1, 0x29

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 747
    const/16 v1, 0x2a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 748
    const/16 v1, 0x2b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 749
    const/16 v1, 0x2c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 750
    const/16 v1, 0x2d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 751
    const/16 v1, 0x2e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 752
    const/16 v1, 0x2f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 753
    const/16 v1, 0x30

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 754
    const/16 v1, 0x31

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 755
    const/16 v1, 0x32

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 756
    const/16 v1, 0x33

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 757
    const/16 v1, 0x34

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 758
    const/16 v1, 0x35

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 759
    const/16 v1, 0x37

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 763
    const/16 v1, 0x46

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 766
    const/16 v1, 0x42

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 769
    return-object v0
.end method

.method private loadDirectoryMetaData(Lcom/android/contacts/common/model/Contact;)V
    .locals 16
    .param p1, "result"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 793
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/Contact;->getDirectoryId()J

    move-result-wide v7

    .line 795
    .local v7, "directoryId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v14, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 798
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 827
    :goto_0
    return-void

    .line 802
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 803
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "displayName":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 805
    .local v10, "packageName":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 806
    .local v13, "typeResourceId":I
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 807
    .local v3, "accountType":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 808
    .local v4, "accountName":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 809
    .local v5, "exportSupport":I
    const/4 v2, 0x0

    .line 810
    .local v2, "directoryType":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 813
    .local v11, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 814
    .local v12, "resources":Landroid/content/res/Resources;
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    .line 821
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/model/Contact;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 825
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "directoryType":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "exportSupport":I
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v13    # "typeResourceId":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 815
    .restart local v1    # "displayName":Ljava/lang/String;
    .restart local v2    # "directoryType":Ljava/lang/String;
    .restart local v3    # "accountType":Ljava/lang/String;
    .restart local v4    # "accountName":Ljava/lang/String;
    .restart local v5    # "exportSupport":I
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "typeResourceId":I
    :catch_0
    move-exception v9

    .line 816
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Contact directory resource not found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 825
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "directoryType":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "exportSupport":I
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "typeResourceId":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private loadEncodedContactEntity(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 43
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v37

    .line 401
    .local v37, "jsonString":Ljava/lang/String;
    new-instance v36, Lorg/json/JSONObject;

    invoke-direct/range {v36 .. v37}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 403
    .local v36, "json":Lorg/json/JSONObject;
    const-string v5, "directory"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 406
    .local v8, "directoryId":J
    const-string v5, "display_name"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 407
    .local v19, "displayName":Ljava/lang/String;
    const-string v5, "display_name_alt"

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 409
    .local v20, "altDisplayName":Ljava/lang/String;
    const-string v5, "display_name_source"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 410
    .local v15, "displayNameSource":I
    const-string v5, "photo_uri"

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 411
    .local v18, "photoUri":Ljava/lang/String;
    new-instance v4, Lcom/android/contacts/common/model/Contact;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    const-wide/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v26}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V

    .line 430
    .local v4, "contact":Lcom/android/contacts/common/model/Contact;
    new-instance v5, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v5}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/model/Contact;->setStatuses(Lcom/google/common/collect/ImmutableMap;)V

    .line 432
    const-string v5, "account_name"

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 433
    .local v24, "accountName":Ljava/lang/String;
    const-string v5, "displayName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 434
    .local v22, "directoryName":Ljava/lang/String;
    if-eqz v24, :cond_1

    .line 435
    const-string v5, "account_type"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 436
    .local v25, "accountType":Ljava/lang/String;
    const/16 v23, 0x0

    const-string v5, "exportSupport"

    const/4 v6, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v26

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v26}, Lcom/android/contacts/common/model/Contact;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 444
    .end local v25    # "accountType":Ljava/lang/String;
    :goto_0
    new-instance v42, Landroid/content/ContentValues;

    invoke-direct/range {v42 .. v42}, Landroid/content/ContentValues;-><init>()V

    .line 445
    .local v42, "values":Landroid/content/ContentValues;
    const-string v5, "_id"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    const-string v5, "contact_id"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    new-instance v41, Lcom/android/contacts/common/model/RawContact;

    invoke-direct/range {v41 .. v42}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    .line 449
    .local v41, "rawContact":Lcom/android/contacts/common/model/RawContact;
    const-string v5, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    .line 450
    .local v35, "items":Lorg/json/JSONObject;
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v38

    .line 451
    .local v38, "keys":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 452
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 455
    .local v39, "mimetype":Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v40

    .line 456
    .local v40, "obj":Lorg/json/JSONObject;
    if-nez v40, :cond_2

    .line 457
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v32

    .line 458
    .local v32, "array":Lorg/json/JSONArray;
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_2
    invoke-virtual/range {v32 .. v32}, Lorg/json/JSONArray;->length()I

    move-result v5

    move/from16 v0, v33

    if-ge v0, v5, :cond_0

    .line 459
    invoke-virtual/range {v32 .. v33}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v34

    .line 460
    .local v34, "item":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v34

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/model/ContactLoader;->processOneRecord(Lcom/android/contacts/common/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 458
    add-int/lit8 v33, v33, 0x1

    goto :goto_2

    .line 440
    .end local v32    # "array":Lorg/json/JSONArray;
    .end local v33    # "i":I
    .end local v34    # "item":Lorg/json/JSONObject;
    .end local v35    # "items":Lorg/json/JSONObject;
    .end local v38    # "keys":Ljava/util/Iterator;
    .end local v39    # "mimetype":Ljava/lang/String;
    .end local v40    # "obj":Lorg/json/JSONObject;
    .end local v41    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .end local v42    # "values":Landroid/content/ContentValues;
    :cond_1
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-string v5, "exportSupport"

    const/4 v6, 0x2

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v31

    move-object/from16 v26, v4

    move-object/from16 v27, v22

    invoke-virtual/range {v26 .. v31}, Lcom/android/contacts/common/model/Contact;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 463
    .restart local v35    # "items":Lorg/json/JSONObject;
    .restart local v38    # "keys":Ljava/util/Iterator;
    .restart local v39    # "mimetype":Ljava/lang/String;
    .restart local v40    # "obj":Lorg/json/JSONObject;
    .restart local v41    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .restart local v42    # "values":Landroid/content/ContentValues;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/model/ContactLoader;->processOneRecord(Lcom/android/contacts/common/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 467
    .end local v39    # "mimetype":Ljava/lang/String;
    .end local v40    # "obj":Lorg/json/JSONObject;
    :cond_3
    new-instance v5, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/model/Contact;->setRawContacts(Lcom/google/common/collect/ImmutableList;)V

    .line 470
    return-object v4
.end method

.method private loadGroupMetaData(Lcom/android/contacts/common/model/Contact;)V
    .locals 17
    .param p1, "result"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 834
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 835
    .local v14, "selection":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .local v15, "selectionArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/common/model/RawContact;

    .line 837
    .local v13, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v13}, Lcom/android/contacts/common/model/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 838
    .local v2, "accountName":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v3

    .line 839
    .local v3, "accountType":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/contacts/common/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v4

    .line 840
    .local v4, "dataSet":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 841
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 842
    const-string v1, " OR "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    :cond_1
    const-string v1, "(account_name=? AND account_type=?"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    if-eqz v4, :cond_2

    .line 850
    const-string v1, " AND data_set=?"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    :goto_1
    const-string v1, ")"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 853
    :cond_2
    const-string v1, " AND data_set IS NULL"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 858
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "dataSet":Ljava/lang/String;
    .end local v13    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_3
    new-instance v11, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v11}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 860
    .local v11, "groupListBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/common/GroupMetaData;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/common/model/ContactLoader$GroupQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 864
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_2
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 865
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 866
    .restart local v2    # "accountName":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 867
    .restart local v3    # "accountType":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 868
    .restart local v4    # "dataSet":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 869
    .local v5, "groupId":J
    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 870
    .local v7, "title":Ljava/lang/String;
    const/4 v1, 0x6

    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v8, 0x0

    .line 873
    .local v8, "defaultGroup":Z
    :goto_3
    const/4 v1, 0x7

    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v9, 0x0

    .line 877
    .local v9, "favorites":Z
    :goto_4
    new-instance v1, Lcom/android/contacts/common/GroupMetaData;

    invoke-direct/range {v1 .. v9}, Lcom/android/contacts/common/GroupMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZ)V

    invoke-virtual {v11, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 882
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "dataSet":Ljava/lang/String;
    .end local v5    # "groupId":J
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "defaultGroup":Z
    .end local v9    # "favorites":Z
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 870
    .restart local v2    # "accountName":Ljava/lang/String;
    .restart local v3    # "accountType":Ljava/lang/String;
    .restart local v4    # "dataSet":Ljava/lang/String;
    .restart local v5    # "groupId":J
    .restart local v7    # "title":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x6

    :try_start_1
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 873
    .restart local v8    # "defaultGroup":Z
    :cond_6
    const/4 v1, 0x7

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    .line 882
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "dataSet":Ljava/lang/String;
    .end local v5    # "groupId":J
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "defaultGroup":Z
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 884
    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/Contact;->setGroupMetaData(Lcom/google/common/collect/ImmutableList;)V

    .line 885
    return-void
.end method

.method private loadInvitableAccountTypes(Lcom/android/contacts/common/model/Contact;)V
    .locals 8
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 621
    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 623
    .local v3, "resultListBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v6

    if-nez v6, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getUsableInvitableAccountTypes()Ljava/util/Map;

    move-result-object v1

    .line 626
    .local v1, "invitables":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 627
    invoke-static {v1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v4

    .line 631
    .local v4, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/RawContact;

    .line 632
    .local v2, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/contacts/common/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v5

    .line 635
    .local v5, "type":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 638
    .end local v2    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .end local v5    # "type":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    :cond_0
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 643
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "invitables":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    .end local v4    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    :cond_1
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/contacts/common/model/Contact;->setInvitableAccountTypes(Lcom/google/common/collect/ImmutableList;)V

    .line 644
    return-void
.end method

.method private loadPhotoBinaryData(Lcom/android/contacts/common/model/Contact;)V
    .locals 20
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 560
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v13

    .line 561
    .local v13, "photoUri":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 565
    :try_start_0
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 566
    .local v17, "uri":Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    .line 567
    .local v15, "scheme":Ljava/lang/String;
    const-string v18, "http"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, "https"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 569
    :cond_0
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v9

    .line 570
    .local v9, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 575
    .local v6, "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    const/16 v18, 0x4000

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 576
    .local v4, "buffer":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v9, v4}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .local v16, "size":I
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 580
    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v3, v4, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 584
    .end local v16    # "size":I
    :catchall_0
    move-exception v18

    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 585
    if-eqz v6, :cond_1

    .line 586
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_1
    throw v18
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 590
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "buffer":[B
    .end local v6    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v15    # "scheme":Ljava/lang/String;
    .end local v17    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v18

    .line 596
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/Contact;->getPhotoId()J

    move-result-wide v11

    .line 597
    .local v11, "photoId":J
    const-wide/16 v18, 0x0

    cmp-long v18, v11, v18

    if-gtz v18, :cond_6

    .line 615
    .end local v11    # "photoId":J
    :cond_3
    :goto_2
    return-void

    .line 572
    .restart local v15    # "scheme":Ljava/lang/String;
    .restart local v17    # "uri":Landroid/net/Uri;
    :cond_4
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "r"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 573
    .restart local v6    # "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v9

    .restart local v9    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 582
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v16    # "size":I
    :cond_5
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/Contact;->setPhotoBinaryData([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 584
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 585
    if-eqz v6, :cond_3

    .line 586
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 602
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "buffer":[B
    .end local v6    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v15    # "scheme":Ljava/lang/String;
    .end local v16    # "size":I
    .end local v17    # "uri":Landroid/net/Uri;
    .restart local v11    # "photoId":J
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/contacts/common/model/RawContact;

    .line 603
    .local v14, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v14}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 604
    .local v5, "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    invoke-virtual {v5}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v18

    cmp-long v18, v18, v11

    if-nez v18, :cond_8

    .line 605
    instance-of v0, v5, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object v10, v5

    .line 609
    check-cast v10, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;

    .line 610
    .local v10, "photo":Lcom/android/contacts/common/model/dataitem/PhotoDataItem;
    invoke-virtual {v10}, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;->getPhoto()[B

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/Contact;->setPhotoBinaryData([B)V

    goto :goto_3
.end method

.method private loadRawContactValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 703
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 705
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 707
    const/16 v1, 0xf

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 708
    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 709
    const/16 v1, 0x11

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 710
    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 711
    const/16 v1, 0x13

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 712
    const/16 v1, 0x14

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 713
    const/16 v1, 0x15

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 714
    const/16 v1, 0x16

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 715
    const/16 v1, 0x17

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 716
    const/16 v1, 0x18

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 717
    const/16 v1, 0x19

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 718
    const/16 v1, 0x1a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 719
    const/16 v1, 0xd

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 720
    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 721
    const/16 v1, 0x1b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 723
    return-object v0
.end method

.method private postViewNotificationToSyncAdapter()V
    .locals 13

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 948
    .local v1, "context":Landroid/content/Context;
    iget-object v11, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v11}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContact;

    .line 949
    .local v5, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v5}, Lcom/android/contacts/common/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 950
    .local v6, "rawContactId":J
    iget-object v11, p0, Lcom/android/contacts/common/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 953
    iget-object v11, p0, Lcom/android/contacts/common/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 954
    invoke-virtual {v5, v1}, Lcom/android/contacts/common/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 955
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getViewContactNotifyServiceClassName()Ljava/lang/String;

    move-result-object v8

    .line 956
    .local v8, "serviceName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getViewContactNotifyServicePackageName()Ljava/lang/String;

    move-result-object v9

    .line 957
    .local v9, "servicePackageName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 958
    sget-object v11, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 959
    .local v10, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 960
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    const-string v11, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 964
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 965
    :catch_0
    move-exception v2

    .line 966
    .local v2, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    const-string v12, "Error sending message to source-app"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 970
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .end local v6    # "rawContactId":J
    .end local v8    # "serviceName":Ljava/lang/String;
    .end local v9    # "servicePackageName":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private processOneRecord(Lcom/android/contacts/common/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "rawContact"    # Lcom/android/contacts/common/model/RawContact;
    .param p2, "item"    # Lorg/json/JSONObject;
    .param p3, "mimetype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 475
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 476
    .local v0, "itemValues":Landroid/content/ContentValues;
    const-string v4, "mimetype"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v4, "_id"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 479
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 480
    .local v1, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 481
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 482
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 483
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 484
    check-cast v3, Ljava/lang/String;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 485
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 486
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 489
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/RawContact;->addDataItemValues(Landroid/content/ContentValues;)V

    .line 490
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 975
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 977
    :cond_0
    return-void
.end method


# virtual methods
.method public cacheResult()V
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1035
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    .line 1039
    :goto_0
    return-void

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    goto :goto_0
.end method

.method public deliverResult(Lcom/android/contacts/common/model/Contact;)V
    .locals 4
    .param p1, "result"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->unregisterObserver()V

    .line 915
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    .line 921
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 922
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 924
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_3

    .line 925
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering content observer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez v0, :cond_2

    .line 927
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 929
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 933
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mPostViewNotification:Z

    if-eqz v0, :cond_4

    .line 935
    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->postViewNotificationToSyncAdapter()V

    .line 939
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-super {p0, v0}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 79
    check-cast p1, Lcom/android/contacts/common/model/Contact;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/ContactLoader;->deliverResult(Lcom/android/contacts/common/model/Contact;)V

    return-void
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Lcom/android/contacts/common/model/Contact;
    .locals 9

    .prologue
    .line 350
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 351
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v6}, Lcom/android/contacts/common/util/ContactLoaderUtils;->ensureIsContactUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 353
    .local v5, "uriCurrentFormat":Landroid/net/Uri;
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    .line 354
    .local v0, "cachedResult":Lcom/android/contacts/common/model/Contact;
    const/4 v6, 0x0

    sput-object v6, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    .line 358
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v6, v7}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 362
    new-instance v3, Lcom/android/contacts/common/model/Contact;

    iget-object v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-direct {v3, v6, v0}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact;)V

    .line 363
    .local v3, "result":Lcom/android/contacts/common/model/Contact;
    const/4 v4, 0x1

    .line 372
    .local v4, "resultIsCached":Z
    :goto_0
    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->isLoaded()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 373
    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 374
    if-nez v4, :cond_0

    .line 375
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->loadDirectoryMetaData(Lcom/android/contacts/common/model/Contact;)V

    .line 382
    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    if-eqz v6, :cond_1

    .line 383
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->computeFormattedPhoneNumbers(Lcom/android/contacts/common/model/Contact;)V

    .line 385
    :cond_1
    if-nez v4, :cond_2

    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->loadPhotoBinaryData(Lcom/android/contacts/common/model/Contact;)V

    .line 388
    :cond_2
    iget-boolean v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getInvitableAccountTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    if-nez v6, :cond_3

    .line 389
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->loadInvitableAccountTypes(Lcom/android/contacts/common/model/Contact;)V

    .line 395
    .end local v0    # "cachedResult":Lcom/android/contacts/common/model/Contact;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "result":Lcom/android/contacts/common/model/Contact;
    .end local v4    # "resultIsCached":Z
    .end local v5    # "uriCurrentFormat":Landroid/net/Uri;
    :cond_3
    :goto_2
    return-object v3

    .line 365
    .restart local v0    # "cachedResult":Lcom/android/contacts/common/model/Contact;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "uriCurrentFormat":Landroid/net/Uri;
    :cond_4
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    const-string v7, "encoded"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 366
    invoke-direct {p0, v5}, Lcom/android/contacts/common/model/ContactLoader;->loadEncodedContactEntity(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v3

    .line 370
    .restart local v3    # "result":Lcom/android/contacts/common/model/Contact;
    :goto_3
    const/4 v4, 0x0

    .restart local v4    # "resultIsCached":Z
    goto :goto_0

    .line 368
    .end local v3    # "result":Lcom/android/contacts/common/model/Contact;
    .end local v4    # "resultIsCached":Z
    :cond_5
    invoke-direct {p0, v2, v5}, Lcom/android/contacts/common/model/ContactLoader;->loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v3

    .restart local v3    # "result":Lcom/android/contacts/common/model/Contact;
    goto :goto_3

    .line 377
    .restart local v4    # "resultIsCached":Z
    :cond_6
    iget-boolean v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadGroupMetaData:Z

    if-eqz v6, :cond_0

    .line 378
    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    if-nez v6, :cond_0

    .line 379
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->loadGroupMetaData(Lcom/android/contacts/common/model/Contact;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 393
    .end local v0    # "cachedResult":Lcom/android/contacts/common/model/Contact;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "result":Lcom/android/contacts/common/model/Contact;
    .end local v4    # "resultIsCached":Z
    .end local v5    # "uriCurrentFormat":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading the contact: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    iget-object v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {v6, v1}, Lcom/android/contacts/common/model/Contact;->forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/common/model/Contact;

    move-result-object v3

    goto :goto_2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->loadInBackground()Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 1023
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 1024
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->cancelLoad()Z

    .line 1025
    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->unregisterObserver()V

    .line 1026
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    .line 1027
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ContactLoader;->deliverResult(Lcom/android/contacts/common/model/Contact;)V

    .line 1011
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    if-nez v0, :cond_2

    .line 1012
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->forceLoad()V

    .line 1014
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->cancelLoad()Z

    .line 1019
    return-void
.end method

.method public upgradeToFullContact()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 985
    iget-boolean v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadGroupMetaData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mPostViewNotification:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    if-eqz v0, :cond_0

    .line 999
    :goto_0
    return-void

    .line 988
    :cond_0
    iput-boolean v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadGroupMetaData:Z

    .line 989
    iput-boolean v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    .line 990
    iput-boolean v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mPostViewNotification:Z

    .line 991
    iput-boolean v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    .line 994
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->cacheResult()V

    .line 998
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->onContentChanged()V

    goto :goto_0
.end method
