.class final Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;
.super Ljava/lang/Object;
.source "ContactsGroupUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "USimGroupArray"
.end annotation


# instance fields
.field private mMaxUsimGroupCount:Landroid/util/SparseIntArray;

.field private mMaxUsimGroupNameLength:Landroid/util/SparseIntArray;

.field private mSize:I

.field private mUgrpArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/telephony/UsimGroup;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 6
    .param p1, "size"    # I

    .prologue
    const/4 v5, -0x1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mSize:I

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mUgrpArray:Ljava/util/ArrayList;

    .line 157
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v3, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mMaxUsimGroupNameLength:Landroid/util/SparseIntArray;

    .line 158
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mMaxUsimGroupCount:Landroid/util/SparseIntArray;

    .line 159
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getFirstSlotId()I

    move-result v0

    .line 160
    .local v0, "firstSlotId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v2, "ugrpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/common/telephony/UsimGroup;>;"
    iget-object v3, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mUgrpArray:Ljava/util/ArrayList;

    add-int v4, v0, v1

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 163
    iget-object v3, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mMaxUsimGroupNameLength:Landroid/util/SparseIntArray;

    add-int v4, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 164
    iget-object v3, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mMaxUsimGroupCount:Landroid/util/SparseIntArray;

    add-int v4, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v2    # "ugrpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/common/telephony/UsimGroup;>;"
    :cond_0
    iput p1, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mSize:I

    .line 167
    return-void
.end method


# virtual methods
.method addItem(ILcom/mediatek/common/telephony/UsimGroup;)Z
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "usimGroup"    # Lcom/mediatek/common/telephony/UsimGroup;

    .prologue
    .line 178
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const-string v0, "ContactsGroupUtils.USIMGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addItem]slot is invalid,slot id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mUgrpArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method get(I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/telephony/UsimGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const-string v0, "ContactsGroupUtils.USIMGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[get]slot is invalid,slot id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mUgrpArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method getItem(II)Lcom/mediatek/common/telephony/UsimGroup;
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "usimGroupId"    # I

    .prologue
    const/4 v4, 0x0

    .line 208
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 209
    const-string v5, "ContactsGroupUtils.USIMGroup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getItem]slot is invalid,slot id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 220
    :goto_0
    return-object v2

    .line 212
    :cond_0
    iget-object v5, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mUgrpArray:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 213
    .local v3, "ugrpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/common/telephony/UsimGroup;>;"
    const/4 v0, 0x0

    .line 214
    .local v0, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/telephony/UsimGroup;

    .line 215
    .local v2, "ug":Lcom/mediatek/common/telephony/UsimGroup;
    invoke-virtual {v2}, Lcom/mediatek/common/telephony/UsimGroup;->getRecordIndex()I

    move-result v5

    if-ne v5, p2, :cond_1

    goto :goto_0

    .end local v2    # "ug":Lcom/mediatek/common/telephony/UsimGroup;
    :cond_2
    move-object v2, v4

    .line 220
    goto :goto_0
.end method

.method getMaxUsimGroupCount(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 224
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const-string v0, "ContactsGroupUtils.USIMGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getMaxUsimGroupCount]slot is invalid,slot id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v0, -0x1

    .line 228
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mMaxUsimGroupCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method getMaxUsimGroupNameLength(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 240
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    const-string v0, "ContactsGroupUtils.USIMGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getMaxUsimGroupNameLength]slot is invalid,slot id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v0, -0x1

    .line 244
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mMaxUsimGroupNameLength:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method removeItem(II)Z
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "usimGroupId"    # I

    .prologue
    const/4 v4, 0x0

    .line 186
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 187
    const-string v5, "ContactsGroupUtils.USIMGroup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[removeItem]slot is invalid,slot id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    :goto_0
    return v4

    .line 190
    :cond_1
    iget-object v5, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mUgrpArray:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 191
    .local v3, "ugrpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/common/telephony/UsimGroup;>;"
    const/4 v0, 0x0

    .line 192
    .local v0, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/telephony/UsimGroup;

    .line 193
    .local v2, "ug":Lcom/mediatek/common/telephony/UsimGroup;
    invoke-virtual {v2}, Lcom/mediatek/common/telephony/UsimGroup;->getRecordIndex()I

    move-result v5

    if-ne v5, p2, :cond_3

    .line 198
    .end local v2    # "ug":Lcom/mediatek/common/telephony/UsimGroup;
    :cond_2
    const-string v5, "ContactsGroupUtils.USIMGroup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[removeItem]size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 200
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 201
    const/4 v4, 0x1

    goto :goto_0

    .line 196
    .restart local v2    # "ug":Lcom/mediatek/common/telephony/UsimGroup;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method setMaxUsimGroupCount(II)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "count"    # I

    .prologue
    .line 232
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const-string v0, "ContactsGroupUtils.USIMGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMaxUsimGroupCount]slot is invalid,slot id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mMaxUsimGroupCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method setMaxUsimGroupNameLength(II)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "length"    # I

    .prologue
    .line 248
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    const-string v0, "ContactsGroupUtils.USIMGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMaxUsimGroupNameLength]slot is invalid,slot id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mMaxUsimGroupNameLength:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method
