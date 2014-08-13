.class Lcom/mediatek/incallui/vt/VTCallFragment$13;
.super Ljava/lang/Object;
.source "VTCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/incallui/vt/VTCallFragment;->onVTShowSettingClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final DIALOG_ITEM_FOUR:I = 0x4

.field private static final DIALOG_ITEM_THREE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/mediatek/incallui/vt/VTCallFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v2, 0x7f0a0053

    .line 1075
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$1000(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$1000(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1077
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$1002(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1079
    :cond_0
    if-nez p2, :cond_2

    .line 1081
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const-string v1, "onVTInCallVideoSetting() : select - 0 "

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$300(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 1083
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecZoom()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncZoom()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1085
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$1100(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 1125
    :goto_0
    return-void

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->showVTLocalZoom()V
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$1200(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    goto :goto_0

    .line 1089
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p2, :cond_4

    .line 1091
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const-string v1, "onVTInCallVideoSetting() : select - 1 "

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$300(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 1093
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecBrightness()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncBrightness()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1095
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$1100(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 1097
    :cond_3
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->showVTLocalBrightness()V
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$1300(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    goto :goto_0

    .line 1099
    :cond_4
    const/4 v0, 0x2

    if-ne v0, p2, :cond_6

    .line 1101
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const-string v1, "onVTInCallVideoSetting() : select - 2 "

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$300(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 1103
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecContrast()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncContrast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1105
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$1100(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 1107
    :cond_5
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->showVTLocalContrast()V
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$1400(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    goto :goto_0

    .line 1109
    :cond_6
    const/4 v0, 0x3

    if-ne v0, p2, :cond_7

    .line 1111
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const-string v1, "onVTInCallVideoSetting() : select - 3 "

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$300(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->onVTInCallVideoSettingLocalEffect()V
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$1500(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    goto :goto_0

    .line 1114
    :cond_7
    const/4 v0, 0x4

    if-ne v0, p2, :cond_8

    .line 1116
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const-string v1, "onVTInCallVideoSetting() : select - 4 "

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$300(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 1118
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->onVTInCallVideoSettingLocalNightMode()V
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$1600(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    goto/16 :goto_0

    .line 1121
    :cond_8
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const-string v1, "onVTInCallVideoSetting() : select - 5 "

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$300(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$13;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->onVTInCallVideoSettingPeerQuality()V
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$1700(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    goto/16 :goto_0
.end method
