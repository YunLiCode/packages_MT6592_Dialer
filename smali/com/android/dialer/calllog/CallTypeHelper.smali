.class public Lcom/android/dialer/calllog/CallTypeHelper;
.super Ljava/lang/Object;
.source "CallTypeHelper.java"


# instance fields
.field private final mAutoRejectedName:Ljava/lang/CharSequence;

.field private final mIncomingName:Ljava/lang/CharSequence;

.field private final mMissedName:Ljava/lang/CharSequence;

.field private final mNewMissedColor:I

.field private final mNewVoicemailColor:I

.field private final mOutgoingName:Ljava/lang/CharSequence;

.field private final mVoicemailName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const v0, 0x7f0a0595

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mIncomingName:Ljava/lang/CharSequence;

    .line 44
    const v0, 0x7f0a0596

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mOutgoingName:Ljava/lang/CharSequence;

    .line 45
    const v0, 0x7f0a0597

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    .line 46
    const v0, 0x7f0a0598

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    .line 47
    const v0, 0x7f0e001f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mNewMissedColor:I

    .line 48
    const v0, 0x7f0e0020

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mNewVoicemailColor:I

    .line 50
    const v0, 0x7f0a0422

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mAutoRejectedName:Ljava/lang/CharSequence;

    .line 51
    return-void
.end method

.method public static isMissedCallType(I)Z
    .locals 2
    .param p0, "callType"    # I

    .prologue
    const/4 v0, 0x1

    .line 109
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCallTypeText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "callType"    # I

    .prologue
    .line 55
    packed-switch p1, :pswitch_data_0

    .line 74
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mIncomingName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mOutgoingName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 66
    :pswitch_3
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 70
    :pswitch_4
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mAutoRejectedName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getHighlightedColor(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "callType"    # I

    .prologue
    const/4 v0, 0x0

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 104
    :goto_0
    :pswitch_0
    return-object v0

    .line 90
    :pswitch_1
    iget v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mNewMissedColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 93
    :pswitch_2
    iget v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mNewVoicemailColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 98
    :pswitch_3
    iget v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mNewMissedColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
