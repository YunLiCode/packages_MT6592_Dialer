.class public Lcom/android/dialer/dialpad/SmartDialNameMatcher;
.super Ljava/lang/Object;
.source "SmartDialNameMatcher.java"


# static fields
.field private static final ALLOW_INITIAL_MATCH:Z = true

.field private static final INITIAL_LENGTH_LIMIT:I = 0x1

.field public static final LATIN_SMART_DIAL_MAP:Lcom/android/dialer/dialpad/SmartDialMap;

.field private static final TAG:Ljava/lang/String; = "SmartDialNameMatcher"


# instance fields
.field private final mMap:Lcom/android/dialer/dialpad/SmartDialMap;

.field private final mMatchPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ">;"
        }
    .end annotation
.end field

.field private mNameMatchMask:Ljava/lang/String;

.field private mPhoneNumberMatchMask:Ljava/lang/String;

.field private final mQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/android/dialer/dialpad/LatinSmartDialMap;

    invoke-direct {v0}, Lcom/android/dialer/dialpad/LatinSmartDialMap;-><init>()V

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_SMART_DIAL_MAP:Lcom/android/dialer/dialpad/SmartDialMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_SMART_DIAL_MAP:Lcom/android/dialer/dialpad/SmartDialMap;

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;-><init>(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "map"    # Lcom/android/dialer/dialpad/SmartDialMap;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mPhoneNumberMatchMask:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    .line 64
    return-void
.end method

.method private constructEmptyMask(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "length"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 74
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method private matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "offset"    # I

    .prologue
    const/4 v4, 0x0

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-object v4

    .line 213
    :cond_1
    const/4 v3, 0x0

    .line 214
    .local v3, "queryAt":I
    move v2, p3

    .line 215
    .local v2, "numberAt":I
    move v1, p3

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 216
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_3

    .line 243
    :cond_2
    new-instance v4, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    add-int/lit8 v5, p3, 0x0

    invoke-direct {v4, v5, v2}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;-><init>(II)V

    goto :goto_0

    .line 219
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 220
    .local v0, "ch":C
    iget-object v5, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    invoke-interface {v5, v0}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadNumericChar(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 221
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    .line 224
    add-int/lit8 v3, v3, 0x1

    .line 241
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 226
    :cond_5
    if-nez v3, :cond_4

    .line 236
    if-eqz p3, :cond_4

    .line 237
    add-int/lit8 p3, p3, 0x1

    goto :goto_2
.end method

.method public static normalizeNumber(Ljava/lang/String;ILcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "map"    # Lcom/android/dialer/dialpad/SmartDialMap;

    .prologue
    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v2, "s":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 109
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 110
    .local v0, "ch":C
    invoke-interface {p2, v0}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadNumericChar(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "ch":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static normalizeNumber(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "map"    # Lcom/android/dialer/dialpad/SmartDialMap;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;ILcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/dialpad/SmartDialMatchPosition;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "matchPos"    # Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    .prologue
    .line 84
    iget v0, p2, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->start:I

    .local v0, "i":I
    :goto_0
    iget v1, p2, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    if-ge v0, v1, :cond_0

    .line 85
    add-int/lit8 v1, v0, 0x1

    const-string v2, "1"

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public getMatchPositions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getNameMatchPositionsInString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberMatchPositionsInString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mPhoneNumberMatchMask:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 427
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesCombination(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method matchesCombination(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 19
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 276
    .local p3, "matchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialMatchPosition;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->constructEmptyMask(Ljava/lang/StringBuilder;I)V

    .line 278
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    .line 279
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 280
    .local v7, "nameLength":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    .line 282
    .local v11, "queryLength":I
    if-ge v7, v11, :cond_0

    .line 283
    const/16 v16, 0x0

    .line 422
    :goto_0
    return v16

    .line 286
    :cond_0
    if-nez v11, :cond_1

    .line 287
    const/16 v16, 0x0

    goto :goto_0

    .line 292
    :cond_1
    const/4 v8, 0x0

    .line 295
    .local v8, "nameStart":I
    const/4 v12, 0x0

    .line 298
    .local v12, "queryStart":I
    const/4 v15, 0x0

    .line 304
    .local v15, "tokenStart":I
    const/4 v14, 0x0

    .line 306
    .local v14, "seperatorCount":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v9, "partial":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialMatchPosition;>;"
    :goto_1
    if-ge v8, v7, :cond_e

    if-ge v12, v11, :cond_e

    .line 309
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 311
    .local v3, "ch":C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lcom/android/dialer/dialpad/SmartDialMap;->normalizeCharacter(C)C

    move-result v3

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadCharacter(C)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadAlphabeticChar(C)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lcom/android/dialer/dialpad/SmartDialMap;->getDialpadNumericCharacter(C)C

    move-result v3

    .line 316
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v0, v16

    if-eq v3, v0, :cond_6

    .line 333
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-interface/range {v17 .. v18}, Lcom/android/dialer/dialpad/SmartDialMap;->normalizeCharacter(C)C

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadCharacter(C)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 336
    :cond_3
    :goto_2
    if-ge v8, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-interface/range {v17 .. v18}, Lcom/android/dialer/dialpad/SmartDialMap;->normalizeCharacter(C)C

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadCharacter(C)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 339
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 341
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 345
    :cond_5
    const/4 v12, 0x0

    .line 346
    const/4 v14, 0x0

    .line 347
    move v15, v8

    goto/16 :goto_1

    .line 349
    :cond_6
    add-int/lit8 v16, v11, -0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_8

    .line 353
    new-instance v16, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    add-int v17, v11, v15

    add-int v17, v17, v14

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;-><init>(II)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    .line 356
    .local v6, "match":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/dialpad/SmartDialMatchPosition;)V

    goto :goto_3

    .line 358
    .end local v6    # "match":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    .line 359
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 360
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_8
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 366
    move v5, v8

    .local v5, "j":I
    :goto_4
    if-ge v5, v7, :cond_9

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-interface/range {v17 .. v18}, Lcom/android/dialer/dialpad/SmartDialMap;->normalizeCharacter(C)C

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadCharacter(C)Z

    move-result v16

    if-nez v16, :cond_b

    .line 373
    :cond_9
    add-int/lit8 v16, v7, -0x1

    move/from16 v0, v16

    if-ge v5, v0, :cond_a

    .line 374
    add-int/lit8 v16, v5, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 375
    .local v13, "remainder":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 377
    .local v10, "partialTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialMatchPosition;>;"
    add-int/lit8 v16, v12, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1, v10}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesCombination(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 381
    add-int/lit8 v16, v5, 0x1

    move/from16 v0, v16

    invoke-static {v10, v0}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->advanceMatchPositions(Ljava/util/ArrayList;I)V

    .line 382
    const/16 v16, 0x0

    new-instance v17, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    add-int/lit8 v18, v8, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;-><init>(II)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 387
    move-object v9, v10

    .line 391
    .end local v5    # "j":I
    .end local v10    # "partialTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialMatchPosition;>;"
    .end local v13    # "remainder":Ljava/lang/String;
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 392
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 366
    .restart local v5    # "j":I
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 398
    .end local v5    # "j":I
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 399
    if-nez v12, :cond_d

    .line 403
    move v15, v8

    goto/16 :goto_1

    .line 407
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 414
    .end local v3    # "ch":C
    :cond_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_10

    .line 415
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 416
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    .line 417
    .restart local v6    # "match":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/dialpad/SmartDialMatchPosition;)V

    goto :goto_5

    .line 419
    .end local v6    # "match":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    .line 420
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 422
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_10
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method public matchesNumber(Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v0

    return-object v0
.end method

.method public matchesNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v0

    return-object v0
.end method

.method public matchesNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    .locals 7
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "useNanp"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    :cond_0
    const-string v4, "SmartDialNameMatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "matchesNumber return null.phoneNumber ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v1, 0x0

    .line 170
    :cond_1
    :goto_0
    return-object v1

    .line 135
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->constructEmptyMask(Ljava/lang/StringBuilder;I)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mPhoneNumberMatchMask:Ljava/lang/String;

    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 139
    .local v2, "offset":I
    if-gez v2, :cond_3

    .line 140
    const/4 v2, 0x0

    .line 145
    :cond_3
    invoke-direct {p0, p1, p2, v2}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v1

    .line 146
    .local v1, "matchPos":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    if-nez v1, :cond_6

    .line 147
    invoke-static {p1}, Lcom/android/dialer/dialpad/SmartDialPrefix;->parsePhoneNumber(Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;

    move-result-object v3

    .line 150
    .local v3, "phoneNumberTokens":Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;
    if-nez v3, :cond_4

    .line 151
    if-eqz v1, :cond_1

    .line 152
    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/dialpad/SmartDialMatchPosition;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mPhoneNumberMatchMask:Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_4
    iget v4, v3, Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;->countryCodeOffset:I

    if-eqz v4, :cond_5

    .line 158
    iget v4, v3, Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;->countryCodeOffset:I

    invoke-direct {p0, p1, p2, v4}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v1

    .line 161
    :cond_5
    if-nez v1, :cond_6

    iget v4, v3, Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;->nanpCodeOffset:I

    if-eqz v4, :cond_6

    if-eqz p3, :cond_6

    .line 162
    iget v4, v3, Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;->nanpCodeOffset:I

    invoke-direct {p0, p1, p2, v4}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v1

    .line 166
    .end local v3    # "phoneNumberTokens":Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;
    :cond_6
    if-eqz v1, :cond_1

    .line 167
    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/dialpad/SmartDialMatchPosition;)V

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mPhoneNumberMatchMask:Ljava/lang/String;

    goto :goto_0
.end method
