.class final enum Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;
.super Ljava/lang/Enum;
.source "MTKRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PROCESSING_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

.field public static final enum COMMIT:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

.field public static final enum NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

.field public static final enum REMOVE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

.field public static final enum REMOVE_LAST:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

.field public static final enum REPLACE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

.field public static final enum REPLACE_LAST:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 249
    new-instance v0, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    new-instance v0, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    const-string v1, "COMMIT"

    invoke-direct {v0, v1, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->COMMIT:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    new-instance v0, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REMOVE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    new-instance v0, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    const-string v1, "REMOVE_LAST"

    invoke-direct {v0, v1, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REMOVE_LAST:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    new-instance v0, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    const-string v1, "REPLACE"

    invoke-direct {v0, v1, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REPLACE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    new-instance v0, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    const-string v1, "REPLACE_LAST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REPLACE_LAST:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    .line 248
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    sget-object v1, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->COMMIT:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REMOVE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REMOVE_LAST:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REPLACE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REPLACE_LAST:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->$VALUES:[Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

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
    .line 248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 248
    const-class v0, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->$VALUES:[Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    invoke-virtual {v0}, [Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    return-object v0
.end method
