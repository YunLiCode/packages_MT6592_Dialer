.class public Lcom/mediatek/contacts/widget/ImportExportItem;
.super Landroid/widget/LinearLayout;
.source "ImportExportItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImportExportItem"


# instance fields
.field private mAccountUserName:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method


# virtual methods
.method public bindView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 62
    const v1, 0x7f0d00be

    invoke-virtual {p0, v1}, Lcom/mediatek/contacts/widget/ImportExportItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mAccountUserName:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0d00bc

    invoke-virtual {p0, v1}, Lcom/mediatek/contacts/widget/ImportExportItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mIcon:Landroid/widget/ImageView;

    .line 64
    const v1, 0x7f0d00bf

    invoke-virtual {p0, v1}, Lcom/mediatek/contacts/widget/ImportExportItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mRadioButton:Landroid/widget/RadioButton;

    .line 66
    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    .line 67
    iget-object v1, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mAccountUserName:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void

    .line 68
    :cond_0
    if-eqz p3, :cond_2

    .line 69
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "internal":Ljava/lang/String;
    const-string v1, "ImportExportItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[bindView]internal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f020143

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f020144

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 78
    .end local v0    # "internal":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f02022e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 54
    iget-object v0, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v0, "ImportExportItem"

    const-string v1, "radio-button cannot be activated because it is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
