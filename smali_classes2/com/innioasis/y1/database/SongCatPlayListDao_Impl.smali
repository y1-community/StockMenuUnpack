.class public final Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;
.super Ljava/lang/Object;
.source "SongCatPlayListDao_Impl.java"

# interfaces
.implements Lcom/innioasis/y1/database/SongCatPlayListDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfSongCatPlaylist:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/innioasis/y1/database/SongCatPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteByPlaylistId:Landroidx/room/SharedSQLiteStatement;


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
    iput-object p1, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 33
    new-instance v0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl$1;-><init>(Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__insertionAdapterOfSongCatPlaylist:Landroidx/room/EntityInsertionAdapter;

    .line 59
    new-instance v0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl$2;-><init>(Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    .line 66
    new-instance v0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl$3;-><init>(Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__preparedStmtOfDeleteByPlaylistId:Landroidx/room/SharedSQLiteStatement;

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

    .line 220
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "songId",
            "playlistId"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 90
    iget-object v0, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 93
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    if-nez p2, :cond_1

    .line 99
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 101
    :cond_1
    invoke-static {p2}, Landroidx/room/util/UUIDUtil;->convertUUIDToByte(Ljava/util/UUID;)[B

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 103
    :goto_1
    iget-object p1, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 105
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 106
    iget-object p1, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object p1, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 109
    iget-object p1, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 108
    iget-object p2, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 109
    iget-object p2, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 110
    throw p1
.end method

.method public deleteByPlaylistId(Ljava/util/UUID;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "playlistId"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 116
    iget-object v0, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__preparedStmtOfDeleteByPlaylistId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 119
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {p1}, Landroidx/room/util/UUIDUtil;->convertUUIDToByte(Ljava/util/UUID;)[B

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 123
    :goto_0
    iget-object p1, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 125
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 126
    iget-object p1, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object p1, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 129
    iget-object p1, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__preparedStmtOfDeleteByPlaylistId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 128
    iget-object v1, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 129
    iget-object v1, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__preparedStmtOfDeleteByPlaylistId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 130
    throw p1
.end method

.method public findRecordBySongIdAndFlag(Ljava/lang/String;Ljava/util/UUID;)Lcom/innioasis/y1/database/SongCatPlaylist;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "songId",
            "playlistId"
        }
    .end annotation

    const-string v0, "select * from songCatPlaylist where songId =(?) and playlistId = (?)"

    const/4 v1, 0x2

    .line 136
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 139
    invoke-virtual {v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v0, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    .line 145
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 147
    :cond_1
    invoke-static {p2}, Landroidx/room/util/UUIDUtil;->convertUUIDToByte(Ljava/util/UUID;)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 149
    :goto_1
    iget-object p1, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 150
    iget-object p1, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "id"

    .line 152
    invoke-static {p1, p2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v2, "songId"

    .line 153
    invoke-static {p1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "playlistId"

    .line 154
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "date"

    .line 155
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 157
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 159
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v6, v1

    goto :goto_2

    .line 162
    :cond_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2

    invoke-static {p2}, Landroidx/room/util/UUIDUtil;->convertByteToUUID([B)Ljava/util/UUID;

    move-result-object p2

    move-object v6, p2

    .line 165
    :goto_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-eqz p2, :cond_3

    move-object v7, v1

    goto :goto_3

    .line 168
    :cond_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v7, p2

    .line 171
    :goto_3
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_4
    move-object v8, v1

    goto :goto_5

    .line 174
    :cond_4
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2

    invoke-static {p2}, Landroidx/room/util/UUIDUtil;->convertByteToUUID([B)Ljava/util/UUID;

    move-result-object v1

    goto :goto_4

    .line 177
    :goto_5
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 178
    new-instance v1, Lcom/innioasis/y1/database/SongCatPlaylist;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/innioasis/y1/database/SongCatPlaylist;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/util/UUID;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 185
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception p2

    .line 184
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 185
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 186
    goto :goto_7

    :goto_6
    throw p2

    :goto_7
    goto :goto_6
.end method

.method public getSongIdsByFlagSync(Ljava/util/UUID;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "playlistId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    const-string v0, "select songId from songCatPlaylist where playlistId = (?) order by date"

    const/4 v1, 0x1

    .line 192
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 195
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {p1}, Landroidx/room/util/UUIDUtil;->convertUUIDToByte(Ljava/util/UUID;)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 199
    :goto_0
    iget-object p1, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 200
    iget-object p1, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 202
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 205
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    goto :goto_2

    .line 208
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-static {v4}, Landroidx/room/util/UUIDUtil;->convertByteToUUID([B)Ljava/util/UUID;

    move-result-object v4

    .line 210
    :goto_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 214
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 215
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 214
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 215
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 216
    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public varargs insert([Lcom/innioasis/y1/database/SongCatPlaylist;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "playList"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 78
    iget-object v0, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__insertionAdapterOfSongCatPlaylist:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object p1, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/innioasis/y1/database/SongCatPlayListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 84
    throw p1
.end method
