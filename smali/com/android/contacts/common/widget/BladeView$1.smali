.class Lcom/android/contacts/common/widget/BladeView$1;
.super Ljava/lang/Object;
.source "BladeView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/widget/BladeView;->showPopupWithListView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/widget/BladeView;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/widget/BladeView;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/contacts/common/widget/BladeView$1;->this$0:Lcom/android/contacts/common/widget/BladeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView$1;->this$0:Lcom/android/contacts/common/widget/BladeView;

    # invokes: Lcom/android/contacts/common/widget/BladeView;->dismissListPopup()V
    invoke-static {v1}, Lcom/android/contacts/common/widget/BladeView;->access$100(Lcom/android/contacts/common/widget/BladeView;)V

    .line 305
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView$1;->this$0:Lcom/android/contacts/common/widget/BladeView;

    # getter for: Lcom/android/contacts/common/widget/BladeView;->alphaIndexer:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/contacts/common/widget/BladeView;->access$300(Lcom/android/contacts/common/widget/BladeView;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/widget/BladeView$1;->this$0:Lcom/android/contacts/common/widget/BladeView;

    # getter for: Lcom/android/contacts/common/widget/BladeView;->familyNameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/contacts/common/widget/BladeView;->access$200(Lcom/android/contacts/common/widget/BladeView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView$1;->this$0:Lcom/android/contacts/common/widget/BladeView;

    # getter for: Lcom/android/contacts/common/widget/BladeView;->alphaIndexer:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/contacts/common/widget/BladeView;->access$300(Lcom/android/contacts/common/widget/BladeView;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/widget/BladeView$1;->this$0:Lcom/android/contacts/common/widget/BladeView;

    # getter for: Lcom/android/contacts/common/widget/BladeView;->familyNameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/contacts/common/widget/BladeView;->access$200(Lcom/android/contacts/common/widget/BladeView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 307
    .local v0, "pos":I
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView$1;->this$0:Lcom/android/contacts/common/widget/BladeView;

    # invokes: Lcom/android/contacts/common/widget/BladeView;->performListItemClicked(I)V
    invoke-static {v1, v0}, Lcom/android/contacts/common/widget/BladeView;->access$400(Lcom/android/contacts/common/widget/BladeView;I)V

    .line 309
    .end local v0    # "pos":I
    :cond_0
    return-void
.end method
