.class final Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;
.super Ljava/lang/Object;
.source "CallLogFragmentEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public fourthDescription:Ljava/lang/String;

.field public fourthIntent:Landroid/content/Intent;

.field public geocode:Ljava/lang/CharSequence;

.field public ipText:Ljava/lang/String;

.field public label:Ljava/lang/CharSequence;

.field public final primaryDescription:Ljava/lang/String;

.field public final primaryIntent:Landroid/content/Intent;

.field public secondaryDescription:Ljava/lang/String;

.field public secondaryIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public final text:Ljava/lang/String;

.field public thirdDescription:Ljava/lang/String;

.field public thirdIntent:Landroid/content/Intent;

.field public videoText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1779
    iput-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 1781
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->secondaryIcon:I

    .line 1783
    iput-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1785
    iput-object v1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 1788
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->text:Ljava/lang/String;

    .line 1789
    iput-object p2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->primaryIntent:Landroid/content/Intent;

    .line 1790
    iput-object p3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->primaryDescription:Ljava/lang/String;

    .line 1791
    return-void
.end method


# virtual methods
.method public setFourthAction(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 1826
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->ipText:Ljava/lang/String;

    .line 1827
    iput-object p2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->fourthIntent:Landroid/content/Intent;

    .line 1828
    iput-object p3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->fourthDescription:Ljava/lang/String;

    .line 1829
    return-void
.end method

.method public setSecondaryAction(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 1794
    iput p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->secondaryIcon:I

    .line 1795
    iput-object p2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1796
    iput-object p3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 1797
    return-void
.end method

.method public setThirdAction(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 1817
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->videoText:Ljava/lang/String;

    .line 1818
    iput-object p2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->thirdIntent:Landroid/content/Intent;

    .line 1819
    iput-object p3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->thirdDescription:Ljava/lang/String;

    .line 1820
    return-void
.end method
