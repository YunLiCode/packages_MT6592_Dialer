.class public Lcom/android/dialer/calllog/PhoneNumberHelper;
.super Ljava/lang/Object;
.source "PhoneNumberHelper.java"


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/dialer/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    .line 34
    return-void
.end method


# virtual methods
.method getDisplayName(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "presentation"    # I

    .prologue
    const v1, 0x7f0a0151

    .line 37
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_2
    new-instance v0, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    invoke-direct {v0}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_3
    invoke-static {p1}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isLegacyUnknownNumbers(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "presentation"    # I
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayName(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 66
    .local v0, "displayName":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    .end local v0    # "displayName":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 70
    .restart local v0    # "displayName":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string v0, ""

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 75
    goto :goto_0

    :cond_2
    move-object v0, p3

    .line 77
    goto :goto_0
.end method
