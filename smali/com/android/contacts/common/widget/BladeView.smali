.class public Lcom/android/contacts/common/widget/BladeView;
.super Landroid/view/View;
.source "BladeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/widget/BladeView$OnItemClickListener;,
        Lcom/android/contacts/common/widget/BladeView$OnListItemClickListener;,
        Lcom/android/contacts/common/widget/BladeView$FamilyNameListAdapter;,
        Lcom/android/contacts/common/widget/BladeView$DissmisThread;
    }
.end annotation


# static fields
.field private static BLADE_BACKGROUND_WIDTH:I

.field private static mIsNeedToDraw:Z

.field private static mTextColorSet:[I


# instance fields
.field private TAG:Ljava/lang/String;

.field private alphaIndexer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private choose:I

.field private dismissThread:Lcom/android/contacts/common/widget/BladeView$DissmisThread;

.field private familyNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private final mAlphabet:[Ljava/lang/String;

.field private mCharHeight:I

.field private mContext:Landroid/content/Context;

.field private mCurItem:I

.field private mListPopupWindow:Landroid/widget/PopupWindow;

.field private mMinCharHeight:I

.field private mOnItemClickListener:Lcom/android/contacts/common/widget/BladeView$OnItemClickListener;

.field private mOnListItemClickListener:Lcom/android/contacts/common/widget/BladeView$OnListItemClickListener;

.field private mPopupLayout:Landroid/widget/LinearLayout;

.field private mPopupListAdapter:Landroid/widget/BaseAdapter;

.field private mPopupListView:Landroid/widget/ListView;

.field private mPopupText:Landroid/widget/TextView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mTextColor:I

.field private mTouched:Z

.field private nameIndexer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x28

    sput v0, Lcom/android/contacts/common/widget/BladeView;->BLADE_BACKGROUND_WIDTH:I

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/common/widget/BladeView;->mIsNeedToDraw:Z

    .line 95
    const/16 v0, 0x1b

    new-array v0, v0, [I

    sput-object v0, Lcom/android/contacts/common/widget/BladeView;->mTextColorSet:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/widget/BladeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    iput-object p1, p0, Lcom/android/contacts/common/widget/BladeView;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 107
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/widget/BladeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    iput-object p1, p0, Lcom/android/contacts/common/widget/BladeView;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    const/4 v8, 0x5

    iput v8, p0, Lcom/android/contacts/common/widget/BladeView;->mMinCharHeight:I

    .line 75
    const/4 v8, 0x5

    iput v8, p0, Lcom/android/contacts/common/widget/BladeView;->mCharHeight:I

    .line 78
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/contacts/common/widget/BladeView;->alphaIndexer:Ljava/util/HashMap;

    .line 79
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/contacts/common/widget/BladeView;->nameIndexer:Ljava/util/HashMap;

    .line 80
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/contacts/common/widget/BladeView;->familyNameList:Ljava/util/ArrayList;

    .line 85
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/contacts/common/widget/BladeView;->handler:Landroid/os/Handler;

    .line 86
    new-instance v8, Lcom/android/contacts/common/widget/BladeView$DissmisThread;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/contacts/common/widget/BladeView$DissmisThread;-><init>(Lcom/android/contacts/common/widget/BladeView;Lcom/android/contacts/common/widget/BladeView$1;)V

    iput-object v8, p0, Lcom/android/contacts/common/widget/BladeView;->dismissThread:Lcom/android/contacts/common/widget/BladeView$DissmisThread;

    .line 90
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/contacts/common/widget/BladeView;->mTouched:Z

    .line 91
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/contacts/common/widget/BladeView;->mCurItem:I

    .line 94
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/contacts/common/widget/BladeView;->choose:I

    .line 96
    const/16 v8, 0x1b

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "#"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "A"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "B"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "C"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "D"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string v10, "E"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "F"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const-string v10, "G"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "H"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const-string v10, "I"

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string v10, "J"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    const-string v10, "K"

    aput-object v10, v8, v9

    const/16 v9, 0xc

    const-string v10, "L"

    aput-object v10, v8, v9

    const/16 v9, 0xd

    const-string v10, "M"

    aput-object v10, v8, v9

    const/16 v9, 0xe

    const-string v10, "N"

    aput-object v10, v8, v9

    const/16 v9, 0xf

    const-string v10, "O"

    aput-object v10, v8, v9

    const/16 v9, 0x10

    const-string v10, "P"

    aput-object v10, v8, v9

    const/16 v9, 0x11

    const-string v10, "Q"

    aput-object v10, v8, v9

    const/16 v9, 0x12

    const-string v10, "R"

    aput-object v10, v8, v9

    const/16 v9, 0x13

    const-string v10, "S"

    aput-object v10, v8, v9

    const/16 v9, 0x14

    const-string v10, "T"

    aput-object v10, v8, v9

    const/16 v9, 0x15

    const-string v10, "U"

    aput-object v10, v8, v9

    const/16 v9, 0x16

    const-string v10, "V"

    aput-object v10, v8, v9

    const/16 v9, 0x17

    const-string v10, "W"

    aput-object v10, v8, v9

    const/16 v9, 0x18

    const-string v10, "X"

    aput-object v10, v8, v9

    const/16 v9, 0x19

    const-string v10, "Y"

    aput-object v10, v8, v9

    const/16 v9, 0x1a

    const-string v10, "Z"

    aput-object v10, v8, v9

    iput-object v8, p0, Lcom/android/contacts/common/widget/BladeView;->mAlphabet:[Ljava/lang/String;

    .line 98
    const-string v8, "BladeView"

    iput-object v8, p0, Lcom/android/contacts/common/widget/BladeView;->TAG:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/android/contacts/common/widget/BladeView;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/BladeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 115
    .local v7, "theme":Landroid/content/res/Resources$Theme;
    const/4 v6, 0x0

    .line 117
    .local v6, "textColor":Landroid/content/res/ColorStateList;
    sget-object v8, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    const/4 v9, 0x0

    invoke-virtual {v7, p2, v8, p3, v9}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 118
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 119
    .local v2, "appearance":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 121
    .local v1, "ap":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    .line 123
    sget-object v8, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v7, v1, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 126
    :cond_0
    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 128
    .local v5, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 129
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 130
    .local v3, "attr":I
    const/4 v8, 0x3

    if-ne v3, v8, :cond_1

    .line 131
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 128
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    .end local v3    # "attr":I
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_2
    if-eqz v6, :cond_3

    .line 136
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    iput v8, p0, Lcom/android/contacts/common/widget/BladeView;->mTextColor:I

    .line 140
    :goto_1
    return-void

    .line 138
    :cond_3
    const v8, -0x777778

    iput v8, p0, Lcom/android/contacts/common/widget/BladeView;->mTextColor:I

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/contacts/common/widget/BladeView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/widget/BladeView;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/contacts/common/widget/BladeView;->dismissListPopup()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/common/widget/BladeView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/widget/BladeView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->familyNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/common/widget/BladeView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/widget/BladeView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->alphaIndexer:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/common/widget/BladeView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/widget/BladeView;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/contacts/common/widget/BladeView;->performListItemClicked(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/common/widget/BladeView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/widget/BladeView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->mListPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private dismissListPopup()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->mListPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->mListPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 354
    :cond_0
    return-void
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 233
    :cond_0
    return-void
.end method

.method private performItemClicked(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->mOnItemClickListener:Lcom/android/contacts/common/widget/BladeView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->mOnItemClickListener:Lcom/android/contacts/common/widget/BladeView$OnItemClickListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/common/widget/BladeView$OnItemClickListener;->onItemClick(I)V

    .line 442
    :cond_0
    return-void
.end method

.method private performListItemClicked(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->mOnListItemClickListener:Lcom/android/contacts/common/widget/BladeView$OnListItemClickListener;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->mOnListItemClickListener:Lcom/android/contacts/common/widget/BladeView$OnListItemClickListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/common/widget/BladeView$OnListItemClickListener;->onListItemClick(I)V

    .line 411
    :cond_0
    return-void
.end method

.method private showPopup(I)V
    .locals 5
    .param p1, "item"    # I

    .prologue
    const/16 v2, 0xb4

    const/16 v4, 0x11

    const/4 v3, 0x0

    .line 205
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 206
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object v1, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 207
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/BladeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupText:Landroid/widget/TextView;

    .line 208
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupText:Landroid/widget/TextView;

    const/high16 v2, 0x42480000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 209
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupText:Landroid/widget/TextView;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 210
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupText:Landroid/widget/TextView;

    const v2, -0xff0001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 212
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 215
    :cond_0
    const-string v0, ""

    .line 216
    .local v0, "text":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 217
    const-string v0, "#"

    .line 221
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 227
    :goto_1
    return-void

    .line 219
    :cond_1
    add-int/lit8 v1, p1, 0x41

    add-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/BladeView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method

.method private showPopupWithListView(I)V
    .locals 14
    .param p1, "item"    # I

    .prologue
    const/16 v13, 0x84

    const/4 v12, 0x1

    const/16 v10, 0x6c

    const/16 v9, 0x11

    const/4 v11, 0x0

    .line 242
    const-string v6, ""

    .line 243
    .local v6, "text":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 244
    const-string v6, "#"

    .line 248
    :goto_0
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->familyNameList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 249
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->familyNameList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 252
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->nameIndexer:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 253
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->nameIndexer:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 254
    .local v1, "it":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 255
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 257
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->familyNameList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v7, p1, 0x41

    add-int/lit8 v7, v7, -0x1

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 262
    :cond_3
    const/4 v5, 0x0

    .line 263
    .local v5, "popWindowHeight":I
    const/4 v2, 0x0

    .line 265
    .local v2, "listCount":I
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->familyNameList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 266
    const/4 v7, 0x6

    if-le v2, v7, :cond_4

    .line 267
    const/4 v2, 0x6

    .line 269
    :cond_4
    add-int/lit8 v7, v2, 0x1

    mul-int/lit8 v5, v7, 0x6e

    .line 271
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 273
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v3, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 276
    .local v3, "listparams":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 277
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 279
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mListPopupWindow:Landroid/widget/PopupWindow;

    if-nez v7, :cond_5

    .line 280
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, v13, v5}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mListPopupWindow:Landroid/widget/PopupWindow;

    .line 281
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mListPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v12}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 282
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mListPopupWindow:Landroid/widget/PopupWindow;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/BladeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupLayout:Landroid/widget/LinearLayout;

    .line 285
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 286
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupLayout:Landroid/widget/LinearLayout;

    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 287
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupLayout:Landroid/widget/LinearLayout;

    const v8, 0x7f020116

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 289
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/BladeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupText:Landroid/widget/TextView;

    .line 290
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupText:Landroid/widget/TextView;

    const v8, 0x7f020115

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 291
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupText:Landroid/widget/TextView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupText:Landroid/widget/TextView;

    const/high16 v8, 0x41a00000

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 293
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupText:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 295
    new-instance v7, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/BladeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupListView:Landroid/widget/ListView;

    .line 296
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupListView:Landroid/widget/ListView;

    invoke-virtual {v7, v11}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 297
    new-instance v7, Lcom/android/contacts/common/widget/BladeView$FamilyNameListAdapter;

    invoke-direct {v7, p0}, Lcom/android/contacts/common/widget/BladeView$FamilyNameListAdapter;-><init>(Lcom/android/contacts/common/widget/BladeView;)V

    iput-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupListAdapter:Landroid/widget/BaseAdapter;

    .line 298
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupListView:Landroid/widget/ListView;

    new-instance v8, Lcom/android/contacts/common/widget/BladeView$1;

    invoke-direct {v8, p0}, Lcom/android/contacts/common/widget/BladeView$1;-><init>(Lcom/android/contacts/common/widget/BladeView;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 312
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupListView:Landroid/widget/ListView;

    new-instance v8, Lcom/android/contacts/common/widget/BladeView$2;

    invoke-direct {v8, p0}, Lcom/android/contacts/common/widget/BladeView$2;-><init>(Lcom/android/contacts/common/widget/BladeView;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 321
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupText:Landroid/widget/TextView;

    invoke-virtual {v7, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11, v11, v11, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 326
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupListView:Landroid/widget/ListView;

    invoke-virtual {v7, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    :cond_5
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->familyNameList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_6

    .line 330
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupListView:Landroid/widget/ListView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 335
    :goto_2
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mListPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 336
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mListPopupWindow:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 338
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupText:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 342
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mListPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 343
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mListPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v13, v5}, Landroid/widget/PopupWindow;->update(II)V

    .line 348
    :goto_3
    return-void

    .line 332
    :cond_6
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mPopupListView:Landroid/widget/ListView;

    invoke-virtual {v7, v11}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_2

    .line 345
    :cond_7
    iget-object v7, p0, Lcom/android/contacts/common/widget/BladeView;->mListPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/BladeView;->getRootView()Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x1f4

    const/16 v10, 0x190

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3
.end method


# virtual methods
.method public clearIndexer()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->alphaIndexer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->alphaIndexer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->nameIndexer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->nameIndexer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 432
    :cond_1
    return-void
.end method

.method public configCharacterColor(Ljava/lang/String;)V
    .locals 4
    .param p1, "sction"    # Ljava/lang/String;

    .prologue
    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView;->mAlphabet:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView;->mAlphabet:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    sget-object v1, Lcom/android/contacts/common/widget/BladeView;->mTextColorSet:[I

    const/high16 v2, -0x1000000

    aput v2, v1, v0

    .line 466
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/contacts/common/widget/BladeView;->mIsNeedToDraw:Z

    .line 467
    iget-object v1, p0, Lcom/android/contacts/common/widget/BladeView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " display"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    return-void

    .line 463
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public configCharacterColorToDefault()V
    .locals 3

    .prologue
    .line 449
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/contacts/common/widget/BladeView;->mTextColorSet:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 450
    sget-object v1, Lcom/android/contacts/common/widget/BladeView;->mTextColorSet:[I

    const v2, -0x777778

    aput v2, v1, v0

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    :cond_0
    return-void
.end method

.method public dismissListPopupByParent()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->mListPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->mListPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 360
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 160
    const/4 v3, 0x0

    .line 161
    .local v3, "textSize":I
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 162
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 163
    .local v2, "paint":Landroid/graphics/Paint;
    iget v4, p0, Lcom/android/contacts/common/widget/BladeView;->mCharHeight:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 164
    iget v4, p0, Lcom/android/contacts/common/widget/BladeView;->mCharHeight:I

    add-int/lit8 v3, v4, -0x2

    .line 165
    iget v4, p0, Lcom/android/contacts/common/widget/BladeView;->mTextColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x1b

    if-ge v1, v4, :cond_1

    .line 168
    if-nez v1, :cond_0

    .line 169
    const/16 v0, 0x23

    .line 173
    .local v0, "currentChar":C
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/BladeView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    add-int/lit8 v6, v1, 0x1

    iget v7, p0, Lcom/android/contacts/common/widget/BladeView;->mCharHeight:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "currentChar":C
    :cond_0
    add-int/lit8 v4, v1, 0x41

    add-int/lit8 v4, v4, -0x1

    int-to-char v0, v4

    .restart local v0    # "currentChar":C
    goto :goto_1

    .line 175
    .end local v0    # "currentChar":C
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 144
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 146
    .local v1, "heightSize":I
    div-int/lit8 v0, v1, 0x1b

    .line 147
    .local v0, "charHeigtht":I
    iget v3, p0, Lcom/android/contacts/common/widget/BladeView;->mMinCharHeight:I

    if-ge v0, v3, :cond_0

    .line 148
    iget v3, p0, Lcom/android/contacts/common/widget/BladeView;->mMinCharHeight:I

    mul-int/lit8 v1, v3, 0x1b

    .line 149
    iget v3, p0, Lcom/android/contacts/common/widget/BladeView;->mMinCharHeight:I

    iput v3, p0, Lcom/android/contacts/common/widget/BladeView;->mCharHeight:I

    .line 154
    :goto_0
    iget v3, p0, Lcom/android/contacts/common/widget/BladeView;->mCharHeight:I

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/BladeView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/BladeView;->getPaddingLeft()I

    move-result v4

    add-int v2, v3, v4

    .line 155
    .local v2, "widthSize":I
    invoke-virtual {p0, v2, v1}, Lcom/android/contacts/common/widget/BladeView;->setMeasuredDimension(II)V

    .line 156
    return-void

    .line 151
    .end local v2    # "widthSize":I
    :cond_0
    iput v0, p0, Lcom/android/contacts/common/widget/BladeView;->mCharHeight:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 181
    .local v0, "action":I
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/BladeView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/contacts/common/widget/BladeView;->mCharHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 185
    .local v1, "item":I
    if-ltz v1, :cond_1

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_2

    .line 201
    .end local v1    # "item":I
    :cond_1
    :goto_0
    return v4

    .line 191
    .restart local v1    # "item":I
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/contacts/common/widget/BladeView;->showPopup(I)V

    .line 192
    invoke-direct {p0, v1}, Lcom/android/contacts/common/widget/BladeView;->performItemClicked(I)V

    goto :goto_0

    .line 195
    .end local v1    # "item":I
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/common/widget/BladeView;->dismissPopup()V

    goto :goto_0
.end method

.method public reDraw()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->TAG:Ljava/lang/String;

    const-string v1, "reDraw start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    sget-boolean v0, Lcom/android/contacts/common/widget/BladeView;->mIsNeedToDraw:Z

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/BladeView;->invalidate()V

    .line 458
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/common/widget/BladeView;->mIsNeedToDraw:Z

    .line 459
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView;->TAG:Ljava/lang/String;

    const-string v1, "reDraw finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAlphaIndexer(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "alphaIndexer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/contacts/common/widget/BladeView;->alphaIndexer:Ljava/util/HashMap;

    .line 419
    return-void
.end method

.method public setNameIndexer(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "nameIndexer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/contacts/common/widget/BladeView;->nameIndexer:Ljava/util/HashMap;

    .line 423
    return-void
.end method

.method public setOnItemClickListener(Lcom/android/contacts/common/widget/BladeView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/common/widget/BladeView$OnItemClickListener;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/contacts/common/widget/BladeView;->mOnItemClickListener:Lcom/android/contacts/common/widget/BladeView$OnItemClickListener;

    .line 436
    return-void
.end method

.method public setOnListItemClickListener(Lcom/android/contacts/common/widget/BladeView$OnListItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/common/widget/BladeView$OnListItemClickListener;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/contacts/common/widget/BladeView;->mOnListItemClickListener:Lcom/android/contacts/common/widget/BladeView$OnListItemClickListener;

    .line 405
    return-void
.end method
