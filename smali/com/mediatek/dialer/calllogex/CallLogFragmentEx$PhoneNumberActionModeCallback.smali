.class Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$PhoneNumberActionModeCallback;
.super Ljava/lang/Object;
.source "CallLogFragmentEx.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneNumberActionModeCallback"
.end annotation


# instance fields
.field private final mOriginalViewBackground:Landroid/graphics/drawable/Drawable;

.field private final mTargetView:Landroid/view/View;

.field final synthetic this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;


# direct methods
.method public constructor <init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Landroid/view/View;)V
    .locals 3
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    .line 2093
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$PhoneNumberActionModeCallback;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2094
    iput-object p2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$PhoneNumberActionModeCallback;->mTargetView:Landroid/view/View;

    .line 2097
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$PhoneNumberActionModeCallback;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$PhoneNumberActionModeCallback;->mOriginalViewBackground:Landroid/graphics/drawable/Drawable;

    .line 2098
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$PhoneNumberActionModeCallback;->mTargetView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2099
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 2118
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2125
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2120
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$PhoneNumberActionModeCallback;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$PhoneNumberActionModeCallback;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3000(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$PhoneNumberActionModeCallback;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2900(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/android/contacts/common/ClipboardUtils;->copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 2122
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 2118
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01b0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$PhoneNumberActionModeCallback;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2900(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2104
    const/4 v0, 0x0

    .line 2108
    :goto_0
    return v0

    .line 2107
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$PhoneNumberActionModeCallback;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f110000

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2108
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$PhoneNumberActionModeCallback;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$4502(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 2133
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$PhoneNumberActionModeCallback;->mTargetView:Landroid/view/View;

    iget-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$PhoneNumberActionModeCallback;->mOriginalViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2134
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2113
    const/4 v0, 0x1

    return v0
.end method
