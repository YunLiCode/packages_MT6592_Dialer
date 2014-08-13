.class public Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;
.super Landroid/widget/QuickContactBadge;
.source "QuickContactBadgeWithPhoneNumber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mIsSipNumber:Z

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    invoke-direct {v1, v0}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    invoke-direct {v1, v0}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    invoke-direct {v1, v0}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    .line 81
    invoke-virtual {p0, p0}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->mIsSipNumber:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 7
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->mContext:Landroid/content/Context;

    const v4, 0x7f0a045a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "message":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->mContext:Landroid/content/Context;

    const v4, 0x7f0a042a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "title":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber$1;

    invoke-direct {v5, p0, p1}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber$1;-><init>(Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 136
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 138
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public assignPhoneNumber(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isSipCallNumber"    # Z

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->mPhoneNumber:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->setEnabled(Z)V

    .line 96
    :goto_0
    iput-boolean p2, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->mIsSipNumber:Z

    .line 97
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->mPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->showDialog(Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/QuickContactBadge;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
