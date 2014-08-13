.class public Lcom/mediatek/contacts/util/SimContactPhotoUtils;
.super Ljava/lang/Object;
.source "SimContactPhotoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/util/SimContactPhotoUtils$SimPhotoColors;,
        Lcom/mediatek/contacts/util/SimContactPhotoUtils$SimPhotoIdAndUri;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimContactPhotoUtils"


# instance fields
.field private mIccExt:Lcom/mediatek/contacts/ext/IccCardExtension;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getIccCardExtension()Lcom/mediatek/contacts/ext/IccCardExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/util/SimContactPhotoUtils;->mIccExt:Lcom/mediatek/contacts/ext/IccCardExtension;

    return-void
.end method

.method public static getPhotoIdByPhotoUri(Landroid/net/Uri;)J
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    .line 89
    .local v0, "id":J
    if-nez p0, :cond_0

    .line 90
    const-string v5, "SimContactPhotoUtils"

    const-string v6, "[getPhotoIdByPhotoUri] uri is null,return 0."

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    .line 121
    .end local v0    # "id":J
    .local v2, "id":J
    :goto_0
    return-wide v2

    .line 94
    .end local v2    # "id":J
    .restart local v0    # "id":J
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "photoUri":Ljava/lang/String;
    const-string v5, "content://sim"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    const-wide/16 v0, -0x1

    .line 118
    :cond_1
    :goto_1
    const-string v5, "SimContactPhotoUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPhotoIdByPhotoUri]photoUri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    .line 121
    .end local v0    # "id":J
    .restart local v2    # "id":J
    goto :goto_0

    .line 98
    .end local v2    # "id":J
    .restart local v0    # "id":J
    :cond_2
    const-string v5, "content://sdn"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 99
    const-wide/16 v0, -0x9

    goto :goto_1

    .line 100
    :cond_3
    const-string v5, "content://sim-10"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 101
    const-wide/16 v0, -0xa

    goto :goto_1

    .line 102
    :cond_4
    const-string v5, "content://sdn-5"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 103
    const-wide/16 v0, -0x5

    goto :goto_1

    .line 104
    :cond_5
    const-string v5, "content://sim-11"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 105
    const-wide/16 v0, -0xb

    goto :goto_1

    .line 106
    :cond_6
    const-string v5, "content://sdn-6"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 107
    const-wide/16 v0, -0x6

    goto :goto_1

    .line 108
    :cond_7
    const-string v5, "content://sim-12"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 109
    const-wide/16 v0, -0xc

    goto :goto_1

    .line 110
    :cond_8
    const-string v5, "content://sdn-7"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 111
    const-wide/16 v0, -0x7

    goto :goto_1

    .line 112
    :cond_9
    const-string v5, "content://sim-13"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 113
    const-wide/16 v0, -0xd

    goto :goto_1

    .line 114
    :cond_a
    const-string v5, "content://sdn-8"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    const-wide/16 v0, -0x8

    goto/16 :goto_1
.end method

