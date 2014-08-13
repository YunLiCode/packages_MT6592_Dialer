.class public Lcom/android/dialer/list/PhoneFavoriteSquareTileView;
.super Lcom/android/dialer/list/PhoneFavoriteTileView;
.source "PhoneFavoriteSquareTileView.java"


# static fields
.field private static final NAME_TOKEN_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSecondaryButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->TAG:Ljava/lang/String;

    .line 41
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->NAME_TOKEN_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/list/PhoneFavoriteTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/list/PhoneFavoriteSquareTileView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->launchQuickContact()V

    return-void
.end method

.method private launchQuickContact()V
    .locals 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method protected getApproximateImageSize()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    invoke-interface {v0}, Lcom/android/contacts/common/list/ContactTileView$Listener;->getApproximateTileWidth()I

    move-result v0

    return v0
.end method

.method protected getNameForView(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 68
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->NAME_TOKEN_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "tokens":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 70
    const/4 v1, 0x0

    aget-object p1, v0, v1

    goto :goto_0
.end method

.method public loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/contacts/common/list/ContactEntry;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/dialer/list/PhoneFavoriteTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V

    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-boolean v0, p1, Lcom/android/contacts/common/list/ContactEntry;->isFavorite:Z

    .line 78
    .local v0, "contactIsFavorite":Z
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->mSecondaryButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 80
    if-eqz v0, :cond_2

    .line 81
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->mStarView:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/dialer/list/PhoneFavoriteSquareTileView$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView$1;-><init>(Lcom/android/dialer/list/PhoneFavoriteSquareTileView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .end local v0    # "contactIsFavorite":Z
    :cond_0
    :goto_1
    return-void

    .line 78
    .restart local v0    # "contactIsFavorite":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->mSecondaryButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/dialer/list/PhoneFavoriteSquareTileView$2;

    invoke-direct {v2, p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView$2;-><init>(Lcom/android/dialer/list/PhoneFavoriteSquareTileView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->onFinishInflate()V

    .line 51
    const v0, 0x7f0d00ca

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->mSecondaryButton:Landroid/widget/ImageButton;

    .line 52
    return-void
.end method
