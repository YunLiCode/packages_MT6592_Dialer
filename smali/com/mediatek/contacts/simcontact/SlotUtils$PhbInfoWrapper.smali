.class final Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;
.super Ljava/lang/Object;
.source "SlotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/simcontact/SlotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PhbInfoWrapper"
.end annotation


# instance fields
.field private mInitialized:Z

.field private mSlotId:I

.field private mUsimAnrCount:I

.field private mUsimEmailCount:I

.field private mUsimGroupMaxCount:I

.field private mUsimGroupMaxNameLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getNonSlotId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    .line 175
    iput p1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    .line 176
    invoke-virtual {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->resetPhbInfo()V

    .line 177
    return-void
.end method


# virtual methods
.method public getUsimAnrCount()I
    .locals 3

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->refreshPhbInfo()V

    .line 245
    :cond_0
    const-string v0, "SlotUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getUsimAnrCount] slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimAnrCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimAnrCount:I

    return v0
.end method

.method public getUsimEmailCount()I
    .locals 3

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->refreshPhbInfo()V

    .line 253
    :cond_0
    const-string v0, "SlotUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getUsimEmailCount] slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimEmailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimEmailCount:I

    return v0
.end method

.method public getUsimGroupMaxCount()I
    .locals 3

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->refreshPhbInfo()V

    .line 237
    :cond_0
    const-string v0, "SlotUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getUsimGroupMaxCount] slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxCount:I

    return v0
.end method

.method public getUsimGroupMaxNameLength()I
    .locals 3

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->refreshPhbInfo()V

    .line 229
    :cond_0
    const-string v0, "SlotUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getUsimGroupMaxNameLength] slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxNameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxNameLength:I

    return v0
.end method

.method public refreshPhbInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 188
    const-string v3, "SlotUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[refreshPhbInfo]refreshing phb info for slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget v3, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-static {v3}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimInserted(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    const-string v3, "SlotUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[refreshPhbInfo]sim not insert, refresh aborted. slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iput-boolean v6, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    .line 223
    :goto_0
    return-void

    .line 194
    :cond_0
    iget v3, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-static {v3}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 195
    const-string v3, "SlotUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[refreshPhbInfo]phb not ready, refresh aborted. slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iput-boolean v7, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    goto :goto_0

    .line 200
    :cond_1
    iget v3, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-static {v3}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimUsimType(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 201
    const-string v3, "SlotUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[refreshPhbInfo]not usim phb, nothing to refresh, keep default, slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iput-boolean v6, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    goto :goto_0

    .line 206
    :cond_2
    iget v3, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-static {v3}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSimPhoneBookServiceNameForSlot(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "serviceName":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 209
    .local v1, "iIccPhb":Lcom/android/internal/telephony/IIccPhoneBook;
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimGrpMaxNameLen()I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxNameLength:I

    .line 210
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimGrpMaxCount()I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxCount:I

    .line 211
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAnrCount()I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimAnrCount:I

    .line 212
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getEmailCount()I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimEmailCount:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    iput-boolean v6, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    .line 220
    const-string v3, "SlotUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[refreshPhbInfo]refreshing done, UsimGroupMaxNameLenght = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxNameLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UsimGroupMaxCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UsimAnrCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimAnrCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UsimEmailCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimEmailCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    .end local v1    # "iIccPhb":Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SlotUtils"

    const-string v4, "[refreshPhbInfo]Exception happened when refreshing phb info"

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 216
    iput-boolean v7, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    goto/16 :goto_0
.end method

.method public resetPhbInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxNameLength:I

    .line 181
    iput v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxCount:I

    .line 182
    iput v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimAnrCount:I

    .line 183
    iput v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimEmailCount:I

    .line 184
    iput-boolean v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    .line 185
    return-void
.end method
