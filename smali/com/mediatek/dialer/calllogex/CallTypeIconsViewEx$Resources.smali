.class Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;
.super Ljava/lang/Object;
.source "CallTypeIconsViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resources"
.end annotation


# instance fields
.field public final autorejected:Landroid/graphics/drawable/Drawable;

.field public final iconMargin:I

.field public final incoming:Landroid/graphics/drawable/Drawable;

.field public final missed:Landroid/graphics/drawable/Drawable;

.field public final outgoing:Landroid/graphics/drawable/Drawable;

.field public final voicemail:Landroid/graphics/drawable/Drawable;

.field public final vtautorejected:Landroid/graphics/drawable/Drawable;

.field public final vtincoming:Landroid/graphics/drawable/Drawable;

.field public final vtmissed:Landroid/graphics/drawable/Drawable;

.field public final vtoutgoing:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 152
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    .line 153
    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    .line 154
    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->missed:Landroid/graphics/drawable/Drawable;

    .line 156
    const v1, 0x7f020152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->voicemail:Landroid/graphics/drawable/Drawable;

    .line 157
    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->iconMargin:I

    .line 159
    const v1, 0x7f0201bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->vtincoming:Landroid/graphics/drawable/Drawable;

    .line 160
    const v1, 0x7f0201be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->vtoutgoing:Landroid/graphics/drawable/Drawable;

    .line 161
    const v1, 0x7f0201bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->vtmissed:Landroid/graphics/drawable/Drawable;

    .line 162
    const v1, 0x7f020151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->autorejected:Landroid/graphics/drawable/Drawable;

    .line 163
    const v1, 0x7f0201bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/calllogex/CallTypeIconsViewEx$Resources;->vtautorejected:Landroid/graphics/drawable/Drawable;

    .line 165
    return-void
.end method
