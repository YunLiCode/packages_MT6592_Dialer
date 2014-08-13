.class public Lcom/android/dialer/calllog/DefaultVoicemailNotifier;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifier.java"

# interfaces
.implements Lcom/android/dialer/calllog/VoicemailNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/DefaultVoicemailNotifier$1;,
        Lcom/android/dialer/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;,
        Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;,
        Lcom/android/dialer/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;,
        Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;,
        Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "DefaultVoicemailNotifier"

.field public static final TAG:Ljava/lang/String; = "DefaultVoicemailNotifier"

.field private static sInstance:Lcom/android/dialer/calllog/DefaultVoicemailNotifier;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNameLookupQuery:Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;

.field private final mNewCallsQuery:Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;Lcom/android/dialer/calllog/PhoneNumberHelper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationManager"    # Landroid/app/NotificationManager;
    .param p3, "newCallsQuery"    # Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;
    .param p4, "nameLookupQuery"    # Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;
    .param p5, "phoneNumberHelper"    # Lcom/android/dialer/calllog/PhoneNumberHelper;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 81
    iput-object p3, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mNewCallsQuery:Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;

    .line 82
    iput-object p4, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mNameLookupQuery:Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;

    .line 83
    iput-object p5, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    .line 84
    return-void
.end method

.method private createMarkNewVoicemailsAsOldIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/dialer/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.dialer.calllog.ACTION_MARK_NEW_VOICEMAILS_AS_OLD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static createNameLookupQuery(Landroid/content/ContentResolver;)Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 306
    new-instance v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;-><init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/DefaultVoicemailNotifier$1;)V

    return-object v0
.end method

.method public static createNewCallsQuery(Landroid/content/ContentResolver;)Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 238
    new-instance v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;-><init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/DefaultVoicemailNotifier$1;)V

    return-object v0
.end method

.method public static createPhoneNumberHelper(Landroid/content/Context;)Lcom/android/dialer/calllog/PhoneNumberHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    new-instance v0, Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/DefaultVoicemailNotifier;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-class v7, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/android/dialer/calllog/DefaultVoicemailNotifier;

    if-nez v0, :cond_0

    .line 65
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 67
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 68
    .local v6, "contentResolver":Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;

    invoke-static {v6}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->createNewCallsQuery(Landroid/content/ContentResolver;)Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;

    move-result-object v3

    invoke-static {v6}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->createNameLookupQuery(Landroid/content/ContentResolver;)Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;

    move-result-object v4

    invoke-static {p0}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->createPhoneNumberHelper(Landroid/content/Context;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;Lcom/android/dialer/calllog/PhoneNumberHelper;)V

    sput-object v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/android/dialer/calllog/DefaultVoicemailNotifier;

    .line 73
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    :cond_0
    sget-object v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/android/dialer/calllog/DefaultVoicemailNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method


# virtual methods
.method public clearNotification()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "DefaultVoicemailNotifier"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 210
    return-void
.end method

.method public updateNotification(Landroid/net/Uri;)V
    .locals 24
    .param p1, "newCallUri"    # Landroid/net/Uri;

    .prologue
    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mNewCallsQuery:Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;->query()[Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;

    move-result-object v14

    .line 93
    .local v14, "newCalls":[Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;
    if-nez v14, :cond_0

    .line 198
    :goto_0
    return-void

    .line 98
    :cond_0
    array-length v0, v14

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->clearNotification()V

    goto :goto_0

    .line 104
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 107
    .local v17, "resources":Landroid/content/res/Resources;
    const/4 v6, 0x0

    .line 111
    .local v6, "callers":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v12

    .line 114
    .local v12, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 117
    .local v5, "callToNotify":Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;
    move-object v4, v14

    .local v4, "arr$":[Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v10, :cond_6

    aget-object v13, v4, v8

    .line 119
    .local v13, "newCall":Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;
    iget-object v0, v13, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 120
    .local v11, "name":Ljava/lang/String;
    if-nez v11, :cond_3

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v13, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->numberPresentation:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayName(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 124
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mNameLookupQuery:Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;->query(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 127
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 128
    iget-object v11, v13, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    .line 131
    :cond_2
    iget-object v0, v13, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v12, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 134
    move-object v6, v11

    .line 141
    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    iget-object v0, v13, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 142
    move-object v5, v13

    .line 117
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 136
    :cond_5
    const v19, 0x7f0a0568

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v6, v20, v21

    const/16 v21, 0x1

    aput-object v11, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 146
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "newCall":Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;
    :cond_6
    if-eqz p1, :cond_7

    if-nez v5, :cond_7

    .line 147
    const-string v19, "DefaultVoicemailNotifier"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "The new call could not be found in the call log: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_7
    const v19, 0x7f0f0005

    array-length v0, v14

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    array-length v0, v14

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 154
    .local v18, "title":Ljava/lang/String;
    const v9, 0x108007e

    .line 156
    .local v9, "icon":I
    new-instance v19, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v20, 0x108007e

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    if-eqz v5, :cond_9

    const/16 v19, -0x1

    :goto_3
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->createMarkNewVoicemailsAsOldIntent()Landroid/app/PendingIntent;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 166
    .local v15, "notificationBuilder":Landroid/app/Notification$Builder;
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 168
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-class v20, Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v7, "contentIntent":Landroid/content/Intent;
    const/16 v19, 0x0

    aget-object v19, v14, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->callsUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 170
    const-string v19, "EXTRA_VOICEMAIL_URI"

    const/16 v20, 0x0

    aget-object v20, v14, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 172
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-class v20, Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v16, "playIntent":Landroid/content/Intent;
    const/16 v19, 0x0

    aget-object v19, v14, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->callsUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 174
    const-string v19, "EXTRA_VOICEMAIL_URI"

    const/16 v20, 0x0

    aget-object v20, v14, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    const-string v19, "EXTRA_VOICEMAIL_START_PLAYBACK"

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    const-string v19, "EXTRA_FROM_NOTIFICATION"

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    const v19, 0x8000

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    const v19, 0x7f0200e8

    const v20, 0x7f0a0478

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v16

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 188
    .end local v16    # "playIntent":Landroid/content/Intent;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 192
    if-eqz v5, :cond_8

    .line 193
    const v19, 0x7f0a0569

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v5, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 197
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v19, v0

    const-string v20, "DefaultVoicemailNotifier"

    const/16 v21, 0x1

    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v22

    invoke-virtual/range {v19 .. v22}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 156
    .end local v7    # "contentIntent":Landroid/content/Intent;
    .end local v15    # "notificationBuilder":Landroid/app/Notification$Builder;
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 186
    .restart local v15    # "notificationBuilder":Landroid/app/Notification$Builder;
    :cond_a
    new-instance v7, Landroid/content/Intent;

    const-string v19, "android.intent.action.VIEW"

    sget-object v20, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v7    # "contentIntent":Landroid/content/Intent;
    goto :goto_4
.end method
