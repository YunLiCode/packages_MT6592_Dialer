.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RateChangeListener"
.end annotation


# instance fields
.field private final mIncrease:Z

.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method public constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)V
    .locals 0
    .param p2, "increase"    # Z

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-boolean p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->mIncrease:Z

    .line 510
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 515
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I
    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1400(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)I

    move-result v2

    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->mIncrease:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    const/4 v2, 0x0

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PRESET_RATES:[F
    invoke-static {}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1500()[F

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    # setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I
    invoke-static {v1, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1402(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)I

    .line 519
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PRESET_RATES:[F
    invoke-static {}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1500()[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1400(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)I

    move-result v2

    aget v1, v1, v2

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PRESET_NAMES:[I
    invoke-static {}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1600()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I
    invoke-static {v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1400(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)I

    move-result v3

    aget v2, v2, v3

    # invokes: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->changeRate(FI)V
    invoke-static {v0, v1, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1700(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;FI)V

    .line 520
    return-void

    .line 515
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
