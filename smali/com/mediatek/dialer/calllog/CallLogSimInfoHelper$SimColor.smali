.class Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;
.super Ljava/lang/Object;
.source "CallLogSimInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimColor"
.end annotation


# instance fields
.field mDrawableSimColor:Landroid/graphics/drawable/Drawable;

.field mInsertSimColor:I

.field final synthetic this$0:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;


# direct methods
.method private constructor <init>(Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;)V
    .locals 1

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;->this$0:Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;->mInsertSimColor:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;
    .param p2, "x1"    # Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$1;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper$SimColor;-><init>(Lcom/mediatek/dialer/calllog/CallLogSimInfoHelper;)V

    return-void
.end method
