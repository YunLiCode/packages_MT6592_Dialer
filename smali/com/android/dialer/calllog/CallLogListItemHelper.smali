.class Lcom/android/dialer/calllog/CallLogListItemHelper;
.super Ljava/lang/Object;
.source "CallLogListItemHelper.java"


# instance fields
.field private final mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

.field private final mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/android/dialer/PhoneCallDetailsHelper;Lcom/android/dialer/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "phoneCallDetailsHelper"    # Lcom/android/dialer/PhoneCallDetailsHelper;
    .param p2, "phoneNumberHelper"    # Lcom/android/dialer/calllog/PhoneNumberHelper;
    .param p3, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

    .line 48
    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    .line 49
    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    .line 50
    return-void
.end method

.method private configureCallSecondaryAction(Lcom/android/dialer/calllog/CallLogListItemViews;Lcom/android/dialer/PhoneCallDetails;)V
    .locals 2
    .param p1, "views"    # Lcom/android/dialer/calllog/CallLogListItemViews;
    .param p2, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 82
    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/android/dialer/calllog/CallLogListItemHelper;->getCallActionDescription(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method private configurePlaySecondaryAction(Lcom/android/dialer/calllog/CallLogListItemViews;Z)V
    .locals 3
    .param p1, "views"    # Lcom/android/dialer/calllog/CallLogListItemViews;
    .param p2, "isHighlighted"    # Z

    .prologue
    .line 101
    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const v0, 0x7f0200e7

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a059a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    return-void

    .line 102
    :cond_0
    const v0, 0x7f0200e9

    goto :goto_0
.end method

.method private getCallActionDescription(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 90
    iget-object v1, p1, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v0, p1, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 96
    .local v0, "recipient":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a05a1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 93
    .end local v0    # "recipient":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget v3, p1, Lcom/android/dialer/PhoneCallDetails;->numberPresentation:I

    iget-object v4, p1, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "recipient":Ljava/lang/CharSequence;
    goto :goto_0
.end method


# virtual methods
.method public setPhoneCallDetails(Lcom/android/dialer/calllog/CallLogListItemViews;Lcom/android/dialer/PhoneCallDetails;ZZ)V
    .locals 4
    .param p1, "views"    # Lcom/android/dialer/calllog/CallLogListItemViews;
    .param p2, "details"    # Lcom/android/dialer/PhoneCallDetails;
    .param p3, "isHighlighted"    # Z
    .param p4, "useCallAsPrimaryAction"    # Z

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

    iget-object v3, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/android/dialer/PhoneCallDetailsViews;

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/dialer/PhoneCallDetailsHelper;->setPhoneCallDetails(Lcom/android/dialer/PhoneCallDetailsViews;Lcom/android/dialer/PhoneCallDetails;Z)V

    .line 63
    iget-object v2, p2, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget v3, p2, Lcom/android/dialer/PhoneCallDetails;->numberPresentation:I

    invoke-static {v2, v3}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 65
    .local v0, "canCall":Z
    iget-object v2, p2, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    aget v2, v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 67
    .local v1, "canPlay":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 69
    invoke-direct {p0, p1, p3}, Lcom/android/dialer/calllog/CallLogListItemHelper;->configurePlaySecondaryAction(Lcom/android/dialer/calllog/CallLogListItemViews;Z)V

    .line 77
    :goto_0
    return-void

    .line 70
    :cond_1
    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogListItemHelper;->configureCallSecondaryAction(Lcom/android/dialer/calllog/CallLogListItemViews;Lcom/android/dialer/PhoneCallDetails;)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v2, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
