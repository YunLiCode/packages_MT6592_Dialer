.class public final enum Lcom/mediatek/incallui/vt/VTManagerLocal$State;
.super Ljava/lang/Enum;
.source "VTManagerLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/incallui/vt/VTManagerLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/incallui/vt/VTManagerLocal$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/incallui/vt/VTManagerLocal$State;

.field public static final enum CLOSE:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

.field public static final enum CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

.field public static final enum OPEN:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

.field public static final enum READY:Lcom/mediatek/incallui/vt/VTManagerLocal$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/incallui/vt/VTManagerLocal$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CLOSE:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    new-instance v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/incallui/vt/VTManagerLocal$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->OPEN:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    new-instance v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/incallui/vt/VTManagerLocal$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->READY:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    new-instance v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/incallui/vt/VTManagerLocal$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CLOSE:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->OPEN:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->READY:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->$VALUES:[Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/incallui/vt/VTManagerLocal$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/incallui/vt/VTManagerLocal$State;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->$VALUES:[Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    invoke-virtual {v0}, [Lcom/mediatek/incallui/vt/VTManagerLocal$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    return-object v0
.end method
