.class public Lcom/android/contacts/common/format/TextHighlighter;
.super Ljava/lang/Object;
.source "TextHighlighter.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mTextStyle:I

.field private mTextStyleSpan:Landroid/text/style/CharacterStyle;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "textStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/android/contacts/common/format/TextHighlighter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/format/TextHighlighter;->TAG:Ljava/lang/String;

    .line 40
    iput p1, p0, Lcom/android/contacts/common/format/TextHighlighter;->mTextStyle:I

    .line 41
    invoke-direct {p0}, Lcom/android/contacts/common/format/TextHighlighter;->getStyleSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/format/TextHighlighter;->mTextStyleSpan:Landroid/text/style/CharacterStyle;

    .line 42
    return-void
.end method

.method private getStyleSpan()Landroid/text/style/CharacterStyle;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/text/style/StyleSpan;

    iget v1, p0, Lcom/android/contacts/common/format/TextHighlighter;->mTextStyle:I

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public applyMaskingHighlight(Landroid/text/SpannableString;II)V
    .locals 2
    .param p1, "text"    # Landroid/text/SpannableString;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/contacts/common/format/TextHighlighter;->getStyleSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 68
    return-void
.end method

.method public applyPrefixHighlight(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 77
    if-nez p2, :cond_1

    .line 95
    .end local p1    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 82
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x0

    .line 83
    .local v1, "prefixStart":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "trimmedPrefix":Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/contacts/common/format/FormatUtils;->indexOfWordPrefix(Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result v0

    .line 90
    .local v0, "index":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 91
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 92
    .local v2, "result":Landroid/text/SpannableString;
    iget-object v4, p0, Lcom/android/contacts/common/format/TextHighlighter;->mTextStyleSpan:Landroid/text/style/CharacterStyle;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v0, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v2

    .line 93
    goto :goto_0
.end method

.method public setPrefixText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/format/TextHighlighter;->applyPrefixHighlight(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method