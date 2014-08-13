.class public Lcom/mediatek/dialer/util/CallLogSearchUtils;
.super Ljava/lang/Object;
.source "CallLogSearchUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static indexOfWordForInternationalCall(Ljava/lang/CharSequence;[C)I
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # [C

    .prologue
    const/4 v4, -0x1

    .line 45
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v4

    .line 82
    :cond_1
    :goto_0
    return v0

    .line 49
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 50
    .local v3, "textLength":I
    array-length v2, p1

    .line 52
    .local v2, "prefixLength":I
    if-eqz v2, :cond_3

    if-ge v3, v2, :cond_4

    :cond_3
    move v0, v4

    .line 53
    goto :goto_0

    .line 56
    :cond_4
    const/4 v0, 0x0

    .line 57
    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_9

    .line 60
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

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 64
    :cond_5
    add-int v5, v0, v2

    if-le v5, v3, :cond_6

    move v0, v4

    .line 65
    goto :goto_0

    .line 70
    :cond_6
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    if-ge v1, v2, :cond_7

    .line 71
    add-int v5, v0, v1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aget-char v6, p1, v1

    if-eq v5, v6, :cond_8

    .line 75
    :cond_7
    if-eq v1, v2, :cond_1

    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    goto :goto_1

    .line 70
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1    # "j":I
    :cond_9
    move v0, v4

    .line 82
    goto :goto_0
.end method

.method public static indexOfWordForLetterOrDigit(Ljava/lang/CharSequence;[C)I
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # [C

    .prologue
    const/4 v4, -0x1

    .line 7
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v4

    .line 41
    :cond_1
    :goto_0
    return v0

    .line 11
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 12
    .local v3, "textLength":I
    array-length v2, p1

    .line 14
    .local v2, "prefixLength":I
    if-eqz v2, :cond_3

    if-ge v3, v2, :cond_4

    :cond_3
    move v0, v4

    .line 15
    goto :goto_0

    .line 18
    :cond_4
    const/4 v0, 0x0

    .line 19
    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_9

    .line 20
    :goto_2
    if-ge v0, v3, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 24
    :cond_5
    add-int v5, v0, v2

    if-le v5, v3, :cond_6

    move v0, v4

    .line 25
    goto :goto_0

    .line 29
    :cond_6
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    if-ge v1, v2, :cond_7

    .line 30
    add-int v5, v0, v1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aget-char v6, p1, v1

    if-eq v5, v6, :cond_8

    .line 34
    :cond_7
    if-eq v1, v2, :cond_1

    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_1

    .line 29
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1    # "j":I
    :cond_9
    move v0, v4

    .line 41
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

    .line 86
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v4

    .line 128
    :cond_1
    :goto_0
    return v0

    .line 90
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 91
    .local v3, "textLength":I
    array-length v2, p1

    .line 93
    .local v2, "prefixLength":I
    if-eqz v2, :cond_3

    if-ge v3, v2, :cond_4

    :cond_3
    move v0, v4

    .line 94
    goto :goto_0

    .line 97
    :cond_4
    const/4 v0, 0x0

    .line 98
    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_b

    .line 99
    :goto_2
    if-ge v0, v3, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 103
    :cond_5
    add-int v5, v0, v2

    if-le v5, v3, :cond_6

    move v0, v4

    .line 104
    goto :goto_0

    .line 108
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 109
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    if-ge v1, v2, :cond_9

    .line 110
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

    .line 112
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 114
    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    add-int/2addr v5, v1

    if-lt v5, v3, :cond_8

    move v0, v4

    .line 115
    goto :goto_0

    .line 117
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

    .line 121
    :cond_9
    if-eq v1, v2, :cond_1

    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 126
    goto :goto_1

    .line 109
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1    # "j":I
    :cond_b
    move v0, v4

    .line 128
    goto :goto_0
.end method
