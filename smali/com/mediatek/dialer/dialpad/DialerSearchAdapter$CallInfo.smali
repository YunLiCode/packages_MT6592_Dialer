.class public Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;
.super Ljava/lang/Object;
.source "DialerSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallInfo"
.end annotation


# instance fields
.field public id:J

.field public number:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lcom/mediatek/dialer/dialpad/DialerSearchAdapter$CallInfo;->this$0:Lcom/mediatek/dialer/dialpad/DialerSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
