.class Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;
.super Landroid/os/AsyncTask;
.source "MTKRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientReplacementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mDefaultHeapUtilization:F

.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 1

    .prologue
    .line 3723
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3725
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->mDefaultHeapUtilization:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p2, "x1"    # Lcom/android/ex/chips/MTKRecipientEditTextView$1;

    .prologue
    .line 3723
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;
    .param p1, "x1"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    .line 3723
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->createFreeChip(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 3723
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->processReplacements(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    .prologue
    .line 3723
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->adjustHeapUtilization()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    .prologue
    .line 3723
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->restoreHeapUtilization()V

    return-void
.end method

.method private adjustHeapUtilization()V
    .locals 8

    .prologue
    .line 3727
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    .line 3728
    .local v3, "runtime":Ldalvik/system/VMRuntime;
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v4

    iput v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->mDefaultHeapUtilization:F

    .line 3729
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v5, "RecipientEditTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "defaultUtilization = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->mDefaultHeapUtilization:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3730
    const-string v4, "utilization"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3731
    .local v2, "propString":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 3732
    :cond_0
    const-string v2, "0.4"

    .line 3734
    :cond_1
    iget v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->mDefaultHeapUtilization:F

    .line 3736
    .local v1, "newUtilization":F
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3740
    :goto_0
    invoke-virtual {v3, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 3741
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v1

    .line 3742
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v5, "RecipientEditTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newUtilization = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3743
    return-void

    .line 3737
    :catch_0
    move-exception v0

    .line 3738
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "RecipientEditTextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid format of propery string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createFreeChip(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 5
    .param p1, "entry"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    const/4 v1, 0x0

    .line 3750
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v3, "RecipientEditTextView"

    const-string v4, "[RecipientReplacementTask.createFreeChip]"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3752
    :try_start_0
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z
    invoke-static {v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2400(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3758
    :goto_0
    return-object v1

    .line 3755
    :cond_0
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v2, p1, v3, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4400(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;ZZ)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 3756
    :catch_0
    move-exception v0

    .line 3757
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processReplacements(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3920
    .local p1, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    .local p2, "replacements":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v2, "RecipientEditTextView"

    const-string v3, "[RecipientReplacementTask.processReplacements] start"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3921
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3922
    new-instance v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$2;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;Ljava/util/List;Ljava/util/List;)V

    .line 4021
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 4022
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v2, "RecipientEditTextView"

    const-string v3, "[processReplacements] call runnable.run()"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4023
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4029
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v2, "RecipientEditTextView"

    const-string v3, "[RecipientReplacementTask.processReplacements] end"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4030
    return-void

    .line 4025
    .restart local v0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v2, "RecipientEditTextView"

    const-string v3, "[processReplacements] post runnable"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4026
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$800(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private restoreHeapUtilization()V
    .locals 2

    .prologue
    .line 3745
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 3746
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    iget v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->mDefaultHeapUtilization:F

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 3747
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 3723
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const-wide/16 v11, 0x8

    const/4 v10, 0x0

    .line 3803
    const-string v6, "doInBackground"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3804
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;
    invoke-static {v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3805
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v7, "RecipientEditTextView"

    const-string v8, "[RecipientReplacementTask.doInBackground] mIndividualReplacements.cancel()"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3806
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;
    invoke-static {v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;->cancel(Z)Z

    .line 3807
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;
    invoke-static {v6, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4602(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;)Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    .line 3812
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3814
    .local v5, "recipients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    .line 3815
    .local v3, "existingChips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v7, "RecipientEditTextView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[RecipientReplacementTask.doInBackground] start, recipient count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3816
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_1

    .line 3817
    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3816
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3819
    :cond_1
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3820
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v7, "RecipientEditTextView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[RecipientReplacementTask.doInBackground] removed recipient count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3821
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3823
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3825
    .local v1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 3826
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3827
    .local v2, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_3

    .line 3828
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-interface {v2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3825
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3831
    .end local v2    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_4
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/BaseRecipientAdapter;

    .line 3832
    .local v0, "adapter":Lcom/android/ex/chips/BaseRecipientAdapter;
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v7

    new-instance v8, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;

    invoke-direct {v8, p0, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask$1;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;Ljava/util/ArrayList;)V

    invoke-static {v6, v0, v1, v7, v8}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/ArrayList;Landroid/accounts/Account;Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;)V

    .line 3912
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v7, 0x0

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->setForceEnableBringPointIntoView(Z)V
    invoke-static {v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1300(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)V

    .line 3913
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v7, "RecipientEditTextView"

    const-string v8, "[RecipientReplacementTask.doInBackground] end"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3914
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 3915
    return-object v10
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3723
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 4034
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessListener:Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$5600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4035
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessListener:Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;
    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$5600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView$ChipProcessListener;->onChipProcessDone()V

    .line 4037
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x8

    .line 3766
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3768
    .local v4, "originalRecipients":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    .line 3769
    .local v1, "existingChips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    const-string v6, "onPreExceute"

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3771
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->adjustHeapUtilization()V

    .line 3773
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v7, "RecipientEditTextView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[RecipientReplacementTask.onPreExecute] start, recipient count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3774
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_0

    .line 3775
    aget-object v6, v1, v2

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3774
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3777
    :cond_0
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 3778
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$4500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3781
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 3784
    .local v5, "replacements":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3785
    .local v0, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 3787
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->createFreeChip(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3789
    :cond_2
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3793
    .end local v0    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_3
    invoke-direct {p0, v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->processReplacements(Ljava/util/List;Ljava/util/List;)V

    .line 3794
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v7, "RecipientEditTextView"

    const-string v8, "[RecipientReplacementTask.onPreExecute] end"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3796
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;->restoreHeapUtilization()V

    .line 3798
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 3799
    return-void
.end method
