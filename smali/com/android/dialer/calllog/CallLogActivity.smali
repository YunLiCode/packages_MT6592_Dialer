.class public Lcom/android/dialer/calllog/CallLogActivity;
.super Landroid/app/Activity;
.source "CallLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final TAB_INDEX_ALL:I = 0x0

.field private static final TAB_INDEX_COUNT:I = 0x2

.field private static final TAB_INDEX_MISSED:I = 0x1


# instance fields
.field private mAllCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;

.field private mMissedCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;

.field private final mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mTabListener:Landroid/app/ActionBar$TabListener;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    new-instance v0, Lcom/android/dialer/calllog/CallLogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogActivity$1;-><init>(Lcom/android/dialer/calllog/CallLogActivity;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 96
    new-instance v0, Lcom/android/dialer/calllog/CallLogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogActivity$2;-><init>(Lcom/android/dialer/calllog/CallLogActivity;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/calllog/CallLogActivity;)Lcom/android/dialer/calllog/CallLogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mAllCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/dialer/calllog/CallLogActivity;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogActivity;
    .param p1, "x1"    # Lcom/android/dialer/calllog/CallLogFragment;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mAllCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/dialer/calllog/CallLogActivity;)Lcom/android/dialer/calllog/CallLogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mMissedCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/dialer/calllog/CallLogActivity;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogActivity;
    .param p1, "x1"    # Lcom/android/dialer/calllog/CallLogFragment;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mMissedCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/dialer/calllog/CallLogActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v5, 0x7f04000b

    invoke-virtual {p0, v5}, Lcom/android/dialer/calllog/CallLogActivity;->setContentView(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 120
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 121
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 122
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 123
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 125
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 126
    .local v1, "allTab":Landroid/app/ActionBar$Tab;
    const v5, 0x7f0a05b0

    invoke-virtual {p0, v5}, Lcom/android/dialer/calllog/CallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "allTitle":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 128
    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 129
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v1, v5}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 130
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 132
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 133
    .local v3, "missedTab":Landroid/app/ActionBar$Tab;
    const v5, 0x7f0a05b1

    invoke-virtual {p0, v5}, Lcom/android/dialer/calllog/CallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "missedTitle":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 135
    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 136
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v3, v5}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 137
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 139
    const v5, 0x7f0d0067

    invoke-virtual {p0, v5}, Lcom/android/dialer/calllog/CallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 140
    new-instance v5, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;-><init>(Lcom/android/dialer/calllog/CallLogActivity;Landroid/app/FragmentManager;)V

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerAdapter:Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;

    .line 141
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerAdapter:Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 142
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogActivity;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 143
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v7}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 144
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 149
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f110002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 150
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 169
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/dialer/DialtactsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallLogActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 174
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/dialer/calllog/ClearCallLogDialog;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 167
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d01b7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 155
    const v2, 0x7f0d01b7

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 158
    .local v1, "itemDeleteAll":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogActivity;->mAllCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogActivity;->mAllCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/android/dialer/calllog/CallLogFragment;->getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    .line 160
    .local v0, "adapter":Lcom/android/dialer/calllog/CallLogAdapter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 162
    .end local v0    # "adapter":Lcom/android/dialer/calllog/CallLogAdapter;
    :cond_0
    return v3

    .line 160
    .restart local v0    # "adapter":Lcom/android/dialer/calllog/CallLogAdapter;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
