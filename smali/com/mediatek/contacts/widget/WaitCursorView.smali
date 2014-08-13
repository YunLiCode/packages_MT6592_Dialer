.class public Lcom/mediatek/contacts/widget/WaitCursorView;
.super Ljava/lang/Object;
.source "WaitCursorView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WaitCursorView"

.field private static final WAIT_CURSOR_DELAY_TIME:J = 0x1f4L

.field private static final WAIT_CURSOR_START:I = 0x4ce


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFinished:Z

.field private mHandler:Landroid/os/Handler;

.field private mLoadingContainer:Landroid/view/View;

.field private mLoadingText:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loadingContainer"    # Landroid/view/View;
    .param p3, "progress"    # Landroid/widget/ProgressBar;
    .param p4, "loadingText"    # Landroid/widget/TextView;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mFinished:Z

    .line 49
    new-instance v0, Lcom/mediatek/contacts/widget/WaitCursorView$1;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/widget/WaitCursorView$1;-><init>(Lcom/mediatek/contacts/widget/WaitCursorView;)V

    iput-object v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mHandler:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mLoadingContainer:Landroid/view/View;

    .line 30
    iput-object p3, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mProgress:Landroid/widget/ProgressBar;

    .line 31
    iput-object p4, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mLoadingText:Landroid/widget/TextView;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/widget/WaitCursorView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/contacts/widget/WaitCursorView;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mFinished:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/widget/WaitCursorView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/contacts/widget/WaitCursorView;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/widget/WaitCursorView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/contacts/widget/WaitCursorView;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mLoadingText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/contacts/widget/WaitCursorView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/contacts/widget/WaitCursorView;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public startWaitCursor()V
    .locals 4

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mFinished:Z

    .line 36
    iget-object v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4ce

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 38
    return-void
.end method

.method public stopWaitCursor()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mFinished:Z

    .line 42
    iget-object v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 44
    iget-object v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/mediatek/contacts/widget/WaitCursorView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 47
    return-void
.end method
