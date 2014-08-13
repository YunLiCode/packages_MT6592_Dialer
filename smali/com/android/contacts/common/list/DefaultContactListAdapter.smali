.class public Lcom/android/contacts/common/list/DefaultContactListAdapter;
.super Lcom/android/contacts/common/list/ContactListAdapter;
.source "DefaultContactListAdapter.java"


# static fields
.field public static final SNIPPET_ARGS:Ljava/lang/String; = "\u0001,\u0001,\u2026,5"

.field public static final SNIPPET_ELLIPSIS:Ljava/lang/String; = "\u2026"

.field public static final SNIPPET_END_MATCH:C = '\u0001'

.field public static final SNIPPET_MAX_TOKENS:I = 0x5

.field public static final SNIPPET_START_MATCH:C = '\u0001'

.field public static final TAG:Ljava/lang/String; = "DefaultContactListAdapter"


# instance fields
.field private mOnlyShowPhoneContacts:Z

.field public mSDNLoader:Lcom/android/contacts/common/list/ProfileAndContactsLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mOnlyShowPhoneContacts:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mSDNLoader:Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    .line 83
    return-void
.end method

.method private configureOnlyShowPhoneContactsSelection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 4
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 163
    if-nez p4, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v0, "selection":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v1, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "indicate_phone_or_sim_contact= ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v2, "-1"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 178
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isCustomFilterForPhoneNumbersOnly()Z
    .locals 3

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 402
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "only_phones"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 17
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 327
    move-object/from16 v4, p1

    check-cast v4, Lcom/android/contacts/common/list/ContactListItemView;

    .line 329
    .local v4, "view":Lcom/android/contacts/common/list/ContactListItemView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSelectionVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setActivated(Z)V

    .line 335
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 344
    const-string v3, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 345
    .local v13, "i":I
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 347
    .local v11, "contactId":J
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/mediatek/contacts/ext/ContactDetailExtension;

    move-result-object v3

    const-string v5, "ExtenstionForRCS"

    invoke-virtual {v3, v11, v12, v5}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->canSetExtensionIcon(JLjava/lang/String;)Z

    move-result v15

    .line 349
    .local v15, "pulginStatus":Z
    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactListItemView;->removeExtentionTextView()V

    .line 350
    invoke-virtual {v4, v15, v11, v12}, Lcom/android/contacts/common/list/ContactListItemView;->setExtentionIcon(ZJ)V

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isQuickContactEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 356
    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x6

    move-object/from16 v3, p0

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v3 .. v10}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIII)V

    .line 365
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 366
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindPresenceAndStatusMessage(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 369
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/mediatek/contacts/ext/ContactDetailExtension;

    move-result-object v3

    const-string v5, "ExtensionForSNS"

    invoke-virtual {v3, v5}, Lcom/mediatek/contacts/ext/ContactDetailExtension;->checkPluginSupport(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 371
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getContactListExtension()Lcom/mediatek/contacts/ext/ContactListExtension;

    move-result-object v3

    const/16 v5, 0xc

    const/16 v6, 0xd

    const-string v7, "ExtensionForSNS"

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v5, v6, v7}, Lcom/mediatek/contacts/ext/ContactListExtension;->getPresenceIcon(Landroid/database/Cursor;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 377
    .local v14, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getContactListExtension()Lcom/mediatek/contacts/ext/ContactListExtension;

    move-result-object v3

    const/16 v5, 0xc

    const/4 v6, 0x3

    const-string v7, "ExtensionForSNS"

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v5, v6, v7}, Lcom/mediatek/contacts/ext/ContactListExtension;->getStatusString(Landroid/database/Cursor;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 383
    .local v16, "status":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 384
    invoke-virtual {v4, v14}, Lcom/android/contacts/common/list/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    .line 386
    :cond_2
    if-eqz v16, :cond_3

    .line 387
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setStatus(Ljava/lang/CharSequence;)V

    .line 392
    .end local v14    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "status":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 393
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindSearchSnippet(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 397
    :goto_2
    return-void

    .line 329
    .end local v11    # "contactId":J
    .end local v13    # "i":I
    .end local v15    # "pulginStatus":Z
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 360
    .restart local v11    # "contactId":J
    .restart local v13    # "i":I
    .restart local v15    # "pulginStatus":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getDisplayPhotos()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 395
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 9
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 87
    instance-of v4, p1, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 89
    check-cast v4, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    iput-object v4, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mSDNLoader:Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    move-object v4, p1

    .line 91
    check-cast v4, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->shouldIncludeProfile()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    .line 96
    .local v1, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    const-string v4, "DefaultContactListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[configureLoader] filter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",loader:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",isSearchMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 98
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "query":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 100
    const-string v2, ""

    .line 102
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 106
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 107
    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 108
    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 137
    .end local v2    # "query":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isOnlyShowPhoneContacts()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->configureOnlyShowPhoneContactsSelection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getSortOrder()I

    move-result v4

    if-ne v4, v8, :cond_6

    .line 146
    const-string v3, "sort_key"

    .line 151
    .local v3, "sortOrder":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 152
    return-void

    .line 110
    .end local v3    # "sortOrder":Ljava/lang/String;
    .restart local v2    # "query":Ljava/lang/String;
    :cond_3
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 111
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 112
    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 114
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_4

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_4

    .line 115
    const-string v4, "limit"

    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getDirectoryById(J)Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getDirectoryResultLimit(Lcom/android/contacts/common/list/DirectoryPartition;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 118
    :cond_4
    const-string v4, "snippet_args"

    const-string v5, "\u0001,\u0001,\u2026,5"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    const-string v4, "deferred_snippeting"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 121
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 122
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "query":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    .line 126
    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    goto :goto_0

    .line 148
    :cond_6
    const-string v3, "sort_key_alt"

    .restart local v3    # "sortOrder":Ljava/lang/String;
    goto :goto_1
.end method

.method protected configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 5
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 231
    if-nez p4, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v0, "selection":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v1, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    .line 320
    :goto_1
    :pswitch_0
    const-string v2, "DefaultContactListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configureSelection] selection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 322
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :pswitch_1
    const-string v2, "is_sdn_contact < 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 257
    :pswitch_2
    const-string v2, "starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 261
    :pswitch_3
    const-string v2, "has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v2, " AND is_sdn_contact < 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 268
    :pswitch_4
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-direct {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_2
    const-string v2, " AND is_sdn_contact < 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 282
    :pswitch_5
    const-string v2, "Local Phone Account"

    iget-object v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 283
    const-string v2, "EXISTS (SELECT DISTINCT contact_id FROM view_raw_contacts WHERE ( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v2, "is_sdn_contact < 1 AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string v2, "contact_id = view_contacts._id AND (account_type IS NULL  AND account_name IS NULL  AND data_set IS NULL  OR account_type=?  AND account_name=? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :goto_2
    iget-object v2, p4, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v2, p4, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v2, p4, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 309
    const-string v2, " AND data_set=? )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-object v2, p4, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :goto_3
    const-string v2, "))"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 296
    :cond_3
    const-string v2, "EXISTS (SELECT DISTINCT contact_id FROM view_raw_contacts WHERE ( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v2, "is_sdn_contact < 1 AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v2, "contact_id = view_contacts._id AND (account_type=? AND account_name=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 312
    :cond_4
    const-string v2, " AND data_set IS NULL )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 242
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 9
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, -0x6

    .line 185
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 186
    .local v2, "uri":Landroid/net/Uri;
    if-eqz p4, :cond_0

    iget v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v3, v6, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "lookupKey":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 189
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 195
    .end local v1    # "lookupKey":Ljava/lang/String;
    :cond_0
    :goto_0
    cmp-long v3, p2, v7

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 200
    :cond_1
    if-eqz p4, :cond_2

    iget v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v4, -0x3

    if-eq v3, v4, :cond_2

    iget v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-eq v3, v6, :cond_2

    .line 203
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 204
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v3, "directory"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 217
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 220
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 221
    return-void

    .line 191
    .restart local v1    # "lookupKey":Ljava/lang/String;
    :cond_3
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getSelectedContactId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public isOnlyShowPhoneContacts()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mOnlyShowPhoneContacts:Z

    return v0
.end method

.method public setOnlyShowPhoneContacts(Z)V
    .locals 0
    .param p1, "showPhoneContacts"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mOnlyShowPhoneContacts:Z

    .line 73
    return-void
.end method

.method public updateIndexer(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 411
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 412
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    .line 413
    .local v0, "sectionIndexer":Lcom/android/contacts/common/list/ContactsSectionIndexer;
    iget-object v1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mSDNLoader:Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mSDNLoader:Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->hasSdnContact()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    const-string v1, "SDN"

    iget-object v2, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mSDNLoader:Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getSdnContactCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/ContactsSectionIndexer;->setSdnHeader(Ljava/lang/String;I)V

    .line 418
    :cond_0
    return-void
.end method
