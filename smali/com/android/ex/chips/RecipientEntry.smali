.class public Lcom/android/ex/chips/RecipientEntry;
.super Ljava/lang/Object;
.source "RecipientEntry.java"


# static fields
.field public static final ENTRY_KIND_EMAIL:I = 0x1

.field public static final ENTRY_KIND_PHONE:I = 0x2

.field public static final ENTRY_TYPE_PERSON:I = 0x0

.field public static final ENTRY_TYPE_SIZE:I = 0x1

.field static final GENERATED_CONTACT:I = -0x2

.field static final INVALID_CONTACT:I = -0x1

.field static final INVALID_DESTINATION_TYPE:I = -0x1


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mContactId:J

.field private final mDataId:J

.field private final mDestination:Ljava/lang/String;

.field private mDestinationKind:I

.field private final mDestinationLabel:Ljava/lang/String;

.field private final mDestinationType:I

.field private final mDisplayName:Ljava/lang/String;

.field private final mEntryType:I

.field private final mIsDivider:Z

.field private mIsFirstLevel:Z

.field private final mIsGalContact:Z

.field private mIsValid:Z

.field private mPhotoBytes:[B

.field private final mPhotoThumbnailUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(I)V
    .locals 4
    .param p1, "entryType"    # I

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    .line 90
    iput-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    .line 92
    iput v1, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationType:I

    .line 93
    iput-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationLabel:Ljava/lang/String;

    .line 94
    iput-wide v2, p0, Lcom/android/ex/chips/RecipientEntry;->mContactId:J

    .line 95
    iput-wide v2, p0, Lcom/android/ex/chips/RecipientEntry;->mDataId:J

    .line 96
    iput-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    .line 97
    iput-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsDivider:Z

    .line 99
    iput v1, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationKind:I

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsGalContact:Z

    .line 101
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;Z)V
    .locals 14
    .param p1, "entryType"    # I
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "destinationType"    # I
    .param p5, "destinationLabel"    # Ljava/lang/String;
    .param p6, "contactId"    # J
    .param p8, "dataId"    # J
    .param p10, "photoThumbnailUri"    # Landroid/net/Uri;
    .param p11, "isFirstLevel"    # Z

    .prologue
    .line 125
    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v13}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZZ)V

    .line 127
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZZ)V
    .locals 1
    .param p1, "entryType"    # I
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "destinationType"    # I
    .param p5, "destinationLabel"    # Ljava/lang/String;
    .param p6, "contactId"    # J
    .param p8, "dataId"    # J
    .param p10, "photoThumbnailUri"    # Landroid/net/Uri;
    .param p11, "isFirstLevel"    # Z
    .param p12, "isValid"    # Z
    .param p13, "isGalContact"    # Z

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    .line 107
    iput-boolean p11, p0, Lcom/android/ex/chips/RecipientEntry;->mIsFirstLevel:Z

    .line 108
    iput-object p2, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    .line 110
    iput p4, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationType:I

    .line 111
    iput-object p5, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationLabel:Ljava/lang/String;

    .line 112
    iput-wide p6, p0, Lcom/android/ex/chips/RecipientEntry;->mContactId:J

    .line 113
    iput-wide p8, p0, Lcom/android/ex/chips/RecipientEntry;->mDataId:J

    .line 114
    iput-object p10, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsDivider:Z

    .line 117
    iput-boolean p12, p0, Lcom/android/ex/chips/RecipientEntry;->mIsValid:Z

    .line 118
    iput-boolean p13, p0, Lcom/android/ex/chips/RecipientEntry;->mIsGalContact:Z

    .line 119
    return-void
.end method

.method public static constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method public static constructFakeEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;
    .locals 14
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "isValid"    # Z

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 147
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v4, -0x1

    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p0

    move-wide v8, v6

    move-object v10, v5

    move v12, p1

    move v13, v1

    invoke-direct/range {v0 .. v13}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZZ)V

    return-object v0
.end method

.method public static constructFakePhoneEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;
    .locals 14
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "isValid"    # Z

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 161
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v4, -0x1

    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p0

    move-wide v8, v6

    move-object v10, v5

    move v12, p1

    move v13, v1

    invoke-direct/range {v0 .. v13}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZZ)V

    return-object v0
.end method

