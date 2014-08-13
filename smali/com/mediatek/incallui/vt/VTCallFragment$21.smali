.class Lcom/mediatek/incallui/vt/VTCallFragment$21;
.super Landroid/os/Handler;
.source "VTCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/incallui/vt/VTCallFragment;
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
    .line 1858
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$21;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1861
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1869
    :goto_0
    return-void

    .line 1863
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$21;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const-string v1, "DELAY_HIDE_VT_ICON_MESSAGE"

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$300(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 1864
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$21;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const/4 v1, 0x1

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->hideLocalZoomOrBrightness(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$2100(Lcom/mediatek/incallui/vt/VTCallFragment;Z)V

    goto :goto_0

    .line 1861
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
