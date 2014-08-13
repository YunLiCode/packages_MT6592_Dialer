.class public final Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
.super Ljava/lang/Object;
.source "MTKContactObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKContactObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirtyContactEvent"
.end annotation


# static fields
.field public static final ADD:I = 0x2

.field public static final DELETE:I = 0x0

.field public static final UPDATE:I = 0x1

.field static final action:[Ljava/lang/String;


# instance fields
.field CID:J

.field _ID:J

.field delete:I

.field dirty:I

.field eventType:I

.field version:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "delete"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "update"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "add"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->action:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJIII)V
    .locals 4
    .param p1, "_id"    # J
    .param p3, "cid"    # J
    .param p5, "dt"    # I
    .param p6, "dl"    # I
    .param p7, "v"    # I

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-wide p1, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->_ID:J

    .line 112
    iput-wide p3, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->CID:J

    .line 113
    iput p5, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->dirty:I

    .line 114
    iput p6, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->delete:I

    .line 115
    iput p7, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->version:I

    .line 116
    if-ne p6, v1, :cond_1

    .line 117
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->eventType:I

    .line 119
    # getter for: Lcom/android/ex/chips/MTKContactObserver;->sPreDirtyContactMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/ex/chips/MTKContactObserver;->access$000()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->_ID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    # getter for: Lcom/android/ex/chips/MTKContactObserver;->sPreDirtyContactMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/ex/chips/MTKContactObserver;->access$000()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->_ID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;

    .line 121
    .local v0, "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    iget-wide v1, v0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->CID:J

    iput-wide v1, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->CID:J

    .line 130
    .end local v0    # "e":Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iput v1, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->eventType:I

    .line 125
    # getter for: Lcom/android/ex/chips/MTKContactObserver;->sPreDirtyContactMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/ex/chips/MTKContactObserver;->access$000()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->_ID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->eventType:I

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 145
    iget-wide v1, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->_ID:J

    long-to-int v1, v1

    shl-int/lit8 v1, v1, 0xc

    iget v2, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->version:I

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->dirty:I

    shl-int/lit8 v2, v2, 0xb

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->delete:I

    shl-int/lit8 v2, v2, 0xa

    or-int v0, v1, v2

    .line 146
    .local v0, "r":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->action:[Ljava/lang/String;

    iget v3, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->eventType:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->_ID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->CID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->dirty:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->delete:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "item":Ljava/lang/String;
    return-object v0
.end method

.method public update(IIII)V
    .locals 0
    .param p1, "et"    # I
    .param p2, "dt"    # I
    .param p3, "dl"    # I
    .param p4, "v"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->eventType:I

    .line 133
    iput p2, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->dirty:I

    .line 134
    iput p3, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->delete:I

    .line 135
    iput p4, p0, Lcom/android/ex/chips/MTKContactObserver$DirtyContactEvent;->version:I

    .line 136
    return-void
.end method
