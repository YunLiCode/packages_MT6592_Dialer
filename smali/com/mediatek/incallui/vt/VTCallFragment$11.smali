.class Lcom/mediatek/incallui/vt/VTCallFragment$11;
.super Ljava/lang/Object;
.source "VTCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/incallui/vt/VTCallFragment;->showReCallDialogEx(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/incallui/vt/VTCallFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0

    .prologue
    .line 838
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$11;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 843
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$11;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showReCallDialogEx... , on click, which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$300(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$11;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$800(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$11;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$800(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 848
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$11;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$802(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 852
    :cond_0
    return-void
.end method
