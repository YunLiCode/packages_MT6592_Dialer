.class Lcom/mediatek/contacts/ShareContactViaSMSActivity$1;
.super Ljava/lang/Object;
.source "ShareContactViaSMSActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/ShareContactViaSMSActivity;->shareViaSMS(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/ShareContactViaSMSActivity;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$1;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$1;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    invoke-virtual {v0}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$1;->this$0:Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    const v2, 0x7f0a0463

    invoke-virtual {v1, v2}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    return-void
.end method
