.class Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 2220
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ex/chips/RecipientEditTextView;
    .param p2, "x1"    # Lcom/android/ex/chips/RecipientEditTextView$1;

    .prologue
    .line 2220
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 17
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 2226
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2228
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v14}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    .line 2229
    .local v10, "spannable":Landroid/text/Spannable;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v15}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    const-class v16, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, v16

    invoke-interface {v10, v14, v15, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2231
    .local v3, "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    move-object v1, v3

    .local v1, "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v2, v1, v5

    .line 2232
    .local v2, "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v10, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2231
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2234
    .end local v2    # "chip":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;
    invoke-static {v14}, Lcom/android/ex/chips/RecipientEditTextView;->access$1800(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/style/ImageSpan;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 2235
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;
    invoke-static {v14}, Lcom/android/ex/chips/RecipientEditTextView;->access$1800(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/style/ImageSpan;

    move-result-object v14

    invoke-interface {v10, v14}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2285
    .end local v1    # "arr$":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v3    # "chips":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "spannable":Landroid/text/Spannable;
    :cond_1
    :goto_1
    return-void

    .line 2241
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # invokes: Lcom/android/ex/chips/RecipientEditTextView;->chipsPending()Z
    invoke-static {v14}, Lcom/android/ex/chips/RecipientEditTextView;->access$1900(Lcom/android/ex/chips/RecipientEditTextView;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 2245
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v14}, Lcom/android/ex/chips/RecipientEditTextView;->access$400(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 2246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v15}, Lcom/android/ex/chips/RecipientEditTextView;->access$400(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/ex/chips/RecipientEditTextView;->isGeneratedContact(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 2247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 2248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v15}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 2249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # invokes: Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V
    invoke-static {v14}, Lcom/android/ex/chips/RecipientEditTextView;->access$2000(Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 2254
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v9

    .line 2257
    .local v9, "length":I
    const/4 v14, 0x1

    if-le v9, v14, :cond_1

    .line 2258
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/ex/chips/RecipientEditTextView;->lastCharacterIsCommitCharacter(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # invokes: Lcom/android/ex/chips/RecipientEditTextView;->commitByCharacter()V
    invoke-static {v14}, Lcom/android/ex/chips/RecipientEditTextView;->access$2100(Lcom/android/ex/chips/RecipientEditTextView;)V

    goto :goto_1

    .line 2263
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v14}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v14

    if-nez v14, :cond_5

    const/4 v4, 0x0

    .line 2264
    .local v4, "end":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v14}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    .line 2265
    .local v7, "len":I
    if-eq v4, v7, :cond_6

    .line 2266
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    .line 2270
    .local v6, "last":C
    :goto_3
    const/16 v14, 0x20

    if-ne v6, v14, :cond_1

    .line 2271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v14}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v14

    if-nez v14, :cond_1

    .line 2274
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v14}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2275
    .local v12, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v14}, Lcom/android/ex/chips/RecipientEditTextView;->access$2200(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v15}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v15

    invoke-interface {v14, v12, v15}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v13

    .line 2276
    .local v13, "tokenStart":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v14}, Lcom/android/ex/chips/RecipientEditTextView;->access$2200(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v14

    invoke-interface {v14, v12, v13}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 2278
    .local v11, "sub":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;
    invoke-static {v14}, Lcom/android/ex/chips/RecipientEditTextView;->access$2300(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/AutoCompleteTextView$Validator;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;
    invoke-static {v14}, Lcom/android/ex/chips/RecipientEditTextView;->access$2300(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/AutoCompleteTextView$Validator;

    move-result-object v14

    invoke-interface {v14, v11}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2280
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # invokes: Lcom/android/ex/chips/RecipientEditTextView;->commitByCharacter()V
    invoke-static {v14}, Lcom/android/ex/chips/RecipientEditTextView;->access$2100(Lcom/android/ex/chips/RecipientEditTextView;)V

    goto/16 :goto_1

    .line 2263
    .end local v4    # "end":I
    .end local v6    # "last":C
    .end local v7    # "len":I
    .end local v11    # "sub":Ljava/lang/String;
    .end local v12    # "text":Ljava/lang/String;
    .end local v13    # "tokenStart":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v14}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    goto/16 :goto_2

    .line 2268
    .restart local v4    # "end":I
    .restart local v7    # "len":I
    :cond_6
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    .restart local v6    # "last":C
    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 2325
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 2292
    sub-int v5, p3, p4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 2295
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v5}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionStart()I

    move-result v2

    .line 2296
    .local v2, "selStart":I
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v5}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    const-class v6, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v5, v2, v2, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2298
    .local v1, "repl":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v5, v1

    if-lez v5, :cond_1

    .line 2300
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v5}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2302
    .local v0, "editable":Landroid/text/Editable;
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v5}, Lcom/android/ex/chips/RecipientEditTextView;->access$2200(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v5

    invoke-interface {v5, v0, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 2303
    .local v4, "tokenStart":I
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v5}, Lcom/android/ex/chips/RecipientEditTextView;->access$2200(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 2304
    .local v3, "tokenEnd":I
    add-int/lit8 v3, v3, 0x1

    .line 2305
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v3, v5, :cond_0

    .line 2306
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 2308
    :cond_0
    invoke-interface {v0, v4, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2309
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v5}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-interface {v5, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2320
    .end local v0    # "editable":Landroid/text/Editable;
    .end local v1    # "repl":[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v2    # "selStart":I
    .end local v3    # "tokenEnd":I
    .end local v4    # "tokenStart":I
    :cond_1
    :goto_0
    return-void

    .line 2311
    :cond_2
    if-le p4, p3, :cond_1

    .line 2312
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v5}, Lcom/android/ex/chips/RecipientEditTextView;->access$400(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v6}, Lcom/android/ex/chips/RecipientEditTextView;->access$400(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/ex/chips/RecipientEditTextView;->isGeneratedContact(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2314
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v5, p1}, Lcom/android/ex/chips/RecipientEditTextView;->lastCharacterIsCommitCharacter(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2315
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # invokes: Lcom/android/ex/chips/RecipientEditTextView;->commitByCharacter()V
    invoke-static {v5}, Lcom/android/ex/chips/RecipientEditTextView;->access$2100(Lcom/android/ex/chips/RecipientEditTextView;)V

    goto :goto_0
.end method
