.class public Lcom/android/incallui/CallCardFragment;
.super Lcom/android/incallui/BaseFragment;
.source "CallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/CallCardPresenter$CallCardUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardFragment$6;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallCardPresenter;",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;",
        ">;",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;"
    }
.end annotation


# static fields
.field private static final UPDATE_CALL_STATE_FOR_CALL_WAITING:I = 0x64


# instance fields
.field callCardListener:Landroid/view/View$OnClickListener;

.field m2ndHoldName:Landroid/widget/TextView;

.field m2ndHoldState:Landroid/widget/TextView;

.field m2ndIncomingName:Landroid/widget/TextView;

.field m2ndIncomingState:Landroid/widget/TextView;

.field mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCallBannerSidePadding:I

.field private mCallBannerTopBottomPadding:I

.field private mCallCardHeight:I

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallType:I

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mDensity:F

.field private mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

.field private mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mIncomingCall2Info:Landroid/view/ViewGroup;

.field private mIncomingCall2PhotoDimEffect:Landroid/view/View;

.field private mIncomingCallInfoHeight:I

.field private mIncomingCallInfoTopMargin:I

.field private mIncomingCallInfoWidth:I

.field private mIsPhotoVisible:Z

.field private mLocation:Landroid/widget/TextView;

.field private mNeedShowIncomingCall2Animator:Z

.field private mNumberLabel:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoHoldPre:Landroid/widget/ImageView;

.field private mPhotoIncomingPre:Landroid/widget/ImageView;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallInfo:Landroid/view/ViewGroup;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mProviderInfo:Landroid/view/View;

.field private mProviderLabel:Landroid/widget/TextView;

.field private mProviderNumber:Landroid/widget/TextView;

.field private mSecondHoldCallBanner:Landroid/view/ViewGroup;

.field private mSecondIncomingCallBanner:Landroid/view/ViewGroup;

.field private mSecondaryCallBanner:Landroid/view/ViewGroup;

.field private mSecondaryCallInfo:Landroid/view/ViewStub;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallStatus:Landroid/widget/TextView;

.field private mSecondaryPhoto:Landroid/widget/ImageView;

.field private mSecondaryPhotoOverlay:Landroid/view/View;

.field private mShowAnimator2End:I

.field private mShowSwtchCall2Animator:Z

