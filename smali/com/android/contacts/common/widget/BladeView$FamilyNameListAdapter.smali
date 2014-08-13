.class public Lcom/android/contacts/common/widget/BladeView$FamilyNameListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BladeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/widget/BladeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FamilyNameListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/widget/BladeView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/widget/BladeView;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/contacts/common/widget/BladeView$FamilyNameListAdapter;->this$0:Lcom/android/contacts/common/widget/BladeView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private bindView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 391
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 392
    .local v0, "textView":Landroid/widget/TextView;
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 393
    const/high16 v1, 0x41a00000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 394
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 395
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/BladeView$FamilyNameListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView$FamilyNameListAdapter;->this$0:Lcom/android/contacts/common/widget/BladeView;

    # getter for: Lcom/android/contacts/common/widget/BladeView;->familyNameList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/common/widget/BladeView;->access$200(Lcom/android/contacts/common/widget/BladeView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView$FamilyNameListAdapter;->this$0:Lcom/android/contacts/common/widget/BladeView;

    # getter for: Lcom/android/contacts/common/widget/BladeView;->familyNameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/common/widget/BladeView;->access$200(Lcom/android/contacts/common/widget/BladeView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 375
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 381
    if-nez p2, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView$FamilyNameListAdapter;->this$0:Lcom/android/contacts/common/widget/BladeView;

    invoke-virtual {v0}, Lcom/android/contacts/common/widget/BladeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 386
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/android/contacts/common/widget/BladeView$FamilyNameListAdapter;->bindView(Landroid/view/View;I)V

    .line 387
    return-object p2
.end method
