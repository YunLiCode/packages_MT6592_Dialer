.class public Lcom/mediatek/incallui/volte/AddMemberEditView;
.super Lcom/android/ex/chips/MTKRecipientEditTextView;
.source "AddMemberEditView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/incallui/volte/AddMemberEditView$1;,
        Lcom/mediatek/incallui/volte/AddMemberEditView$NumberValidator;
    }
.end annotation


# static fields
.field private static final AUTO_SEARCH_THRESHOLD_LENGTH:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v0, Lcom/mediatek/incallui/volte/AddMemberEditView$NumberValidator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/incallui/volte/AddMemberEditView$NumberValidator;-><init>(Lcom/mediatek/incallui/volte/AddMemberEditView;Lcom/mediatek/incallui/volte/AddMemberEditView$1;)V

    invoke-super {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 15
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/incallui/volte/AddMemberEditView;->setThreshold(I)V

    .line 16
    return-void
.end method
