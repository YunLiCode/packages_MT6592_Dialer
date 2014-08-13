.class public Lcom/android/incallui/AnswerFragment;
.super Lcom/android/incallui/BaseFragment;
.source "AnswerFragment.java"

# interfaces
.implements Lcom/android/incallui/AnswerPresenter$AnswerUi;
.implements Lcom/android/incallui/GlowPadWrapper$AnswerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;,
        Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/AnswerPresenter;",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;",
        ">;",
        "Lcom/android/incallui/GlowPadWrapper$AnswerListener;",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;"
    }
.end annotation


# instance fields
.field private final MAX_MESSAGE_LEN:I

.field private mCannedResponsePopup:Landroid/app/Dialog;

.field private mCustomMessagePopup:Landroid/app/AlertDialog;

.field private mGlowpad:Lcom/android/incallui/GlowPadWrapper;

.field private mIncomingMenuButton:Landroid/widget/ImageButton;

.field private mIncomingPopupMenu:Landroid/widget/PopupMenu;

.field private mTextResponsesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    .line 65
    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    .line 67
    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    .line 564
    const/16 v0, 0x8c

    iput v0, p0, Lcom/android/incallui/AnswerFragment;->MAX_MESSAGE_LEN:I

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->onIncomingMenuButtonClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->dismissCannedResponsePopup()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/incallui/AnswerFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/incallui/AnswerFragment;)Lcom/android/incallui/GlowPadWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->dismissCustomMessagePopup()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/AnswerFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/incallui/AnswerFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/incallui/AnswerFragment;Landroid/view/MenuItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;
    .param p1, "x1"    # Landroid/view/MenuItem;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerFragment;->handleIncomingMenuItemClickMTK(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method private constructIncomingPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 441
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 442
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 443
    .local v0, "menu":Landroid/view/Menu;
    const v2, 0x7f110009

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 444
    new-instance v2, Lcom/android/incallui/AnswerFragment$8;

    invoke-direct {v2, p0}, Lcom/android/incallui/AnswerFragment$8;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 450
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mediatek/incallui/InCallUtils;->setAllMenuVisible(Landroid/view/Menu;Z)V

    .line 451
    invoke-virtual {p0, v0}, Lcom/android/incallui/AnswerFragment;->setupIncomingMenuItems(Landroid/view/Menu;)V

    .line 452
    return-object v1
.end method

.method private dismissCannedResponsePopup()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    .line 258
    :cond_0
    return-void
.end method

.method private dismissCustomMessagePopup()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    .line 268
    :cond_0
    return-void
.end method

