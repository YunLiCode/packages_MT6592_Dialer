.class Lcom/android/ex/chips/MTKContactObserver$1;
.super Ljava/lang/Object;
.source "MTKContactObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKContactObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKContactObserver;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKContactObserver;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/ex/chips/MTKContactObserver$1;->this$0:Lcom/android/ex/chips/MTKContactObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/ex/chips/MTKContactObserver$1;->this$0:Lcom/android/ex/chips/MTKContactObserver;

    invoke-virtual {v0}, Lcom/android/ex/chips/MTKContactObserver;->initState()V

    .line 62
    return-void
.end method
