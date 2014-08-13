.class public Lcom/mediatek/contacts/util/DisableViewsUtil;
.super Landroid/os/Handler;
.source "DisableViewsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/util/DisableViewsUtil$1;,
        Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;
    }
.end annotation


# static fields
.field private static final ACTION_DISABLE:I = 0x0

.field private static final ACTION_ENABLE:I = 0x1

.field private static final DISABLE_DURATION:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "DisableViewsUtil"


# instance fields
.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    iput-object p1, p0, Lcom/mediatek/contacts/util/DisableViewsUtil;->mViews:Ljava/util/List;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/mediatek/contacts/util/DisableViewsUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lcom/mediatek/contacts/util/DisableViewsUtil$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/util/DisableViewsUtil;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private disableAll()V
    .locals 3

    .prologue
    .line 90
    iget-object v2, p0, Lcom/mediatek/contacts/util/DisableViewsUtil;->mViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 91
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 92
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 95
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private enableAll()V
    .locals 3

    .prologue
    .line 82
    iget-object v2, p0, Lcom/mediatek/contacts/util/DisableViewsUtil;->mViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 83
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 84
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 87
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public disableTemporarily()V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/contacts/util/DisableViewsUtil;->disableAll()V

    .line 62
    const/4 v0, 0x1

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/contacts/util/DisableViewsUtil;->sendEmptyMessageDelayed(IJ)Z

    .line 63
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    const-string v0, "DisableViewsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleMessage]msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    const-string v0, "DisableViewsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleMessage]not supported message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 70
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/contacts/util/DisableViewsUtil;->enableAll()V

    goto :goto_0

    .line 73
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/contacts/util/DisableViewsUtil;->disableAll()V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
