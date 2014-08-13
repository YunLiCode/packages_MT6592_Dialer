.class public Lcom/mediatek/dialer/util/SimContactPhotoUtils;
.super Ljava/lang/Object;
.source "SimContactPhotoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dialer/util/SimContactPhotoUtils$SimPhotoColors;,
        Lcom/mediatek/dialer/util/SimContactPhotoUtils$SimPhotoIdAndUri;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimContactPhotoUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static getPhotoIdByPhotoUri(Landroid/net/Uri;)J
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    .line 68
    .local v0, "id":J
    if-nez p0, :cond_0

    .line 69
    const-string v5, "SimContactPhotoUtils"

    const-string v6, "getPhotoIdByPhotoUri uri is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v0

    .line 109
    .end local v0    # "id":J
    .local v2, "id":J
    :goto_0
    return-wide v2

    .line 73
    .end local v2    # "id":J
    .restart local v0    # "id":J
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "photoUri":Ljava/lang/String;
    const-string v5, "SimContactPhotoUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPhotoIdByPhotoUri uri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v5, "content://sim"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    const-wide/16 v0, -0x1

    .line 108
    :cond_1
    :goto_1
    const-string v5, "SimContactPhotoUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimIdByUri id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v0

    .line 109
    .end local v0    # "id":J
    .restart local v2    # "id":J
    goto :goto_0

    .line 78
    .end local v2    # "id":J
    .restart local v0    # "id":J
    :cond_2
    const-string v5, "content://sdn"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    const-wide/16 v0, -0x9

    goto :goto_1

    .line 80
    :cond_3
    const-string v5, "content://sim-10"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 81
    const-wide/16 v0, -0xa

    goto :goto_1

    .line 82
    :cond_4
    const-string v5, "content://sdn-5"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 83
    const-wide/16 v0, -0x5

    goto :goto_1

    .line 84
    :cond_5
    const-string v5, "content://sim-11"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 85
    const-wide/16 v0, -0xb

    goto :goto_1

    .line 86
    :cond_6
    const-string v5, "content://sdn-6"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 87
    const-wide/16 v0, -0x6

    goto :goto_1

    .line 88
    :cond_7
    const-string v5, "content://sim-12"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 89
    const-wide/16 v0, -0xc

    goto :goto_1

    .line 90
    :cond_8
    const-string v5, "content://sdn-7"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 91
    const-wide/16 v0, -0x7

    goto :goto_1

    .line 92
    :cond_9
    const-string v5, "content://sim-13"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 93
    const-wide/16 v0, -0xd

    goto :goto_1

    .line 94
    :cond_a
    const-string v5, "content://sdn-8"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 95
    const-wide/16 v0, -0x8

    goto :goto_1

    .line 98
    :cond_b
    const-string v5, "content://sdn-33"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 99
    const-wide/16 v0, -0x21

    goto/16 :goto_1

    .line 100
    :cond_c
    const-string v5, "content://sdn-34"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 101
    const-wide/16 v0, -0x22

    goto/16 :goto_1

    .line 102
    :cond_d
    const-string v5, "content://sdn-31"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 103
    const-wide/16 v0, -0x1f

    goto/16 :goto_1

    .line 104
    :cond_e
    const-string v5, "content://sdn-32"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    const-wide/16 v0, -0x20

    goto/16 :goto_1
.end method

