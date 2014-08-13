.class Lcom/mediatek/incallui/volte/AddMemberEditView$NumberValidator;
.super Ljava/lang/Object;
.source "AddMemberEditView.java"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/incallui/volte/AddMemberEditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/incallui/volte/AddMemberEditView;


# direct methods
.method private constructor <init>(Lcom/mediatek/incallui/volte/AddMemberEditView;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/mediatek/incallui/volte/AddMemberEditView$NumberValidator;->this$0:Lcom/mediatek/incallui/volte/AddMemberEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/incallui/volte/AddMemberEditView;Lcom/mediatek/incallui/volte/AddMemberEditView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/incallui/volte/AddMemberEditView;
    .param p2, "x1"    # Lcom/mediatek/incallui/volte/AddMemberEditView$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/mediatek/incallui/volte/AddMemberEditView$NumberValidator;-><init>(Lcom/mediatek/incallui/volte/AddMemberEditView;)V

    return-void
.end method


# virtual methods
.method public fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "invalidText"    # Ljava/lang/CharSequence;

    .prologue
    .line 21
    return-object p1
.end method

.method public isValid(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method
