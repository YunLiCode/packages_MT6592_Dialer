.class Lcom/android/ex/chips/MTKContactObserver$3;
.super Landroid/database/ContentObserver;
.source "MTKContactObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKContactObserver;->initState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKContactObserver;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKContactObserver;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/ex/chips/MTKContactObserver$3;->this$0:Lcom/android/ex/chips/MTKContactObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 179
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 180
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver$3;->this$0:Lcom/android/ex/chips/MTKContactObserver;

    # invokes: Lcom/android/ex/chips/MTKContactObserver;->contactChange(ZLandroid/net/Uri;)V
    invoke-static {v0, p1, p2}, Lcom/android/ex/chips/MTKContactObserver;->access$100(Lcom/android/ex/chips/MTKContactObserver;ZLandroid/net/Uri;)V

    .line 181
    return-void
.end method