.method public static isSimPhotoId(J)Z
    .locals 3
    .param p0, "photoId"    # J

    .prologue
    .line 152
    const-string v0, "SimContactPhotoUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isSimPhotoId] photoId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x9

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xa

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x5

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xc

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x7

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xb

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x6

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xd

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x8

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimPhotoUri(Landroid/net/Uri;)Z
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 125
    if-nez p0, :cond_1

    .line 126
    const-string v2, "SimContactPhotoUtils"

    const-string v3, "[isSimPhotoUri] uri is null"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    :goto_0
    return v1

    .line 130
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "photoUri":Ljava/lang/String;
    const-string v2, "SimContactPhotoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSimPhotoUri] uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "content://sim"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sdn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sim-10"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sdn-5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sim-11"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sdn-6"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sim-12"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sdn-7"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sim-13"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sdn-8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getPhotoId(II)J
    .locals 9
    .param p1, "isSdnContact"    # I
    .param p2, "colorId"    # I

    .prologue
    .line 229
    const-wide/16 v2, 0x0

    .line 230
    .local v2, "photoId":J
    if-lez p1, :cond_0

    const/4 v1, 0x1

    .line 234
    .local v1, "isSdn":Z
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v0, "argsForExt":Landroid/os/Bundle;
    const-string v6, "key_is_sdn"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    const-string v6, "key_color_id"

    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    iget-object v6, p0, Lcom/mediatek/contacts/util/SimContactPhotoUtils;->mIccExt:Lcom/mediatek/contacts/ext/IccCardExtension;

    const-string v7, "ExtensionForOP09"

    invoke-virtual {v6, v0, v7}, Lcom/mediatek/contacts/ext/IccCardExtension;->getIccPhotoId(Landroid/os/Bundle;Ljava/lang/String;)J

    move-result-wide v2

    .line 238
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    .line 239
    const-string v6, "SimContactPhotoUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getPhotoId] from ext: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    .line 284
    .end local v2    # "photoId":J
    .local v4, "photoId":J
    :goto_1
    return-wide v4

    .line 230
    .end local v0    # "argsForExt":Landroid/os/Bundle;
    .end local v1    # "isSdn":Z
    .end local v4    # "photoId":J
    .restart local v2    # "photoId":J
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 243
    .restart local v0    # "argsForExt":Landroid/os/Bundle;
    .restart local v1    # "isSdn":Z
    :cond_1
    const-string v6, "SimContactPhotoUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getPhotoId] i = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | isSdnContact : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",photoId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    packed-switch p2, :pswitch_data_0

    .line 275
    const-string v6, "SimContactPhotoUtils"

    const-string v7, "[getPhotoId]no match color."

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    if-eqz v1, :cond_6

    .line 277
    const-wide/16 v2, -0x9

    :goto_2
    move-wide v4, v2

    .line 284
    .end local v2    # "photoId":J
    .restart local v4    # "photoId":J
    goto :goto_1

    .line 247
    .end local v4    # "photoId":J
    .restart local v2    # "photoId":J
    :pswitch_0
    if-eqz v1, :cond_2

    .line 248
    const-wide/16 v2, -0x5

    goto :goto_2

    .line 250
    :cond_2
    const-wide/16 v2, -0xa

    .line 252
    goto :goto_2

    .line 254
    :pswitch_1
    if-eqz v1, :cond_3

    .line 255
    const-wide/16 v2, -0x6

    goto :goto_2

    .line 257
    :cond_3
    const-wide/16 v2, -0xb

    .line 259
    goto :goto_2

    .line 261
    :pswitch_2
    if-eqz v1, :cond_4

    .line 262
    const-wide/16 v2, -0x7

    goto :goto_2

    .line 264
    :cond_4
    const-wide/16 v2, -0xc

    .line 266
    goto :goto_2

    .line 268
    :pswitch_3
    if-eqz v1, :cond_5

    .line 269
    const-wide/16 v2, -0x8

    goto :goto_2

    .line 271
    :cond_5
    const-wide/16 v2, -0xd

    .line 273
    goto :goto_2

    .line 279
    :cond_6
    const-wide/16 v2, -0x1

    goto :goto_2

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPhotoUri(II)Ljava/lang/String;
    .locals 7
    .param p1, "isSdnContact"    # I
    .param p2, "colorId"    # I

    .prologue
    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, "photoUri":Ljava/lang/String;
    if-lez p1, :cond_0

    const/4 v1, 0x1

    .line 175
    .local v1, "isSdn":Z
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v0, "argsForExt":Landroid/os/Bundle;
    const-string v4, "key_is_sdn"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 177
    const-string v4, "key_color_id"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    iget-object v4, p0, Lcom/mediatek/contacts/util/SimContactPhotoUtils;->mIccExt:Lcom/mediatek/contacts/ext/IccCardExtension;

    const-string v5, "ExtensionForOP09"

    invoke-virtual {v4, v0, v5}, Lcom/mediatek/contacts/ext/IccCardExtension;->getIccPhotoUriString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    if-eqz v2, :cond_1

    .line 180
    const-string v4, "SimContactPhotoUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getPhotoUri] from ext: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 225
    .end local v2    # "photoUri":Ljava/lang/String;
    .local v3, "photoUri":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 171
    .end local v0    # "argsForExt":Landroid/os/Bundle;
    .end local v1    # "isSdn":Z
    .end local v3    # "photoUri":Ljava/lang/String;
    .restart local v2    # "photoUri":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 184
    .restart local v0    # "argsForExt":Landroid/os/Bundle;
    .restart local v1    # "isSdn":Z
    :cond_1
    const-string v4, "SimContactPhotoUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getPhotoUri] i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | isSdnContact : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",photoUri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    packed-switch p2, :pswitch_data_0

    .line 216
    const-string v4, "SimContactPhotoUtils"

    const-string v5, "[getPhotoUri]no match color"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    if-eqz v1, :cond_6

    .line 218
    const-string v2, "content://sdn"

    :goto_2
    move-object v3, v2

    .line 225
    .end local v2    # "photoUri":Ljava/lang/String;
    .restart local v3    # "photoUri":Ljava/lang/String;
    goto :goto_1

    .line 188
    .end local v3    # "photoUri":Ljava/lang/String;
    .restart local v2    # "photoUri":Ljava/lang/String;
    :pswitch_0
    if-eqz v1, :cond_2

    .line 189
    const-string v2, "content://sdn-5"

    goto :goto_2

    .line 191
    :cond_2
    const-string v2, "content://sim-10"

    .line 193
    goto :goto_2

    .line 195
    :pswitch_1
    if-eqz v1, :cond_3

    .line 196
    const-string v2, "content://sdn-6"

    goto :goto_2

    .line 198
    :cond_3
    const-string v2, "content://sim-11"

    .line 200
    goto :goto_2

    .line 202
    :pswitch_2
    if-eqz v1, :cond_4

    .line 203
    const-string v2, "content://sdn-7"

    goto :goto_2

    .line 205
    :cond_4
    const-string v2, "content://sim-12"

    .line 207
    goto :goto_2

    .line 209
    :pswitch_3
    if-eqz v1, :cond_5

    .line 210
    const-string v2, "content://sdn-8"

    goto :goto_2

    .line 212
    :cond_5
    const-string v2, "content://sim-13"

    .line 214
    goto :goto_2

    .line 220
    :cond_6
    const-string v2, "content://sim"

    goto :goto_2

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
