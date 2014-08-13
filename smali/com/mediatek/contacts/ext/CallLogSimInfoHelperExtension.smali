.class public Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;
.super Ljava/lang/Object;
.source "CallLogSimInfoHelperExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSimBackgroundDarkResByColorId(I[I)Z
    .locals 1
    .param p1, "colorId"    # I
    .param p2, "simBackgroundDarkRes"    # [I

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getSimColorDrawableById(ILandroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "simId"    # I
    .param p2, "drawableSimColor"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getSimDisplayNameById(ILjava/lang/StringBuffer;)Z
    .locals 1
    .param p1, "simId"    # I
    .param p2, "callDisplayName"    # Ljava/lang/StringBuffer;

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method
