.class public Lcom/android/contacts/common/list/ProfileAndContactsLoader;
.super Landroid/content/CursorLoader;
.source "ProfileAndContactsLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileAndContactsLoader"


# instance fields
.field private mLoadProfile:Z

.field private mProjection:[Ljava/lang/String;

.field private mSdnContactCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mSdnContactCount:I

    .line 44
    return-void
.end method

.method private loadProfile()Landroid/database/MatrixCursor;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 92
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v8, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 93
    .local v8, "matrix":Landroid/database/MatrixCursor;
    iget-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    array-length v0, v0

    new-array v9, v0, [Ljava/lang/Object;

    .line 94
    .local v9, "row":[Ljava/lang/Object;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, v9

    if-ge v7, v0, :cond_0

    .line 96
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 95
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 98
    :cond_0
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    .end local v7    # "i":I
    .end local v8    # "matrix":Landroid/database/MatrixCursor;
    .end local v9    # "row":[Ljava/lang/Object;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 102
    .restart local v8    # "matrix":Landroid/database/MatrixCursor;
    .restart local v9    # "row":[Ljava/lang/Object;
    :cond_2
    if-eqz v6, :cond_3

    .line 103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v8
.end method

.method private loadSDN(Lcom/android/contacts/common/list/ProfileAndContactsLoader;)Landroid/database/Cursor;
    .locals 12
    .param p1, "profileAndContactsLoader"    # Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    .prologue
    const/4 v7, 0x0

    .line 126
    const/4 v9, 0x0

    .line 127
    .local v9, "sdnCursor":Landroid/database/Cursor;
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getSelection()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getSelection()Ljava/lang/String;

    move-result-object v0

    const-string v10, "is_sdn_contact < 1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 130
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 131
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getProjection()[Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getSelection()Ljava/lang/String;

    move-result-object v0

    const-string v10, "is_sdn_contact < 1"

    const-string v11, "is_sdn_contact = 1"

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "newSelection":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getSortOrder()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "sortOrder":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 138
    if-nez v9, :cond_1

    .line 139
    const-string v0, "ProfileAndContactsLoader"

    const-string v10, "sdnCursor is null need to check"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mSdnContactCount:I

    .line 163
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "newSelection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v5    # "sortOrder":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 143
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "newSelection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v5    # "sortOrder":Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mSdnContactCount:I

    .line 145
    new-instance v7, Landroid/database/MatrixCursor;

    invoke-direct {v7, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 147
    .local v7, "matrix":Landroid/database/MatrixCursor;
    :try_start_0
    array-length v0, v2

    new-array v8, v0, [Ljava/lang/Object;

    .line 148
    .local v8, "row":[Ljava/lang/Object;
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v0, v8

    if-ge v6, v0, :cond_2

    .line 150
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v6

    .line 149
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 152
    :cond_2
    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 157
    .end local v6    # "i":I
    .end local v8    # "row":[Ljava/lang/Object;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 158
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 154
    .restart local v8    # "row":[Ljava/lang/Object;
    :cond_4
    :try_start_1
    const-string v0, "ProfileAndContactsLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadSDN sdnCursor : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    if-eqz v9, :cond_0

    .line 158
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 162
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "newSelection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v5    # "sortOrder":Ljava/lang/String;
    .end local v7    # "matrix":Landroid/database/MatrixCursor;
    .end local v8    # "row":[Ljava/lang/Object;
    :cond_5
    const-string v0, "ProfileAndContactsLoader"

    const-string v10, "loadSDN return null"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getSdnContactCount()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mSdnContactCount:I

    return v0
.end method

.method public hasSdnContact()Z
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mSdnContactCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 58
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 59
    .local v1, "cursors":Ljava/util/List;, "Ljava/util/List<Landroid/database/Cursor;>;"
    iget-boolean v4, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mLoadProfile:Z

    if-eqz v4, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->loadProfile()Landroid/database/MatrixCursor;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mSdnContactCount:I

    .line 65
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "oldSelection":Ljava/lang/String;
    invoke-direct {p0, p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->loadSDN(Lcom/android/contacts/common/list/ProfileAndContactsLoader;)Landroid/database/Cursor;

    move-result-object v3

    .line 67
    .local v3, "sdnCursor":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    .line 68
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->setSelection(Ljava/lang/String;)V

    .line 74
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 75
    .local v0, "contactsCursor":Landroid/database/Cursor;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v5, Lcom/android/contacts/common/list/ProfileAndContactsLoader$1;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/database/Cursor;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/database/Cursor;

    invoke-direct {v5, p0, v4, v0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader$1;-><init>(Lcom/android/contacts/common/list/ProfileAndContactsLoader;[Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-object v5
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->forceLoad()V

    .line 123
    return-void
.end method

.method public setLoadProfile(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mLoadProfile:Z

    .line 48
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    .line 53
    return-void
.end method
