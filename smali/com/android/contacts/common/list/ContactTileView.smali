.class public abstract Lcom/android/contacts/common/list/ContactTileView;
.super Landroid/widget/FrameLayout;
.source "ContactTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactTileView$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExtentionIcon:Landroid/widget/ImageView;

.field private mHorizontalDivider:Landroid/view/View;

.field protected mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private mLookupUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mPhoneLabel:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mPushState:Landroid/view/View;

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mStatus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/contacts/common/list/ContactTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactTileView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/ContactTileView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/ContactTileView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected createClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/android/contacts/common/list/ContactTileView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactTileView$1;-><init>(Lcom/android/contacts/common/list/ContactTileView;)V

    return-object v0
.end method

.method protected abstract getApproximateImageSize()I
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getNameForView(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 218
    return-object p1
.end method

.method protected getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method protected abstract isDarkTheme()Z
.end method

.method public loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V
    .locals 9
    .param p1, "entry"    # Lcom/android/contacts/common/list/ContactEntry;

    .prologue
    const/4 v8, -0x1

    const/16 v7, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 106
    if-eqz p1, :cond_c

    .line 107
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mName:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactTileView;->getNameForView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->lookupKey:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    .line 110
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->status:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 112
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->phoneLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 123
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/contacts/common/list/ContactTileView;->setVisibility(I)V

    .line 137
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    if-eqz v1, :cond_9

    .line 138
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    .line 142
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/android/contacts/common/list/ContactEntry;->photoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->isDarkTheme()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v8, v4}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    .line 145
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v1, :cond_3

    .line 146
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 160
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPushState:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 161
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPushState:Landroid/view/View;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 174
    :cond_4
    :goto_3
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/mediatek/contacts/ext/ContactDetailExtension;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/contacts/common/list/ContactEntry;->contact_id:J

    const-string v4, "ExtenstionForRCS"

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->canSetExtensionIcon(JLjava/lang/String;)Z

    move-result v0

    .line 176
    .local v0, "pulginStatus":Z
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mExtentionIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 177
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mExtentionIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/mediatek/contacts/ext/ContactDetailExtension;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mExtentionIcon:Landroid/widget/ImageView;

    iget-wide v3, p1, Lcom/android/contacts/common/list/ContactEntry;->contact_id:J

    const-string v5, "ExtenstionForRCS"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->setExtensionImageView(Landroid/widget/ImageView;JLjava/lang/String;)V

    .line 180
    if-eqz v0, :cond_b

    .line 181
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mExtentionIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    .end local v0    # "pulginStatus":Z
    :cond_5
    :goto_4
    return-void

    .line 114
    :cond_6
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->presenceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 125
    :cond_7
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->phoneLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 148
    :cond_8
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v1, :cond_3

    .line 149
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 153
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v3, p1, Lcom/android/contacts/common/list/ContactEntry;->photoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->isDarkTheme()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v8, v4}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    goto :goto_2

    .line 157
    :cond_9
    sget-object v1, Lcom/android/contacts/common/list/ContactTileView;->TAG:Ljava/lang/String;

    const-string v2, "contactPhotoManager not set"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 162
    :cond_a
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v1, :cond_4

    .line 163
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 183
    .restart local v0    # "pulginStatus":Z
    :cond_b
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mExtentionIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 193
    .end local v0    # "pulginStatus":Z
    :cond_c
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 61
    const v1, 0x7f0d00c2

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mName:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0d00c0

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 64
    const v1, 0x7f0d00c8

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    .line 65
    const v1, 0x7f0d00c3

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    .line 66
    const v1, 0x7f0d00c7

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f0d00c6

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f0d00c9

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPushState:Landroid/view/View;

    .line 69
    const v1, 0x7f0d00c4

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    .line 75
    const v1, 0x7f0d00c1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mExtentionIcon:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->createClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 81
    .local v0, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method public setHorizontalDividerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/contacts/common/list/ContactTileView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/common/list/ContactTileView$Listener;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    .line 199
    return-void
.end method

.method public setPhotoManager(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p1, "photoManager"    # Lcom/android/contacts/common/ContactPhotoManager;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 98
    return-void
.end method
