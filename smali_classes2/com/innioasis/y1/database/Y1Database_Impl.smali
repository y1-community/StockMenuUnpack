.class public final Lcom/innioasis/y1/database/Y1Database_Impl;
.super Lcom/innioasis/y1/database/Y1Database;
.source "Y1Database_Impl.java"


# instance fields
.field private volatile _bookmarkDao:Lcom/innioasis/y1/database/BookmarkDao;

.field private volatile _playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

.field private volatile _progressDao:Lcom/innioasis/y1/database/ProgressDao;

.field private volatile _songCatPlayListDao:Lcom/innioasis/y1/database/SongCatPlayListDao;

.field private volatile _songDao:Lcom/innioasis/y1/database/SongDao;

.field private volatile _videoInfoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

.field private volatile _videoPlaylistDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/innioasis/y1/database/Y1Database;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/innioasis/y1/database/Y1Database_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/innioasis/y1/database/Y1Database_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/innioasis/y1/database/Y1Database_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/innioasis/y1/database/Y1Database_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/innioasis/y1/database/Y1Database_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/innioasis/y1/database/Y1Database_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/innioasis/y1/database/Y1Database_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/innioasis/y1/database/Y1Database_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Lcom/innioasis/y1/database/Y1Database_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/database/Y1Database_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Lcom/innioasis/y1/database/Y1Database_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/innioasis/y1/database/Y1Database_Impl;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 6

    .line 267
    invoke-super {p0}, Lcom/innioasis/y1/database/Y1Database;->assertNotMainThread()V

    .line 268
    invoke-super {p0}, Lcom/innioasis/y1/database/Y1Database;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 269
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

    .line 272
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 274
    :cond_1
    invoke-super {p0}, Lcom/innioasis/y1/database/Y1Database;->beginTransaction()V

    if-eqz v1, :cond_2

    const-string v5, "PRAGMA defer_foreign_keys = TRUE"

    .line 276
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const-string v5, "DELETE FROM `Song`"

    .line 278
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `SongCatPlaylist`"

    .line 279
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `Bookmark`"

    .line 280
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `Progress`"

    .line 281
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `Playlist`"

    .line 282
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `video_info`"

    .line 283
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `video_playlist`"

    .line 284
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "DELETE FROM `playlist_video`"

    .line 285
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 286
    invoke-super {p0}, Lcom/innioasis/y1/database/Y1Database;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-super {p0}, Lcom/innioasis/y1/database/Y1Database;->endTransaction()V

    if-nez v1, :cond_3

    .line 290
    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 292
    :cond_3
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 293
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_4

    .line 294
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v5

    .line 288
    invoke-super {p0}, Lcom/innioasis/y1/database/Y1Database;->endTransaction()V

    if-nez v1, :cond_5

    .line 290
    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 292
    :cond_5
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 293
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_6

    .line 294
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 296
    :cond_6
    throw v5
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 6

    .line 260
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 261
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 262
    new-instance v3, Landroidx/room/InvalidationTracker;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "Song"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "SongCatPlaylist"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "Bookmark"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "Progress"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "Playlist"

    aput-object v5, v4, v1

    const/4 v1, 0x5

    const-string v5, "video_info"

    aput-object v5, v4, v1

    const/4 v1, 0x6

    const-string v5, "video_playlist"

    aput-object v5, v4, v1

    const/4 v1, 0x7

    const-string v5, "playlist_video"

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

    .line 53
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/innioasis/y1/database/Y1Database_Impl$1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/innioasis/y1/database/Y1Database_Impl$1;-><init>(Lcom/innioasis/y1/database/Y1Database_Impl;I)V

    const-string v2, "ff1e7e370f044af0c63be515bf3a57d8"

    const-string v3, "8ebe8f988c436aa633bb70a329c3674d"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 251
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 252
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 254
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
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

    .line 321
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBookmarkDao()Lcom/innioasis/y1/database/BookmarkDao;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_bookmarkDao:Lcom/innioasis/y1/database/BookmarkDao;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_bookmarkDao:Lcom/innioasis/y1/database/BookmarkDao;

    return-object v0

    .line 371
    :cond_0
    monitor-enter p0

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_bookmarkDao:Lcom/innioasis/y1/database/BookmarkDao;

    if-nez v0, :cond_1

    .line 373
    new-instance v0, Lcom/innioasis/y1/database/BookmarkDao_Impl;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/database/BookmarkDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_bookmarkDao:Lcom/innioasis/y1/database/BookmarkDao;

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_bookmarkDao:Lcom/innioasis/y1/database/BookmarkDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 376
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPlaylistDao()Lcom/innioasis/y1/database/PlaylistDao;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

    return-object v0

    .line 385
    :cond_0
    monitor-enter p0

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

    if-nez v0, :cond_1

    .line 387
    new-instance v0, Lcom/innioasis/y1/database/PlaylistDao_Impl;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/database/PlaylistDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 390
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProgressDao()Lcom/innioasis/y1/database/ProgressDao;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_progressDao:Lcom/innioasis/y1/database/ProgressDao;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_progressDao:Lcom/innioasis/y1/database/ProgressDao;

    return-object v0

    .line 357
    :cond_0
    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_progressDao:Lcom/innioasis/y1/database/ProgressDao;

    if-nez v0, :cond_1

    .line 359
    new-instance v0, Lcom/innioasis/y1/database/ProgressDao_Impl;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/database/ProgressDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_progressDao:Lcom/innioasis/y1/database/ProgressDao;

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_progressDao:Lcom/innioasis/y1/database/ProgressDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 362
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

    .line 314
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

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 302
    const-class v1, Lcom/innioasis/y1/database/SongDao;

    invoke-static {}, Lcom/innioasis/y1/database/SongDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-class v1, Lcom/innioasis/y1/database/SongCatPlayListDao;

    invoke-static {}, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-class v1, Lcom/innioasis/y1/database/ProgressDao;

    invoke-static {}, Lcom/innioasis/y1/database/ProgressDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-class v1, Lcom/innioasis/y1/database/BookmarkDao;

    invoke-static {}, Lcom/innioasis/y1/database/BookmarkDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-class v1, Lcom/innioasis/y1/database/PlaylistDao;

    invoke-static {}, Lcom/innioasis/y1/database/PlaylistDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-class v1, Lcom/innioasis/y1/database/video/VideoInfoDao;

    invoke-static {}, Lcom/innioasis/y1/database/video/VideoInfoDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-class v1, Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    invoke-static {}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getSongCatPlaylistDao()Lcom/innioasis/y1/database/SongCatPlayListDao;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_songCatPlayListDao:Lcom/innioasis/y1/database/SongCatPlayListDao;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_songCatPlayListDao:Lcom/innioasis/y1/database/SongCatPlayListDao;

    return-object v0

    .line 343
    :cond_0
    monitor-enter p0

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_songCatPlayListDao:Lcom/innioasis/y1/database/SongCatPlayListDao;

    if-nez v0, :cond_1

    .line 345
    new-instance v0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_songCatPlayListDao:Lcom/innioasis/y1/database/SongCatPlayListDao;

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_songCatPlayListDao:Lcom/innioasis/y1/database/SongCatPlayListDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 348
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSongDao()Lcom/innioasis/y1/database/SongDao;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_songDao:Lcom/innioasis/y1/database/SongDao;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_songDao:Lcom/innioasis/y1/database/SongDao;

    return-object v0

    .line 329
    :cond_0
    monitor-enter p0

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_songDao:Lcom/innioasis/y1/database/SongDao;

    if-nez v0, :cond_1

    .line 331
    new-instance v0, Lcom/innioasis/y1/database/SongDao_Impl;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/database/SongDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_songDao:Lcom/innioasis/y1/database/SongDao;

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_songDao:Lcom/innioasis/y1/database/SongDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 334
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVideoDao()Lcom/innioasis/y1/database/video/VideoInfoDao;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_videoInfoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_videoInfoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    return-object v0

    .line 399
    :cond_0
    monitor-enter p0

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_videoInfoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    if-nez v0, :cond_1

    .line 401
    new-instance v0, Lcom/innioasis/y1/database/video/VideoInfoDao_Impl;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/database/video/VideoInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_videoInfoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_videoInfoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 404
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVideoListDao()Lcom/innioasis/y1/database/video/VideoPlaylistDao;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_videoPlaylistDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_videoPlaylistDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    return-object v0

    .line 413
    :cond_0
    monitor-enter p0

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_videoPlaylistDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    if-nez v0, :cond_1

    .line 415
    new-instance v0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_videoPlaylistDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Database_Impl;->_videoPlaylistDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 418
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
