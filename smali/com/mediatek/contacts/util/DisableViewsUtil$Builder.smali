.class public Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;
.super Ljava/lang/Object;
.source "DisableViewsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/util/DisableViewsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;->mViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :goto_0
    return-object p0

    .line 104
    :cond_0
    const-string v0, "DisableViewsUtil"

    const-string v1, "[addView]view is null, abort adding."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addViews(Ljava/util/List;)Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    return-object p0
.end method

.method public build()Lcom/mediatek/contacts/util/DisableViewsUtil;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/mediatek/contacts/util/DisableViewsUtil;

    iget-object v1, p0, Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;->mViews:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/contacts/util/DisableViewsUtil;-><init>(Ljava/util/List;Lcom/mediatek/contacts/util/DisableViewsUtil$1;)V

    return-object v0
.end method
