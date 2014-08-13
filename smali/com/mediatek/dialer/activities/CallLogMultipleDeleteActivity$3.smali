.class Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$3;
.super Ljava/lang/Object;
.source "CallLogMultipleDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->configureActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$3;->this$0:Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$3;->this$0:Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->setResult(I)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity$3;->this$0:Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;

    invoke-virtual {v0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->finish()V

    .line 156
    return-void
.end method
