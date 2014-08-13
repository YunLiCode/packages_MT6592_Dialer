.class Lcom/android/dialer/DialtactsActivity$OverflowPopupMenu;
.super Landroid/widget/PopupMenu;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowPopupMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/DialtactsActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "anchor"    # Landroid/view/View;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$OverflowPopupMenu;->this$0:Lcom/android/dialer/DialtactsActivity;

    .line 223
    invoke-direct {p0, p2, p3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 224
    return-void
.end method


# virtual methods
.method public show()V
    .locals 5

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity$OverflowPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 229
    .local v1, "menu":Landroid/view/Menu;
    const v2, 0x7f0d01c2

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 230
    .local v0, "clearFrequents":Landroid/view/MenuItem;
    const-string v2, "DialtactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearFrequents: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$OverflowPopupMenu;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;
    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->access$000(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dialer/list/PhoneFavoriteFragment;->hasFrequents()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$OverflowPopupMenu;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;
    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->access$000(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/list/PhoneFavoriteFragment;->hasFrequents()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 233
    invoke-super {p0}, Landroid/widget/PopupMenu;->show()V

    .line 234
    return-void
.end method
