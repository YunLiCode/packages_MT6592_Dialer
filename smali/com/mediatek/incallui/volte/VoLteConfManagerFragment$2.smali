.class Lcom/mediatek/incallui/volte/VoLteConfManagerFragment$2;
.super Ljava/lang/Object;
.source "VoLteConfManagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment$2;->this$0:Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment$2;->this$0:Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;

    invoke-virtual {v0}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;

    invoke-virtual {v0}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->manageConferenceDoneClicked()V

    .line 101
    return-void
.end method
