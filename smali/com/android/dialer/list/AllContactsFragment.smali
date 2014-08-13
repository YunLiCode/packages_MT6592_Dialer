.class public Lcom/android/dialer/list/AllContactsFragment;
.super Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
.source "AllContactsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    const v0, 0x7f04006d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/dialer/list/AllContactsFragment;->setQuickContactEnabled(Z)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/AllContactsFragment;->setDarkTheme(Z)V

    .line 47
    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/AllContactsFragment;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/dialer/list/AllContactsFragment;->setUseCallableUri(Z)V

    .line 49
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method
