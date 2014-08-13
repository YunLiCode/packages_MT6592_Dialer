.class public Lcom/mediatek/contacts/util/ContactsGroupUtils;
.super Ljava/lang/Object;
.source "ContactsGroupUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;,
        Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;,
        Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;
    }
.end annotation


# static fields
.field public static final CONTACTS_IN_GROUP_SELECT:Ljava/lang/String; = " IN (SELECT contact_id FROM raw_contacts WHERE raw_contacts._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=(SELECT groups._id FROM groups WHERE deleted=0 AND title=?)) AND deleted=0)"

.field private static final MAX_OP_COUNT_IN_ONE_BATCH:I = 0x96

.field public static final SELECTION_MOVE_GROUP_DATA:Ljava/lang/String; = "contact_id IN (%1) AND mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=\'%2\'"

.field private static final TAG:Ljava/lang/String; = "ContactsGroupUtils"

.field public static sArrayData:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    return-void
.end method

.method public static getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    .line 94
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSimPhoneBookServiceNameForSlot(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "serviceName":Ljava/lang/String;
    const-string v2, "ContactsGroupUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getIIccPhoneBook]slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",serviceName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 97
    .local v0, "iIccPhb":Lcom/android/internal/telephony/IIccPhoneBook;
    return-object v0
.end method

.method public static getUsimMaxGrpCount(I)I
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 785
    const/4 v0, 0x0

    .line 786
    .local v0, "count":I
    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 787
    .local v3, "iIccPhb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-nez v3, :cond_0

    .line 788
    const-string v4, "ContactsGroupUtils"

    const-string v5, "[getUsimMaxGrpCount]IIccPhoneBook is null,return."

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 799
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    return v1

    .line 793
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_0
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimGrpMaxCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 799
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 794
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :catch_0
    move-exception v2

    .line 795
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "ContactsGroupUtils"

    const-string v5, "[getUsimMaxGrpCount]IIccPhoneBook exception!"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static moveUSIMGroupMember(Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;IZII)Z
    .locals 8
    .param p0, "data"    # Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;
    .param p1, "slotId"    # I
    .param p2, "isInTargetGroup"    # Z
    .param p3, "fromUgrpId"    # I
    .param p4, "toUgrpId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "ret":Z
    # getter for: Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->mSimIndexPhoneOrSim:I
    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->access$000(Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;)I

    move-result v2

    .line 124
    .local v2, "simId":I
    const-string v3, "ContactsGroupUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[moveUSIMGroupMember]sim id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-ltz v2, :cond_0

    .line 127
    if-ltz p1, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "moveSucess":Z
    # getter for: Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->mSimIndex:I
    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->access$100(Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;)I

    move-result v3

    new-array v4, v7, [I

    aput p3, v4, v6

    new-array v5, v7, [I

    aput p4, v5, v6

    invoke-static {p1, v3, v4, v5}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->moveContactToGroups(II[I[I)Z

    move-result v0

    .line 134
    const-string v3, "ContactsGroupUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[moveUSIMGroupMember]moveSucess : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",data.mSimIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->mSimIndex:I
    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->access$100(Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",fromUgrpId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",toUgrpId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    move v1, v0

    .line 140
    .end local v0    # "moveSucess":Z
    :cond_0
    return v1
.end method
