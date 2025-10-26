.class public final Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;
.super Lcom/innioasis/y1_eBook/data/AppDatabase;
.source "AppDatabase_Impl.java"


# instance fields
.field private volatile _bookDao:Lcom/innioasis/y1_eBook/data/database/daos/BookDao;

.field private volatile _eBookmarkDao:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/data/AppDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bookDao()Lcom/innioasis/y1_eBook/data/database/daos/BookDao;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->_bookDao:Lcom/innioasis/y1_eBook/data/database/daos/BookDao;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->_bookDao:Lcom/innioasis/y1_eBook/data/database/daos/BookDao;

    return-object v0

    .line 202
    :cond_0
    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->_bookDao:Lcom/innioasis/y1_eBook/data/database/daos/BookDao;

    if-nez v0, :cond_1

    .line 204
    new-instance v0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->_bookDao:Lcom/innioasis/y1_eBook/data/database/daos/BookDao;

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->_bookDao:Lcom/innioasis/y1_eBook/data/database/daos/BookDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 207
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllTables()V
    .locals 6

    .line 151
    invoke-super {p0}, Lcom/innioasis/y1_eBook/data/AppDatabase;->assertNotMainThread()V

    .line 152
    invoke-super {p0}, Lcom/innioasis/y1_eBook/data/AppDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 153
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "VACUUM"

    const-string v3, "PRAGMA foreign_keys = TRUE"

    const-string v4, "PRAGMA wal_checkpoint(FULL)"

    if-nez v1, :cond_1

    :try_start_0
    const-string v5, "PRAGMA foreign_keys = FALSE"

    .line 156
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    :cond_1
    invoke-super {p0}, Lcom/innioasis/y1_eBook/data/AppDatabase;->beginTransaction()V

    if-eqz v1, :cond_2

    const-string v5, "PRAGMA defer_foreign_keys = TRUE"

    .line 160
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const-string v5, "DELETE FROM `book`"

    .line 162
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `ebook_mark`"

    .line 163
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    invoke-super {p0}, Lcom/innioasis/y1_eBook/data/AppDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-super {p0}, Lcom/innioasis/y1_eBook/data/AppDatabase;->endTransaction()V

    if-nez v1, :cond_3

    .line 168
    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    :cond_3
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 171
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_4

    .line 172
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v5

    .line 166
    invoke-super {p0}, Lcom/innioasis/y1_eBook/data/AppDatabase;->endTransaction()V

    if-nez v1, :cond_5

    .line 168
    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    :cond_5
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 171
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_6

    .line 172
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    :cond_6
    throw v5
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 6

    .line 144
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 145
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 146
    new-instance v3, Landroidx/room/InvalidationTracker;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "book"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "ebook_mark"

    aput-object v5, v4, v1

    invoke-direct {v3, p0, v0, v2, v4}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v3
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 43
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl$1;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl$1;-><init>(Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;I)V

    const-string v2, "62b5faa77fe1d3947137f6208015aa8a"

    const-string v3, "e1c3dc5e1769b4d15e314ff4b9f7c2ed"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 135
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 138
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public eBookmarkDao()Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->_eBookmarkDao:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->_eBookmarkDao:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;

    return-object v0

    .line 216
    :cond_0
    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->_eBookmarkDao:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;

    if-nez v0, :cond_1

    .line 218
    new-instance v0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->_eBookmarkDao:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/AppDatabase_Impl;->_eBookmarkDao:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 221
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoMigrationSpecsMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Landroidx/room/migration/Migration;

    .line 194
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 180
    const-class v1, Lcom/innioasis/y1_eBook/data/database/daos/BookDao;

    invoke-static {}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-class v1, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;

    invoke-static {}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
