.class public Lcom/android/dialer/list/PhoneFavoriteRegularRowView;
.super Lcom/android/dialer/list/PhoneFavoriteTileView;
.source "PhoneFavoriteRegularRowView.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/dialer/list/PhoneFavoriteRegularRowView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoriteRegularRowView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/list/PhoneFavoriteTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected getApproximateImageSize()I
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteRegularRowView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/ViewUtil;->getConstantPreLayoutWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->onFinishInflate()V

    .line 38
    const v7, 0x7f0d017b

    invoke-virtual {p0, v7}, Lcom/android/dialer/list/PhoneFavoriteRegularRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "favoriteContactCard":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteRegularRowView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 46
    .local v2, "resources":Landroid/content/res/Resources;
    const v7, 0x7f0800ca

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 48
    .local v5, "rowPaddingStart":I
    const v7, 0x7f0800cb

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 50
    .local v4, "rowPaddingEnd":I
    const v7, 0x7f0800c8

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 52
    .local v6, "rowPaddingTop":I
    const v7, 0x7f0800c9

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 55
    .local v3, "rowPaddingBottom":I
    const v7, 0x7f02002b

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 57
    invoke-virtual {v0, v5, v6, v4, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 60
    const v7, 0x7f0d00c0

    invoke-virtual {p0, v7}, Lcom/android/dialer/list/PhoneFavoriteRegularRowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "quickContactBadge":Landroid/view/View;
    new-instance v7, Lcom/android/dialer/list/PhoneFavoriteRegularRowView$1;

    invoke-direct {v7, p0}, Lcom/android/dialer/list/PhoneFavoriteRegularRowView$1;-><init>(Lcom/android/dialer/list/PhoneFavoriteRegularRowView;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 67
    return-void
.end method
