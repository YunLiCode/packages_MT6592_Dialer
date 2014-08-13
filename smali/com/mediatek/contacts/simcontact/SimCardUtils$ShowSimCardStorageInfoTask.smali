.class public Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;
.super Landroid/os/AsyncTask;
.source "SimCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/simcontact/SimCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowSimCardStorageInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

.field private static sNeedPopUp:Z

.field private static sSurplugMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDlgContent:Ljava/lang/String;

.field private mIsCancelled:Z

.field private mIsException:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

    .line 519
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sNeedPopUp:Z

    .line 520
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sSurplugMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 534
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 515
    iput-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    .line 516
    iput-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsException:Z

    .line 517
    iput-object v1, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mDlgContent:Ljava/lang/String;

    .line 518
    iput-object v1, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mContext:Landroid/content/Context;

    .line 535
    iput-object p1, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mContext:Landroid/content/Context;

    .line 536
    const-string v0, "SimCardUtils"

    const-string v1, "[ShowSimCardStorageInfoTask] onCreate()"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public static getSurplugCount(I)I
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 614
    const-string v1, "SimCardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSurplugCount] sSurplugMap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sSurplugMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    sget-object v1, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sSurplugMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sSurplugMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    sget-object v1, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sSurplugMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 618
    .local v0, "result":I
    const-string v1, "SimCardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSurplugCount] result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .end local v0    # "result":I
    :goto_0
    return v0

    .line 621
    :cond_0
    const-string v1, "SimCardUtils"

    const-string v2, "[getSurplugCount] return -1"

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static showSimCardStorageInfo(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needPopUp"    # Z

    .prologue
    .line 523
    sput-boolean p1, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sNeedPopUp:Z

    .line 524
    const-string v0, "SimCardUtils"

    const-string v1, "[ShowSimCardStorageInfoTask]_beg"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    sget-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

    if-eqz v0, :cond_0

    .line 526
    sget-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->cancel()V

    .line 527
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

    .line 529
    :cond_0
    new-instance v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

    .line 530
    sget-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 531
    const-string v0, "SimCardUtils"

    const-string v1, "[ShowSimCardStorageInfoTask]_end"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 601
    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 602
    iput-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    .line 603
    const-string v0, "SimCardUtils"

    const-string v1, "[ShowSimCardStorageInfoTask]: mIsCancelled = true"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 513
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 541
    const-string v9, "SimCardUtils"

    const-string v10, "[ShowSimCardStorageInfoTask]: doInBackground_beg"

    invoke-static {v9, v10}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimInfoList()Ljava/util/List;

    move-result-object v6

    .line 544
    .local v6, "simInfos":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    const-string v9, "SimCardUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ShowSimCardStorageInfoTask]: simInfos.size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-boolean v9, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    if-nez v9, :cond_8

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 546
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 547
    .local v8, "tempSurplugMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .local v0, "build":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 549
    .local v4, "simId":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 550
    .local v5, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-lez v4, :cond_1

    .line 551
    const-string v9, "\n\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 554
    const/4 v7, 0x0

    .line 555
    .local v7, "storageInfos":[I
    const-string v9, "SimCardUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ShowSimCardStorageInfoTask] simName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; simSlot = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; simId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string v9, ":\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :try_start_0
    const-string v9, "phoneEx"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v3

    .line 562
    .local v3, "phoneEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    iget-boolean v9, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    if-nez v9, :cond_4

    if-eqz v3, :cond_4

    .line 563
    iget v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-interface {v3, v9}, Lcom/mediatek/common/telephony/ITelephonyEx;->getAdnStorageInfo(I)[I

    move-result-object v7

    .line 564
    if-nez v7, :cond_2

    .line 565
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsException:Z

    .line 566
    const-string v9, "SimCardUtils"

    const-string v10, "[ShowSimCardStorageInfoTask]storageInfos is null."

    invoke-static {v9, v10}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const/4 v9, 0x0

    .line 597
    .end local v0    # "build":Ljava/lang/StringBuilder;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "phoneEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    .end local v4    # "simId":I
    .end local v5    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v7    # "storageInfos":[I
    .end local v8    # "tempSurplugMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_0
    return-object v9

    .line 569
    .restart local v0    # "build":Ljava/lang/StringBuilder;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "phoneEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    .restart local v4    # "simId":I
    .restart local v5    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .restart local v7    # "storageInfos":[I
    .restart local v8    # "tempSurplugMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    const-string v9, "SimCardUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ShowSimCardStorageInfoTask] infos: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    const-string v10, "SimCardUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "slotId:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "||storage:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v7, :cond_5

    const-string v9, "NULL"

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "||used:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v7, :cond_6

    const-string v9, "NULL"

    :goto_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    if-eqz v7, :cond_3

    const/4 v9, 0x1

    aget v9, v7, v9

    if-lez v9, :cond_3

    .line 585
    iget v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v7, v10

    const/4 v11, 0x0

    aget v11, v7, v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_3
    iget-object v9, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0425

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    aget v13, v7, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    aget v13, v7, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-boolean v9, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    if-eqz v9, :cond_0

    .line 590
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 572
    :cond_4
    :try_start_1
    const-string v9, "SimCardUtils"

    const-string v10, "[ShowSimCardStorageInfoTask]: phone = null"

    invoke-static {v9, v10}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsException:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 574
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 576
    .end local v3    # "phoneEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    :catch_0
    move-exception v1

    .line 577
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v9, "SimCardUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ShowSimCardStorageInfoTask]_exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsException:Z

    .line 579
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 581
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "phoneEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    :cond_5
    const/4 v9, 0x1

    aget v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_1

    :cond_6
    const/4 v9, 0x0

    aget v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_2

    .line 593
    .end local v3    # "phoneEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    .end local v5    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v7    # "storageInfos":[I
    :cond_7
    sput-object v8, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sSurplugMap:Ljava/util/HashMap;

    .line 594
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mDlgContent:Ljava/lang/String;

    .line 596
    .end local v0    # "build":Ljava/lang/StringBuilder;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "simId":I
    .end local v8    # "tempSurplugMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_8
    const-string v9, "SimCardUtils"

    const-string v10, "[ShowSimCardStorageInfoTask]: doInBackground_end"

    invoke-static {v9, v10}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 513
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 608
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

    .line 609
    iput-boolean v1, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    .line 610
    iput-boolean v1, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsException:Z

    .line 611
    return-void
.end method
