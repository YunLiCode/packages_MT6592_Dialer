.class public Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;
.super Lcom/android/internal/app/AlertActivity;
.source "VoLteConfAddMemberScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ADD_CONFERENCE_MEMBER_DIALOG:Ljava/lang/String; = "add conference_member"

.field private static final ADD_CONFERENCE_MEMBER_RESULT:I = 0x2710

.field private static final LOG_TAG:Ljava/lang/String; = "AddConferenceMemberAcitivity"

.field private static mChooseContactsView:Landroid/widget/ImageButton;

.field private static mEditView:Lcom/mediatek/incallui/volte/AddMemberEditView;


# instance fields
.field private mConferenceId:I

.field private mContactsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mContactsMap:Ljava/util/Map;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mConferenceId:I

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->chooseFromContacts()V

    return-void
.end method

.method private chooseFromContacts()V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 122
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04005a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    sput-object v1, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mChooseContactsView:Landroid/widget/ImageButton;

    .line 80
    sget-object v1, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mChooseContactsView:Landroid/widget/ImageButton;

    new-instance v2, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen$1;

    invoke-direct {v2, p0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen$1;-><init>(Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v1, 0x7f0d0163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/volte/AddMemberEditView;

    sput-object v1, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mEditView:Lcom/mediatek/incallui/volte/AddMemberEditView;

    .line 89
    sget-object v1, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mEditView:Lcom/mediatek/incallui/volte/AddMemberEditView;

    new-instance v2, Lcom/mediatek/incallui/volte/ConferenceMemberAdatper;

    invoke-direct {v2, p0}, Lcom/mediatek/incallui/volte/ConferenceMemberAdatper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/incallui/volte/AddMemberEditView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    sget-object v1, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mEditView:Lcom/mediatek/incallui/volte/AddMemberEditView;

    new-instance v2, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v2}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/mediatek/incallui/volte/AddMemberEditView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 91
    sget-object v1, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mEditView:Lcom/mediatek/incallui/volte/AddMemberEditView;

    invoke-virtual {v1}, Lcom/mediatek/incallui/volte/AddMemberEditView;->requestFocus()Z

    .line 92
    return-object v0
.end method

.method private getContactsName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 194
    move-object v8, p1

    .line 195
    .local v8, "ret":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mContactsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    const-string v0, "getContactsName, find in map ~~"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->log(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mContactsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "ret":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 214
    .restart local v8    # "ret":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getContactsName for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->log(Ljava/lang/String;)V

    .line 215
    return-object v8

    .line 199
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, "normalizedNumber":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 205
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 207
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mContactsMap:Ljava/util/Map;

    invoke-interface {v0, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string v0, "AddConferenceMemberAcitivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method private processAddConferenceMemberAction()V
    .locals 7

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->getNumbers()Ljava/util/List;

    move-result-object v1

    .line 97
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    .local v3, "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processAddConferenceMemberAction, number in list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 101
    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0146

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/mediatek/incallui/volte/VoLteConfUiController$MemberChangeNotifier;->notifyMemberChange(Landroid/app/Activity;ILjava/lang/String;)V

    .line 117
    :goto_1
    return-void

    .line 109
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    .local v2, "number":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processAddConferenceMemberAction, Number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->log(Ljava/lang/String;)V

    .line 111
    const/16 v4, 0x12e

    invoke-direct {p0, v2}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->getContactsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/mediatek/incallui/volte/VoLteConfUiController$MemberChangeNotifier;->notifyMemberChange(Landroid/app/Activity;ILjava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mConferenceId:I

    invoke-virtual {v4, v5, v2}, Lcom/android/incallui/CallCommandClient;->addVoLteConfMember(ILjava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->finish()V

    goto :goto_1
.end method


# virtual methods
.method public getNumbers()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    sget-object v8, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mEditView:Lcom/mediatek/incallui/volte/AddMemberEditView;

    invoke-virtual {v8}, Lcom/mediatek/incallui/volte/AddMemberEditView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 179
    .local v5, "sp":Landroid/text/Spanned;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNumbers, numbers = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->log(Ljava/lang/String;)V

    .line 180
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 182
    .local v7, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v8, v7

    if-nez v8, :cond_0

    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/text/Spanned;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 183
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_0
    move-object v0, v7

    .local v0, "arr$":[Landroid/text/util/Rfc822Token;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 186
    .local v6, "token":Landroid/text/util/Rfc822Token;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "number:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->log(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "number":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v4    # "number":Ljava/lang/String;
    .end local v6    # "token":Landroid/text/util/Rfc822Token;
    :cond_1
    return-object v3
.end method

.method public handleChooseContactsResult(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 126
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChooseContactsResult, return data is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->log(Ljava/lang/String;)V

    .line 128
    const/4 v7, 0x0

    .line 129
    .local v7, "name":Ljava/lang/String;
    const/4 v8, 0x0

    .line 130
    .local v8, "number":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    const-string v4, "data1"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 133
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 135
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 136
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mContactsMap:Ljava/util/Map;

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", number = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->log(Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mEditView:Lcom/mediatek/incallui/volte/AddMemberEditView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/incallui/volte/AddMemberEditView;->append(Ljava/lang/CharSequence;)V

    .line 144
    return-void

    .line 139
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult, request code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->log(Ljava/lang/String;)V

    .line 164
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 165
    packed-switch p1, :pswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 167
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->handleChooseContactsResult(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 173
    :cond_0
    const-string v0, "AddConferenceMemberAcitivity"

    const-string v1, "onActivityResult fail!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 153
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->processAddConferenceMemberAction()V

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->finish()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const/4 v0, -0x2

    if-ne v0, p2, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const-string v1, "onCreate..."

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->log(Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.mediatek.incallui.volte.extra_conference_id"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mConferenceId:I

    .line 56
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 57
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-direct {p0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0142

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 59
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 60
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 61
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 62
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 63
    invoke-static {}, Lcom/mediatek/incallui/volte/VoLteConfUiController;->getInstance()Lcom/mediatek/incallui/volte/VoLteConfUiController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/incallui/volte/VoLteConfUiController;->setAddMemberScreenInstance(Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;)V

    .line 64
    invoke-virtual {p0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->setupAlert()V

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "onDestroy..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->log(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;->mContactsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 71
    invoke-static {}, Lcom/mediatek/incallui/volte/VoLteConfUiController;->getInstance()Lcom/mediatek/incallui/volte/VoLteConfUiController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/volte/VoLteConfUiController;->setAddMemberScreenInstance(Lcom/mediatek/incallui/volte/VoLteConfAddMemberScreen;)V

    .line 72
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 73
    return-void
.end method
