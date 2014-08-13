.class public Lcom/mediatek/incallui/volte/ConferenceMemberAdatper;
.super Lcom/android/ex/chips/BaseRecipientAdapter;
.source "ConferenceMemberAdatper.java"


# static fields
.field private static final DEFAULT_PREFERRED_MAX_RESULT_COUNT:I = 0xa


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 14
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;II)V

    .line 15
    invoke-virtual {p0, v1}, Lcom/mediatek/incallui/volte/ConferenceMemberAdatper;->setShowDuplicateResults(Z)V

    .line 16
    return-void
.end method


# virtual methods
.method protected getItemLayout()I
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f04005b

    return v0
.end method

.method public setShowEmailAddress(Z)V
    .locals 0
    .param p1, "showEmailAddress"    # Z

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;->setShowPhoneAndEmail(Z)V

    .line 32
    return-void
.end method
