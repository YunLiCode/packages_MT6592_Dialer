.class public Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "CallLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/calllog/CallLogActivity;Landroid/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    .line 57
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No fragment at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    new-instance v1, Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(I)V

    # setter for: Lcom/android/dialer/calllog/CallLogActivity;->mAllCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;
    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogActivity;->access$002(Lcom/android/dialer/calllog/CallLogActivity;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;

    .line 65
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    # getter for: Lcom/android/dialer/calllog/CallLogActivity;->mAllCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogActivity;->access$000(Lcom/android/dialer/calllog/CallLogActivity;)Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 67
    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    new-instance v1, Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(I)V

    # setter for: Lcom/android/dialer/calllog/CallLogActivity;->mMissedCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;
    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogActivity;->access$102(Lcom/android/dialer/calllog/CallLogActivity;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;

    .line 68
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    # getter for: Lcom/android/dialer/calllog/CallLogActivity;->mMissedCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogActivity;->access$100(Lcom/android/dialer/calllog/CallLogActivity;)Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
