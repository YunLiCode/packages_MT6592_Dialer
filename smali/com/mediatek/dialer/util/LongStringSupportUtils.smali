.class public Lcom/mediatek/dialer/util/LongStringSupportUtils;
.super Ljava/lang/Object;
.source "LongStringSupportUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LongStringSupportUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSupportSingleLineLongString(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x1

    .line 12
    if-nez p0, :cond_0

    .line 13
    const-string v0, "LongStringSupportUtils"

    const-string v1, "setSupportSingleLineLongString textView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :goto_0
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 18
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_0
.end method
