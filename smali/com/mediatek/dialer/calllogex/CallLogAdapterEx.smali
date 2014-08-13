.class public Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;
.super Lcom/mediatek/dialer/widget/GroupingListAdapterWithHeader;
.source "CallLogAdapterEx.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx$GroupCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$ContactInfoRequest;,
        Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$NumberWithCountryIso;,
        Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$CallFetcher;
    }
.end annotation


# static fields
.field private static final CONTACT_INFO_CACHE_SIZE:I = 0x64

.field private static final REDRAW:I = 0x1

.field private static final START_PROCESSING_REQUESTS_DELAY_MILLIS:I = 0x3e8

.field private static final START_THREAD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CallLogAdapter"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCallFetcher:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$CallFetcher;

.field private final mCallLogGroupBuilder:Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx;

.field private final mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

.field private final mCallLogViewsHelper:Lcom/mediatek/dialer/calllogex/CallLogListItemHelperEx;

.field private mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/util/ExpirableCache",
            "<",
            "Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$NumberWithCountryIso;",
            "Lcom/mediatek/dialer/calllogex/ContactInfoEx;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactInfoHelper:Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;

.field private mContactInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/dialer/calllogex/ContactInfoEx;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mIsUpdateWhenContentChange:Z

.field private mLoading:Z

.field protected final mPhoneCallDetailsHelper:Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;

.field private mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

.field private volatile mRequestProcessingDisabled:Z

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$ContactInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

