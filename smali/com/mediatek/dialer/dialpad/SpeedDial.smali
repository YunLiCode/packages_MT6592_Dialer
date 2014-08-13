.class public Lcom/mediatek/dialer/dialpad/SpeedDial;
.super Ljava/lang/Object;
.source "SpeedDial.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeedDial"


# instance fields
.field protected mContext:Landroid/content/Context;

.field mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mediatek/dialer/dialpad/SpeedDial;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/SpeedDial;->mContext:Landroid/content/Context;

    const-string v1, "speed_dial"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/dialpad/SpeedDial;->mPreferences:Landroid/content/SharedPreferences;

    .line 34
    return-void
.end method


# virtual methods
.method protected clearSharedPreferences(ILjava/lang/String;)Z
    .locals 13
    .param p1, "key"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v7, 0x0

    .line 50
    .local v7, "notReady":Z
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/SpeedDial;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 56
    .local v9, "phoneCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 57
    :cond_0
    const-string v0, "clear preferences"

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/dialpad/SpeedDial;->log(Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;->offset(I)I

    move-result v8

    .line 59
    .local v8, "numOffset":I
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/SpeedDial;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 60
    .local v10, "simId":I
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v11

    .line 61
    .local v11, "simInfoWrapper":Lcom/mediatek/phone/SIMInfoWrapper;
    invoke-virtual {v11, v10}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v12

    .line 62
    .local v12, "slotId":I
    const/4 v0, -0x1

    if-eq v12, v0, :cond_1

    invoke-static {v12}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimStateReady(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/SpeedDial;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 64
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    const/4 v7, 0x1

    .line 72
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    :goto_0
    if-eqz v9, :cond_3

    .line 73
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 77
    .end local v8    # "numOffset":I
    .end local v10    # "simId":I
    .end local v11    # "simInfoWrapper":Lcom/mediatek/phone/SIMInfoWrapper;
    .end local v12    # "slotId":I
    :cond_3
    if-eqz v9, :cond_4

    .line 78
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear preferences canUse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/dialpad/SpeedDial;->log(Ljava/lang/String;)V

    .line 81
    return v7

    .line 69
    .restart local v8    # "numOffset":I
    .restart local v10    # "simId":I
    .restart local v11    # "simInfoWrapper":Lcom/mediatek/phone/SIMInfoWrapper;
    .restart local v12    # "slotId":I
    :cond_5
    invoke-static {v12}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimStateReady(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public dial(I)Z
    .locals 6
    .param p1, "key"    # I

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-virtual {p0, p1}, Lcom/mediatek/dialer/dialpad/SpeedDial;->getSpeedDialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "number":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dial, key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/dialer/dialpad/SpeedDial;->log(Ljava/lang/String;)V

    .line 87
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v3

    .line 92
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/contacts/ExtensionManager;->getSpeedDialExtension()Lcom/mediatek/contacts/ext/SpeedDialExtension;

    move-result-object v4

    const-string v5, "ExtensionForOP01"

    invoke-virtual {v4, v5}, Lcom/mediatek/contacts/ext/SpeedDialExtension;->needClearSharedPreferences(Ljava/lang/String;)Z

    move-result v2

    .line 94
    .local v2, "reslut":Z
    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/dialer/dialpad/SpeedDial;->clearSharedPreferences(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    iget-object v3, p0, Lcom/mediatek/dialer/dialpad/SpeedDial;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public enterSpeedDial()V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/SpeedDial;->mContext:Landroid/content/Context;

    const-class v2, Lcom/mediatek/dialer/activities/SpeedDialManageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/mediatek/dialer/dialpad/SpeedDial;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public getSpeedDialNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/dialer/dialpad/SpeedDial;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v0, "SpeedDial"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method