.method private handleIncomingMenuItemClickMTK(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onMenuItemClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  title: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 484
    const-string v0, "if incoming call not exist any more, ignored~~"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x0

    .line 502
    :goto_0
    return v0

    .line 488
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 499
    const-string v1, "unhandled menu!!"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :sswitch_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallPresenter;->setInVoiceAnswerVideoCall(Z)V

    .line 491
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCommandClient;->acceptVtCallWithVoiceOnly()V

    goto :goto_0

    .line 495
    :sswitch_1
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCommandClient;->hangupActiveAndAnswerWaiting()V

    goto :goto_0

    .line 488
    :sswitch_data_0
    .sparse-switch
        0x7f0d01cd -> :sswitch_0
        0x7f0d01d9 -> :sswitch_1
    .end sparse-switch
.end method

.method private isCannedResponsePopupShowing()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCustomMessagePopupShowing()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onIncomingMenuButtonClick()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingMenuButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerFragment;->constructIncomingPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingPopupMenu:Landroid/widget/PopupMenu;

    .line 435
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 438
    :cond_1
    return-void
.end method


# virtual methods
.method public configureMessageDialog(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "textResponses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 375
    .local v0, "textResponsesForDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0351

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090003

    const v4, 0x1020014

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    .line 379
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/android/incallui/AnswerPresenter;

    invoke-direct {v0}, Lcom/android/incallui/AnswerPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->createPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public dismissPendingDialogues()V
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->isCannedResponsePopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->dismissCannedResponsePopup()V

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->isCustomMessagePopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->dismissCustomMessagePopup()V

    .line 278
    :cond_1
    return-void
.end method

.method public getUi()Lcom/android/incallui/AnswerPresenter$AnswerUi;
    .locals 0

    .prologue
    .line 83
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getUi()Lcom/android/incallui/AnswerPresenter$AnswerUi;

    move-result-object v0

    return-object v0
.end method

.method public hasPendingDialogs()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnswer()V
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onAnswer()V

    .line 384
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    const v1, 0x7f040004

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f0d0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/GlowPadWrapper;

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    .line 92
    const v1, 0x7f0d003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mTextView:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f0d0039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingMenuButton:Landroid/widget/ImageButton;

    .line 96
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingMenuButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/incallui/AnswerFragment$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/AnswerFragment$1;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const-string v1, "Creating view for answer fragment "

    invoke-static {p0, v1, p0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string v1, "Created from activity"

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v1, p0}, Lcom/android/incallui/GlowPadWrapper;->setAnswerListener(Lcom/android/incallui/GlowPadWrapper$AnswerListener;)V

    .line 107
    return-object v0
.end method

.method public onDecline()V
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    .line 389
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 112
    const-string v0, "onDestroyView"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/GlowPadWrapper;->stopPing()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    .line 117
    :cond_0
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 118
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerFragment;->handleIncomingMenuItemClickMTK(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onText()V
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onText()V

    .line 394
    return-void
.end method

.method public setupIncomingMenuItems(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 456
    const-string v2, "setupIncomingMenuItems()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    const v2, 0x7f0d01cd

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 458
    .local v1, "voiceAnswerMenu":Landroid/view/MenuItem;
    const v2, 0x7f0d01d9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 460
    .local v0, "hangupActiveAndAnswerWaitingMenu":Landroid/view/MenuItem;
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isDMLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->updateIncomingMenuState()V

    .line 464
    if-eqz v1, :cond_2

    .line 465
    sget-boolean v2, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanVTVoiceAnswer:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 468
    :cond_2
    if-eqz v0, :cond_0

    .line 469
    sget-boolean v2, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanHangupActiveAndAnswerWaiting:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public showAnswerUi(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/incallui/GlowPadWrapper;->setVisibility(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->isVTCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const v2, 0x7f02019b

    invoke-virtual {v0, v2}, Lcom/android/incallui/GlowPadWrapper;->setHandleDrawableImage(I)V

    .line 137
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->updateIncomingCallMenuButton()V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show answer UI: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    if-eqz p1, :cond_3

    .line 142
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/GlowPadWrapper;->startPing()V

    .line 153
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerFragment;->updatePromptsMessage(Z)V

    .line 155
    return-void

    .line 123
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->isUpdatingVoLteConfCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const v2, 0x7f0201c4

    invoke-virtual {v0, v2}, Lcom/android/incallui/GlowPadWrapper;->setHandleDrawableImage(I)V

    goto :goto_1

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const v2, 0x7f0200ac

    invoke-virtual {v0, v2}, Lcom/android/incallui/GlowPadWrapper;->setHandleDrawableImage(I)V

    goto :goto_1

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/GlowPadWrapper;->stopPing()V

    .line 149
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/incallui/GlowPadWrapper;->reset(Z)V

    goto :goto_2
.end method

.method public showCustomMessageDialog()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 289
    const-string v4, "showCustomMessageDialog~~"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 295
    .local v1, "et":Landroid/widget/EditText;
    new-array v3, v6, [Landroid/text/InputFilter;

    .line 296
    .local v3, "smsLengthFilter":[Landroid/text/InputFilter;
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x8c

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v7

    .line 297
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 300
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0353

    new-instance v6, Lcom/android/incallui/AnswerFragment$5;

    invoke-direct {v6, p0, v1}, Lcom/android/incallui/AnswerFragment$5;-><init>(Lcom/android/incallui/AnswerFragment;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0352

    new-instance v6, Lcom/android/incallui/AnswerFragment$4;

    invoke-direct {v6, p0}, Lcom/android/incallui/AnswerFragment$4;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0351

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 327
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    .line 330
    new-instance v4, Lcom/android/incallui/AnswerFragment$6;

    invoke-direct {v4, p0}, Lcom/android/incallui/AnswerFragment$6;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 348
    iget-object v4, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 353
    iget-object v4, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/incallui/AnswerFragment$7;

    invoke-direct {v5, p0}, Lcom/android/incallui/AnswerFragment$7;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 364
    iget-object v4, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 367
    iget-object v4, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 368
    .local v2, "sendButton":Landroid/widget/Button;
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 369
    return-void
.end method

.method public showMessageDialog()V
    .locals 4

    .prologue
    .line 186
    const-string v2, "showMessageDialog~~"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 189
    .local v1, "lv":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    new-instance v2, Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;

    invoke-direct {v2, p0}, Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 193
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 195
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/android/incallui/AnswerFragment$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/AnswerFragment$2;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    .line 213
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    new-instance v3, Lcom/android/incallui/AnswerFragment$3;

    invoke-direct {v3, p0}, Lcom/android/incallui/AnswerFragment$3;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 230
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 231
    return-void
.end method

.method public showTextButton(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 159
    if-eqz p1, :cond_1

    const v0, 0x7f0c0006

    .line 163
    .local v0, "targetResourceId":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v1}, Lcom/android/incallui/GlowPadWrapper;->getTargetResourceId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 164
    if-eqz p1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v1, v0}, Lcom/android/incallui/GlowPadWrapper;->setTargetResources(I)V

    .line 167
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Lcom/android/incallui/GlowPadWrapper;->setTargetDescriptionsResourceId(I)V

    .line 169
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Lcom/android/incallui/GlowPadWrapper;->setDirectionDescriptionsResourceId(I)V

    .line 180
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/GlowPadWrapper;->reset(Z)V

    .line 182
    :cond_0
    return-void

    .line 159
    .end local v0    # "targetResourceId":I
    :cond_1
    const v0, 0x7f0c0009

    goto :goto_0

    .line 173
    .restart local v0    # "targetResourceId":I
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v1, v0}, Lcom/android/incallui/GlowPadWrapper;->setTargetResources(I)V

    .line 174
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const v2, 0x7f0c000a

    invoke-virtual {v1, v2}, Lcom/android/incallui/GlowPadWrapper;->setTargetDescriptionsResourceId(I)V

    .line 176
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Lcom/android/incallui/GlowPadWrapper;->setDirectionDescriptionsResourceId(I)V

    goto :goto_1
.end method

.method public updateIncomingCallMenuButton()V
    .locals 2

    .prologue
    .line 516
    const-string v0, "updateIncomingCallMenuButton()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/GlowPadWrapper;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    const-string v0, "updateIncomingCallMenuButton()... mGlowpad is invisible, dismiss popup menu."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->updateIncomingMenuState()V

    .line 532
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/incallui/InCallUtils;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanVTVoiceAnswer:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanHangupActiveAndAnswerWaiting:Z

    if-eqz v0, :cond_3

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingMenuButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 536
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingMenuButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public updatePromptsMessage(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    .line 543
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 544
    :cond_0
    const-string v1, "updatePromptsMessage, incoming call is null or TextView is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    :cond_1
    :goto_0
    return-void

    .line 547
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/AnswerFragment;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    if-eqz p1, :cond_1

    .line 549
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getRejectCallNotifyMsg()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePromptsMessage, message = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 555
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 556
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0    # "message":Ljava/lang/String;
    :cond_3
    move v1, v2

    .line 547
    goto :goto_1

    .line 557
    .restart local v0    # "message":Ljava/lang/String;
    :cond_4
    if-nez v0, :cond_1

    .line 558
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