.field private mSimBorderMap:[I

.field private mSimColorMap:[I

.field private mSimIndicator:Landroid/widget/TextView;

.field private mSimIndicatorPaddingLeft:I

.field private mSimIndicatorPaddingRight:I

.field private mSlotId:I

.field private mSupplementaryInfoContainer:Landroid/view/ViewGroup;

.field private mVoiceRecorderIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 686
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimColorMap:[I

    .line 693
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimBorderMap:[I

    .line 710
    iput v1, p0, Lcom/android/incallui/CallCardFragment;->mShowAnimator2End:I

    .line 899
    iput-boolean v1, p0, Lcom/android/incallui/CallCardFragment;->mIsPhotoVisible:Z

    .line 1180
    new-instance v0, Lcom/android/incallui/CallCardFragment$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardFragment$3;-><init>(Lcom/android/incallui/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->callCardListener:Landroid/view/View$OnClickListener;

    .line 1202
    new-instance v0, Lcom/android/incallui/CallCardFragment$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardFragment$4;-><init>(Lcom/android/incallui/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1305
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mCallType:I

    .line 1324
    new-instance v0, Lcom/android/incallui/CallCardFragment$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardFragment$5;-><init>(Lcom/android/incallui/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mHandler:Landroid/os/Handler;

    return-void

    .line 686
    :array_0
    .array-data 4
        0x7f0201c8
        0x7f0201c9
        0x7f0201ca
        0x7f0201cb
    .end array-data

    .line 693
    :array_1
    .array-data 4
        0x7f0201ee
        0x7f0201f2
        0x7f0201ef
        0x7f0201f3
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/incallui/CallCardFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardHeight:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/incallui/CallCardFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/incallui/CallCardFragment;->mCallCardHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/CallCardFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/incallui/CallCardFragment;->mShowSwtchCall2Animator:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/CallCardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->updateCallStateforCallWaiting()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/incallui/CallCardFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/incallui/CallCardFragment;->mShowSwtchCall2Animator:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/CallCardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->displaySwitchIncomingAnimator()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/CallCardFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mShowAnimator2End:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/incallui/CallCardFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/incallui/CallCardFragment;->mShowAnimator2End:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/incallui/CallCardFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mShowAnimator2End:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/CallCardFragment;->mShowAnimator2End:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/incallui/CallCardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->broadRingCallToggled()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/CallCardFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/incallui/CallCardFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/incallui/CallCardFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoTopMargin:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/incallui/CallCardFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2Info:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/CallCardFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/incallui/CallCardFragment;->mNeedShowIncomingCall2Animator:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/incallui/CallCardFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/incallui/CallCardFragment;->mNeedShowIncomingCall2Animator:Z

    return p1
.end method

.method private broadRingCallToggled()V
    .locals 2

    .prologue
    .line 1296
    const-string v1, "broadRingCallToggled() action:com.mediatek.phone.action.RING_CALL_TOGGLED"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.phone.action.RING_CALL_TOGGLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1298
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1299
    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 657
    if-nez p2, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 659
    .local v0, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 660
    .local v1, "size":I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 662
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 663
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private displaySecondaryIncomingAnimator()V
    .locals 13

    .prologue
    const v2, 0x3ecccccd

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1256
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1258
    .local v9, "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoWidth:I

    add-int v10, v3, v4

    .line 1259
    .local v10, "dx":I
    iget v3, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoTopMargin:I

    iget v4, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoHeight:I

    add-int v11, v3, v4

    .line 1260
    .local v11, "dy":I
    new-instance v12, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v10

    int-to-float v4, v11

    invoke-direct {v12, v1, v3, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1261
    .local v12, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v12, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1262
    invoke-virtual {v9, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1264
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v1

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1266
    .local v0, "myAnimationScale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1267
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1269
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1270
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2Info:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1271
    return-void
.end method

.method private displaySwitchIncomingAnimator()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1f4

    const v1, 0x3ecccccd

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1275
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoWidth:I

    sub-int v10, v3, v4

    .line 1277
    .local v10, "dx":I
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1278
    .local v9, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v10

    iget v4, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoTopMargin:I

    int-to-float v4, v4

    invoke-direct {v11, v3, v2, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1279
    .local v11, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v11, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1280
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1282
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1284
    .local v0, "myAnimationScale":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1285
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1286
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1288
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2Info:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1289
    return-void
.end method

.method private getCallFailedString(Lcom/android/services/telephony/common/Call$DisconnectCause;)Ljava/lang/String;
    .locals 3
    .param p1, "cause"    # Lcom/android/services/telephony/common/Call$DisconnectCause;

    .prologue
    .line 537
    const v0, 0x7f0a0293

    .line 543
    .local v0, "resID":I
    sget-object v1, Lcom/android/incallui/CallCardFragment$6;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call$DisconnectCause;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 603
    const v0, 0x7f0a0293

    .line 606
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 545
    :pswitch_0
    const v0, 0x7f0a0154

    .line 546
    goto :goto_0

    .line 549
    :pswitch_1
    const v0, 0x7f0a0155

    .line 550
    goto :goto_0

    .line 553
    :pswitch_2
    const v0, 0x7f0a0156

    .line 554
    goto :goto_0

    .line 557
    :pswitch_3
    const v0, 0x7f0a0157

    .line 558
    goto :goto_0

    .line 561
    :pswitch_4
    const v0, 0x7f0a0158

    .line 562
    goto :goto_0

    .line 565
    :pswitch_5
    const v0, 0x7f0a0159

    .line 566
    goto :goto_0

    .line 569
    :pswitch_6
    const v0, 0x7f0a015b

    .line 570
    goto :goto_0

    .line 573
    :pswitch_7
    const v0, 0x7f0a015a

    .line 574
    goto :goto_0

    .line 578
    :pswitch_8
    const v0, 0x7f0a015c

    .line 579
    goto :goto_0

    .line 582
    :pswitch_9
    const v0, 0x7f0a015d

    .line 583
    goto :goto_0

    .line 586
    :pswitch_a
    const v0, 0x7f0a015e

    .line 587
    goto :goto_0

    .line 590
    :pswitch_b
    const v0, 0x7f0a015f

    .line 591
    goto :goto_0

    .line 594
    :pswitch_c
    const v0, 0x7f0a0160

    .line 595
    goto :goto_0

    .line 599
    :pswitch_d
    const v0, 0x7f0a0166

    .line 600
    goto :goto_0

    .line 543
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getCallStateLabelFromState(ILcom/android/services/telephony/common/Call$DisconnectCause;)Ljava/lang/String;
    .locals 4
    .param p1, "state"    # I
    .param p2, "cause"    # Lcom/android/services/telephony/common/Call$DisconnectCause;

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 484
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 486
    .local v0, "callStateLabel":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    .line 490
    const-string v0, ""

    .line 530
    :cond_0
    :goto_0
    return-object v0

    .line 493
    :cond_1
    const/4 v2, 0x2

    if-eq v2, p1, :cond_0

    .line 497
    const/4 v2, 0x7

    if-ne v2, p1, :cond_2

    .line 498
    const v2, 0x7f0a0294

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 499
    :cond_2
    const/4 v2, 0x5

    if-ne v2, p1, :cond_3

    .line 500
    const v2, 0x7f0a028f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 501
    :cond_3
    const/4 v2, 0x6

    if-ne v2, p1, :cond_4

    .line 502
    const v2, 0x7f0a0290

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 503
    :cond_4
    const/4 v2, 0x3

    if-eq v2, p1, :cond_5

    const/4 v2, 0x4

    if-ne v2, p1, :cond_8

    .line 505
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->isVTCall()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 506
    const v2, 0x7f0a0137

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 508
    :cond_6
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVoLte()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->isUpdatingVoLteConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 509
    const v2, 0x7f0a0144

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 512
    :cond_7
    const v2, 0x7f0a0292

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 514
    :cond_8
    const/16 v2, 0x8

    if-ne v2, p1, :cond_9

    .line 521
    const v2, 0x7f0a0295

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 523
    :cond_9
    const/16 v2, 0x9

    if-ne v2, p1, :cond_a

    .line 524
    invoke-direct {p0, p2}, Lcom/android/incallui/CallCardFragment;->getCallFailedString(Lcom/android/services/telephony/common/Call$DisconnectCause;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 527
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallStateWidgets: unexpected call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "isGeneric"    # Z

    .prologue
    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGenericPhoto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    if-eqz p1, :cond_0

    const v0, 0x7f02021b

    .line 460
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 459
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f02021a

    goto :goto_0
.end method

.method private getConferenceString(Z)Ljava/lang/String;
    .locals 3
    .param p1, "isGeneric"    # Z

    .prologue
    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGenericString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    if-eqz p1, :cond_0

    const v0, 0x7f0a0296

    .line 454
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 453
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f0a0291

    goto :goto_0
.end method

.method private initPaddingDimensions()V
    .locals 2

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mCallBannerSidePadding:I

    .line 753
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mCallBannerTopBottomPadding:I

    .line 754
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicatorPaddingLeft:I

    .line 755
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicatorPaddingRight:I

    .line 756
    return-void
.end method

.method private initResourcesForDualTalk(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 970
    const v0, 0x7f0d019d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2Info:Landroid/view/ViewGroup;

    .line 971
    const v0, 0x7f0d0133

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoIncomingPre:Landroid/widget/ImageView;

    .line 973
    const v0, 0x7f0d0132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndIncomingName:Landroid/widget/TextView;

    .line 974
    const v0, 0x7f0d0136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndIncomingState:Landroid/widget/TextView;

    .line 975
    const v0, 0x7f0d0135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    .line 977
    const v0, 0x7f0d0134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    .line 978
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 979
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 980
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->callCardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 983
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 985
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoWidth:I

    .line 987
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoHeight:I

    .line 989
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoTopMargin:I

    .line 991
    return-void
.end method

.method private initVoiceRecorderIcon(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 889
    const v0, 0x7f0d019e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVoiceRecorderIcon:Landroid/widget/ImageView;

    .line 890
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVoiceRecorderIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 891
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVoiceRecorderIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 892
    return-void
.end method

.method private setBluetoothOn(Z)V
    .locals 4
    .param p1, "onOff"    # Z

    .prologue
    const/4 v3, 0x0

    .line 467
    const v0, 0x7f0200a4

    .line 469
    .local v0, "bluetoothIconId":I
    if-eqz p1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v2, 0x7f0200a4

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 471
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/CallCardFragment;->mDensity:F

    const/high16 v3, 0x40a00000

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 476
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDrawableToImageView], photo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    iget-boolean v1, p0, Lcom/android/incallui/CallCardFragment;->mIsPhotoVisible:Z

    if-nez v1, :cond_0

    .line 431
    const-string v1, "[setDrawableToImageView]not visible"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    :goto_0
    return-void

    .line 435
    :cond_0
    if-nez p2, :cond_1

    .line 436
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02021d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 437
    const-string v1, "[setDrawableToImageView]set default photo"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 441
    .local v0, "current":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 442
    const-string v1, "[setDrawableToImageView]current is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    invoke-static {p1}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    goto :goto_0

    .line 446
    :cond_2
    invoke-static {p1, v0, p2}, Lcom/android/incallui/AnimationUtils;->startCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 447
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showAndInitializeSecondaryCallInfo()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d01a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    .line 621
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d01a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryPhotoOverlay:Landroid/view/View;

    .line 622
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryPhotoOverlay:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/CallCardFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$2;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryPhotoOverlay:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 630
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryPhotoOverlay:Landroid/view/View;

    invoke-static {v0}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 631
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragment;->setSecondaryCallClickable(Z)V

    .line 635
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    .line 636
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d01a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    .line 639
    :cond_2
    return-void
.end method

.method private showInternetCallLabel(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 392
    if-eqz p1, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a02b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "label":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    .end local v0    # "label":Ljava/lang/String;
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCallBannerBackground(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Landroid/view/ViewGroup;I)V
    .locals 6
    .param p1, "simInfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .param p2, "callBanner"    # Landroid/view/ViewGroup;
    .param p3, "callType"    # I

    .prologue
    const v5, 0x7f0201f0

    const/4 v4, 0x2

    const v2, 0x7f0201cc

    const/4 v3, 0x0

    .line 766
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportGemini()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 767
    if-ne v4, p3, :cond_5

    .line 768
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-ne v0, p2, :cond_4

    .line 769
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 841
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 842
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mCallBannerSidePadding:I

    iget v2, p0, Lcom/android/incallui/CallCardFragment;->mCallBannerSidePadding:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 845
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 846
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicatorPaddingLeft:I

    iget v2, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicatorPaddingRight:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 849
    :cond_3
    :goto_1
    return-void

    .line 777
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 779
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    .line 782
    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimColorMap:[I

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    if-ltz v0, :cond_6

    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSimColorMap:[I

    array-length v1, v1

    if-lt v0, v1, :cond_7

    .line 784
    :cond_6
    const-string v0, "updateCallBannerBackground"

    const-string v1, "simInfo is null or simInfo.mColor invalid, do not update background"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 788
    :cond_7
    const-string v0, "updateCallBannerBackground"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GEMINI color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-ne v0, p2, :cond_9

    .line 791
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 792
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSimBorderMap:[I

    iget v2, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 794
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSimColorMap:[I

    iget v2, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 799
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSimColorMap:[I

    iget v2, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 805
    :cond_a
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimColorMap:[I

    if-eqz v0, :cond_b

    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    if-ltz v0, :cond_b

    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSimColorMap:[I

    array-length v1, v1

    if-lt v0, v1, :cond_e

    .line 807
    :cond_b
    const-string v0, "updateCallBannerBackground"

    const-string v1, "simInfo is null or simInfo.mColor invalid, set them to default value"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    if-ne v4, p3, :cond_3

    .line 810
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-ne v0, p2, :cond_d

    .line 811
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 812
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 814
    :cond_c
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 816
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 819
    :cond_d
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 821
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 826
    :cond_e
    const-string v0, "updateCallBannerBackground"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-ne v0, p2, :cond_10

    .line 829
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 830
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSimBorderMap:[I

    iget v2, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 832
    :cond_f
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 834
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSimColorMap:[I

    iget v2, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 836
    :cond_10
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSimColorMap:[I

    iget v2, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private updateCallStateforCallWaiting()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 1340
    const-string v2, "updateCallStateforCallWaiting~~"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->isCallWaiting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1342
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a028f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1343
    .local v0, "dialingText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a014d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1345
    .local v1, "indicationText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1346
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1347
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1348
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1357
    .end local v0    # "dialingText":Ljava/lang/String;
    .end local v1    # "indicationText":Ljava/lang/String;
    :goto_1
    return-void

    .line 1350
    .restart local v0    # "dialingText":Ljava/lang/String;
    .restart local v1    # "indicationText":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1354
    .end local v0    # "dialingText":Ljava/lang/String;
    .end local v1    # "indicationText":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1355
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method


# virtual methods
.method public createPresenter()Lcom/android/incallui/CallCardPresenter;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/android/incallui/CallCardPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallCardPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->createPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    return-object v0
.end method

.method public disableSecondHoldCallView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1141
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldState:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1145
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoHoldPre:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1148
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoHoldPre:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1150
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 1151
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1153
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1154
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/incallui/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 1156
    :cond_4
    return-void
.end method

.method public disableSecondIncomingCallView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1159
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndIncomingName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndIncomingName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndIncomingState:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndIncomingState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1165
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoIncomingPre:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1166
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoIncomingPre:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1168
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1169
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/incallui/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 1171
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 1172
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1174
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2Info:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 1175
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2Info:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallCardFragment;->mNeedShowIncomingCall2Animator:Z

    .line 1178
    :cond_5
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 642
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 644
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 653
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 648
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 649
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 650
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 651
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getUi()Lcom/android/incallui/CallCardPresenter$CallCardUi;
    .locals 0

    .prologue
    .line 91
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getUi()Lcom/android/incallui/CallCardPresenter$CallCardUi;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 111
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 112
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/CallCardPresenter;->init(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V

    .line 113
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 120
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/incallui/CallCardFragment;->mDensity:F

    .line 122
    const v1, 0x7f040007

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/incallui/CallCardFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/android/incallui/CallCardFragment$1;-><init>(Lcom/android/incallui/CallCardFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 145
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 152
    const v0, 0x7f0d0155

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0d0094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0d0095

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0d004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/ViewStub;

    .line 156
    const v0, 0x7f0d0192

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    .line 157
    const v0, 0x7f0d019b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0d0195

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f0d0197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mProviderInfo:Landroid/view/View;

    .line 166
    const v0, 0x7f0d0198

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mProviderLabel:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f0d0199

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mProviderNumber:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f0d0196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardFragment;->onViewCreatedMTK(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method public onViewCreatedMTK(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 911
    const v0, 0x7f0d004a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 912
    const v0, 0x7f0d019c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    .line 913
    const v0, 0x7f0d0193

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 914
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->initPaddingDimensions()V

    .line 918
    const v0, 0x7f0d0194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLocation:Landroid/widget/TextView;

    .line 921
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardFragment;->initVoiceRecorderIcon(Landroid/view/View;)V

    .line 924
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardFragment;->initResourcesForDualTalk(Landroid/view/View;)V

    .line 929
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/ExtensionManager;->getCallCardExtension()Lcom/mediatek/incallui/ext/CallCardExtension;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/incallui/ext/CallCardExtension;->onViewCreated(Landroid/content/Context;Landroid/view/View;)V

    .line 930
    return-void
.end method

.method public setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "cause"    # Lcom/android/services/telephony/common/Call$DisconnectCause;
    .param p3, "bluetoothOn"    # Z
    .param p4, "gatewayLabel"    # Ljava/lang/String;
    .param p5, "gatewayNumber"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 302
    const/4 v0, 0x0

    .line 305
    .local v0, "callStateLabel":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVoLte()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->isCallWaiting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->updateCallStateforCallWaiting()V

    .line 311
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardFragment;->getCallStateLabelFromState(ILcom/android/services/telephony/common/Call$DisconnectCause;)Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallState "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisconnectCause "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bluetooth on "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gateway "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    invoke-static {p1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x9

    if-eq p1, v3, :cond_1

    if-ne p1, v6, :cond_6

    :cond_1
    const/4 v1, 0x1

    .line 322
    .local v1, "skipAnimation":Z
    :goto_0
    const/4 v2, 0x0

    .line 323
    .local v2, "transition":Landroid/animation/LayoutTransition;
    if-eqz v1, :cond_2

    .line 324
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    .line 325
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 335
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    if-eqz v0, :cond_3

    .line 342
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :cond_3
    const/4 v3, 0x3

    if-eq v3, p1, :cond_4

    const/4 v3, 0x4

    if-ne v3, p1, :cond_7

    .line 354
    :cond_4
    invoke-direct {p0, p3}, Lcom/android/incallui/CallCardFragment;->setBluetoothOn(Z)V

    .line 377
    :goto_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 378
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mProviderLabel:Landroid/widget/TextView;

    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mProviderNumber:Landroid/widget/TextView;

    invoke-virtual {v3, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mProviderInfo:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 386
    :goto_2
    if-eqz v1, :cond_5

    .line 387
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 389
    :cond_5
    return-void

    .end local v1    # "skipAnimation":Z
    .end local v2    # "transition":Landroid/animation/LayoutTransition;
    :cond_6
    move v1, v4

    .line 320
    goto :goto_0

    .line 356
    .restart local v1    # "skipAnimation":Z
    .restart local v2    # "transition":Landroid/animation/LayoutTransition;
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardFragment;->setBluetoothOn(Z)V

    goto :goto_1

    .line 382
    :cond_8
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mProviderInfo:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLocation:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    :goto_0
    return-void

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setPhotoVisible(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 902
    iput-boolean p1, p0, Lcom/android/incallui/CallCardFragment;->mIsPhotoVisible:Z

    .line 904
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 905
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 907
    :cond_0
    return-void

    .line 905
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZLjava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isConference"    # Z
    .param p7, "isGeneric"    # Z
    .param p8, "isSipCall"    # Z
    .param p9, "location"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string v0, "Setting primary call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    if-eqz p6, :cond_0

    .line 238
    invoke-direct {p0, p7}, Lcom/android/incallui/CallCardFragment;->getConferenceString(Z)Ljava/lang/String;

    move-result-object p2

    .line 239
    invoke-direct {p0, p7}, Lcom/android/incallui/CallCardFragment;->getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 240
    const/4 p3, 0x0

    .line 243
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/CallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 249
    invoke-virtual {p0, p4}, Lcom/android/incallui/CallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 251
    invoke-direct {p0, p8}, Lcom/android/incallui/CallCardFragment;->showInternetCallLabel(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p5}, Lcom/android/incallui/CallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 256
    invoke-virtual {p0, p9}, Lcom/android/incallui/CallCardFragment;->setLocation(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 404
    if-eqz p1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/CallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 206
    :cond_0
    return-void
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "nameDirection":I
    if-eqz p2, :cond_1

    .line 195
    const/4 v0, 0x3

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isConference"    # Z
    .param p7, "isGeneric"    # Z

    .prologue
    const/16 v2, 0x8

    .line 264
    if-eqz p1, :cond_3

    .line 265
    if-eqz p6, :cond_0

    .line 266
    invoke-direct {p0, p7}, Lcom/android/incallui/CallCardFragment;->getConferenceString(Z)Ljava/lang/String;

    move-result-object p2

    .line 267
    invoke-direct {p0, p7}, Lcom/android/incallui/CallCardFragment;->getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 268
    const/4 p3, 0x0

    .line 271
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->showAndInitializeSecondaryCallInfo()V

    .line 272
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "nameDirection":I
    if-eqz p3, :cond_1

    .line 276
    const/4 v0, 0x3

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 280
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v1, p5}, Lcom/android/incallui/CallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 290
    .end local v0    # "nameDirection":I
    :cond_2
    :goto_0
    return-void

    .line 282
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryPhotoOverlay:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryPhotoOverlay:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 286
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryPhotoOverlay:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/android/incallui/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setSecondaryCallClickable(Z)V
    .locals 3
    .param p1, "clickable"    # Z

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryPhotoOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 868
    const-string v0, "setSecondaryCallClickable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryPhotoOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 871
    :cond_0
    return-void
.end method

.method public setSecondaryHold(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isConference"    # Z
    .param p7, "isGeneric"    # Z

    .prologue
    const/16 v2, 0x8

    .line 997
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->showAndInitializeSecondaryHoldCallInfo()V

    .line 998
    if-eqz p1, :cond_3

    .line 999
    if-eqz p6, :cond_0

    .line 1000
    invoke-direct {p0, p7}, Lcom/android/incallui/CallCardFragment;->getConferenceString(Z)Ljava/lang/String;

    move-result-object p2

    .line 1001
    invoke-direct {p0, p7}, Lcom/android/incallui/CallCardFragment;->getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 1002
    const/4 p3, 0x0

    .line 1005
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldName:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    const/4 v0, 0x0

    .line 1007
    .local v0, "nameDirection":I
    if-eqz p3, :cond_1

    .line 1008
    const/4 v0, 0x3

    .line 1010
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 1012
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0294

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhotoHoldPre:Landroid/widget/ImageView;

    invoke-direct {p0, v1, p5}, Lcom/android/incallui/CallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1022
    .end local v0    # "nameDirection":I
    :cond_2
    :goto_0
    return-void

    .line 1016
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1017
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1019
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/android/incallui/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setSecondaryImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 294
    if-eqz p1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/CallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 297
    :cond_0
    return-void
.end method

.method public setSecondaryIncoming(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isConference"    # Z
    .param p7, "isGeneric"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1073
    if-eqz p1, :cond_7

    .line 1074
    if-eqz p6, :cond_0

    .line 1075
    invoke-direct {p0, p7}, Lcom/android/incallui/CallCardFragment;->getConferenceString(Z)Ljava/lang/String;

    move-result-object p2

    .line 1076
    invoke-direct {p0, p7}, Lcom/android/incallui/CallCardFragment;->getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 1077
    const/4 p3, 0x0

    .line 1080
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2Info:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2Info:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-ne v4, v2, :cond_1

    .line 1081
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/CallCardFragment;->mNeedShowIncomingCall2Animator:Z

    .line 1083
    :cond_1
    iget-boolean v2, p0, Lcom/android/incallui/CallCardFragment;->mNeedShowIncomingCall2Animator:Z

    if-eqz v2, :cond_2

    .line 1084
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->displaySecondaryIncomingAnimator()V

    .line 1087
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2Info:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1088
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2Info:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1089
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    invoke-static {v2}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 1092
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPhotoIncomingPre:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 1093
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPhotoIncomingPre:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1094
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPhotoIncomingPre:Landroid/widget/ImageView;

    invoke-direct {p0, v2, p5}, Lcom/android/incallui/CallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1097
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->m2ndIncomingName:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    const/4 v1, 0x0

    .line 1099
    .local v1, "nameDirection":I
    if-eqz p3, :cond_5

    .line 1100
    const/4 v1, 0x3

    .line 1102
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->m2ndIncomingName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 1103
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->m2ndIncomingName:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1105
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->m2ndIncomingState:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1106
    const-string v0, ""

    .line 1110
    .local v0, "callState":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0292

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1112
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->m2ndIncomingState:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    .end local v0    # "callState":Ljava/lang/String;
    .end local v1    # "nameDirection":I
    :cond_6
    :goto_0
    return-void

    .line 1114
    :cond_7
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1115
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 1117
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    invoke-static {v2, v4}, Lcom/android/incallui/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setSimIndicator(II)V
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "callType"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 726
    iput p1, p0, Lcom/android/incallui/CallCardFragment;->mSlotId:I

    .line 727
    iput p2, p0, Lcom/android/incallui/CallCardFragment;->mCallType:I

    .line 728
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 729
    .local v0, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 730
    const-string v1, "setSimIndicator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " color:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " operator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eq v6, p2, :cond_1

    .line 736
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 745
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/incallui/CallCardFragment;->updateCallBannerBackground(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Landroid/view/ViewGroup;I)V

    .line 746
    return-void

    .line 738
    :cond_1
    if-ne v6, p2, :cond_2

    .line 739
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    const v2, 0x7f0a02b6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 740
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 742
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method showAndInitializeSecondaryHoldCallInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1041
    const-string v0, "showAndInitializeSecondaryHoldCallInfo"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 1044
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    .line 1046
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1047
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoHoldPre:Landroid/widget/ImageView;

    .line 1048
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldName:Landroid/widget/TextView;

    .line 1049
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldState:Landroid/widget/TextView;

    .line 1050
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondHoldCallBanner:Landroid/view/ViewGroup;

    .line 1051
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    .line 1053
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1054
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 1055
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->callCardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1058
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1063
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1064
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldState:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1065
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoHoldPre:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1066
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-static {v0}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 1067
    return-void

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateCallCard()V
    .locals 2

    .prologue
    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateSimIndicator]mSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mCallType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1315
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mSlotId:I

    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mCallType:I

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/CallCardFragment;->setSimIndicator(II)V

    .line 1316
    return-void
.end method

.method public updateCallInfoLayout(Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    .line 933
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 934
    .local v0, "newState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/incallui/CallCardFragment$6;->$SwitchMap$com$android$incallui$InCallPresenter$InCallState:[I

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 949
    :goto_0
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/ext/ExtensionManager;->getCallCardExtension()Lcom/mediatek/incallui/ext/CallCardExtension;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/incallui/ext/CallCardExtension;->updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 961
    :cond_0
    return-void

    .line 937
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 938
    goto :goto_0

    .line 940
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 941
    goto :goto_0

    .line 943
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 944
    goto :goto_0

    .line 934
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateSecondaryCallBannerBackground(II)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "callType"    # I

    .prologue
    .line 857
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 858
    .local v0, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 859
    const-string v1, "setSimIndicator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " color:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " operator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/incallui/CallCardFragment;->updateCallBannerBackground(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Landroid/view/ViewGroup;I)V

    .line 864
    return-void
.end method

.method public updateSecondaryHoldCallBannerBackground(II)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "callType"    # I

    .prologue
    const/4 v5, 0x0

    .line 1026
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 1027
    .local v0, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 1028
    const-string v1, "setSimIndicator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " color:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " operator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 1033
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondHoldCallBanner:Landroid/view/ViewGroup;

    const v2, 0x7f0201cc

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1037
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondHoldCallBanner:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/incallui/CallCardFragment;->mCallBannerSidePadding:I

    iget v3, p0, Lcom/android/incallui/CallCardFragment;->mCallBannerSidePadding:I

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1038
    return-void

    .line 1034
    :cond_2
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    if-ltz v1, :cond_1

    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSimColorMap:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1035
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondHoldCallBanner:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSimColorMap:[I

    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public updateSecondaryIncomingCallBannerBackground(II)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "callType"    # I

    .prologue
    .line 1124
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 1125
    .local v0, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSimColorMap:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1126
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1127
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSimColorMap:[I

    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1135
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1136
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1138
    :cond_1
    return-void

    .line 1129
    :cond_2
    if-nez v0, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 1130
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    const v2, 0x7f0201cc

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public updateVoiceRecordIcon(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 896
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mVoiceRecorderIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 897
    return-void

    .line 896
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
