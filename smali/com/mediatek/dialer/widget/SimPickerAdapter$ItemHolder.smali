.class public Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "SimPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/widget/SimPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolder"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "itemData"    # Ljava/lang/Object;
    .param p2, "itemType"    # I

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    .line 273
    iput p2, p0, Lcom/mediatek/dialer/widget/SimPickerAdapter$ItemHolder;->type:I

    .line 274
    return-void
.end method
