.class public Lcom/android/dialer/calllog/CallLogAdapter;
.super Lcom/android/common/widget/GroupingListAdapter;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;,
        Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;,
        Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;,
        Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
    }
.end annotation


# static fields
.field private static final CONTACT_INFO_CACHE_SIZE:I = 0x64

.field private static final REDRAW:I = 0x1

.field private static final START_PROCESSING_REQUESTS_DELAY_MILLIS:I = 0x3e8

.field private static final START_THREAD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CallLogAdapter"


# instance fields
.field private final mActionListener:Landroid/view/View$OnClickListener;

.field private mBadgeContainer:Landroid/view/View;

.field private mBadgeImageView:Landroid/widget/ImageView;

.field private mBadgeText:Landroid/widget/TextView;

.field private final mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

.field private final mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

.field private final mCallLogViewsHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

.field private mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

.field private mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/util/ExpirableCache",
            "<",
            "Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;",
            "Lcom/android/dialer/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

.field private final mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field protected final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsCallLog:Z

.field private mLoading:Z

.field private mNumMissedCalls:I

.field private mNumMissedCallsShown:I

.field private mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

.field private volatile mRequestProcessingDisabled:Z

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mUseCallAsPrimaryAction:Z

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;ZZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callFetcher"    # Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
    .param p3, "contactInfoHelper"    # Lcom/android/dialer/calllog/ContactInfoHelper;
    .param p4, "useCallAsPrimaryAction"    # Z
    .param p5, "isCallLog"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 264
    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    .line 114
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 180
    iput-boolean v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mLoading:Z

    .line 197
    iput-boolean v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 201
    iput-boolean v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mUseCallAsPrimaryAction:Z

    .line 203
    iput-boolean v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mIsCallLog:Z

    .line 204
    iput v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mNumMissedCalls:I

    .line 205
    iput v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mNumMissedCallsShown:I

    .line 215
    new-instance v3, Lcom/android/dialer/calllog/CallLogAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallLogAdapter$1;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActionListener:Landroid/view/View$OnClickListener;

    .line 247
    new-instance v3, Lcom/android/dialer/calllog/CallLogAdapter$2;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallLogAdapter$2;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    .line 266
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    .line 267
    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

    .line 268
    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    .line 269
    iput-boolean p4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mUseCallAsPrimaryAction:Z

    .line 270
    iput-boolean p5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mIsCallLog:Z

    .line 272
    const/16 v3, 0x64

    invoke-static {v3}, Lcom/android/dialer/util/ExpirableCache;->create(I)Lcom/android/dialer/util/ExpirableCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    .line 273
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    .line 275
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 276
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/dialer/calllog/CallTypeHelper;

    invoke-direct {v0, v2}, Lcom/android/dialer/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    .line 278
    .local v0, "callTypeHelper":Lcom/android/dialer/calllog/CallTypeHelper;
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 279
    new-instance v3, Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-direct {v3, v2}, Lcom/android/dialer/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    .line 285
    new-instance v1, Lcom/android/dialer/PhoneCallDetailsHelper;

    new-instance v3, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    invoke-direct {v3}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;-><init>()V

    invoke-direct {v1, v2, v0, v3, p1}, Lcom/android/dialer/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/android/dialer/calllog/CallTypeHelper;Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;Landroid/content/Context;)V

    .line 288
    .local v1, "phoneCallDetailsHelper":Lcom/android/dialer/PhoneCallDetailsHelper;
    new-instance v3, Lcom/android/dialer/calllog/CallLogListItemHelper;

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-direct {v3, v1, v4, v2}, Lcom/android/dialer/calllog/CallLogListItemHelper;-><init>(Lcom/android/dialer/PhoneCallDetailsHelper;Lcom/android/dialer/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

    .line 291
    new-instance v3, Lcom/android/dialer/calllog/CallLogGroupBuilder;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallLogGroupBuilder;-><init>(Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

    .line 292
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/calllog/CallLogAdapter;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogAdapter;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->startActivityForAction(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/dialer/calllog/CallLogAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogAdapter;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->startRequestProcessing()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/calllog/CallLogAdapter;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogAdapter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dialer/calllog/CallLogAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/android/dialer/calllog/ContactInfo;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/calllog/CallLogAdapter;->queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogAdapter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 44
    .param p1, "view"    # Landroid/view/View;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "count"    # I

    .prologue
    .line 677
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/dialer/calllog/CallLogListItemViews;

    .line 680
    .local v27, "views":Lcom/android/dialer/calllog/CallLogListItemViews;
    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 681
    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 684
    .local v5, "number":Ljava/lang/String;
    const/16 v40, 0x1

    .line 685
    .local v40, "numberPresentation":I
    const/4 v6, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 686
    .local v11, "date":J
    const/4 v6, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 687
    .local v13, "duration":J
    const/4 v6, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 688
    .local v34, "callType":I
    const/4 v6, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 689
    .local v8, "countryIso":Ljava/lang/String;
    const/16 v6, 0xa

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 690
    .local v38, "isVtCall":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/mediatek/dialer/calllogex/ContactInfoEx;

    move-result-object v35

    .line 692
    .local v35, "info":Lcom/mediatek/dialer/calllogex/ContactInfoEx;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mUseCallAsPrimaryAction:Z

    if-nez v6, :cond_1

    .line 694
    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/calllog/CallLogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v18

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, p3

    invoke-static {v15, v0, v1, v2, v3}, Lcom/android/dialer/calllog/IntentProvider;->getCallDetailIntentProvider(Landroid/database/Cursor;IJI)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 705
    :goto_0
    const/4 v6, 0x4

    move/from16 v0, v34

    if-ne v0, v6, :cond_3

    .line 706
    const/4 v6, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 707
    .local v43, "voicemailUri":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 708
    .local v41, "rowId":J
    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    invoke-static/range {v41 .. v43}, Lcom/android/dialer/calllog/IntentProvider;->getPlayVoicemailIntentProvider(JLjava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 720
    .end local v41    # "rowId":J
    .end local v43    # "voicemailUri":Ljava/lang/String;
    :goto_1
    new-instance v39, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;

    move-object/from16 v0, v39

    invoke-direct {v0, v5, v8}, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    .local v39, "numberCountryIso":Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Lcom/android/dialer/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/dialer/util/ExpirableCache$CachedValue;

    move-result-object v33

    .line 724
    .local v33, "cachedInfo":Lcom/android/dialer/util/ExpirableCache$CachedValue;, "Lcom/android/dialer/util/ExpirableCache$CachedValue<Lcom/android/dialer/calllog/ContactInfo;>;"
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->lookupUri:Landroid/net/Uri;

    move-object/from16 v30, v0

    .line 725
    .local v30, "lookupUri":Landroid/net/Uri;
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 730
    .local v25, "name":Ljava/lang/String;
    move-object/from16 v0, v35

    iget v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->nNumberTypeId:I

    move/from16 v16, v0

    .line 732
    .local v16, "ntype":I
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->label:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 733
    .local v17, "label":Ljava/lang/String;
    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->photoId:J

    move-wide/from16 v28, v0

    .line 734
    .local v28, "photoId":J
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->photoUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    .line 735
    .local v19, "photoUri":Landroid/net/Uri;
    move-object/from16 v0, v35

    iget-object v7, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->formattedNumber:Ljava/lang/String;

    .line 736
    .local v7, "formattedNumber":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v10

    .line 737
    .local v10, "callTypes":[I
    const/4 v6, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 740
    .local v9, "geocode":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 741
    new-instance v4, Lcom/android/dialer/PhoneCallDetails;

    const/4 v6, 0x1

    move-object/from16 v0, v35

    iget v15, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->simId:I

    move-object/from16 v0, v35

    iget v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->vtCall:I

    move/from16 v16, v0

    .end local v16    # "ntype":I
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->ipPrefix:Ljava/lang/String;

    move-object/from16 v18, v0

    move/from16 v17, p3

    invoke-direct/range {v4 .. v18}, Lcom/android/dialer/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIIILjava/lang/String;)V

    .line 751
    .end local v17    # "label":Ljava/lang/String;
    .local v4, "details":Lcom/android/dialer/PhoneCallDetails;
    :goto_2
    const/16 v6, 0x8

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v6, :cond_6

    const/16 v37, 0x1

    .line 753
    .local v37, "isNew":Z
    :goto_3
    move/from16 v36, v37

    .line 754
    .local v36, "isHighlighted":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mUseCallAsPrimaryAction:Z

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v6, v0, v4, v1, v15}, Lcom/android/dialer/calllog/CallLogListItemHelper;->setPhoneCallDetails(Lcom/android/dialer/calllog/CallLogListItemViews;Lcom/android/dialer/PhoneCallDetails;ZZ)V

    .line 767
    if-eqz v19, :cond_7

    move-object/from16 v20, p0

    move-object/from16 v21, v27

    move-object/from16 v22, v19

    move-object/from16 v23, v30

    move-object/from16 v24, v5

    .line 768
    invoke-direct/range {v20 .. v25}, Lcom/android/dialer/calllog/CallLogAdapter;->setPhoto(Lcom/android/dialer/calllog/CallLogListItemViews;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :goto_4
    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v0, v27

    iget-object v15, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/android/dialer/PhoneCallDetailsViews;

    iget-object v15, v15, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v6, :cond_0

    .line 779
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 780
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 783
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/dialer/calllog/CallLogAdapter;->bindBadge(Landroid/view/View;Lcom/mediatek/dialer/calllogex/ContactInfoEx;Lcom/android/dialer/PhoneCallDetails;I)V

    .line 784
    return-void

    .line 697
    .end local v4    # "details":Lcom/android/dialer/PhoneCallDetails;
    .end local v7    # "formattedNumber":Ljava/lang/CharSequence;
    .end local v9    # "geocode":Ljava/lang/String;
    .end local v10    # "callTypes":[I
    .end local v19    # "photoUri":Landroid/net/Uri;
    .end local v25    # "name":Ljava/lang/String;
    .end local v28    # "photoId":J
    .end local v30    # "lookupUri":Landroid/net/Uri;
    .end local v33    # "cachedInfo":Lcom/android/dialer/util/ExpirableCache$CachedValue;, "Lcom/android/dialer/util/ExpirableCache$CachedValue<Lcom/android/dialer/calllog/ContactInfo;>;"
    .end local v36    # "isHighlighted":Z
    .end local v37    # "isNew":Z
    .end local v39    # "numberCountryIso":Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;
    :cond_1
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 699
    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-static {v5}, Lcom/android/dialer/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 701
    :cond_2
    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 710
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 712
    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/android/dialer/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 716
    :cond_4
    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 745
    .restart local v7    # "formattedNumber":Ljava/lang/CharSequence;
    .restart local v9    # "geocode":Ljava/lang/String;
    .restart local v10    # "callTypes":[I
    .restart local v16    # "ntype":I
    .restart local v17    # "label":Ljava/lang/String;
    .restart local v19    # "photoUri":Landroid/net/Uri;
    .restart local v25    # "name":Ljava/lang/String;
    .restart local v28    # "photoId":J
    .restart local v30    # "lookupUri":Landroid/net/Uri;
    .restart local v33    # "cachedInfo":Lcom/android/dialer/util/ExpirableCache$CachedValue;, "Lcom/android/dialer/util/ExpirableCache$CachedValue<Lcom/android/dialer/calllog/ContactInfo;>;"
    .restart local v39    # "numberCountryIso":Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;
    :cond_5
    new-instance v4, Lcom/android/dialer/PhoneCallDetails;

    const/4 v6, 0x1

    move-object/from16 v0, v35

    iget v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->simId:I

    move/from16 v20, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->vtCall:I

    move/from16 v21, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->ipPrefix:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v15, v25

    move-object/from16 v18, v30

    move/from16 v22, p3

    invoke-direct/range {v4 .. v23}, Lcom/android/dialer/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IIILjava/lang/String;)V

    .restart local v4    # "details":Lcom/android/dialer/PhoneCallDetails;
    goto/16 :goto_2

    .line 751
    .end local v16    # "ntype":I
    .end local v17    # "label":Ljava/lang/String;
    :cond_6
    const/16 v37, 0x0

    goto/16 :goto_3

    .restart local v36    # "isHighlighted":Z
    .restart local v37    # "isNew":Z
    :cond_7
    move-object/from16 v26, p0

    move-object/from16 v31, v5

    move-object/from16 v32, v25

    .line 770
    invoke-direct/range {v26 .. v32}, Lcom/android/dialer/calllog/CallLogAdapter;->setPhoto(Lcom/android/dialer/calllog/CallLogListItemViews;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method private callLogInfoMatches(Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)Z
    .locals 2
    .param p1, "callLogInfo"    # Lcom/android/dialer/calllog/ContactInfo;
    .param p2, "info"    # Lcom/android/dialer/calllog/ContactInfo;

    .prologue
    .line 927
    iget-object v0, p1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iget v1, p2, Lcom/android/dialer/calllog/ContactInfo;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findAndCacheViews(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 528
    invoke-static {p1}, Lcom/android/dialer/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/android/dialer/calllog/CallLogListItemViews;

    move-result-object v0

    .line 529
    .local v0, "views":Lcom/android/dialer/calllog/CallLogListItemViews;
    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 532
    return-void
.end method

.method private getCallTypes(Landroid/database/Cursor;I)[I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "count"    # I

    .prologue
    .line 1032
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 1033
    .local v2, "position":I
    new-array v0, p2, [I

    .line 1034
    .local v0, "callTypes":[I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 1035
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    .line 1036
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1034
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1038
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1039
    return-object v0
.end method

.method private getNumMissedCalls(I)I
    .locals 1
    .param p1, "callType"    # I

    .prologue
    .line 916
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 918
    iget v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mNumMissedCalls:I

    add-int/lit8 v0, v0, -0x1

    .line 920
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mNumMissedCalls:I

    goto :goto_0
.end method

.method private queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z
    .locals 8
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "callLogInfo"    # Lcom/android/dialer/calllog/ContactInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 398
    iget-object v7, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {v7, p1, p2}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    .line 400
    .local v1, "info":Lcom/android/dialer/calllog/ContactInfo;
    if-nez v1, :cond_0

    .line 427
    :goto_0
    return v6

    .line 407
    :cond_0
    new-instance v3, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v3, p1, p2}, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .local v3, "numberCountryIso":Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v7, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v7, v3}, Lcom/android/dialer/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/ContactInfo;

    .line 410
    .local v0, "existingInfo":Lcom/android/dialer/calllog/ContactInfo;
    iget v7, v1, Lcom/android/dialer/calllog/ContactInfo;->sourceType:I

    if-eqz v7, :cond_2

    move v2, v5

    .line 418
    .local v2, "isRemoteSource":Z
    :goto_1
    sget-object v7, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-ne v0, v7, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/dialer/calllog/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v4, v5

    .line 423
    .local v4, "updated":Z
    :goto_2
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v5, v3, v1}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 426
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/dialer/calllog/CallLogAdapter;->updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)V

    move v6, v4

    .line 427
    goto :goto_0

    .end local v2    # "isRemoteSource":Z
    .end local v4    # "updated":Z
    :cond_2
    move v2, v6

    .line 410
    goto :goto_1

    .restart local v2    # "isRemoteSource":Z
    :cond_3
    move v4, v6

    .line 418
    goto :goto_2
.end method

.method private setPhoto(Lcom/android/dialer/calllog/CallLogListItemViews;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "views"    # Lcom/android/dialer/calllog/CallLogListItemViews;
    .param p2, "photoId"    # J
    .param p4, "contactUri"    # Landroid/net/Uri;
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1058
    if-nez p4, :cond_0

    .line 1059
    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignContactUri(Landroid/net/Uri;)V

    .line 1060
    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    invoke-static {p5}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, p5, v1}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 1065
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 1066
    return-void

    .line 1062
    :cond_0
    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 1063
    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    invoke-virtual {v0, p4}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private setPhoto(Lcom/android/dialer/calllog/CallLogListItemViews;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "views"    # Lcom/android/dialer/calllog/CallLogListItemViews;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "contactUri"    # Landroid/net/Uri;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1070
    if-nez p3, :cond_0

    .line 1071
    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignContactUri(Landroid/net/Uri;)V

    .line 1072
    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    invoke-static {p4}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, p4, v1}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 1077
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Z)V

    .line 1078
    return-void

    .line 1074
    :cond_0
    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 1075
    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    invoke-virtual {v0, p3}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private startActivityForAction(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calllog/IntentProvider;

    .line 224
    .local v1, "intentProvider":Lcom/android/dialer/calllog/IntentProvider;
    if-eqz v1, :cond_0

    .line 225
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/dialer/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 228
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 231
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private declared-synchronized startRequestProcessing()V
    .locals 2

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 325
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    .line 328
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->setPriority(I)V

    .line 329
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unregisterPreDrawListener()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 354
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 355
    return-void
.end method

.method private updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)V
    .locals 8
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "updatedInfo"    # Lcom/android/dialer/calllog/ContactInfo;
    .param p4, "callLogInfo"    # Lcom/android/dialer/calllog/ContactInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 935
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 936
    .local v1, "values":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 938
    .local v0, "needsUpdate":Z
    if-eqz p4, :cond_8

    .line 939
    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 940
    const-string v2, "name"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const/4 v0, 0x1

    .line 944
    :cond_0
    iget v2, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iget v3, p4, Lcom/android/dialer/calllog/ContactInfo;->type:I

    if-eq v2, v3, :cond_1

    .line 945
    const-string v2, "numbertype"

    iget v3, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 946
    const/4 v0, 0x1

    .line 949
    :cond_1
    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 950
    const-string v2, "numberlabel"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const/4 v0, 0x1

    .line 953
    :cond_2
    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 954
    const-string v2, "lookup_uri"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const/4 v0, 0x1

    .line 957
    :cond_3
    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 958
    const-string v2, "normalized_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const/4 v0, 0x1

    .line 961
    :cond_4
    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 962
    const-string v2, "matched_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const/4 v0, 0x1

    .line 965
    :cond_5
    iget-wide v2, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    iget-wide v4, p4, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 966
    const-string v2, "photo_id"

    iget-wide v3, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 967
    const/4 v0, 0x1

    .line 969
    :cond_6
    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 970
    const-string v2, "formatted_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const/4 v0, 0x1

    .line 986
    :cond_7
    :goto_0
    if-nez v0, :cond_9

    .line 997
    :goto_1
    return-void

    .line 975
    :cond_8
    const-string v2, "name"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v2, "numbertype"

    iget v3, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 977
    const-string v2, "numberlabel"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const-string v2, "lookup_uri"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const-string v2, "matched_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v2, "normalized_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v2, "photo_id"

    iget-wide v3, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 982
    const-string v2, "formatted_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const/4 v0, 0x1

    goto :goto_0

    .line 988
    :cond_9
    if-nez p2, :cond_a

    .line 989
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v4, "number = ? AND countryiso IS NULL"

    new-array v5, v7, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 993
    :cond_a
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v4, "number = ? AND countryiso = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addGroup(IIZ)V
    .locals 0
    .param p1, "cursorPosition"    # I
    .param p2, "size"    # I
    .param p3, "expanded"    # Z

    .prologue
    .line 1101
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->addGroup(IIZ)V

    .line 1102
    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;)V

    .line 490
    return-void
.end method

.method protected bindBadge(Landroid/view/View;Lcom/mediatek/dialer/calllogex/ContactInfoEx;Lcom/android/dialer/PhoneCallDetails;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/mediatek/dialer/calllogex/ContactInfoEx;
    .param p3, "details"    # Lcom/android/dialer/PhoneCallDetails;
    .param p4, "callType"    # I

    .prologue
    .line 789
    iget-boolean v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mIsCallLog:Z

    if-nez v5, :cond_2

    .line 790
    invoke-direct {p0, p4}, Lcom/android/dialer/calllog/CallLogAdapter;->getNumMissedCalls(I)I

    move-result v2

    .line 791
    .local v2, "numMissed":I
    const v5, 0x7f0d009a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 797
    .local v3, "stub":Landroid/view/ViewStub;
    invoke-virtual {p0, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->shouldShowBadge(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 810
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBadgeText:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 811
    invoke-virtual {p0, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->getBadgeText(I)Ljava/lang/String;

    move-result-object v4

    .line 812
    .local v4, "text":Ljava/lang/String;
    const-string v5, "CallLogAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindBadge numMissed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", text="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBadgeText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    .end local v4    # "text":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_3

    .line 817
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 818
    .local v1, "inflated":Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 819
    const v5, 0x7f0d009c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBadgeContainer:Landroid/view/View;

    .line 820
    const v5, 0x7f0d009d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBadgeImageView:Landroid/widget/ImageView;

    .line 821
    const v5, 0x7f0d009e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBadgeText:Landroid/widget/TextView;

    .line 833
    .end local v1    # "inflated":Landroid/view/View;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBadgeContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->getBadgeClickListener()Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBadgeImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->getBadgeImageResId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 835
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBadgeText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->getBadgeText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    .end local v2    # "numMissed":I
    .end local v3    # "stub":Landroid/view/ViewStub;
    :cond_2
    :goto_1
    return-void

    .line 824
    .restart local v2    # "numMissed":I
    .restart local v3    # "stub":Landroid/view/ViewStub;
    :cond_3
    const v5, 0x7f0d009b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 825
    .local v0, "container":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 826
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 827
    const v5, 0x7f0d009c

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBadgeContainer:Landroid/view/View;

    .line 828
    const v5, 0x7f0d009d

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBadgeImageView:Landroid/widget/ImageView;

    .line 829
    const v5, 0x7f0d009e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBadgeText:Landroid/widget/TextView;

    goto :goto_0

    .line 844
    .end local v0    # "container":Landroid/view/View;
    :cond_4
    if-nez v3, :cond_2

    .line 845
    const v5, 0x7f0d009b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 846
    .restart local v0    # "container":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 847
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 517
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/dialer/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 518
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
    .line 523
    invoke-direct {p0, p1, p3, p4}, Lcom/android/dialer/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 524
    return-void
.end method

.method protected bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 512
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/dialer/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 513
    return-void
.end method

.method disableRequestProcessingForTest()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1090
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 1091
    return-void
.end method

.method protected enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Z)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "callLogInfo"    # Lcom/android/dialer/calllog/ContactInfo;
    .param p4, "immediate"    # Z

    .prologue
    .line 376
    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)V

    .line 377
    .local v0, "request":Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 382
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    if-eqz p4, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->startRequestProcessing()V

    .line 384
    :cond_1
    return-void

    .line 382
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getBadgeClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 869
    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogAdapter$3;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    return-object v0
.end method

.method protected getBadgeImageResId()I
    .locals 1

    .prologue
    .line 883
    const v0, 0x7f020081

    return v0
.end method

.method protected getBadgeText(I)Ljava/lang/String;
    .locals 5
    .param p1, "numMissed"    # I

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a05d7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBetterNumberFromContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 1114
    const/4 v7, 0x0

    .line 1116
    .local v7, "matchingNumber":Ljava/lang/String;
    new-instance v8, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v8, p1, p2}, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    .local v8, "numberCountryIso":Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v0, v8}, Lcom/android/dialer/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dialer/calllog/ContactInfo;

    .line 1118
    .local v6, "ci":Lcom/android/dialer/calllog/ContactInfo;
    if-eqz v6, :cond_3

    sget-object v0, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-eq v6, v0, :cond_3

    .line 1119
    iget-object v7, v6, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 1135
    :cond_0
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "+"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1138
    :cond_1
    move-object p1, v7

    .line 1140
    :cond_2
    return-object p1

    .line 1122
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1125
    .local v9, "phonesCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 1126
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1127
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1129
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1131
    .end local v9    # "phonesCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/mediatek/dialer/calllogex/ContactInfoEx;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1020
    invoke-static {p1}, Lcom/mediatek/dialer/calllogex/ContactInfoEx;->fromCursor(Landroid/database/Cursor;)Lcom/mediatek/dialer/calllogex/ContactInfoEx;

    move-result-object v0

    .line 1021
    .local v0, "info":Lcom/mediatek/dialer/calllogex/ContactInfoEx;
    return-object v0
.end method

.method injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "contactInfo"    # Lcom/android/dialer/calllog/ContactInfo;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1095
    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v0, p1, p2}, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    .local v0, "numberCountryIso":Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v1, v0, p3}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1097
    return-void
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/dialer/util/ExpirableCache;->expireAll()V

    .line 361
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 362
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->unregisterPreDrawListener()V

    .line 363
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/common/widget/GroupingListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 504
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 505
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04000d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 506
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 507
    return-object v1
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 499
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogAdapter;->newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 494
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogAdapter;->newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

    invoke-interface {v0}, Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;->fetchCalls()V

    .line 300
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->unregisterPreDrawListener()V

    .line 240
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setLoading(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mLoading:Z

    .line 304
    return-void
.end method

.method public setMissedCalls(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    .line 856
    if-nez p1, :cond_1

    .line 857
    const/4 v0, 0x0

    .line 862
    .local v0, "missed":I
    :goto_0
    iget v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mNumMissedCalls:I

    if-eq v0, v1, :cond_0

    .line 863
    iput v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mNumMissedCalls:I

    .line 864
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 866
    :cond_0
    return-void

    .line 859
    .end local v0    # "missed":I
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .restart local v0    # "missed":I
    goto :goto_0
.end method

.method protected shouldShowBadge(I)Z
    .locals 1
    .param p1, "numMissedCalls"    # I

    .prologue
    .line 911
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized stopRequestProcessing()V
    .locals 2

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->stopProcessing()V

    .line 342
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->interrupt()V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :cond_0
    monitor-exit p0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
