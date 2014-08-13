.class Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SimPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/widget/SimPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mDisplayName:Landroid/widget/TextView;

.field mInternetIcon:Landroid/widget/ImageView;

.field mPhoneNumber:Landroid/widget/TextView;

.field mRadioButton:Landroid/widget/RadioButton;

.field mShortPhoneNumber:Landroid/widget/TextView;

.field mSimIcon:Landroid/view/View;

.field mSimSignal:Landroid/widget/TextView;

.field mSimStatus:Landroid/widget/ImageView;

.field mSuggested:Landroid/widget/ImageView;

.field mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mediatek/dialer/widget/SimPickerAdapter;


# direct methods
.method private constructor <init>(Lcom/mediatek/dialer/widget/SimPickerAdapter;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;->this$0:Lcom/mediatek/dialer/widget/SimPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/dialer/widget/SimPickerAdapter;Lcom/mediatek/dialer/widget/SimPickerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/dialer/widget/SimPickerAdapter;
    .param p2, "x1"    # Lcom/mediatek/dialer/widget/SimPickerAdapter$1;

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/widget/SimPickerAdapter$ViewHolder;-><init>(Lcom/mediatek/dialer/widget/SimPickerAdapter;)V

    return-void
.end method
