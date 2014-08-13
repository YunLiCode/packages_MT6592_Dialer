.class public Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
.super Ljava/lang/Object;
.source "ContactDetailEnhancementExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;,
        Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;
    }
.end annotation


# static fields
.field protected static final ABOUT_PAGE:I = 0x0

.field protected static final HISTORY_PAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ContactDetailEnhancementExtension"

.field protected static final UPDATES_PAGE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method


# virtual methods
.method public addHistoryTransaction(Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;Ljava/lang/String;)V
    .locals 0
    .param p1, "mFragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "transaction"    # Landroid/app/FragmentTransaction;
    .param p3, "commond"    # Ljava/lang/String;

    .prologue
    .line 189
    return-void
.end method

.method public bindDetailEnhancementView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "firstActionViewContainer"    # Landroid/view/View;
    .param p4, "firstActionButtonView"    # Landroid/widget/ImageView;
    .param p5, "vewVtCallDivider"    # Landroid/view/View;
    .param p6, "btnVtCallAction"    # Landroid/widget/ImageView;
    .param p7, "vtcallActionViewContainer"    # Landroid/view/View;
    .param p8, "visibility"    # I
    .param p9, "secondaryActionDescription"    # Ljava/lang/String;
    .param p10, "mInsertedSimCount"    # I
    .param p11, "commond"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public bindDetailEnhancementViewForQuickContact(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;ILjava/lang/String;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "firstActionViewButton"    # Landroid/widget/ImageView;
    .param p4, "firstDivider"    # Landroid/view/View;
    .param p5, "btnVtCallAction"    # Landroid/widget/ImageView;
    .param p6, "mInsertedSimCount"    # I
    .param p7, "commond"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public childMeasureEx(ZLandroid/view/View;IIIILjava/lang/String;)V
    .locals 2
    .param p1, "mEnableSwipe"    # Z
    .param p2, "child"    # Landroid/view/View;
    .param p3, "mMinFragmentWidth"    # I
    .param p4, "visibleFragmentViewCount"    # I
    .param p5, "screenHeight"    # I
    .param p6, "screenWidth"    # I
    .param p7, "commond"    # Ljava/lang/String;

    .prologue
    const/high16 v1, 0x40000000

    .line 149
    if-eqz p1, :cond_0

    .line 150
    mul-int/lit8 v0, p3, 0x2

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 160
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {p6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public configActionBarExt(Landroid/app/ActionBar;Ljava/lang/String;)V
    .locals 0
    .param p1, "bar"    # Landroid/app/ActionBar;
    .param p2, "commond"    # Ljava/lang/String;

    .prologue
    .line 74
    return-void
.end method

.method public getCommond()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, ""

    return-object v0
.end method

.method public getCurrentPageIndexEx(Landroid/support/v4/view/ViewPager;ILjava/lang/String;)I
    .locals 1
    .param p1, "mViewPager"    # Landroid/support/v4/view/ViewPager;
    .param p2, "currentPage"    # I
    .param p3, "commond"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getDesiredPageHistoryEx(IIILjava/lang/String;)I
    .locals 1
    .param p1, "mLastScrollPosition"    # I
    .param p2, "mUpperThreshold"    # I
    .param p3, "updatePageIndex"    # I
    .param p4, "commond"    # Ljava/lang/String;

    .prologue
    .line 170
    const/4 v0, -0x1

    return v0
.end method

.method public getDesiredPageUpdatesEx(IIZLjava/lang/String;)I
    .locals 1
    .param p1, "mLastScrollPosition"    # I
    .param p2, "mUpperThreshold"    # I
    .param p3, "enableSwipe"    # Z
    .param p4, "commond"    # Ljava/lang/String;

    .prologue
    .line 165
    if-ge p1, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDetailUpdateIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "commond"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "simInfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .param p2, "commond"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnhancementAccountSimIndicator(IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "i"    # I
    .param p2, "slot"    # I
    .param p3, "commond"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnhancementPhotoId(IIILjava/lang/String;)J
    .locals 2
    .param p1, "isSdnContact"    # I
    .param p2, "colorId"    # I
    .param p3, "slot"    # I
    .param p4, "commond"    # Ljava/lang/String;

    .prologue
    .line 61
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getEnhancementPhotoUri(IIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "isSdnContact"    # I
    .param p2, "colorId"    # I
    .param p3, "slot"    # I
    .param p4, "commond"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, ""

    return-object v0
.end method

.method public getMaxFragmentViewCountEx(ILjava/lang/String;)I
    .locals 0
    .param p1, "maxFragmentViewCount"    # I
    .param p2, "commond"    # Ljava/lang/String;

    .prologue
    .line 111
    return p1
.end method

.method public getViewPagerViewEx(Landroid/support/v4/view/ViewPager;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "mViewPager"    # Landroid/support/v4/view/ViewPager;
    .param p2, "commond"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisibleFragmentViewCountEx(ZLjava/lang/String;)I
    .locals 1
    .param p1, "enableSwipe"    # Z
    .param p2, "commond"    # Ljava/lang/String;

    .prologue
    .line 115
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initActionBarExt(Landroid/app/ActionBar;ZLjava/lang/String;)V
    .locals 0
    .param p1, "bar"    # Landroid/app/ActionBar;
    .param p2, "withUpdatePage"    # Z
    .param p3, "commond"    # Ljava/lang/String;

    .prologue
    .line 78
    return-void
.end method

.method public initContactDetailHistoryFragment(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p1, "mFragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "commond"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public isUseOperation(Ljava/lang/String;)Z
    .locals 1
    .param p1, "commond"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public onFragmentPageChange(ILjava/lang/String;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "commond"    # Ljava/lang/String;

    .prologue
    .line 99
    return-void
.end method

.method public onMeasureEx(IIIFLjava/lang/String;)Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "fragmentViewCount"    # I
    .param p4, "fragmentWidthScreenWidthFraction"    # F
    .param p5, "commond"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;-><init>(Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;)V

    .line 136
    .local v0, "measureInfo":Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;
    int-to-float v1, p1

    mul-float/2addr v1, p4

    float-to-int v1, v1

    iput v1, v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mMinFragmentWidth:I

    .line 137
    iget v1, v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mMinFragmentWidth:I

    mul-int/2addr v1, p3

    sub-int/2addr v1, p1

    iput v1, v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mAllowedHorizontalScrollLength:I

    .line 139
    iget v1, v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mMinFragmentWidth:I

    sub-int v1, p1, v1

    div-int/2addr v1, p3

    iput v1, v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mLowerThreshold:I

    .line 141
    iget v1, v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mAllowedHorizontalScrollLength:I

    iget v2, v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mLowerThreshold:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mUpperThreshold:I

    .line 143
    return-object v0
.end method

.method public onScrollChangedEx(Ljava/lang/String;)Z
    .locals 1
    .param p1, "commond"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEx(Ljava/lang/String;)Z
    .locals 1
    .param p1, "commond"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public registeChangeDefaultSim(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Ljava/lang/String;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "commond"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerDetailUIController(Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;IILjava/lang/String;)V
    .locals 2
    .param p1, "detailUIController"    # Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;
    .param p2, "val"    # I
    .param p3, "mLayoutMode"    # I
    .param p4, "commond"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, "ContactDetailEnhancementExtension"

    const-string v1, "--registerDetailUIController"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public setPhoneNumbersToFragmentEx(Landroid/net/Uri;Ljava/util/List;JLjava/lang/String;)V
    .locals 0
    .param p1, "mContactUri"    # Landroid/net/Uri;
    .param p3, "contactId"    # J
    .param p5, "commond"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, "mPhoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setViewPagerCurrentItemEx(Landroid/support/v4/view/ViewPager;IZLjava/lang/String;)V
    .locals 1
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
    .param p2, "mCurrentPageIndex"    # I
    .param p3, "smoothScroll"    # Z
    .param p4, "commond"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, v0, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 108
    return-void
.end method
