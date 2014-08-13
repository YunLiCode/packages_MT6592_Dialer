.class public final Lcom/android/services/telephony/common/CallIdentification;
.super Ljava/lang/Object;
.source "CallIdentification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/services/telephony/common/CallIdentification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallId:I

.field private mCallType:I

.field private mCnapName:Ljava/lang/String;

.field private mCnapNamePresentation:I

.field private mConferenceId:I

.field private mIMSCallMode:I

.field private mIsECCCall:Z

.field private mIsIncoming:Z

.field private mIsWaiting:Z

.field private mNumber:Ljava/lang/String;

.field private mNumberPresentation:I

.field private mPAU:Ljava/lang/String;

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/android/services/telephony/common/CallIdentification$1;

    invoke-direct {v0}, Lcom/android/services/telephony/common/CallIdentification$1;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/CallIdentification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "callId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 38
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 41
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 204
    iput v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 205
    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 206
    iput-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 237
    iput-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    .line 293
    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    .line 294
    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    .line 47
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v1, ""

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 38
    sget v1, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 41
    sget v1, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 44
    const-string v1, ""

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 204
    iput v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 205
    iput v3, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 206
    iput-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 237
    iput-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    .line 254
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    .line 293
    iput v3, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    .line 294
    iput v3, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 150
    const/4 v1, 0x3

    new-array v0, v1, [Z

    .line 151
    .local v0, "val":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 152
    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 153
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    .line 154
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsWaiting:Z

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/services/telephony/common/CallIdentification$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/services/telephony/common/CallIdentification$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/services/telephony/common/CallIdentification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/services/telephony/common/CallIdentification;)V
    .locals 3
    .param p1, "identification"    # Lcom/android/services/telephony/common/CallIdentification;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 38
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 41
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 204
    iput v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 205
    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 206
    iput-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 237
    iput-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    .line 293
    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    .line 294
    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    .line 51
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    .line 52
    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 53
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 54
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 55
    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 57
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 58
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 59
    iget-boolean v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    iput-boolean v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 63
    iget-boolean v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    iput-boolean v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    .line 67
    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    .line 71
    iget-boolean v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mIsWaiting:Z

    iput-boolean v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsWaiting:Z

    .line 75
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    .line 76
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    .line 78
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public getCallId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    return v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    return v0
.end method

.method public getConferenceId()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    return v0
.end method

.method public getIMSCallMode()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    return v0
.end method

.method public getPAUField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    return v0
.end method

.method public isECCCall()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    return v0
.end method

.method public isVideoCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 209
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoLteConferenceCall()Z
    .locals 2

    .prologue
    .line 305
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoLteConferenceHost()Z
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWaitingCall()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsWaiting:Z

    return v0
.end method

.method public markAsECCCall()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    .line 250
    return-void
.end method

.method public markAsWaitingCall(Z)V
    .locals 0
    .param p1, "isWaiting"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsWaiting:Z

    .line 289
    return-void
.end method

.method public setCallType(I)V
    .locals 0
    .param p1, "callType"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 222
    return-void
.end method

.method public setCnapName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cnapName"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setCnapNamePresentation(I)V
    .locals 0
    .param p1, "presentation"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 106
    return-void
.end method

.method public setConferenceId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 314
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    .line 315
    return-void
.end method

.method public setIMSCallMode(I)V
    .locals 0
    .param p1, "callMode"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    .line 302
    return-void
.end method

.method public setIsIncomingFlag(Z)V
    .locals 0
    .param p1, "isIncoming"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 218
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setNumberPresentation(I)V
    .locals 0
    .param p1, "presentation"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 98
    return-void
.end method

.method public setPAUField(Ljava/lang/String;)V
    .locals 0
    .param p1, "pau"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setSlotId(I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    .line 233
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 234
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCallId"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mNumberPresentation"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCnapName"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCnapNamePresentation"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mSlotId"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mVideoCallFlag"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsIncoming"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsECCCall"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsWaiting"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsWaiting:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mPAU"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIMSCallMode"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mConferenceId"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 122
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v1, 0x3

    new-array v0, v1, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsWaiting:Z

    aput-boolean v2, v0, v1

    .line 131
    .local v0, "val":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 132
    iget-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    return-void
.end method
