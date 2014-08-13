.class final Lcom/android/dialer/CallDetailActivity$ViewEntry;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/CallDetailActivity;
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

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    iput-object v1, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 1053
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryIcon:I

    .line 1055
    iput-object v1, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1057
    iput-object v1, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 1060
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    .line 1061
    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    .line 1062
    iput-object p3, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->primaryDescription:Ljava/lang/String;

    .line 1063
    return-void
.end method


# virtual methods
.method public setFourthAction(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->ipText:Ljava/lang/String;

    .line 1099
    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->fourthIntent:Landroid/content/Intent;

    .line 1100
    iput-object p3, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->fourthDescription:Ljava/lang/String;

    .line 1101
    return-void
.end method

.method public setSecondaryAction(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 1066
    iput p1, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryIcon:I

    .line 1067
    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1068
    iput-object p3, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 1069
    return-void
.end method

.method public setThirdAction(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->videoText:Ljava/lang/String;

    .line 1090
    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->thirdIntent:Landroid/content/Intent;

    .line 1091
    iput-object p3, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->thirdDescription:Ljava/lang/String;

    .line 1092
    return-void
.end method
