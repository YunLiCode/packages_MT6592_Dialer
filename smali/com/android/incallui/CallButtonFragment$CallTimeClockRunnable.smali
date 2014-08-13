.class Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;
.super Ljava/lang/Object;
.source "CallButtonFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallTimeClockRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0

    .prologue
    .line 856
    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/CallButtonFragment;Lcom/android/incallui/CallButtonFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/CallButtonFragment;
    .param p2, "x1"    # Lcom/android/incallui/CallButtonFragment$1;

    .prologue
    .line 856
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;->this$0:Lcom/android/incallui/CallButtonFragment;

    # getter for: Lcom/android/incallui/CallButtonFragment;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/android/incallui/CallButtonFragment;->access$400(Lcom/android/incallui/CallButtonFragment;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # getter for: Lcom/android/incallui/CallButtonFragment;->mStartTime:J
    invoke-static {}, Lcom/android/incallui/CallButtonFragment;->access$300()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 861
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;->this$0:Lcom/android/incallui/CallButtonFragment;

    # getter for: Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/CallButtonFragment;->access$500(Lcom/android/incallui/CallButtonFragment;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    const-string v1, "mm:ss"

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;->this$0:Lcom/android/incallui/CallButtonFragment;

    # getter for: Lcom/android/incallui/CallButtonFragment;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/android/incallui/CallButtonFragment;->access$400(Lcom/android/incallui/CallButtonFragment;)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;->this$0:Lcom/android/incallui/CallButtonFragment;

    # getter for: Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallButtonFragment;->access$700(Lcom/android/incallui/CallButtonFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;->this$0:Lcom/android/incallui/CallButtonFragment;

    # getter for: Lcom/android/incallui/CallButtonFragment;->mTicker:Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;
    invoke-static {v1}, Lcom/android/incallui/CallButtonFragment;->access$600(Lcom/android/incallui/CallButtonFragment;)Lcom/android/incallui/CallButtonFragment$CallTimeClockRunnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 863
    return-void
.end method
