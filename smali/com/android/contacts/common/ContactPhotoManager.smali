.class public abstract Lcom/android/contacts/common/ContactPhotoManager;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/ContactPhotoManager$1;,
        Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;,
        Lcom/android/contacts/common/ContactPhotoManager$AvatarDefaultImageProvider;,
        Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;
    }
.end annotation


# static fields
.field public static final CONTACT_PHOTO_SERVICE:Ljava/lang/String; = "contactPhotos"

.field static final DEBUG:Z = false

.field static final DEBUG_SIZES:Z = false

.field public static final DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

.field public static final DEFAULT_BLANK:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

.field static final TAG:Ljava/lang/String; = "ContactPhotoManager"

.field private static s180DipInPixel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/common/ContactPhotoManager;->s180DipInPixel:I

    .line 178
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$AvatarDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/ContactPhotoManager$AvatarDefaultImageProvider;-><init>(Lcom/android/contacts/common/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .line 180
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;-><init>(Lcom/android/contacts/common/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    return-void
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    const-class v1, Lcom/android/contacts/common/ContactPhotoManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDefaultAvatarResId(Landroid/content/Context;IZ)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extent"    # I
    .param p2, "darkTheme"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 101
    sget v2, Lcom/android/contacts/common/ContactPhotoManager;->s180DipInPixel:I

    if-ne v2, v4, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 103
    .local v1, "r":Landroid/content/res/Resources;
    const/high16 v2, 0x43340000

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/contacts/common/ContactPhotoManager;->s180DipInPixel:I

    .line 107
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    if-eq p1, v4, :cond_1

    sget v2, Lcom/android/contacts/common/ContactPhotoManager;->s180DipInPixel:I

    if-le p1, v2, :cond_1

    .line 108
    .local v0, "hires":Z
    :goto_0
    invoke-static {v0, p2}, Lcom/android/contacts/common/ContactPhotoManager;->getDefaultAvatarResId(ZZ)I

    move-result v2

    return v2

    .line 107
    .end local v0    # "hires":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultAvatarResId(ZZ)I
    .locals 1
    .param p0, "hires"    # Z
    .param p1, "darkTheme"    # Z

    .prologue
    .line 114
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const v0, 0x7f02008a

    .line 117
    :goto_0
    return v0

    .line 115
    :cond_0
    if-eqz p0, :cond_1

    const v0, 0x7f02008c

    goto :goto_0

    .line 116
    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f02008e

    goto :goto_0

    .line 117
    :cond_2
    const v0, 0x7f020090

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    .local v0, "applicationContext":Landroid/content/Context;
    const-string v2, "contactPhotos"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/ContactPhotoManager;

    .line 186
    .local v1, "service":Lcom/android/contacts/common/ContactPhotoManager;
    if-nez v1, :cond_0

    .line 187
    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    .line 188
    const-string v2, "ContactPhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No contact photo service in context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    return-object v1
.end method

.method public static getSimDefaultAvatarResId(JZ)I
    .locals 5
    .param p0, "photoId"    # J
    .param p2, "darkTheme"    # Z

    .prologue
    const v1, 0x7f020187

    .line 300
    const-string v2, "ContactPhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getSimDefaultAvatarResId] photoId , darkTheme : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    long-to-int v0, p0

    .line 303
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 425
    :pswitch_0
    const-string v2, "ContactPhotoManager"

    const-string v3, "no match photoId "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    :goto_0
    return v1

    .line 305
    :pswitch_1
    if-eqz p2, :cond_0

    .line 307
    const v1, 0x7f020191

    goto :goto_0

    .line 317
    :pswitch_2
    if-eqz p2, :cond_1

    .line 319
    const v1, 0x7f020172

    goto :goto_0

    .line 324
    :cond_1
    const v1, 0x7f020168

    goto :goto_0

    .line 329
    :pswitch_3
    if-eqz p2, :cond_2

    .line 331
    const v1, 0x7f020176

    goto :goto_0

    .line 336
    :cond_2
    const v1, 0x7f02016c

    goto :goto_0

    .line 341
    :pswitch_4
    if-eqz p2, :cond_3

    .line 343
    const v1, 0x7f020174

    goto :goto_0

    .line 348
    :cond_3
    const v1, 0x7f02016a

    goto :goto_0

    .line 353
    :pswitch_5
    if-eqz p2, :cond_4

    .line 355
    const v1, 0x7f020178

    goto :goto_0

    .line 360
    :cond_4
    const v1, 0x7f02016e

    goto :goto_0

    .line 365
    :pswitch_6
    if-eqz p2, :cond_5

    .line 367
    const v1, 0x7f020179

    goto :goto_0

    .line 372
    :cond_5
    const v1, 0x7f02016f

    goto :goto_0

    .line 377
    :pswitch_7
    if-eqz p2, :cond_6

    .line 379
    const v1, 0x7f02018a

    goto :goto_0

    .line 384
    :cond_6
    const v1, 0x7f020180

    goto :goto_0

    .line 389
    :pswitch_8
    if-eqz p2, :cond_7

    .line 391
    const v1, 0x7f02018e

    goto :goto_0

    .line 396
    :cond_7
    const v1, 0x7f020184

    goto :goto_0

    .line 401
    :pswitch_9
    if-eqz p2, :cond_8

    .line 403
    const v1, 0x7f02018c

    goto :goto_0

    .line 408
    :cond_8
    const v1, 0x7f020182

    goto :goto_0

    .line 413
    :pswitch_a
    if-eqz p2, :cond_9

    .line 415
    const v1, 0x7f020190

    goto :goto_0

    .line 420
    :cond_9
    const v1, 0x7f020186

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch -0xd
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract cacheBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
.end method

.method public final loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Z)V
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "darkTheme"    # Z

    .prologue
    .line 244
    const/4 v3, -0x1

    sget-object v5, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 245
    return-void
.end method

.method public final loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "requestedExtent"    # I
    .param p4, "darkTheme"    # Z

    .prologue
    .line 236
    sget-object v5, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 237
    return-void
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public final loadThumbnail(Landroid/widget/ImageView;JZ)V
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J
    .param p4, "darkTheme"    # Z

    .prologue
    .line 210
    sget-object v5, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 211
    return-void
.end method

.method public abstract loadThumbnail(Landroid/widget/ImageView;JZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 287
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 297
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract preloadPhotosInBackground()V
.end method

.method public abstract refreshCache()V
.end method

.method public abstract removePhoto(Landroid/widget/ImageView;)V
.end method

.method public abstract resume()V
.end method