.method public static isSimPhotoId(J)Z
    .locals 3
    .param p0, "photoId"    # J

    .prologue
    .line 146
    const-string v0, "SimContactPhotoUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimPhotoId photoId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
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

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x21

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x22

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1f

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x20

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

    .line 113
    if-nez p0, :cond_1

    .line 114
    const-string v2, "SimContactPhotoUtils"

    const-string v3, "isSimPhotoUri uri is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "photoUri":Ljava/lang/String;
    const-string v2, "SimContactPhotoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimPhotoUri uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
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

    if-nez v2, :cond_2

    const-string v2, "content://sdn-33"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sdn-34"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sdn-31"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sdn-32"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    :cond_2
    const/4 v1, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public getPhotoId(II)J
    .locals 6
    .param p1, "isSdnContact"    # I
    .param p2, "colorId"    # I

    .prologue
    .line 218
    const-wide/16 v1, 0x0

    .line 219
    .local v1, "photoId":J
    if-lez p1, :cond_0

    const/4 v0, 0x1

    .line 220
    .local v0, "isSdn":Z
    :goto_0
    const-string v3, "SimContactPhotoUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getSimType] i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | isSdn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    packed-switch p2, :pswitch_data_0

    .line 251
    const-string v3, "SimContactPhotoUtils"

    const-string v4, "no match color"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-eqz v0, :cond_5

    .line 253
    const-wide/16 v1, -0x9

    .line 259
    :goto_1
    return-wide v1

    .line 219
    .end local v0    # "isSdn":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 223
    .restart local v0    # "isSdn":Z
    :pswitch_0
    if-eqz v0, :cond_1

    .line 224
    const-wide/16 v1, -0x5

    goto :goto_1

    .line 226
    :cond_1
    const-wide/16 v1, -0xa

    .line 228
    goto :goto_1

    .line 230
    :pswitch_1
    if-eqz v0, :cond_2

    .line 231
    const-wide/16 v1, -0x6

    goto :goto_1

    .line 233
    :cond_2
    const-wide/16 v1, -0xb

    .line 235
    goto :goto_1

    .line 237
    :pswitch_2
    if-eqz v0, :cond_3

    .line 238
    const-wide/16 v1, -0x7

    goto :goto_1

    .line 240
    :cond_3
    const-wide/16 v1, -0xc

    .line 242
    goto :goto_1

    .line 244
    :pswitch_3
    if-eqz v0, :cond_4

    .line 245
    const-wide/16 v1, -0x8

    goto :goto_1

    .line 247
    :cond_4
    const-wide/16 v1, -0xd

    .line 249
    goto :goto_1

    .line 255
    :cond_5
    const-wide/16 v1, -0x1

    goto :goto_1

    .line 221
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
    .locals 5
    .param p1, "isSdnContact"    # I
    .param p2, "colorId"    # I

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 172
    .local v1, "photoUri":Ljava/lang/String;
    if-lez p1, :cond_0

    const/4 v0, 0x1

    .line 173
    .local v0, "isSdn":Z
    :goto_0
    const-string v2, "SimContactPhotoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onLoadFinished] i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | isSdn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    packed-switch p2, :pswitch_data_0

    .line 205
    const-string v2, "SimContactPhotoUtils"

    const-string v3, "no match color"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz v0, :cond_5

    .line 207
    const-string v1, "content://sdn"

    .line 214
    :goto_1
    return-object v1

    .line 172
    .end local v0    # "isSdn":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    .restart local v0    # "isSdn":Z
    :pswitch_0
    if-eqz v0, :cond_1

    .line 178
    const-string v1, "content://sdn-5"

    goto :goto_1

    .line 180
    :cond_1
    const-string v1, "content://sim-10"

    .line 182
    goto :goto_1

    .line 184
    :pswitch_1
    if-eqz v0, :cond_2

    .line 185
    const-string v1, "content://sdn-6"

    goto :goto_1

    .line 187
    :cond_2
    const-string v1, "content://sim-11"

    .line 189
    goto :goto_1

    .line 191
    :pswitch_2
    if-eqz v0, :cond_3

    .line 192
    const-string v1, "content://sdn-7"

    goto :goto_1

    .line 194
    :cond_3
    const-string v1, "content://sim-12"

    .line 196
    goto :goto_1

    .line 198
    :pswitch_3
    if-eqz v0, :cond_4

    .line 199
    const-string v1, "content://sdn-8"

    goto :goto_1

    .line 201
    :cond_4
    const-string v1, "content://sim-13"

    .line 203
    goto :goto_1

    .line 209
    :cond_5
    const-string v1, "content://sim"

    goto :goto_1

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
