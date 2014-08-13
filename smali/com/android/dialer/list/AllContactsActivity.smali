.class public Lcom/android/dialer/list/AllContactsActivity;
.super Lcom/android/contacts/common/activity/TransactionSafeActivity;
.source "AllContactsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllContactsFragment:Lcom/android/dialer/list/AllContactsFragment;

.field private final mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/dialer/list/AllContactsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/AllContactsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;-><init>()V

    .line 42
    new-instance v0, Lcom/android/dialer/list/AllContactsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/AllContactsActivity$1;-><init>(Lcom/android/dialer/list/AllContactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/list/AllContactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/dialer/list/AllContactsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 92
    instance-of v0, p1, Lcom/android/dialer/list/AllContactsFragment;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Lcom/android/dialer/list/AllContactsFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/dialer/list/AllContactsActivity;->mAllContactsFragment:Lcom/android/dialer/list/AllContactsFragment;

    .line 94
    iget-object v0, p0, Lcom/android/dialer/list/AllContactsActivity;->mAllContactsFragment:Lcom/android/dialer/list/AllContactsFragment;

    iget-object v1, p0, Lcom/android/dialer/list/AllContactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/AllContactsFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;)V

    .line 97
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 77
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {p0}, Lcom/mediatek/dialer/util/SmartBookUtils;->setOrientationPortait(Landroid/app/Activity;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 82
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 83
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 84
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 85
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 87
    const v1, 0x7f040003

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/AllContactsActivity;->setContentView(I)V

    .line 88
    return-void
.end method
