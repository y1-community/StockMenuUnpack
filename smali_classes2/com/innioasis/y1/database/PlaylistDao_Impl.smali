.class public final Lcom/innioasis/y1/database/PlaylistDao_Impl;
.super Ljava/lang/Object;
.source "PlaylistDao_Impl.java"

# interfaces
.implements Lcom/innioasis/y1/database/PlaylistDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfPlaylist:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/innioasis/y1/database/Playlist;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfPlaylist:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/innioasis/y1/database/Playlist;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfPlaylist:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/innioasis/y1/database/Playlist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 33
    new-instance v0, Lcom/innioasis/y1/database/PlaylistDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/PlaylistDao_Impl$1;-><init>(Lcom/innioasis/y1/database/PlaylistDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__insertionAdapterOfPlaylist:Landroidx/room/EntityInsertionAdapter;

    .line 56
    new-instance v0, Lcom/innioasis/y1/database/PlaylistDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/PlaylistDao_Impl$2;-><init>(Lcom/innioasis/y1/database/PlaylistDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__deletionAdapterOfPlaylist:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 71
    new-instance v0, Lcom/innioasis/y1/database/PlaylistDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/PlaylistDao_Impl$3;-><init>(Lcom/innioasis/y1/database/PlaylistDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__updateAdapterOfPlaylist:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 396
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/innioasis/y1/database/Playlist;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "playlist"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 116
    iget-object v0, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__deletionAdapterOfPlaylist:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 119
    iget-object p1, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object p1, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 122
    throw p1
.end method

.method public getAllPlaylist()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Playlist;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "select * from playlist"

    const/4 v2, 0x0

    .line 188
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 189
    iget-object v0, v1, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 190
    iget-object v0, v1, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "playlistId"

    .line 192
    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "name"

    .line 193
    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "data"

    .line 194
    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "isReverse"

    .line 195
    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 196
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 200
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v12, v4

    goto :goto_1

    .line 203
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    invoke-static {v10}, Landroidx/room/util/UUIDUtil;->convertByteToUUID([B)Ljava/util/UUID;

    move-result-object v10

    move-object v12, v10

    .line 206
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v13, v4

    goto :goto_2

    .line 209
    :cond_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v13, v10

    .line 212
    :goto_2
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 215
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    const/16 v16, 0x1

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    .line 217
    :goto_3
    new-instance v10, Lcom/innioasis/y1/database/Playlist;

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Lcom/innioasis/y1/database/Playlist;-><init>(Ljava/util/UUID;Ljava/lang/String;JZ)V

    .line 218
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 222
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 223
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v9

    :catchall_0
    move-exception v0

    .line 222
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 223
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 224
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public getAllPlaylistSortByDate()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Playlist;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "select * from playlist order by data"

    const/4 v2, 0x0

    .line 314
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 315
    iget-object v0, v1, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 316
    iget-object v0, v1, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "playlistId"

    .line 318
    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "name"

    .line 319
    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "data"

    .line 320
    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "isReverse"

    .line 321
    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 322
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 326
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v12, v4

    goto :goto_1

    .line 329
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    invoke-static {v10}, Landroidx/room/util/UUIDUtil;->convertByteToUUID([B)Ljava/util/UUID;

    move-result-object v10

    move-object v12, v10

    .line 332
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v13, v4

    goto :goto_2

    .line 335
    :cond_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v13, v10

    .line 338
    :goto_2
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 341
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    const/16 v16, 0x1

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    .line 343
    :goto_3
    new-instance v10, Lcom/innioasis/y1/database/Playlist;

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Lcom/innioasis/y1/database/Playlist;-><init>(Ljava/util/UUID;Ljava/lang/String;JZ)V

    .line 344
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 348
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 349
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v9

    :catchall_0
    move-exception v0

    .line 348
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 349
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 350
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public getAllPlaylistSortByDateReverse()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Playlist;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "select * from playlist order by data desc"

    const/4 v2, 0x0

    .line 356
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 357
    iget-object v0, v1, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 358
    iget-object v0, v1, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "playlistId"

    .line 360
    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "name"

    .line 361
    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "data"

    .line 362
    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "isReverse"

    .line 363
    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 364
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 365
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 368
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v12, v4

    goto :goto_1

    .line 371
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    invoke-static {v10}, Landroidx/room/util/UUIDUtil;->convertByteToUUID([B)Ljava/util/UUID;

    move-result-object v10

    move-object v12, v10

    .line 374
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v13, v4

    goto :goto_2

    .line 377
    :cond_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v13, v10

    .line 380
    :goto_2
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 383
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    const/16 v16, 0x1

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    .line 385
    :goto_3
    new-instance v10, Lcom/innioasis/y1/database/Playlist;

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Lcom/innioasis/y1/database/Playlist;-><init>(Ljava/util/UUID;Ljava/lang/String;JZ)V

    .line 386
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 390
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 391
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v9

    :catchall_0
    move-exception v0

    .line 390
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 391
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 392
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public getAllPlaylistSortByName()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Playlist;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "select * from playlist order by lower(name)"

    const/4 v2, 0x0

    .line 230
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 231
    iget-object v0, v1, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 232
    iget-object v0, v1, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "playlistId"

    .line 234
    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "name"

    .line 235
    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "data"

    .line 236
    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "isReverse"

    .line 237
    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 238
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 242
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v12, v4

    goto :goto_1

    .line 245
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    invoke-static {v10}, Landroidx/room/util/UUIDUtil;->convertByteToUUID([B)Ljava/util/UUID;

    move-result-object v10

    move-object v12, v10

    .line 248
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v13, v4

    goto :goto_2

    .line 251
    :cond_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v13, v10

    .line 254
    :goto_2
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 257
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    const/16 v16, 0x1

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    .line 259
    :goto_3
    new-instance v10, Lcom/innioasis/y1/database/Playlist;

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Lcom/innioasis/y1/database/Playlist;-><init>(Ljava/util/UUID;Ljava/lang/String;JZ)V

    .line 260
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 264
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 265
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v9

    :catchall_0
    move-exception v0

    .line 264
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 265
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 266
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public getAllPlaylistSortByNameReverse()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Playlist;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "select * from playlist order by lower(name) desc"

    const/4 v2, 0x0

    .line 272
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 273
    iget-object v0, v1, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 274
    iget-object v0, v1, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "playlistId"

    .line 276
    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "name"

    .line 277
    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "data"

    .line 278
    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "isReverse"

    .line 279
    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 280
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 284
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v12, v4

    goto :goto_1

    .line 287
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    invoke-static {v10}, Landroidx/room/util/UUIDUtil;->convertByteToUUID([B)Ljava/util/UUID;

    move-result-object v10

    move-object v12, v10

    .line 290
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v13, v4

    goto :goto_2

    .line 293
    :cond_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v13, v10

    .line 296
    :goto_2
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 299
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    const/16 v16, 0x1

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    .line 301
    :goto_3
    new-instance v10, Lcom/innioasis/y1/database/Playlist;

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Lcom/innioasis/y1/database/Playlist;-><init>(Ljava/util/UUID;Ljava/lang/String;JZ)V

    .line 302
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 306
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 307
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v9

    :catchall_0
    move-exception v0

    .line 306
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 307
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 308
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public getPlaylistById(Ljava/util/UUID;)Lcom/innioasis/y1/database/Playlist;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    const-string v0, "select * from playlist where playlistId = (?)"

    const/4 v1, 0x1

    .line 140
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 143
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {p1}, Landroidx/room/util/UUIDUtil;->convertUUIDToByte(Ljava/util/UUID;)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 147
    :goto_0
    iget-object p1, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 148
    iget-object p1, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v4, "playlistId"

    .line 150
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "name"

    .line 151
    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "data"

    .line 152
    invoke-static {p1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "isReverse"

    .line 153
    invoke-static {p1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 155
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 157
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v9, v3

    goto :goto_1

    .line 160
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-static {v4}, Landroidx/room/util/UUIDUtil;->convertByteToUUID([B)Ljava/util/UUID;

    move-result-object v4

    move-object v9, v4

    .line 163
    :goto_1
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    move-object v10, v3

    goto :goto_3

    .line 166
    :cond_2
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 169
    :goto_3
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 172
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v13, 0x1

    goto :goto_4

    :cond_3
    const/4 v13, 0x0

    .line 174
    :goto_4
    new-instance v3, Lcom/innioasis/y1/database/Playlist;

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lcom/innioasis/y1/database/Playlist;-><init>(Ljava/util/UUID;Ljava/lang/String;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 181
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 180
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 181
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 182
    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public varargs insert([Lcom/innioasis/y1/database/Playlist;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "playlist"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 104
    iget-object v0, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__insertionAdapterOfPlaylist:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 107
    iget-object p1, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object p1, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 110
    throw p1
.end method

.method public update(Lcom/innioasis/y1/database/Playlist;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "playlist"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 128
    iget-object v0, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__updateAdapterOfPlaylist:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 131
    iget-object p1, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object p1, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 134
    throw p1
.end method
