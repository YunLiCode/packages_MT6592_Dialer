.class public Lcom/mediatek/contacts/ShareContactViaSMSActivity;
.super Landroid/app/Activity;
.source "ShareContactViaSMSActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;,
        Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;
    }
.end annotation


# static fields
.field static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field static final PHONE_ID_COLUMN_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShareContactViaSMSActivity"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mDataUri:Landroid/net/Uri;

.field mIntent:Landroid/content/Intent;

.field mLookUpUris:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSearchContactThread:Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;

.field private mSingleContactId:I

.field private mUserProfile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mSingleContactId:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mUserProfile:Z

    .line 349
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/ShareContactViaSMSActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/contacts/ShareContactViaSMSActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/contacts/ShareContactViaSMSActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/contacts/ShareContactViaSMSActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mDataUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/ShareContactViaSMSActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/contacts/ShareContactViaSMSActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->shareViaSMS(Ljava/lang/String;)V

    return-void
.end method

.method private getVCardString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v12, 0x2

    .line 276
    const/4 v4, 0x0

    .line 277
    .local v4, "dataContactId":I
    const/4 v5, 0x1

    .line 278
    .local v5, "dataMimeType":I
    const/4 v6, 0x2

    .line 279
    .local v6, "dataString":I
    const-wide/16 v2, 0x0

    .line 280
    .local v2, "contactId":J
    const-wide/16 v0, 0x0

    .line 282
    .local v0, "contactCurrentId":J
    new-instance v8, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;

    const/4 v10, 0x0

    invoke-direct {v8, p0, v10}, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;-><init>(Lcom/mediatek/contacts/ShareContactViaSMSActivity;Lcom/mediatek/contacts/ShareContactViaSMSActivity$1;)V

    .line 283
    .local v8, "tvc":Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v9, "vcards":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 286
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 287
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, "mimeType":Ljava/lang/String;
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-nez v10, :cond_1

    .line 289
    move-wide v0, v2

    .line 293
    :cond_1
    cmp-long v10, v2, v0

    if-eqz v10, :cond_2

    .line 294
    move-wide v0, v2

    .line 295
    invoke-virtual {v8}, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v8}, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->reset()V

    .line 300
    :cond_2
    const-string v10, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 302
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mName:Ljava/lang/String;

    .line 304
    :cond_3
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 305
    iget-object v10, v8, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mNumbers:Ljava/util/List;

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_4
    const-string v10, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 308
    iget-object v10, v8, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mOmails:Ljava/util/List;

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_5
    const-string v10, "vnd.android.cursor.item/organization"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 311
    iget-object v10, v8, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->mOrganizations:Ljava/util/List;

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 316
    invoke-virtual {v8}, Lcom/mediatek/contacts/ShareContactViaSMSActivity$TextVCardContact;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 320
    .end local v7    # "mimeType":Ljava/lang/String;
    :cond_7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method private shareViaSMS(Ljava/lang/String;)V
    .locals 28
    .param p1, "shareLookUpUris"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v12, "contactsID":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 153
    .local v15, "curIndex":I
    const/16 v17, 0x0

    .line 154
    .local v17, "cursor":Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 155
    .local v21, "id":Ljava/lang/String;
    const-string v26, ""

    .line 157
    .local v26, "textVCard":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mUserProfile:Z

    if-eqz v2, :cond_1

    .line 158
    const-string v2, "ShareContactViaSMSActivity"

    const-string v4, "[shareViaSMS]mUserProfile is true."

    invoke-static {v2, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "data"

    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "contact_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "mimetype"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "data1"

    aput-object v7, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 161
    if-eqz v17, :cond_0

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getVCardString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v26

    .line 163
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_0
    :goto_0
    const-string v2, "ShareContactViaSMSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shareViaSMS]textVCard is : \n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v19, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v4, "sms"

    const-string v6, ""

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 256
    .local v19, "i":Landroid/content/Intent;
    const-string v2, "sms_body"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->finish()V

    .line 272
    return-void

    .line 167
    .end local v19    # "i":Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mSingleContactId:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_8

    .line 168
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 169
    .local v25, "tempUris":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v2, "lookup in ("

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .local v5, "selection":Ljava/lang/StringBuilder;
    const/16 v22, 0x0

    .line 172
    .local v22, "index":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move-object/from16 v0, v25

    array-length v2, v0

    move/from16 v0, v19

    if-ge v0, v2, :cond_3

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v25, v19

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    move-object/from16 v0, v25

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_2

    .line 175
    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_2
    add-int/lit8 v22, v22, 0x1

    .line 172
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 180
    :cond_3
    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "selection":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    const-string v7, "sort_key"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 184
    if-eqz v17, :cond_7

    .line 185
    :goto_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 186
    if-eqz v17, :cond_4

    .line 187
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 189
    :cond_4
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "curIndex":I
    .local v16, "curIndex":I
    if-eqz v15, :cond_5

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v16

    .end local v16    # "curIndex":I
    .restart local v15    # "curIndex":I
    goto :goto_3

    .line 192
    .end local v15    # "curIndex":I
    .restart local v16    # "curIndex":I
    :cond_5
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v16

    .end local v16    # "curIndex":I
    .restart local v15    # "curIndex":I
    goto :goto_3

    .line 195
    :cond_6
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 202
    .end local v19    # "i":I
    .end local v22    # "index":I
    .end local v25    # "tempUris":[Ljava/lang/String;
    :cond_7
    :goto_4
    const-string v2, "ShareContactViaSMSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shareViaSMS]contactsID:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v14, 0x0

    .line 205
    .local v14, "contactsIds":[J
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 206
    .local v13, "contactsIDStr":Ljava/lang/String;
    if-eqz v13, :cond_9

    const-string v2, ""

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 207
    const-string v2, ","

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 208
    .local v27, "vCardConIds":[Ljava/lang/String;
    const-string v2, "ShareContactViaSMSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shareViaSMS]vCardConIds.length:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    array-length v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",contactsIDStr:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, v27

    array-length v2, v0

    new-array v14, v2, [J

    .line 211
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_5
    :try_start_1
    move-object/from16 v0, v27

    array-length v2, v0

    move/from16 v0, v19

    if-ge v0, v2, :cond_9

    .line 212
    aget-object v2, v27, v19

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v14, v19
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 198
    .end local v13    # "contactsIDStr":Ljava/lang/String;
    .end local v14    # "contactsIds":[J
    .end local v19    # "i":I
    .end local v27    # "vCardConIds":[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mSingleContactId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 199
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 214
    .restart local v13    # "contactsIDStr":Ljava/lang/String;
    .restart local v14    # "contactsIds":[J
    .restart local v19    # "i":I
    .restart local v27    # "vCardConIds":[Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 215
    .local v18, "e":Ljava/lang/NumberFormatException;
    const-string v2, "ShareContactViaSMSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shareViaSMS]NumberFormatException:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v14, 0x0

    .line 219
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    .end local v19    # "i":I
    .end local v27    # "vCardConIds":[Ljava/lang/String;
    :cond_9
    if-eqz v14, :cond_0

    array-length v2, v14

    if-lez v2, :cond_0

    .line 220
    const-string v2, "ShareContactViaSMSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shareViaSMS]contactsIds.length() = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v14

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v2, ""

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .local v24, "sb":Ljava/lang/StringBuilder;
    move-object v8, v14

    .local v8, "arr$":[J
    array-length v0, v8

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    aget-wide v10, v8, v20

    .line 225
    .local v10, "contactId":J
    array-length v2, v14

    add-int/lit8 v2, v2, -0x1

    aget-wide v6, v14, v2

    cmp-long v2, v10, v6

    if-nez v2, :cond_a

    .line 226
    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 224
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 228
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 231
    .end local v10    # "contactId":J
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id in ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "selection":Ljava/lang/String;
    const-string v2, "ShareContactViaSMSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shareViaSMS]selection = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v2, "content://com.android.contacts/data"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 235
    .local v3, "shareDataUri":Landroid/net/Uri;
    const-string v2, "ShareContactViaSMSActivity"

    const-string v4, "[shareViaSMS]Before query to build contact name and number string "

    invoke-static {v2, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "contact_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "mimetype"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "data1"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const-string v7, "sort_key , contact_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 244
    .local v9, "c":Landroid/database/Cursor;
    const-string v2, "ShareContactViaSMSActivity"

    const-string v4, "[shareViaSMS]After query to build contact name and number string "

    invoke-static {v2, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    if-eqz v9, :cond_0

    .line 246
    const-string v2, "ShareContactViaSMSActivity"

    const-string v4, "[shareViaSMS]Before getVCardString "

    invoke-static {v2, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getVCardString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v26

    .line 248
    const-string v2, "ShareContactViaSMSActivity"

    const-string v4, "[shareViaSMS]After getVCardString "

    invoke-static {v2, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 259
    .end local v3    # "shareDataUri":Landroid/net/Uri;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v8    # "arr$":[J
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v13    # "contactsIDStr":Ljava/lang/String;
    .end local v14    # "contactsIds":[J
    .end local v20    # "i$":I
    .end local v23    # "len$":I
    .end local v24    # "sb":Ljava/lang/StringBuilder;
    .local v19, "i":Landroid/content/Intent;
    :catch_1
    move-exception v18

    .line 260
    .local v18, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Lcom/mediatek/contacts/ShareContactViaSMSActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/contacts/ShareContactViaSMSActivity$1;-><init>(Lcom/mediatek/contacts/ShareContactViaSMSActivity;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 268
    const-string v2, "ShareContactViaSMSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivityNotFoundException :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private showProgressDialog()V
    .locals 4

    .prologue
    const v3, 0x7f0a03d2

    .line 140
    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_0

    .line 141
    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "message":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 145
    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mSearchContactThread:Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 146
    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mSearchContactThread:Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;

    invoke-virtual {v2}, Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;->start()V

    .line 148
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 125
    const-string v0, "ShareContactViaSMSActivity"

    const-string v1, "[onBackPressed]In onBackPressed."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->finish()V

    .line 127
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mIntent:Landroid/content/Intent;

    .line 88
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mAction:Ljava/lang/String;

    .line 89
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mIntent:Landroid/content/Intent;

    const-string v4, "contactId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "contactId":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mIntent:Landroid/content/Intent;

    const-string v4, "userProfile"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "userProfile":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mUserProfile:Z

    .line 95
    :cond_0
    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mSingleContactId:I

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 104
    .local v1, "extraUri":Landroid/net/Uri;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mLookUpUris:Ljava/lang/String;

    .line 105
    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mLookUpUris:Ljava/lang/String;

    .line 111
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mSingleContactId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mUserProfile:Z

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mLookUpUris:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 113
    :cond_4
    const-string v3, "ShareContactViaSMSActivity"

    const-string v4, "[onCreate]send file vis sms error,return."

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a041a

    invoke-virtual {p0, v4}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 116
    invoke-virtual {p0}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->finish()V

    .line 120
    :cond_5
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 132
    const-string v0, "android.intent.action.SEND"

    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;-><init>(Lcom/mediatek/contacts/ShareContactViaSMSActivity;)V

    iput-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->mSearchContactThread:Lcom/mediatek/contacts/ShareContactViaSMSActivity$SearchContactThread;

    .line 135
    invoke-direct {p0}, Lcom/mediatek/contacts/ShareContactViaSMSActivity;->showProgressDialog()V

    .line 137
    :cond_0
    return-void
.end method
