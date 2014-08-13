.class Lcom/mediatek/dialer/DialerSearchHelper$ContactsObserver;
.super Landroid/database/ContentObserver;
.source "DialerSearchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/DialerSearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/DialerSearchHelper;


# direct methods
.method public constructor <init>(Lcom/mediatek/dialer/DialerSearchHelper;)V
    .locals 1

    .prologue
    .line 361
    iput-object p1, p0, Lcom/mediatek/dialer/DialerSearchHelper$ContactsObserver;->this$0:Lcom/mediatek/dialer/DialerSearchHelper;

    .line 362
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 363
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 367
    const-string v0, "DialerSearchHelper"

    const-string v1, "database onChange~~"

    invoke-static {v0, v1}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper$ContactsObserver;->this$0:Lcom/mediatek/dialer/DialerSearchHelper;

    # getter for: Lcom/mediatek/dialer/DialerSearchHelper;->mHasOnGoingUpdateRequest:Z
    invoke-static {v0}, Lcom/mediatek/dialer/DialerSearchHelper;->access$000(Lcom/mediatek/dialer/DialerSearchHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper$ContactsObserver;->this$0:Lcom/mediatek/dialer/DialerSearchHelper;

    const/4 v1, 0x1

    # setter for: Lcom/mediatek/dialer/DialerSearchHelper;->mHasPendingUpdateRequest:Z
    invoke-static {v0, v1}, Lcom/mediatek/dialer/DialerSearchHelper;->access$102(Lcom/mediatek/dialer/DialerSearchHelper;Z)Z

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/DialerSearchHelper$ContactsObserver;->this$0:Lcom/mediatek/dialer/DialerSearchHelper;

    invoke-virtual {v0}, Lcom/mediatek/dialer/DialerSearchHelper;->dialerSearchUpdateAsync()V

    goto :goto_0
.end method
