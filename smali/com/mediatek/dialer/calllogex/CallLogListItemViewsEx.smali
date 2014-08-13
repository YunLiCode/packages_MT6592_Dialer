.class public final Lcom/mediatek/dialer/calllogex/CallLogListItemViewsEx;
.super Ljava/lang/Object;
.source "CallLogListItemViewsEx.java"


# instance fields
.field public final listHeaderTextView:Landroid/widget/TextView;

.field public final phoneCallDetailsViews:Lcom/android/dialer/PhoneCallDetailsViews;

.field public final primaryActionView:Landroid/view/View;

.field public final quickContactView:Landroid/widget/QuickContactBadge;

.field public final secondaryActionView:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/widget/ImageView;Lcom/android/dialer/PhoneCallDetailsViews;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "quickContactView"    # Landroid/widget/QuickContactBadge;
    .param p2, "primaryActionView"    # Landroid/view/View;
    .param p3, "secondaryActionView"    # Landroid/widget/ImageView;
    .param p4, "phoneCallDetailsViews"    # Lcom/android/dialer/PhoneCallDetailsViews;
    .param p5, "listHeaderTextView"    # Landroid/widget/TextView;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogListItemViewsEx;->quickContactView:Landroid/widget/QuickContactBadge;

    .line 48
    iput-object p2, p0, Lcom/mediatek/dialer/calllogex/CallLogListItemViewsEx;->primaryActionView:Landroid/view/View;

    .line 49
    iput-object p3, p0, Lcom/mediatek/dialer/calllogex/CallLogListItemViewsEx;->secondaryActionView:Landroid/widget/ImageView;

    .line 50
    iput-object p4, p0, Lcom/mediatek/dialer/calllogex/CallLogListItemViewsEx;->phoneCallDetailsViews:Lcom/android/dialer/PhoneCallDetailsViews;

    .line 51
    iput-object p5, p0, Lcom/mediatek/dialer/calllogex/CallLogListItemViewsEx;->listHeaderTextView:Landroid/widget/TextView;

    .line 52
    return-void
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/mediatek/dialer/calllogex/CallLogListItemViewsEx;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/contacts/common/test/NeededForTesting;
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogListItemViewsEx;

    new-instance v1, Landroid/widget/QuickContactBadge;

    invoke-direct {v1, p0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/dialer/PhoneCallDetailsViews;->createForTest(Landroid/content/Context;)Lcom/android/dialer/PhoneCallDetailsViews;

    move-result-object v4

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/dialer/calllogex/CallLogListItemViewsEx;-><init>(Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/widget/ImageView;Lcom/android/dialer/PhoneCallDetailsViews;Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static fromView(Landroid/view/View;)Lcom/mediatek/dialer/calllogex/CallLogListItemViewsEx;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 55
    new-instance v0, Lcom/mediatek/dialer/calllogex/CallLogListItemViewsEx;

    const v1, 0x7f0d0093

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    const v2, 0x7f0d0091

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d0092

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/dialer/PhoneCallDetailsViews;->fromView(Landroid/view/View;)Lcom/android/dialer/PhoneCallDetailsViews;

    move-result-object v4

    const v5, 0x7f0d0099

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/dialer/calllogex/CallLogListItemViewsEx;-><init>(Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/widget/ImageView;Lcom/android/dialer/PhoneCallDetailsViews;Landroid/widget/TextView;)V

    return-object v0
.end method
