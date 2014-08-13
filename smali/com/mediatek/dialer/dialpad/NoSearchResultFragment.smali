.class public Lcom/mediatek/dialer/dialpad/NoSearchResultFragment;
.super Landroid/app/Fragment;
.source "NoSearchResultFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 27
    invoke-virtual {p0}, Lcom/mediatek/dialer/dialpad/NoSearchResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 28
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/dialer/dialpad/NoSearchResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 29
    .local v1, "v":Landroid/widget/TextView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 32
    const/4 v2, 0x0

    const v3, 0x7f0800bf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 33
    const v2, 0x7f0a0557

    invoke-virtual {p0, v2}, Lcom/mediatek/dialer/dialpad/NoSearchResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-object v1
.end method
