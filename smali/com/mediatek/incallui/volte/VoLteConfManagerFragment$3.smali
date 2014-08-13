.class Lcom/mediatek/incallui/volte/VoLteConfManagerFragment$3;
.super Ljava/lang/Object;
.source "VoLteConfManagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->setupRemoveButtonForRow(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;

.field final synthetic val$rowId:I


# direct methods
.method constructor <init>(Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;I)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment$3;->this$0:Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;

    iput p2, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment$3;->val$rowId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment$3;->this$0:Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;

    invoke-virtual {v0}, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;

    iget v1, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment$3;->val$rowId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/volte/VoLteConfManagerPresenter;->endConferenceConnection(I)V

    .line 177
    return-void
.end method
