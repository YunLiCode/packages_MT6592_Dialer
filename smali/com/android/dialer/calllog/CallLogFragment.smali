.class public Lcom/android/dialer/calllog/CallLogFragment;
.super Landroid/app/ListFragment;
.source "CallLogFragment.java"

# interfaces
.implements Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;
    }
.end annotation


# static fields
.field private static final EMPTY_LOADER_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CallLogFragment"


# instance fields
.field private mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

.field private mCallLogFetched:Z

.field private final mCallLogObserver:Landroid/database/ContentObserver;

.field private mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

.field private mCallTypeFilter:I

.field private final mContactsObserver:Landroid/database/ContentObserver;

.field private mEmptyLoaderRunning:Z

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLogLimit:I

.field private mMenuVisible:Z

.field private mRefreshDataRequired:Z

.field private mScrollToTop:Z

.field private mStatusMessageAction:Landroid/widget/TextView;

.field private mStatusMessageText:Landroid/widget/TextView;

.field private mStatusMessageView:Landroid/view/View;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoicemailSourcesAvailable:Z

.field private mVoicemailStatusFetched:Z

.field private mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 113
    invoke-direct {p0, v0, v0}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(II)V

    .line 114
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "filterType"    # I

    .prologue
    .line 117
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(II)V

    .line 118
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "filterType"    # I
    .param p2, "logLimit"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 121
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    .line 99
    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    .line 100
    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMenuVisible:Z

    .line 106
    iput v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    .line 110
    iput v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLogLimit:I

    .line 122
    iput p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    .line 123
    iput p2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLogLimit:I

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/dialer/calllog/CallLogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    return p1
.end method

.method private destroyEmptyLoaderIfAllDataFetched()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    if-eqz v0, :cond_0

    .line 208
    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 209
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 211
    :cond_0
    return-void
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->invalidateCache()V

    .line 426
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->startCallsQuery()V

    .line 427
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->startVoicemailStatusQuery()V

    .line 428
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnEntry()V

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    .line 431
    :cond_0
    return-void
.end method

.method private setVoicemailSourcesAvailable(Z)V
    .locals 2
    .param p1, "voicemailSourcesAvailable"    # Z

    .prologue
    .line 215
    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    if-ne v1, p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    .line 218
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 219
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private startVoicemailStatusQuery()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchVoicemailStatus()V

    .line 339
    return-void
.end method

.method private updateCallList(I)V
    .locals 1
    .param p1, "filterType"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(I)V

    .line 343
    return-void
.end method