.field private mUpperCaseQueryString:[C

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$CallFetcher;Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callFetcher"    # Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$CallFetcher;
    .param p3, "contactInfoHelper"    # Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;

    .prologue
    const/4 v3, 0x1

    .line 309
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/widget/GroupingListAdapterWithHeader;-><init>(Landroid/content/Context;)V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 202
    iput-boolean v3, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mLoading:Z

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mRequestProcessingDisabled:Z

    .line 238
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$1;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$1;-><init>(Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 1266
    iput-boolean v3, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mIsUpdateWhenContentChange:Z

    .line 311
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContext:Landroid/content/Context;

    .line 312
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mAudioManager:Landroid/media/AudioManager;

    .line 313
    iput-object p2, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mCallFetcher:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$CallFetcher;

    .line 314
    iput-object p3, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContactInfoHelper:Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;

    .line 316
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/android/dialer/util/ExpirableCache;->create(I)Lcom/android/dialer/util/ExpirableCache;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    .line 317
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mRequests:Ljava/util/LinkedList;

    .line 319
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 320
    .local v1, "resources":Landroid/content/res/Resources;
    new-instance v2, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;

    invoke-direct {v2, v1}, Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;-><init>(Landroid/content/res/Resources;)V

    .line 322
    .local v2, "callTypeHelper":Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 323
    new-instance v0, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    invoke-direct {v0, v1}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    .line 332
    new-instance v0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    invoke-direct {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    .line 333
    new-instance v0, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;

    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    iget-object v4, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mCallLogSimInfoHelper:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    iget-object v5, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;-><init>(Landroid/content/res/Resources;Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mPhoneCallDetailsHelper:Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;

    .line 335
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogListItemHelperEx;

    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mPhoneCallDetailsHelper:Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;

    iget-object v4, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    invoke-direct {v0, v3, v4, v1}, Lcom/mediatek/dialer/calllogex/CallLogListItemHelperEx;-><init>(Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mCallLogViewsHelper:Lcom/mediatek/dialer/calllogex/CallLogListItemHelperEx;

    .line 338
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx;-><init>(Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx$GroupCreator;)V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mCallLogGroupBuilder:Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx;

    .line 340
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContactInfoMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContactInfoMap:Ljava/util/HashMap;

    .line 346
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContactInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private configureCallSecondaryAction(Lcom/mediatek/dialer/calllog/CallLogListItemView;Lcom/mediatek/dialer/PhoneCallDetailsEx;)V
    .locals 2
    .param p1, "views"    # Lcom/mediatek/dialer/calllog/CallLogListItemView;
    .param p2, "details"    # Lcom/mediatek/dialer/PhoneCallDetailsEx;

    .prologue
    .line 1227
    invoke-virtual {p1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->getCallActionDescription(Lcom/mediatek/dialer/PhoneCallDetailsEx;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1228
    return-void
.end method

.method private getCallActionDescription(Lcom/mediatek/dialer/PhoneCallDetailsEx;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "details"    # Lcom/mediatek/dialer/PhoneCallDetailsEx;

    .prologue
    .line 1233
    iget-object v1, p1, Lcom/mediatek/dialer/PhoneCallDetailsEx;->name:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1234
    iget-object v0, p1, Lcom/mediatek/dialer/PhoneCallDetailsEx;->name:Ljava/lang/CharSequence;

    .line 1239
    .local v0, "recipient":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a05a1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1236
    .end local v0    # "recipient":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    iget-object v2, p1, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/mediatek/dialer/PhoneCallDetailsEx;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "recipient":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 1286
    const-string v0, "CallLogAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    return-void
.end method

.method private setListItemViewTag(Landroid/view/View;Lcom/mediatek/dialer/calllogex/ContactInfoEx;Landroid/database/Cursor;Lcom/mediatek/dialer/calllogex/IntentProviderEx;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "contactInfo"    # Lcom/mediatek/dialer/calllogex/ContactInfoEx;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "callDetailIntentProvider"    # Lcom/mediatek/dialer/calllogex/IntentProviderEx;

    .prologue
    .line 1258
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallLogAdapterExtension()Lcom/mediatek/contacts/ext/CallLogAdapterExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v1}, Lcom/mediatek/dialer/calllogex/IntentProviderEx;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/mediatek/contacts/ext/CallLogAdapterExtension;->setListItemViewTag(Landroid/view/View;Lcom/mediatek/dialer/calllogex/ContactInfoEx;Landroid/database/Cursor;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    :goto_0
    return-void

    .line 1262
    :cond_0
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setPhoto(Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;
    .param p2, "photoId"    # J
    .param p4, "contactUri"    # Landroid/net/Uri;
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1127
    if-nez p4, :cond_0

    .line 1128
    invoke-virtual {p1, v0}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignContactUri(Landroid/net/Uri;)V

    .line 1129
    invoke-static {p5}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p1, p5, v0}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 1134
    :goto_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 1135
    return-void

    .line 1131
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 1132
    invoke-virtual {p1, p4}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private setPhoto(Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "contactUri"    # Landroid/net/Uri;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1139
    if-nez p3, :cond_0

    .line 1140
    invoke-virtual {p1, v0}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignContactUri(Landroid/net/Uri;)V

    .line 1141
    invoke-static {p4}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p1, p4, v0}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 1146
    :goto_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Z)V

    .line 1147
    return-void

    .line 1143
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 1144
    invoke-virtual {p1, p3}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0
.end method


# virtual methods
.method public addGroup(IIZ)V
    .locals 0
    .param p1, "cursorPosition"    # I
    .param p2, "size"    # I
    .param p3, "expanded"    # Z

    .prologue
    .line 921
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/dialer/widget/GroupingListAdapterWithHeader;->addGroup(IIZ)V

    .line 922
    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mCallLogGroupBuilder:Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx;->addGroups(Landroid/database/Cursor;)V

    .line 563
    return-void
.end method

.method protected bindCallButtonView(Lcom/mediatek/dialer/calllog/CallLogListItemView;Lcom/mediatek/dialer/PhoneCallDetailsEx;)V
    .locals 7
    .param p1, "itemView"    # Lcom/mediatek/dialer/calllog/CallLogListItemView;
    .param p2, "details"    # Lcom/mediatek/dialer/PhoneCallDetailsEx;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1192
    invoke-virtual {p1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200e5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1193
    invoke-virtual {p1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1195
    iget-object v1, p2, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1198
    invoke-virtual {p1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v1, p2, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    iget v3, p2, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Lcom/mediatek/dialer/calllogex/IntentProviderEx;->getReturnCallIntentProvider(Ljava/lang/String;J)Lcom/mediatek/dialer/calllogex/IntentProviderEx;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1205
    :goto_0
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    iget-object v2, p2, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1207
    .local v0, "canCall":Z
    if-eqz v0, :cond_2

    .line 1209
    invoke-direct {p0, p1, p2}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->configureCallSecondaryAction(Lcom/mediatek/dialer/calllog/CallLogListItemView;Lcom/mediatek/dialer/PhoneCallDetailsEx;)V

    .line 1210
    invoke-virtual {p1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1218
    :goto_1
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/util/OrientationUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1219
    invoke-virtual {p1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1222
    :cond_0
    return-void

    .line 1203
    .end local v0    # "canCall":Z
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1215
    .restart local v0    # "canCall":Z
    :cond_2
    invoke-virtual {p1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 602
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 603
    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "groupSize"    # I
    .param p5, "expanded"    # Z

    .prologue
    .line 624
    invoke-virtual {p0, p1, p3, p4}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 625
    return-void
.end method

.method protected bindPlayButtonView(Lcom/mediatek/dialer/calllog/CallLogListItemView;)V
    .locals 2
    .param p1, "itemView"    # Lcom/mediatek/dialer/calllog/CallLogListItemView;

    .prologue
    .line 1186
    invoke-virtual {p1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1187
    invoke-virtual {p1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1188
    return-void
.end method

.method protected bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 582
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 583
    return-void
.end method

.method protected bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 36
    .param p1, "view"    # Landroid/view/View;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "count"    # I

    .prologue
    .line 986
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;

    if-nez v6, :cond_0

    .line 987
    const-string v6, "Error!!! - bindView(): view is not CallLogListItemView!"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->log(Ljava/lang/String;)V

    .line 1104
    :goto_0
    return-void

    :cond_0
    move-object/from16 v28, p1

    .line 990
    check-cast v28, Lcom/mediatek/dialer/calllog/CallLogListItemView;

    .line 993
    .local v28, "itemView":Lcom/mediatek/dialer/calllog/CallLogListItemView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mUpperCaseQueryString:[C

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->setHighlightedText([C)V

    .line 995
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->getContactInfo(Landroid/database/Cursor;)Lcom/mediatek/dialer/calllogex/ContactInfoEx;

    move-result-object v25

    .line 997
    .local v25, "contactInfo":Lcom/mediatek/dialer/calllogex/ContactInfoEx;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getCallLogAdapterExtension()Lcom/mediatek/contacts/ext/CallLogAdapterExtension;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/mediatek/contacts/ext/CallLogAdapterExtension;->bindViewPre(Landroid/view/View;Landroid/database/Cursor;ILcom/mediatek/dialer/calllogex/ContactInfoEx;)V

    .line 999
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->isDateGroupHeader(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1000
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    iget-wide v7, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->date:J

    invoke-static {v6, v7, v8}, Lcom/mediatek/dialer/calllog/CallLogDateFormatHelper;->getFormatedDateText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->setSectionDate(Ljava/lang/String;)V

    .line 1008
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v6, v7, v8, v1}, Lcom/mediatek/dialer/calllogex/IntentProviderEx;->getCallDetailIntentProvider(Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;IJI)Lcom/mediatek/dialer/calllogex/IntentProviderEx;

    move-result-object v24

    .line 1010
    .local v24, "callDetailIntentProvider":Lcom/mediatek/dialer/calllogex/IntentProviderEx;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    move-object/from16 v3, p2

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->setListItemViewTag(Landroid/view/View;Lcom/mediatek/dialer/calllogex/ContactInfoEx;Landroid/database/Cursor;Lcom/mediatek/dialer/calllogex/IntentProviderEx;)V

    .line 1013
    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1014
    new-instance v5, Lcom/mediatek/dialer/PhoneCallDetailsEx;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->number:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->formattedNumber:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v8, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->countryIso:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->geocode:Ljava/lang/String;

    move-object/from16 v0, v25

    iget v10, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->type:I

    move-object/from16 v0, v25

    iget-wide v11, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->date:J

    move-object/from16 v0, v25

    iget-wide v13, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->duration:J

    move-object/from16 v0, v25

    iget v15, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->simId:I

    move-object/from16 v0, v25

    iget v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->vtCall:I

    move/from16 v16, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->ipPrefix:Ljava/lang/String;

    move-object/from16 v18, v0

    move/from16 v17, p3

    invoke-direct/range {v5 .. v18}, Lcom/mediatek/dialer/PhoneCallDetailsEx;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IJJIIILjava/lang/String;)V

    .line 1031
    .local v5, "details":Lcom/mediatek/dialer/PhoneCallDetailsEx;
    :goto_2
    move-object/from16 v0, v25

    iget v6, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->isRead:I

    if-nez v6, :cond_6

    const/4 v9, 0x1

    .line 1032
    .local v9, "isHighlighted":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    iget-object v7, v5, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    iget v8, v5, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    invoke-virtual {v6, v7, v8}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isEmergencyNumber(Ljava/lang/CharSequence;I)Z

    move-result v10

    .line 1033
    .local v10, "isEmergencyNumber":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    iget-object v7, v5, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    iget v8, v5, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    invoke-virtual {v6, v7, v8}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isVoiceMailNumberForMtk(Ljava/lang/CharSequence;I)Z

    move-result v11

    .line 1035
    .local v11, "isVoiceMailNumber":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    iget-object v7, v5, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v27

    .line 1036
    .local v27, "isSipCallNumber":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mPhoneCallDetailsHelper:Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;

    move-object/from16 v7, v28

    move-object v8, v5

    invoke-virtual/range {v6 .. v11}, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->setPhoneCallDetails(Lcom/mediatek/dialer/calllog/CallLogListItemView;Lcom/mediatek/dialer/PhoneCallDetailsEx;ZZZ)V

    .line 1040
    invoke-static {}, Lcom/mediatek/dialer/util/VvmUtils;->isVvmEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, v5, Lcom/mediatek/dialer/PhoneCallDetailsEx;->callType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    .line 1042
    const-string v6, "voicemail_uri"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1043
    .local v35, "voicemailUri":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 1044
    .local v31, "rowId":J
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->bindPlayButtonView(Lcom/mediatek/dialer/calllog/CallLogListItemView;)V

    .line 1045
    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v6

    move-wide/from16 v0, v31

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/mediatek/dialer/calllogex/IntentProviderEx;->getPlayVoicemailIntentProvider(JLjava/lang/String;)Lcom/mediatek/dialer/calllogex/IntentProviderEx;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1054
    .end local v31    # "rowId":J
    .end local v35    # "voicemailUri":Ljava/lang/String;
    :goto_4
    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getSelectImageView()Landroid/widget/ImageView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1055
    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getBackgroundView()Landroid/widget/ImageView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1058
    if-nez v10, :cond_1

    if-eqz v11, :cond_8

    .line 1059
    :cond_1
    const-wide/16 v6, 0x0

    move-object/from16 v0, v25

    iput-wide v6, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->photoId:J

    .line 1080
    :cond_2
    :goto_5
    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->photoUri:Landroid/net/Uri;

    if-eqz v6, :cond_b

    .line 1081
    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getQuickContact()Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-result-object v13

    move-object/from16 v0, v25

    iget-object v14, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->photoUri:Landroid/net/Uri;

    move-object/from16 v0, v25

    iget-object v15, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->lookupUri:Landroid/net/Uri;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->number:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v17}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->setPhoto(Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :goto_6
    const/16 v29, 0x0

    .line 1088
    .local v29, "number":Ljava/lang/String;
    if-eqz v5, :cond_3

    iget-object v6, v5, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3

    .line 1089
    iget-object v6, v5, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1092
    :cond_3
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/mediatek/contacts/ext/CallListExtension;

    move-result-object v6

    const-string v7, "ExtenstionForRCS"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0, v7}, Lcom/mediatek/contacts/ext/CallListExtension;->setExtentionIcon(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    .line 1093
    .local v30, "reslut":Z
    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->removeExtentionIconView()V

    .line 1094
    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->setExtentionIcon(Z)V

    goto/16 :goto_0

    .line 1002
    .end local v5    # "details":Lcom/mediatek/dialer/PhoneCallDetailsEx;
    .end local v9    # "isHighlighted":Z
    .end local v10    # "isEmergencyNumber":Z
    .end local v11    # "isVoiceMailNumber":Z
    .end local v24    # "callDetailIntentProvider":Lcom/mediatek/dialer/calllogex/IntentProviderEx;
    .end local v27    # "isSipCallNumber":Z
    .end local v29    # "number":Ljava/lang/String;
    .end local v30    # "reslut":Z
    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->setSectionDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1022
    .restart local v24    # "callDetailIntentProvider":Lcom/mediatek/dialer/calllogex/IntentProviderEx;
    :cond_5
    new-instance v5, Lcom/mediatek/dialer/PhoneCallDetailsEx;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->number:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->formattedNumber:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v8, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->countryIso:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->geocode:Ljava/lang/String;

    move-object/from16 v0, v25

    iget v10, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->type:I

    move-object/from16 v0, v25

    iget-wide v11, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->date:J

    move-object/from16 v0, v25

    iget-wide v13, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->duration:J

    move-object/from16 v0, v25

    iget-object v15, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->nNumberTypeId:I

    move/from16 v16, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->label:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->lookupUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->simId:I

    move/from16 v20, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->vtCall:I

    move/from16 v21, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->ipPrefix:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v22, p3

    invoke-direct/range {v5 .. v23}, Lcom/mediatek/dialer/PhoneCallDetailsEx;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IIILjava/lang/String;)V

    .restart local v5    # "details":Lcom/mediatek/dialer/PhoneCallDetailsEx;
    goto/16 :goto_2

    .line 1031
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1048
    .restart local v9    # "isHighlighted":Z
    .restart local v10    # "isEmergencyNumber":Z
    .restart local v11    # "isVoiceMailNumber":Z
    .restart local v27    # "isSipCallNumber":Z
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->bindCallButtonView(Lcom/mediatek/dialer/calllog/CallLogListItemView;Lcom/mediatek/dialer/PhoneCallDetailsEx;)V

    goto/16 :goto_4

    .line 1061
    :cond_8
    move-object/from16 v0, v25

    iget v6, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->contactSimId:I

    if-lez v6, :cond_2

    .line 1062
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v6

    move-object/from16 v0, v25

    iget v7, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->contactSimId:I

    invoke-virtual {v6, v7}, Lcom/mediatek/phone/SIMInfoWrapper;->getSlotIdBySimId(I)I

    move-result v34

    .line 1063
    .local v34, "slotId":I
    const/16 v26, -0x1

    .line 1064
    .local v26, "i":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    if-nez v6, :cond_9

    .line 1065
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    .line 1068
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v33

    .line 1069
    .local v33, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v33, :cond_a

    .line 1070
    move-object/from16 v0, v33

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    move/from16 v26, v0

    .line 1073
    :cond_a
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v6

    move-object/from16 v0, v25

    iget v7, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->isSdnContact:I

    const-string v8, "ExtensionForOP09"

    move/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v6, v7, v0, v1, v8}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;->getEnhancementPhotoId(IIILjava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v25

    iput-wide v6, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->photoId:J

    .line 1075
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->photoId:J

    const-wide/16 v12, -0x1

    cmp-long v6, v6, v12

    if-nez v6, :cond_2

    .line 1076
    new-instance v6, Lcom/mediatek/dialer/util/SimContactPhotoUtils;

    invoke-direct {v6}, Lcom/mediatek/dialer/util/SimContactPhotoUtils;-><init>()V

    move-object/from16 v0, v25

    iget v7, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->isSdnContact:I

    move/from16 v0, v26

    invoke-virtual {v6, v7, v0}, Lcom/mediatek/dialer/util/SimContactPhotoUtils;->getPhotoId(II)J

    move-result-wide v6

    move-object/from16 v0, v25

    iput-wide v6, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->photoId:J

    goto/16 :goto_5

    .line 1083
    .end local v26    # "i":I
    .end local v33    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v34    # "slotId":I
    :cond_b
    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getQuickContact()Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-result-object v13

    move-object/from16 v0, v25

    iget-wide v14, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->photoId:J

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->lookupUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v18}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->setPhoto(Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeCursor(), cursor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->log(Ljava/lang/String;)V

    .line 1249
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_0

    .line 1250
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mCursor:Landroid/database/Cursor;

    .line 1251
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContactInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1253
    :cond_0
    invoke-super {p0, p1}, Lcom/mediatek/dialer/widget/GroupingListAdapterWithHeader;->changeCursor(Landroid/database/Cursor;)V

    .line 1254
    return-void
.end method

.method public clearCachedContactInfo()V
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContactInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1170
    return-void
.end method

.method disableRequestProcessingForTest()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mRequestProcessingDisabled:Z

    .line 911
    return-void
.end method

.method protected getContactInfo(Landroid/database/Cursor;)Lcom/mediatek/dialer/calllogex/ContactInfoEx;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1107
    const/4 v1, 0x0

    .line 1108
    .local v1, "info":Lcom/mediatek/dialer/calllogex/ContactInfoEx;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, "hashKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContactInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/mediatek/dialer/calllogex/ContactInfoEx;
    check-cast v1, Lcom/mediatek/dialer/calllogex/ContactInfoEx;

    .line 1111
    .restart local v1    # "info":Lcom/mediatek/dialer/calllogex/ContactInfoEx;
    if-nez v1, :cond_0

    .line 1112
    invoke-virtual {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/mediatek/dialer/calllogex/ContactInfoEx;

    move-result-object v1

    .line 1113
    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContactInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    :cond_0
    return-object v1
.end method

.method protected getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/mediatek/dialer/calllogex/ContactInfoEx;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1121
    invoke-static {p1}, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->fromCursor(Landroid/database/Cursor;)Lcom/mediatek/dialer/calllogex/ContactInfoEx;

    move-result-object v0

    .line 1122
    .local v0, "info":Lcom/mediatek/dialer/calllogex/ContactInfoEx;
    return-object v0
.end method

.method injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/dialer/calllogex/ContactInfoEx;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "contactInfo"    # Lcom/mediatek/dialer/calllogex/ContactInfoEx;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 915
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$NumberWithCountryIso;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    .local v0, "numberCountryIso":Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$NumberWithCountryIso;
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v1, v0, p3}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 917
    return-void
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->refreshCache()V

    .line 1296
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mLoading:Z

    if-eqz v0, :cond_0

    .line 369
    const/4 v0, 0x0

    .line 371
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/mediatek/dialer/widget/GroupingListAdapterWithHeader;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method protected newCallLogItemView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1173
    new-instance v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1174
    .local v0, "view":Lcom/mediatek/dialer/calllog/CallLogListItemView;
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->setOnCallButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 1175
    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->setBackgroundResource(I)V

    .line 1176
    return-object v0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 596
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->newCallLogItemView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 616
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->newCallLogItemView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 576
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->newCallLogItemView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 354
    const-string v0, "onContentChanged()"

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->log(Ljava/lang/String;)V

    .line 355
    iget-boolean v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mIsUpdateWhenContentChange:Z

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mCallFetcher:Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$CallFetcher;

    invoke-interface {v0}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$CallFetcher;->fetchCalls()V

    .line 358
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1155
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1160
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->resume()V

    .line 1166
    :goto_0
    return-void

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->pause()V

    goto :goto_0
.end method

.method public setGroupHeaderPosition(I)V
    .locals 0
    .param p1, "cursorPosition"    # I

    .prologue
    .line 1244
    invoke-super {p0, p1}, Lcom/mediatek/dialer/widget/GroupingListAdapterWithHeader;->setGroupHeaderPosition(I)V

    .line 1245
    return-void
.end method

.method public setLoading(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mLoading:Z

    .line 363
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 1272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mUpperCaseQueryString:[C

    .line 1277
    :goto_0
    return-void

    .line 1275
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mUpperCaseQueryString:[C

    goto :goto_0
.end method

.method public setUpdateFlagForContentChange(Z)V
    .locals 0
    .param p1, "isUpdateWhenContentChange"    # Z

    .prologue
    .line 1280
    iput-boolean p1, p0, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->mIsUpdateWhenContentChange:Z

    .line 1281
    return-void
.end method
