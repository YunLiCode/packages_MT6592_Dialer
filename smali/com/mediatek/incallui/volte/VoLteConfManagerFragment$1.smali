.class Lcom/mediatek/incallui/volte/VoLteConfManagerFragment$1;
.super Ljava/lang/Object;
.source "VoLteConfManagerFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 73
    iput-object p1, p0, Lcom/mediatek/incallui/volte/VoLteConfManagerFragment$1;->this$0:Lcom/mediatek/incallui/volte/VoLteConfManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method
