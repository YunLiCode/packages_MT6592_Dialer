.class public Lcom/android/contacts/common/format/FormatUtils;
.super Ljava/lang/Object;
.source "FormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/format/FormatUtils$OffsetValues;
    }
.end annotation


# static fields
.field private static final LEFT_TO_RIGHT_EMBEDDING:C = '\u202a'

.field private static final POP_DIRECTIONAL_FORMATTING:C = '\u202c'


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    return-void
.end method

.method public static applyStyleToSpan(ILjava/lang/CharSequence;III)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "style"    # I
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 110
    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 111
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 112
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 113
    .local v0, "text":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, p0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 114
    return-object v0
.end method

.method public static charArrayBufferToString(Landroid/database/CharArrayBuffer;)Ljava/lang/String;
    .locals 4
    .param p0, "buffer"    # Landroid/database/CharArrayBuffer;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v2, 0x0

    iget v3, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static copyToCharArrayBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "buffer"    # Landroid/database/CharArrayBuffer;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 119
    if-eqz p0, :cond_2

    .line 120
    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    .line 121
    .local v0, "data":[C
    if-eqz v0, :cond_0

    array-length v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C

    .line 126
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 130
    .end local v0    # "data":[C
    :goto_1
    return-void

    .line 124
    .restart local v0    # "data":[C
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v3, v1, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    .line 128
    .end local v0    # "data":[C
    :cond_2
    iput v3, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_1
.end method

.method public static forceLeftToRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x202a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 329
    const/16 v1, 0x202c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static indexOfWordForInternationalCall(Ljava/lang/CharSequence;[C)I
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # [C

    .prologue
    const/4 v4, -0x1

    .line 238
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v4

    .line 275
    :cond_1
    :goto_0
    return v0

    .line 242
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 243
    .local v3, "textLength":I
    array-length v2, p1

    .line 245
    .local v2, "prefixLength":I
    if-eqz v2, :cond_3

    if-ge v3, v2, :cond_4

    :cond_3
    move v0, v4

    .line 246
    goto :goto_0

    .line 249
    :cond_4
    const/4 v0, 0x0

    .line 250
    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_9

    .line 253
    :goto_2
    if-ge v0, v3, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x40

    if-eq v5, v6, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_5

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 257
    :cond_5
    add-int v5, v0, v2

    if-le v5, v3, :cond_6

    move v0, v4

    .line 258
    goto :goto_0

    .line 263
    :cond_6
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    if-ge v1, v2, :cond_7

    .line 264
    add-int v5, v0, v1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aget-char v6, p1, v1

    if-eq v5, v6, :cond_8

    .line 268
    :cond_7
    if-eq v1, v2, :cond_1

    .line 272
    add-int/lit8 v0, v0, 0x1

    .line 273
    goto :goto_1

    .line 263
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1    # "j":I
    :cond_9
    move v0, v4

    .line 275
    goto :goto_0
.end method

.method public static indexOfWordForLetterOrDigit(Ljava/lang/CharSequence;[C)I
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # [C

    .prologue
    const/4 v4, -0x1

    .line 200
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v4

    .line 234
    :cond_1
    :goto_0
    return v0

    .line 204
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 205
    .local v3, "textLength":I
    array-length v2, p1

    .line 207
    .local v2, "prefixLength":I
    if-eqz v2, :cond_3

    if-ge v3, v2, :cond_4

    :cond_3
    move v0, v4

    .line 208
    goto :goto_0

    .line 211
    :cond_4
    const/4 v0, 0x0

    .line 212
    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_9

    .line 213
    :goto_2
    if-ge v0, v3, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 217
    :cond_5
    add-int v5, v0, v2

    if-le v5, v3, :cond_6

    move v0, v4

    .line 218
    goto :goto_0

    .line 222
    :cond_6
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    if-ge v1, v2, :cond_7

    .line 223
    add-int v5, v0, v1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aget-char v6, p1, v1

    if-eq v5, v6, :cond_8

    .line 227
    :cond_7
    if-eq v1, v2, :cond_1

    .line 231
    add-int/lit8 v0, v0, 0x1

    .line 232
    goto :goto_1

    .line 222
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1    # "j":I
    :cond_9
    move v0, v4

    .line 234
    goto :goto_0
.end method

.method public static indexOfWordForLetterOrDigit(Ljava/lang/CharSequence;[CLjava/util/ArrayList;)I
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[C",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "ignore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    .line 279
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v4

    .line 321
    :cond_1
    :goto_0
    return v0

    .line 283
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 284
    .local v3, "textLength":I
    array-length v2, p1

    .line 286
    .local v2, "prefixLength":I
    if-eqz v2, :cond_3

    if-ge v3, v2, :cond_4

    :cond_3
    move v0, v4

    .line 287
    goto :goto_0

    .line 290
    :cond_4
    const/4 v0, 0x0

    .line 291
    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_b

    .line 292
    :goto_2
    if-ge v0, v3, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 296
    :cond_5
    add-int v5, v0, v2

    if-le v5, v3, :cond_6

    move v0, v4

    .line 297
    goto :goto_0

    .line 301
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 302
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    if-ge v1, v2, :cond_9

    .line 303
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    add-int/2addr v5, v1

    if-ge v5, v3, :cond_7

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    add-int/2addr v5, v1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_7

    .line 305
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 307
    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    add-int/2addr v5, v1

    if-lt v5, v3, :cond_8

    move v0, v4

    .line 308
    goto :goto_0

    .line 310
    :cond_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    add-int/2addr v5, v1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aget-char v6, p1, v1

    if-eq v5, v6, :cond_a

    .line 314
    :cond_9
    if-eq v1, v2, :cond_1

    .line 318
    add-int/lit8 v0, v0, 0x1

    .line 319
    goto :goto_1

    .line 302
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1    # "j":I
    :cond_b
    move v0, v4

    .line 321
    goto :goto_0
.end method

.method public static indexOfWordPrefix(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 147
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v4

    .line 196
    :cond_1
    :goto_0
    return v0

    .line 151
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 152
    .local v3, "textLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 154
    .local v2, "prefixLength":I
    if-eqz v2, :cond_3

    if-ge v3, v2, :cond_4

    :cond_3
    move v0, v4

    .line 155
    goto :goto_0

    .line 158
    :cond_4
    const/4 v0, 0x0

    .line 159
    .local v0, "i":I
    :cond_5
    :goto_1
    if-ge v0, v3, :cond_b

    .line 161
    :goto_2
    if-ge v0, v3, :cond_6

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_6

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 165
    :cond_6
    add-int v5, v0, v2

    if-le v5, v3, :cond_7

    move v0, v4

    .line 166
    goto :goto_0

    .line 171
    :cond_7
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    if-ge v1, v2, :cond_8

    .line 172
    add-int v5, v0, v1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_9

    .line 176
    :cond_8
    if-eq v1, v2, :cond_1

    .line 184
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 190
    :cond_a
    :goto_4
    if-ge v0, v3, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v1    # "j":I
    :cond_b
    move v0, v4

    .line 196
    goto :goto_0
.end method

.method public static overlapPoint(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)I
    .locals 4
    .param p0, "buffer1"    # Landroid/database/CharArrayBuffer;
    .param p1, "buffer2"    # Landroid/database/CharArrayBuffer;

    .prologue
    const/4 v3, 0x0

    .line 42
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 43
    :cond_0
    const/4 v0, -0x1

    .line 45
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/database/CharArrayBuffer;->data:[C

    iget v1, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    iget-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C

    iget v2, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/common/format/FormatUtils;->overlapPoint([C[C)I

    move-result v0

    goto :goto_0
.end method

.method public static overlapPoint(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "string1"    # Ljava/lang/String;
    .param p1, "string2"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 55
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 56
    :cond_0
    const/4 v0, -0x1

    .line 58
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/common/format/FormatUtils;->overlapPoint([C[C)I

    move-result v0

    goto :goto_0
.end method

.method public static overlapPoint([C[C)I
    .locals 8
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .prologue
    const/4 v5, -0x1

    .line 66
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v5

    .line 94
    :cond_1
    :goto_0
    return v2

    .line 69
    :cond_2
    array-length v0, p0

    .line 70
    .local v0, "count1":I
    array-length v1, p1

    .line 73
    .local v1, "count2":I
    :goto_1
    if-lez v0, :cond_3

    if-lez v1, :cond_3

    add-int/lit8 v6, v0, -0x1

    aget-char v6, p0, v6

    add-int/lit8 v7, v1, -0x1

    aget-char v7, p1, v7

    if-ne v6, v7, :cond_3

    .line 74
    add-int/lit8 v0, v0, -0x1

    .line 75
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 78
    :cond_3
    move v4, v1

    .line 79
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_7

    .line 80
    add-int v6, v2, v4

    if-le v6, v0, :cond_4

    .line 81
    sub-int v4, v0, v2

    .line 84
    :cond_4
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    if-ge v3, v4, :cond_5

    .line 85
    add-int v6, v2, v3

    aget-char v6, p0, v6

    aget-char v7, p1, v3

    if-eq v6, v7, :cond_6

    .line 89
    :cond_5
    if-eq v3, v4, :cond_1

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 84
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v3    # "j":I
    :cond_7
    move v2, v5

    .line 94
    goto :goto_0
.end method