.method public static constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;
    .locals 14
    .param p0, "display"    # Ljava/lang/String;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isValid"    # Z

    .prologue
    .line 184
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x2

    const-wide/16 v8, -0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object v2, p0

    move-object v3, p1

    move/from16 v12, p2

    invoke-direct/range {v0 .. v13}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZZ)V

    return-object v0
.end method

.method public static constructSecondLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;ZZ)Lcom/android/ex/chips/RecipientEntry;
    .locals 17
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "displayNameSource"    # I
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "destinationType"    # I
    .param p4, "destinationLabel"    # Ljava/lang/String;
    .param p5, "contactId"    # J
    .param p7, "dataId"    # J
    .param p9, "thumbnailUriAsString"    # Ljava/lang/String;
    .param p10, "isValid"    # Z
    .param p11, "isGalContact"    # Z

    .prologue
    .line 210
    new-instance v3, Lcom/android/ex/chips/RecipientEntry;

    const/4 v4, 0x0

    move/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/RecipientEntry;->pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz p9, :cond_0

    invoke-static/range {p9 .. p9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    :goto_0
    const/4 v14, 0x0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v15, p10

    move/from16 v16, p11

    invoke-direct/range {v3 .. v16}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZZ)V

    return-object v3

    :cond_0
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public static constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZ)Lcom/android/ex/chips/RecipientEntry;
    .locals 17
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "displayNameSource"    # I
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "destinationType"    # I
    .param p4, "destinationLabel"    # Ljava/lang/String;
    .param p5, "contactId"    # J
    .param p7, "dataId"    # J
    .param p9, "photoThumbnailUri"    # Landroid/net/Uri;
    .param p10, "isValid"    # Z
    .param p11, "isGalContact"    # Z

    .prologue
    .line 192
    new-instance v3, Lcom/android/ex/chips/RecipientEntry;

    const/4 v4, 0x0

    move/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/RecipientEntry;->pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-object/from16 v13, p9

    move/from16 v15, p10

    move/from16 v16, p11

    invoke-direct/range {v3 .. v16}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZZ)V

    return-object v3
.end method

.method public static constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;ZZ)Lcom/android/ex/chips/RecipientEntry;
    .locals 17
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "displayNameSource"    # I
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "destinationType"    # I
    .param p4, "destinationLabel"    # Ljava/lang/String;
    .param p5, "contactId"    # J
    .param p7, "dataId"    # J
    .param p9, "thumbnailUriAsString"    # Ljava/lang/String;
    .param p10, "isValid"    # Z
    .param p11, "isGalContact"    # Z

    .prologue
    .line 200
    new-instance v3, Lcom/android/ex/chips/RecipientEntry;

    const/4 v4, 0x0

    move/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/RecipientEntry;->pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz p9, :cond_0

    invoke-static/range {p9 .. p9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    :goto_0
    const/4 v14, 0x1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v15, p10

    move/from16 v16, p11

    invoke-direct/range {v3 .. v16}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZZ)V

    return-object v3

    :cond_0
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public static isCreatedRecipient(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 138
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "displayNameSource"    # I
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;

    .prologue
    .line 174
    const/16 v0, 0x14

    if-le p0, v0, :cond_0

    .end local p1    # "displayName":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "displayName":Ljava/lang/String;
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/android/ex/chips/RecipientEntry;->mContactId:J

    return-wide v0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDataId:J

    return-wide v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationKind()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationKind:I

    return v0
.end method

.method public getDestinationLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationType()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationType:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryType()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    return v0
.end method

.method public declared-synchronized getPhotoBytes()[B
    .locals 1

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPhotoThumbnailUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isFirstLevel()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsFirstLevel:Z

    return v0
.end method

.method public isGalContact()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsGalContact:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeparator()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsDivider:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsValid:Z

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEntry;->mBitmap:Landroid/graphics/Bitmap;

    .line 286
    return-void
.end method

.method public setDestinationKind(I)V
    .locals 0
    .param p1, "destKind"    # I

    .prologue
    .line 302
    iput p1, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationKind:I

    .line 303
    return-void
.end method

.method public declared-synchronized setPhotoBytes([B)V
    .locals 1
    .param p1, "photoBytes"    # [B

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">, isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ex/chips/RecipientEntry;->mIsValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
