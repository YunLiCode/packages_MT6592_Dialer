.class Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen$1;
.super Ljava/lang/Object;
.source "VoLteConfAddMemberScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;


# direct methods
.method constructor <init>(Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen$1;->this$0:Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen$1;->this$0:Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;

    # invokes: Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->chooseFromContacts()V
    invoke-static {v0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->access$000(Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;)V

    .line 85
    return-void
.end method