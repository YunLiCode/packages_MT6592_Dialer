.class public Lcom/android/incallui/StatusBarNotifier;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoExpiredListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/StatusBarNotifier$NotificationTimer;
    }
.end annotation


# static fields
.field private static final CT_INCALL_RES_IDS:[[I

.field private static final IN_CALL_NOTIFICATION:I = 0x1

.field private static final IN_CALL_TIMEOUT:J = 0x3e8L


# instance fields
.field private mCallState:I

.field private final mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private final mContext:Landroid/content/Context;

.field private mIsShowingNotification:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

.field private mSavedContent:I

.field private mSavedContentTitle:Ljava/lang/String;

.field private mSavedIcon:I

.field private mSavedLargeIcon:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 699
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/StatusBarNotifier;->CT_INCALL_RES_IDS:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0201da
        0x7f0201de
        0x7f0201d6
        0x7f0201e2
        0x7f0201e6
    .end array-data

    :array_1
    .array-data 4
        0x7f0201d8
        0x7f0201dc
        0x7f0201d4
        0x7f0201e0
        0x7f0201e4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactInfoCache"    # Lcom/android/incallui/ContactInfoCache;

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/incallui/StatusBarNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/StatusBarNotifier$1;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    .line 97
    iput-boolean v1, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    .line 98
    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    .line 99
    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    .line 100
    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    .line 105
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 109
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 113
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v0, p0}, Lcom/android/incallui/ContactInfoCache;->addContactInfoUpdateListener(Lcom/android/incallui/ContactInfoCache$ContactInfoExpiredListener;)V

    .line 115
    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/StatusBarNotifier;Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/StatusBarNotifier;
    .param p1, "x1"    # Lcom/android/services/telephony/common/Call;
    .param p2, "x2"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "x3"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method

.method private addHangupAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 547
    const-string v0, "Will show \"hang-up\" action in the ongoing active call Notification"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    const v0, 0x7f020224

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0a02a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/StatusBarNotifier;->createHangUpOngoingCallPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 553
    return-void
.end method

.method private buildAndSendNotification(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 18
    .param p1, "originalCall"    # Lcom/android/services/telephony/common/Call;
    .param p2, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "allowFullScreenIntent"    # Z

    .prologue
    .line 316
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v10

    .line 317
    .local v10, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v8

    if-eq v2, v8, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->canShowNotification()Z

    move-result v2

    if-nez v2, :cond_2

    .line 326
    const-string v2, "[buildAndSendNotification]abort build Notification, can not show it, now"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {v10}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    .line 332
    .local v7, "state":I
    invoke-virtual {v10}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v12

    .line 333
    .local v12, "isConference":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/incallui/StatusBarNotifier;->getIconToDisplay(Lcom/android/services/telephony/common/Call;)I

    move-result v3

    .line 334
    .local v3, "iconResId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/android/incallui/StatusBarNotifier;->getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 335
    .local v5, "largeIcon":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/incallui/StatusBarNotifier;->getContentString(Lcom/android/services/telephony/common/Call;)I

    move-result v4

    .line 336
    .local v4, "contentResId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/android/incallui/StatusBarNotifier;->getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Ljava/lang/String;

    move-result-object v6

    .local v6, "contentTitle":Ljava/lang/String;
    move-object/from16 v2, p0

    move/from16 v8, p3

    .line 339
    invoke-direct/range {v2 .. v8}, Lcom/android/incallui/StatusBarNotifier;->checkForChangeAndSaveData(IILandroid/graphics/Bitmap;Ljava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->getNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v9

    .line 350
    .local v9, "builder":Landroid/app/Notification$Builder;
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->createLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v11

    .line 351
    .local v11, "inCallPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 354
    if-eqz p3, :cond_3

    .line 355
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11, v10}, Lcom/android/incallui/StatusBarNotifier;->configureFullScreenIntent(Landroid/app/Notification$Builder;Landroid/app/PendingIntent;Lcom/android/services/telephony/common/Call;)V

    .line 359
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 360
    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 361
    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 362
    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 364
    const/4 v2, 0x2

    if-ne v7, v2, :cond_6

    .line 365
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v10}, Lcom/android/services/telephony/common/Call;->getDurationMillis()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-virtual {v9, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 377
    :goto_1
    const/4 v2, 0x2

    if-eq v7, v2, :cond_4

    const/4 v2, 0x7

    if-eq v7, v2, :cond_4

    invoke-static {v7}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 380
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/incallui/StatusBarNotifier;->addHangupAction(Landroid/app/Notification$Builder;)V

    .line 386
    :cond_5
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    .line 387
    .local v13, "notification":Landroid/app/Notification;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v8, 0x1

    invoke-virtual {v2, v8, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 389
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    goto/16 :goto_0

    .line 373
    .end local v13    # "notification":Landroid/app/Notification;
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private canShowNotification()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 723
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isUiShowing()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 724
    .local v1, "isUiShowing":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 725
    .local v0, "existIncomingCall":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[canShowNotification]ui showing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", incoming call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0    # "existIncomingCall":Z
    .end local v1    # "isUiShowing":Z
    :cond_2
    move v1, v3

    .line 723
    goto :goto_0

    .restart local v1    # "isUiShowing":Z
    :cond_3
    move v0, v3

    .line 724
    goto :goto_1
.end method

.method private cancelInCall()V
    .locals 2

    .prologue
    .line 184
    const-string v0, "cancelInCall()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    .line 187
    return-void
.end method

.method private checkForChangeAndSaveData(IILandroid/graphics/Bitmap;Ljava/lang/String;IZ)Z
    .locals 5
    .param p1, "icon"    # I
    .param p2, "content"    # I
    .param p3, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p4, "contentTitle"    # Ljava/lang/String;
    .param p5, "state"    # I
    .param p6, "showFullScreenIntent"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 403
    if-eqz p4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-nez p4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    if-eqz v4, :cond_6

    :cond_1
    move v0, v2

    .line 408
    .local v0, "contentTitleChanged":Z
    :goto_0
    iget v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    if-ne v4, p1, :cond_2

    iget v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    if-ne v4, p2, :cond_2

    iget v4, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    if-ne v4, p5, :cond_2

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    if-ne v4, p3, :cond_2

    if-eqz v0, :cond_7

    :cond_2
    move v1, v2

    .line 414
    .local v1, "retval":Z
    :goto_1
    if-eqz p6, :cond_3

    .line 415
    const-string v2, "Forcing full screen intent"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    const/4 v1, 0x1

    .line 420
    :cond_3
    iget-boolean v2, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    if-nez v2, :cond_4

    .line 421
    const-string v2, "Showing notification for first time."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    const/4 v1, 0x1

    .line 425
    :cond_4
    iput p1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    .line 426
    iput p2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    .line 427
    iput p5, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    .line 428
    iput-object p3, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    .line 429
    iput-object p4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    .line 431
    if-eqz v1, :cond_5

    .line 432
    const-string v2, "Data changed.  Showing notification"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    :cond_5
    return v1

    .end local v0    # "contentTitleChanged":Z
    .end local v1    # "retval":Z
    :cond_6
    move v0, v3

    .line 403
    goto :goto_0

    .restart local v0    # "contentTitleChanged":Z
    :cond_7
    move v1, v3

    .line 408
    goto :goto_1
.end method

.method static clearInCallNotification(Landroid/content/Context;)V
    .locals 3
    .param p0, "backupContext"    # Landroid/content/Context;

    .prologue
    .line 190
    const-class v1, Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Something terrible happened. Clear all InCall notifications"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 195
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 196
    return-void
.end method

.method private configureFullScreenIntent(Landroid/app/Notification$Builder;Landroid/app/PendingIntent;Lcom/android/services/telephony/common/Call;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v1, 0x1

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Setting fullScreenIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    invoke-virtual {p1, p2, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 592
    invoke-virtual {p3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-virtual {p3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 597
    .local v0, "isCallWaiting":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 598
    const-string v2, "updateInCallNotification: call-waiting! force relaunch..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 604
    :cond_1
    return-void

    .line 592
    .end local v0    # "isCallWaiting":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createHangUpOngoingCallPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 690
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.incallui.ACTION_HANG_UP_ONGOING_CALL"

    const/4 v2, 0x0

    const-class v3, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 692
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private createLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 673
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(Z)Landroid/content/Intent;

    move-result-object v1

    .line 680
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 682
    .local v0, "inCallPendingIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method private getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;
    .locals 1
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 533
    if-nez p1, :cond_1

    .line 534
    const/4 v0, 0x0

    .line 543
    :cond_0
    :goto_0
    return-object v0

    .line 536
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 537
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-nez v0, :cond_2

    .line 538
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 540
    :cond_2
    if-nez v0, :cond_0

    .line 541
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    goto :goto_0
.end method

.method private getContentString(Lcom/android/services/telephony/common/Call;)I
    .locals 3
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 514
    const v0, 0x7f0a029d

    .line 516
    .local v0, "resId":I
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 517
    :cond_0
    const v0, 0x7f0a029f

    .line 526
    :cond_1
    :goto_0
    return v0

    .line 519
    :cond_2
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 520
    const v0, 0x7f0a029e

    goto :goto_0

    .line 522
    :cond_3
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    const v0, 0x7f0a0298

    goto :goto_0
.end method

.method private getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Ljava/lang/String;
    .locals 2
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "isConference"    # Z

    .prologue
    .line 442
    if-eqz p2, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0291

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    :goto_0
    return-object v0

    .line 445
    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private getIconToDisplay(Lcom/android/services/telephony/common/Call;)I
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, "enhancedVoicePrivacy":Z
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 499
    const v1, 0x7f020225

    .line 504
    .local v1, "resId":I
    :goto_0
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/ext/ExtensionManager;->getNotificationExtension()Lcom/mediatek/incallui/ext/NotificationExtension;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/StatusBarNotifier;->CT_INCALL_RES_IDS:[[I

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/mediatek/incallui/ext/NotificationExtension;->getInCallResId(Lcom/android/services/telephony/common/Call;ZI[[I)I

    move-result v1

    .line 506
    return v1

    .line 501
    .end local v1    # "resId":I
    :cond_0
    const v1, 0x7f020223

    .restart local v1    # "resId":I
    goto :goto_0
.end method

.method private getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "isConference"    # Z

    .prologue
    .line 456
    const/4 v1, 0x0

    .line 457
    .local v1, "largeIcon":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 458
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02021a

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 461
    :cond_0
    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 462
    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 465
    :cond_1
    if-eqz v1, :cond_2

    .line 466
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 468
    .local v0, "height":I
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 470
    .local v2, "width":I
    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 473
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_2
    return-object v1
.end method

.method private getNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 607
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 608
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 611
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 613
    return-object v0
.end method

.method private shouldSuppressNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)Z
    .locals 2
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 623
    if-nez p2, :cond_0

    .line 624
    const-string v1, "suppressing: no call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    const/4 v0, 0x1

    .line 668
    :goto_0
    return v0

    .line 632
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    .line 635
    .local v0, "shouldSuppress":Z
    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 636
    const-string v1, "suppressing: not connecting or connected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    const/4 v0, 0x1

    .line 646
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 647
    const-string v1, "unsuppressing: incoming call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    const/4 v0, 0x0

    .line 658
    :cond_2
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isActivityPreviouslyStarted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 660
    const-string v1, "suppressing: activity not started."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    const/4 v0, 0x1

    .line 665
    :cond_3
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/ext/ExtensionManager;->getNotificationExtension()Lcom/mediatek/incallui/ext/NotificationExtension;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/incallui/ext/NotificationExtension;->shouldSuppressNotification(Z)Z

    move-result v0

    .line 668
    goto :goto_0
.end method

.method private showNotification(Lcom/android/services/telephony/common/Call;Z)V
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "allowFullScreenIntent"    # Z

    .prologue
    .line 274
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 282
    .local v0, "isIncoming":Z
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/StatusBarNotifier$2;

    invoke-direct {v3, p0, p2}, Lcom/android/incallui/StatusBarNotifier$2;-><init>(Lcom/android/incallui/StatusBarNotifier;Z)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/services/telephony/common/CallIdentification;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 305
    return-void

    .line 274
    .end local v0    # "isIncoming":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 7
    .param p1, "allowFullScreenIntent"    # Z
    .param p2, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateInCallNotification(allowFullScreenIntent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 223
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v5, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->isActivityPreviouslyStarted()Z

    move-result v5

    if-nez v5, :cond_7

    move v1, v4

    .line 228
    .local v1, "isOutgoingWithoutIncallUi":Z
    :goto_0
    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_0
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v5}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->getState()Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    move-result-object v5

    sget-object v6, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->FIRED:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    if-ne v5, v6, :cond_8

    :cond_1
    move v2, v4

    .line 250
    .local v2, "showNotificationNow":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 251
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v5, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->isActivityPreviouslyStarted()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_2
    move v2, v4

    .line 254
    :cond_3
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateInCallNotification, showNotificationNow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    if-eqz v2, :cond_a

    .line 258
    invoke-direct {p0, v0, p1}, Lcom/android/incallui/StatusBarNotifier;->showNotification(Lcom/android/services/telephony/common/Call;Z)V

    .line 268
    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v0, :cond_6

    .line 269
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->clear()V

    .line 271
    :cond_6
    return-void

    .end local v1    # "isOutgoingWithoutIncallUi":Z
    .end local v2    # "showNotificationNow":Z
    :cond_7
    move v1, v3

    .line 223
    goto :goto_0

    .restart local v1    # "isOutgoingWithoutIncallUi":Z
    :cond_8
    move v2, v3

    .line 228
    goto :goto_1

    .restart local v2    # "showNotificationNow":Z
    :cond_9
    move v2, v3

    .line 251
    goto :goto_2

    .line 260
    :cond_a
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    .line 261
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->getState()Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->CLEAR:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    if-ne v3, v4, :cond_4

    .line 263
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->schedule()V

    goto :goto_3
.end method


# virtual methods
.method public onContactInfoExpired(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onContactInfoExpired, callId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->getCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/StatusBarNotifier;->showNotification(Lcom/android/services/telephony/common/Call;Z)V

    .line 735
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 122
    const-string v0, "onStateChange"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 125
    return-void
.end method

.method public tearDown()V
    .locals 1

    .prologue
    .line 738
    const-string v0, "tearDown()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v0, p0}, Lcom/android/incallui/ContactInfoCache;->removeContactInfoUpdateListener(Lcom/android/incallui/ContactInfoCache$ContactInfoExpiredListener;)V

    .line 740
    return-void
.end method

.method public updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 136
    const-string v0, "updateNotification"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 140
    return-void
.end method

.method public updateNotificationAndLaunchIncomingCallUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 176
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 177
    return-void
.end method
