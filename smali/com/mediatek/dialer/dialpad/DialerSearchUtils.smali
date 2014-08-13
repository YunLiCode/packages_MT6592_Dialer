.class public Lcom/mediatek/dialer/dialpad/DialerSearchUtils;
.super Ljava/lang/Object;
.source "DialerSearchUtils.java"


# static fields
.field private static final HYPHON_CHARACTERS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DialerSearchUtils"

.field private static sSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    .line 20
    sget-object v0, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustHighlitePositionForHyphen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "numberMatchedOffsets"    # Ljava/lang/String;
    .param p2, "originNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 83
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 86
    .local v2, "highliteBegin":I
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 87
    .local v3, "highliteEnd":I
    const/4 v5, 0x0

    .line 88
    .local v5, "originNumberBegin":I
    const-string v7, ""

    .line 89
    .local v7, "targetTemp":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 90
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 91
    .local v0, "c":C
    sget-object v8, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 89
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 96
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 98
    if-le v2, v3, :cond_2

    .line 140
    .end local v2    # "highliteBegin":I
    .end local v3    # "highliteEnd":I
    .end local v4    # "i":I
    .end local v5    # "originNumberBegin":I
    .end local v6    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "targetTemp":Ljava/lang/String;
    :goto_2
    return-object v6

    .line 102
    .restart local v2    # "highliteBegin":I
    .restart local v3    # "highliteEnd":I
    .restart local v4    # "i":I
    .restart local v5    # "originNumberBegin":I
    .restart local v6    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7    # "targetTemp":Ljava/lang/String;
    :cond_2
    if-lt v5, v3, :cond_3

    if-lt v3, v10, :cond_3

    .line 103
    const/4 v3, 0x0

    .line 106
    :cond_3
    if-le v3, v5, :cond_4

    .line 107
    sub-int/2addr v3, v5

    .line 110
    :cond_4
    if-lt v2, v5, :cond_5

    .line 111
    sub-int/2addr v2, v5

    .line 114
    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-gt v4, v2, :cond_7

    .line 115
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 116
    .restart local v0    # "c":C
    sget-object v8, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 118
    add-int/lit8 v3, v3, 0x1

    .line 114
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 122
    .end local v0    # "c":C
    :cond_7
    add-int/lit8 v4, v2, 0x1

    :goto_4
    if-gt v4, v3, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_9

    .line 123
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 124
    .restart local v0    # "c":C
    sget-object v8, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 122
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 129
    .end local v0    # "c":C
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v3, v8, :cond_a

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 132
    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 134
    .end local v2    # "highliteBegin":I
    .end local v3    # "highliteEnd":I
    .end local v4    # "i":I
    .end local v5    # "originNumberBegin":I
    .end local v7    # "targetTemp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "DialerSearchUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "number = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " numberMatchedOffsets = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " originNumber = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    const/4 v6, 0x0

    goto/16 :goto_2
.end method

.method public static getSimType(II)J
    .locals 8
    .param p0, "indicate"    # I
    .param p1, "isSdnContact"    # I

    .prologue
    .line 62
    const-wide/16 v1, 0x0

    .line 63
    .local v1, "photoId":J
    sget-object v5, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->sSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    if-nez v5, :cond_0

    .line 64
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    sput-object v5, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->sSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    .line 67
    :cond_0
    sget-object v5, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->sSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    invoke-virtual {v5, p0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v4

    .line 68
    .local v4, "slot":I
    const-string v5, "DialerSearchUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getSimType] mSlot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, -0x1

    .line 71
    .local v0, "i":I
    sget-object v5, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->sSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    invoke-virtual {v5, v4}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    .line 72
    .local v3, "simInfoForColor":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v3, :cond_1

    .line 73
    iget v0, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 75
    :cond_1
    const-string v5, "DialerSearchUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getSimType] i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | isSdnContact : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v5, Lcom/mediatek/dialer/util/SimContactPhotoUtils;

    invoke-direct {v5}, Lcom/mediatek/dialer/util/SimContactPhotoUtils;-><init>()V

    invoke-virtual {v5, p1, v0}, Lcom/mediatek/dialer/util/SimContactPhotoUtils;->getPhotoId(II)J

    move-result-wide v1

    .line 78
    return-wide v1
.end method

.method public static isInValidDialpadString(Ljava/lang/String;)Z
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 156
    if-eqz p0, :cond_1

    .line 157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 158
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 160
    .local v0, "ch":C
    invoke-static {v0}, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->isValidDialpadCharacter(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    const/4 v2, 0x1

    .line 165
    .end local v0    # "ch":C
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 157
    .restart local v0    # "ch":C
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "ch":C
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isValidDialpadAlphabeticChar(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 144
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidDialpadCharacter(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 152
    invoke-static {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->isValidDialpadAlphabeticChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->isValidDialpadNumericChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidDialpadNumericChar(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 148
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tripHyphen(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    .end local p0    # "number":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 33
    .restart local p0    # "number":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 37
    .local v0, "c":C
    sget-object v3, Lcom/mediatek/dialer/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 41
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static tripNonDigit(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    .end local p0    # "number":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 49
    .restart local p0    # "number":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 52
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 54
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
