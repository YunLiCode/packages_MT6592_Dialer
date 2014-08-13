.class public Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;
.super Ljava/lang/Object;
.source "CallTypeHelperEx.java"


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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const v0, 0x7f0a0595

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;->mIncomingName:Ljava/lang/CharSequence;

    .line 45
    const v0, 0x7f0a0596

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;->mOutgoingName:Ljava/lang/CharSequence;

    .line 46
    const v0, 0x7f0a0597

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;->mMissedName:Ljava/lang/CharSequence;

    .line 47
    const v0, 0x7f0a0598

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;->mVoicemailName:Ljava/lang/CharSequence;

    .line 48
    const v0, 0x7f0e001f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;->mNewMissedColor:I

    .line 49
    const v0, 0x7f0e0020

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;->mNewVoicemailColor:I

    .line 50
    const v0, 0x7f0a0422

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;->mAutoRejectedName:Ljava/lang/CharSequence;

    .line 51
    return-void
.end method


# virtual methods
.method public getCallTypeText(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "callType"    # I

    .prologue
    .line 55
    packed-switch p1, :pswitch_data_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid call type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;->mIncomingName:Ljava/lang/CharSequence;

    .line 69
    :goto_0
    return-object v0

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;->mOutgoingName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;->mMissedName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 66
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;->mVoicemailName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 69
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;->mAutoRejectedName:Ljava/lang/CharSequence;

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
    .locals 3
    .param p1, "callType"    # I

    .prologue
    const/4 v0, 0x0

    .line 78
    packed-switch p1, :pswitch_data_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid call type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :pswitch_0
    iget v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;->mNewMissedColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 94
    :goto_0
    :pswitch_1
    return-object v0

    .line 91
    :pswitch_2
    iget v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;->mNewVoicemailColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 94
    :pswitch_3
    iget v0, p0, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;->mNewMissedColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