.method private updateEmptyMessage(I)V
    .locals 4
    .param p1, "filterType"    # I

    .prologue
    .line 347
    sparse-switch p1, :sswitch_data_0

    .line 355
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected filter type in CallLogFragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 349
    :sswitch_0
    const v1, 0x7f0a05b4

    invoke-virtual {p0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "message":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    return-void

    .line 352
    .end local v0    # "message":Ljava/lang/String;
    :sswitch_1
    const v1, 0x7f0a0564

    invoke-virtual {p0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 347
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateOnEntry()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnTransition(Z)V

    .line 441
    return-void
.end method

.method private updateOnExit()V
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnTransition(Z)V

    .line 436
    return-void
.end method

.method private updateOnTransition(Z)V
    .locals 1
    .param p1, "onEntry"    # Z

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    .line 452
    if-nez p1, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->markMissedCallsAsRead()V

    .line 455
    :cond_0
    invoke-static {}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->removeMissedCallNotifications()V

    .line 456
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->updateVoicemailNotifications(Landroid/content/Context;)V

    .line 458
    :cond_1
    return-void
.end method

.method private updateVoicemailStatusMessage(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 277
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    invoke-interface {v2, p1}, Lcom/android/dialer/voicemail/VoicemailStatusHelper;->getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 278
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 283
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    .line 284
    .local v0, "message":Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;
    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->showInCallLog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageText:Landroid/widget/TextView;

    iget v3, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->callLogMessageId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 287
    :cond_1
    iget v2, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 288
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    iget v3, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 290
    :cond_2
    iget-object v2, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 291
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    new-instance v3, Lcom/android/dialer/calllog/CallLogFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/android/dialer/calllog/CallLogFragment$2;-><init>(Lcom/android/dialer/calllog/CallLogFragment;Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 300
    :cond_3
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public callSelectedEntry()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 362
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v6

    .line 363
    .local v6, "position":I
    if-gez v6, :cond_0

    .line 367
    const/4 v6, 0x0

    .line 369
    :cond_0
    iget-object v7, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v7, v6}, Lcom/android/dialer/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 370
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 371
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, "number":Ljava/lang/String;
    const/16 v7, 0x11

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 373
    .local v5, "numberPresentation":I
    invoke-static {v4, v5}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 400
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "numberPresentation":I
    :cond_1
    :goto_0
    return-void

    .line 379
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "numberPresentation":I
    :cond_2
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 380
    const-string v7, "sip"

    invoke-static {v7, v4, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 396
    .local v3, "intent":Landroid/content/Intent;
    :goto_1
    const/high16 v7, 0x10800000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 398
    invoke-virtual {p0, v3}, Lcom/android/dialer/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 385
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v7, 0x4

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 386
    .local v0, "callType":I
    const-string v7, "+"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    if-eq v0, v8, :cond_4

    const/4 v7, 0x3

    if-ne v0, v7, :cond_5

    .line 390
    :cond_4
    const/4 v7, 0x5

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "countryIso":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v7, v4, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->getBetterNumberFromContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 393
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_5
    const-string v7, "tel"

    invoke-static {v7, v4, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public configureScreenFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 257
    const-string v0, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScrollToTop:Z

    .line 258
    return-void
.end method

.method public fetchCalls()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(I)V

    .line 330
    return-void
.end method

.method getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    return-object v0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    :cond_0
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 183
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1, v3}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 156
    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScrollToTop:Z

    if-eqz v1, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 164
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 165
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/dialer/calllog/CallLogFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/android/dialer/calllog/CallLogFragment$1;-><init>(Lcom/android/dialer/calllog/CallLogFragment;Landroid/widget/ListView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    iput-boolean v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScrollToTop:Z

    .line 181
    .end local v0    # "listView":Landroid/widget/ListView;
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogFetched:Z

    .line 182
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 128
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    new-instance v0, Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLogLimit:I

    invoke-direct {v0, v1, p0, v2}, Lcom/android/dialer/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;I)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    .line 132
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 134
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    invoke-virtual {p0, v3}, Lcom/android/dialer/calllog/CallLogFragment;->setHasOptionsMenu(Z)V

    .line 139
    iget v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->updateCallList(I)V

    .line 140
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 227
    const v1, 0x7f04000c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;

    invoke-direct {v1}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    .line 229
    const v1, 0x7f0d0050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    .line 230
    const v1, 0x7f0d00a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageText:Landroid/widget/TextView;

    .line 231
    const v1, 0x7f0d00a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    .line 232
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 320
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 321
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 322
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 325
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 309
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 310
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 272
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 273
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->refreshData()V

    .line 274
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/dialer/util/EmptyLoader$Callback;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dialer/util/EmptyLoader$Callback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 267
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 268
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 314
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 315
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnExit()V

    .line 316
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 237
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 238
    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-direct {p0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->updateEmptyMessage(I)V

    .line 239
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "currentCountryIso":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/dialer/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, p0, v2, v3, v4}, Lcom/android/dialerbind/ObjectFactory;->newCallLogAdapter(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;ZZ)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    .line 242
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {p0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 244
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    .line 190
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    :cond_0
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 204
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment;->updateVoicemailStatusMessage(Landroid/database/Cursor;)V

    .line 199
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/dialer/voicemail/VoicemailStatusHelper;->getNumberActivityVoicemailSources(Landroid/database/Cursor;)I

    move-result v0

    .line 200
    .local v0, "activeSources":I
    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->setVoicemailSourcesAvailable(Z)V

    .line 201
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 202
    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    .line 203
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    goto :goto_0

    .line 200
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .prologue
    .line 408
    invoke-super {p0, p1}, Landroid/app/ListFragment;->setMenuVisibility(Z)V

    .line 409
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 410
    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMenuVisible:Z

    .line 411
    if-nez p1, :cond_1

    .line 412
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnExit()V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->refreshData()V

    goto :goto_0
.end method

.method public startCallsQuery()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(I)V

    .line 335
    return-void
.end method
