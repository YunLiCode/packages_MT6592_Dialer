.class public final Lcom/android/dialer/PhoneCallDetailsViews;
.super Ljava/lang/Object;
.source "PhoneCallDetailsViews.java"


# instance fields
.field public final callTypeAndDate:Landroid/widget/TextView;

.field public final callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

.field public final callTypeView:Landroid/view/View;

.field public final labelView:Landroid/widget/TextView;

.field public final nameView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/dialer/calllog/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "nameView"    # Landroid/widget/TextView;
    .param p2, "callTypeView"    # Landroid/view/View;
    .param p3, "callTypeIcons"    # Lcom/android/dialer/calllog/CallTypeIconsView;
    .param p4, "callTypeAndDate"    # Landroid/widget/TextView;
    .param p5, "labelView"    # Landroid/widget/TextView;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    .line 38
    iput-object p2, p0, Lcom/android/dialer/PhoneCallDetailsViews;->callTypeView:Landroid/view/View;

    .line 39
    iput-object p3, p0, Lcom/android/dialer/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    .line 40
    iput-object p4, p0, Lcom/android/dialer/PhoneCallDetailsViews;->callTypeAndDate:Landroid/widget/TextView;

    .line 41
    iput-object p5, p0, Lcom/android/dialer/PhoneCallDetailsViews;->labelView:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/android/dialer/PhoneCallDetailsViews;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    new-instance v0, Lcom/android/dialer/PhoneCallDetailsViews;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallTypeIconsView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/dialer/calllog/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static fromView(Landroid/view/View;)Lcom/android/dialer/PhoneCallDetailsViews;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 52
    new-instance v0, Lcom/android/dialer/PhoneCallDetailsViews;

    const v1, 0x7f0d0094

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0096

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d0097

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/calllog/CallTypeIconsView;

    const v4, 0x7f0d0098

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d0095

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/dialer/calllog/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0
.end method
