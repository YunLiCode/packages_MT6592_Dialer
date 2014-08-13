.class public Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;
.super Ljava/lang/Exception;
.source "ContactsGroupUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/util/ContactsGroupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "USIMGroupException"
.end annotation


# static fields
.field public static final ERROR_STR_GRP_COUNT_OUTOFBOUND:Ljava/lang/String; = "Group count out of bound"

.field public static final ERROR_STR_GRP_GENERIC_ERROR:Ljava/lang/String; = "Group generic error"

.field public static final ERROR_STR_GRP_NAME_OUTOFBOUND:Ljava/lang/String; = "Group name out of bound"

.field public static final GROUP_GENERIC_ERROR:I = 0x3

.field public static final GROUP_NAME_OUT_OF_BOUND:I = 0x1

.field public static final GROUP_NUMBER_OUT_OF_BOUND:I = 0x2

.field public static final GROUP_SIM_ABSENT:I = 0x4

.field public static final USIM_ERROR_GROUP_COUNT:I = -0x14

.field public static final USIM_ERROR_NAME_LEN:I = -0xa

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field mErrorType:I

.field mSlotId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "errorType"    # I
    .param p3, "slotId"    # I

    .prologue
    .line 719
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 720
    iput p2, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;->mErrorType:I

    .line 721
    iput p3, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;->mSlotId:I

    .line 722
    return-void
.end method

.method public static getErrorToastId(I)I
    .locals 1
    .param p0, "errorType"    # I

    .prologue
    .line 740
    packed-switch p0, :pswitch_data_0

    .line 753
    :pswitch_0
    const v0, 0x7f0a03c6

    .line 756
    .local v0, "retMsgId":I
    :goto_0
    return v0

    .line 742
    .end local v0    # "retMsgId":I
    :pswitch_1
    const v0, 0x7f0a03de

    .line 743
    .restart local v0    # "retMsgId":I
    goto :goto_0

    .line 745
    .end local v0    # "retMsgId":I
    :pswitch_2
    const v0, 0x7f0a03df

    .line 746
    .restart local v0    # "retMsgId":I
    goto :goto_0

    .line 749
    .end local v0    # "retMsgId":I
    :pswitch_3
    const v0, 0x7f0a015f

    .line 750
    .restart local v0    # "retMsgId":I
    goto :goto_0

    .line 740
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getErrorSlotId()I
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;->mSlotId:I

    return v0
.end method

.method public getErrorType()I
    .locals 1

    .prologue
    .line 725
    iget v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;->mErrorType:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Details message: errorType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;->mErrorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
