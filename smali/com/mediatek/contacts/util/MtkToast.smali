.class public final Lcom/mediatek/contacts/util/MtkToast;
.super Ljava/lang/Object;
.source "MtkToast.java"


# static fields
.field private static final DEFAULT_TOAST_STRING:Ljava/lang/String; = "MTKToast"

.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I

.field private static sToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/util/MtkToast;->sToast:Landroid/widget/Toast;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private static getToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 108
    sget-object v0, Lcom/mediatek/contacts/util/MtkToast;->sToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MTKToast"

    invoke-static {v0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/util/MtkToast;->sToast:Landroid/widget/Toast;

    .line 111
    :cond_0
    sget-object v0, Lcom/mediatek/contacts/util/MtkToast;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 112
    sget-object v0, Lcom/mediatek/contacts/util/MtkToast;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 113
    sget-object v0, Lcom/mediatek/contacts/util/MtkToast;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method public static toast(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;II)V

    .line 72
    return-void
.end method

.method public static toast(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 84
    return-void
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 95
    invoke-static {p0, p1, p2}, Lcom/mediatek/contacts/util/MtkToast;->getToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    .line 96
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    return-void
.end method
