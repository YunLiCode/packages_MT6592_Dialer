.class public Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;
.super Lcom/android/incallui/BaseFragment;
.source "VoLteConfManagerFragment.java"

# interfaces
.implements Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;",
        "Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;",
        ">;",
        "Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;"
    }
.end annotation


# instance fields
.field private mButtonManageConferenceDone:Landroid/view/View;

.field private mConferenceCallList:[Landroid/view/ViewGroup;

.field private mConferenceTime:Landroid/widget/Chronometer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->createPresenter()Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;

    invoke-direct {v0}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;-><init>()V

    return-object v0
.end method

.method public final displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "rowId"    # I
    .param p2, "callerName"    # Ljava/lang/String;
    .param p3, "callerNumber"    # Ljava/lang/String;
    .param p4, "callerNumberType"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 146
    iget-object v3, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v3, v3, p1

    const v4, 0x7f0d00a4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    .local v0, "nameTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v3, v3, p1

    const v4, 0x7f0d00a5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 150
    .local v1, "numberTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v3, v3, p1

    const v4, 0x7f0d00a6

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 154
    .local v2, "numberTypeTextView":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->getUi()Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter$ConferenceManagerUi;
    .locals 0

    .prologue
    .line 58
    return-object p0
.end method

.method public isFragmentVisible()Z
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method public notifyMemberChange(ILjava/lang/String;)V
    .locals 1
    .param p1, "notifyType"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/mediatek/incallui/volte/VoLteConfUiController$MemberChangeNotifier;->notifyMemberChange(Landroid/app/Activity;ILjava/lang/String;)V

    .line 220
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    const v3, 0x7f04005d

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, "parent":Landroid/view/View;
    new-instance v3, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment$1;

    invoke-direct {v3, p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment$1;-><init>(Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    const v3, 0x7f0d00a9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Chronometer;

    iput-object v3, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    .line 84
    iget-object v3, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a028a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;

    invoke-virtual {v3}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->getMaxCallersInConference()I

    move-result v3

    new-array v3, v3, [Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    .line 89
    const/4 v3, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 91
    .local v2, "viewGroupIdList":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;

    invoke-virtual {v3}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->getMaxCallersInConference()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 92
    iget-object v4, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget v3, v2, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    const v3, 0x7f0d00ac

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mButtonManageConferenceDone:Landroid/view/View;

    .line 97
    iget-object v3, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mButtonManageConferenceDone:Landroid/view/View;

    new-instance v4, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment$2;

    invoke-direct {v4, p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment$2;-><init>(Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-object v1

    .line 89
    nop

    :array_0
    .array-data 4
        0x7f0d00ae
        0x7f0d00af
        0x7f0d00b0
        0x7f0d00b1
        0x7f0d00b2
    .end array-data
.end method

.method public setRowVisible(IZ)V
    .locals 2
    .param p1, "rowId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 131
    if-eqz p2, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setStatusForRow(IZ)V
    .locals 3
    .param p1, "rowId"    # I
    .param p2, "isOnLine"    # Z

    .prologue
    .line 186
    iget-object v1, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v2, 0x7f0d0165

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 189
    .local v0, "statusIcon":Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    .line 190
    const v1, 0x7f0201c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    const v1, 0x7f0201c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 116
    .local v0, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;

    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->init(Landroid/content/Context;Lcom/android/incallui/CallList;)V

    .line 117
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .end local v0    # "calls":Lcom/android/incallui/CallList;
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setupRemoveButtonForRow(IZ)V
    .locals 3
    .param p1, "rowId"    # I
    .param p2, "canRemove"    # Z

    .prologue
    .line 170
    iget-object v1, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v2, 0x7f0d00a7

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, "removeButton":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 172
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    new-instance v1, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment$3;-><init>(Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public startConferenceTime(J)V
    .locals 1
    .param p1, "base"    # J

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 203
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 205
    :cond_0
    return-void
.end method

.method public stopConferenceTime()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 215
    :cond_0
    return-void
.end method
