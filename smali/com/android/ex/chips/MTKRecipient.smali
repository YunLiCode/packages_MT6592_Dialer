.class public Lcom/android/ex/chips/MTKRecipient;
.super Ljava/lang/Object;
.source "MTKRecipient.java"


# instance fields
.field private mContactId:J

.field private mDataId:J

.field private mDestination:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mFormatString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide v0, p0, Lcom/android/ex/chips/MTKRecipient;->mContactId:J

    .line 58
    iput-wide v0, p0, Lcom/android/ex/chips/MTKRecipient;->mDataId:J

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipient;->mDisplayName:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipient;->mDestination:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contactId"    # J
    .param p3, "dataId"    # J
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "destination"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide p1, p0, Lcom/android/ex/chips/MTKRecipient;->mContactId:J

    .line 69
    iput-wide p3, p0, Lcom/android/ex/chips/MTKRecipient;->mDataId:J

    .line 70
    iput-object p5, p0, Lcom/android/ex/chips/MTKRecipient;->mDisplayName:Ljava/lang/String;

    .line 71
    iput-object p6, p0, Lcom/android/ex/chips/MTKRecipient;->mDestination:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, -0x1

    .line 64
    move-object v0, p0

    move-wide v3, v1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/ex/chips/MTKRecipient;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private textIsAllBlank(Ljava/lang/String;)Z
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 130
    if-eqz p1, :cond_0

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    .line 138
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 131
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private tokenizeDestination(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "destination"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 122
    .local v0, "tokens":[Landroid/text/util/Rfc822Token;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 123
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 125
    .end local p1    # "destination":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/ex/chips/MTKRecipient;->mContactId:J

    return-wide v0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/android/ex/chips/MTKRecipient;->mDataId:J

    return-wide v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/ex/chips/MTKRecipient;->mContactId:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipient;->mDestination:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipient;->tokenizeDestination(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipient;->mDestination:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipient;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipient;->mFormatString:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipient;->mFormatString:Ljava/lang/String;

    .line 117
    :goto_0
    return-object v1

    .line 97
    :cond_0
    const-string v1, ""

    .line 98
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipient;->mDestination:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipient;->mDestination:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/ex/chips/MTKRecipient;->textIsAllBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipient;->mDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipient;->mDisplayName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/ex/chips/MTKRecipient;->textIsAllBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 101
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipient;->mDisplayName:Ljava/lang/String;

    .line 102
    .local v0, "displayName":Ljava/lang/String;
    const-string v2, "\\\\"

    const-string v3, "\\\\\\\\"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v2, "\""

    const-string v3, "\\\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    const-string v2, ".*[\\(\\)<>@,;:\\\\\".\\[\\]].*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    const-string v2, "^\".*\"$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipient;->mDestination:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipient;->mFormatString:Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipient;->mDestination:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
