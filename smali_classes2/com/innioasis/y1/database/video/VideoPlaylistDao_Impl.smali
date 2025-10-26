.class public final Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;
.super Ljava/lang/Object;
.source "VideoPlaylistDao_Impl.java"

# interfaces
.implements Lcom/innioasis/y1/database/video/VideoPlaylistDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfVideoPlaylist:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfPlaylistVideoCrossRef:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfVideoPlaylist:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteByName:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfRemoveVideoFromPlaylist:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfVideoPlaylist:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
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

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 48
    new-instance v0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$1;-><init>(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__insertionAdapterOfVideoPlaylist:Landroidx/room/EntityInsertionAdapter;

    .line 65
    new-instance v0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$2;-><init>(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__insertionAdapterOfPlaylistVideoCrossRef:Landroidx/room/EntityInsertionAdapter;

    .line 78
    new-instance v0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$3;-><init>(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__deletionAdapterOfVideoPlaylist:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 89
    new-instance v0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$4;-><init>(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__updateAdapterOfVideoPlaylist:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 107
    new-instance v0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$5;-><init>(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__preparedStmtOfDeleteByName:Landroidx/room/SharedSQLiteStatement;

    .line 114
    new-instance v0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$6;-><init>(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__preparedStmtOfRemoveVideoFromPlaylist:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method private __fetchRelationshipvideoInfoAscomInnioasisY1DatabaseVideoVideoInfo(Landroidx/collection/LongSparseArray;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/innioasis/y1/database/video/VideoInfo;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 616
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    if-le v2, v3, :cond_4

    .line 617
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2, v3}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    :cond_1
    if-ge v6, v5, :cond_2

    .line 622
    invoke-virtual {v0, v6}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    invoke-virtual {v0, v6}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v2, v8, v9, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v3, :cond_1

    .line 626
    invoke-direct {v1, v2}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__fetchRelationshipvideoInfoAscomInnioasisY1DatabaseVideoVideoInfo(Landroidx/collection/LongSparseArray;)V

    .line 627
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2, v3}, Landroidx/collection/LongSparseArray;-><init>(I)V

    goto :goto_0

    :cond_2
    if-lez v7, :cond_3

    .line 632
    invoke-direct {v1, v2}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__fetchRelationshipvideoInfoAscomInnioasisY1DatabaseVideoVideoInfo(Landroidx/collection/LongSparseArray;)V

    :cond_3
    return-void

    .line 636
    :cond_4
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECT `video_info`.`video_id` AS `video_id`,`video_info`.`file_name` AS `file_name`,`video_info`.`file_path` AS `file_path`,`video_info`.`created_time` AS `created_time`,`video_info`.`pinyin_name` AS `pinyin_name`,`video_info`.`added_time` AS `added_time`,_junction.`playlist_id` FROM `playlist_video` AS _junction INNER JOIN `video_info` ON (_junction.`video_id` = `video_info`.`video_id`) WHERE _junction.`playlist_id` IN ("

    .line 637
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    .line 639
    invoke-static {v2, v3}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v5, ")"

    .line 640
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v4

    .line 643
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 645
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 646
    invoke-virtual {v0, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    .line 647
    invoke-virtual {v2, v6, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 650
    :cond_5
    iget-object v5, v1, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v6, 0x0

    invoke-static {v5, v2, v4, v6}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 662
    :cond_6
    :goto_2
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x6

    .line 663
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 664
    invoke-virtual {v0, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    .line 668
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 670
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v10, v6

    goto :goto_3

    .line 673
    :cond_7
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    :goto_3
    const/4 v7, 0x2

    .line 676
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_8

    move-object v11, v6

    goto :goto_4

    .line 679
    :cond_8
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    :goto_4
    const/4 v7, 0x3

    .line 682
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v7, 0x4

    .line 684
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object v14, v6

    goto :goto_5

    .line 687
    :cond_9
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v14, v7

    :goto_5
    const/4 v7, 0x5

    .line 690
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 691
    new-instance v7, Lcom/innioasis/y1/database/video/VideoInfo;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    invoke-direct/range {v7 .. v16}, Lcom/innioasis/y1/database/video/VideoInfo;-><init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    .line 692
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 696
    :cond_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 697
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method static synthetic access$000(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__insertionAdapterOfVideoPlaylist:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__deletionAdapterOfVideoPlaylist:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
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

    .line 607
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/innioasis/y1/database/video/VideoPlaylist;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "playlist",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$8;

    invoke-direct {v1, p0, p1}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$8;-><init>(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;Lcom/innioasis/y1/database/video/VideoPlaylist;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteByName(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 199
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__preparedStmtOfDeleteByName:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 202
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 206
    :goto_0
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 208
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 209
    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 213
    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__preparedStmtOfDeleteByName:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    .line 212
    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 213
    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__preparedStmtOfDeleteByName:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 214
    throw p1
.end method

.method public getAllPlaylists()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM video_playlist"

    const/4 v1, 0x0

    .line 238
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 239
    iget-object v2, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 240
    iget-object v2, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "playlist_id"

    .line 242
    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "playlist_name"

    .line 243
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "created_time"

    .line 244
    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 245
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 249
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 251
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v11, v3

    goto :goto_1

    .line 254
    :cond_0
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    .line 257
    :goto_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 258
    new-instance v7, Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lcom/innioasis/y1/database/video/VideoPlaylist;-><init>(JLjava/lang/String;J)V

    .line 259
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 263
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 264
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v6

    :catchall_0
    move-exception v2

    .line 263
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 264
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 265
    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public getAllPlaylistsOrderByAddTime()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM video_playlist ORDER BY  created_time "

    const/4 v1, 0x0

    .line 337
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 338
    iget-object v2, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 339
    iget-object v2, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "playlist_id"

    .line 341
    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "playlist_name"

    .line 342
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "created_time"

    .line 343
    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 344
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 348
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 350
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v11, v3

    goto :goto_1

    .line 353
    :cond_0
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    .line 356
    :goto_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 357
    new-instance v7, Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lcom/innioasis/y1/database/video/VideoPlaylist;-><init>(JLjava/lang/String;J)V

    .line 358
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 362
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 363
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v6

    :catchall_0
    move-exception v2

    .line 362
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 363
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 364
    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public getAllPlaylistsOrderByAddTimeDesc()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM video_playlist ORDER BY  created_time DESC"

    const/4 v1, 0x0

    .line 370
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 371
    iget-object v2, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 372
    iget-object v2, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "playlist_id"

    .line 374
    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "playlist_name"

    .line 375
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "created_time"

    .line 376
    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 377
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 378
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 381
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 383
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v11, v3

    goto :goto_1

    .line 386
    :cond_0
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    .line 389
    :goto_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 390
    new-instance v7, Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lcom/innioasis/y1/database/video/VideoPlaylist;-><init>(JLjava/lang/String;J)V

    .line 391
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 395
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 396
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v6

    :catchall_0
    move-exception v2

    .line 395
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 396
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 397
    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public getAllPlaylistsOrderByName()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM video_playlist ORDER BY  lower(playlist_name)"

    const/4 v1, 0x0

    .line 271
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 272
    iget-object v2, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 273
    iget-object v2, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "playlist_id"

    .line 275
    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "playlist_name"

    .line 276
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "created_time"

    .line 277
    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 278
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 282
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 284
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v11, v3

    goto :goto_1

    .line 287
    :cond_0
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    .line 290
    :goto_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 291
    new-instance v7, Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lcom/innioasis/y1/database/video/VideoPlaylist;-><init>(JLjava/lang/String;J)V

    .line 292
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 296
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 297
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v6

    :catchall_0
    move-exception v2

    .line 296
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 297
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 298
    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public getAllPlaylistsOrderByNameDesc()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM video_playlist ORDER BY  lower(playlist_name) DESC"

    const/4 v1, 0x0

    .line 304
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 305
    iget-object v2, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 306
    iget-object v2, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "playlist_id"

    .line 308
    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "playlist_name"

    .line 309
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "created_time"

    .line 310
    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 311
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 312
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 315
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 317
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v11, v3

    goto :goto_1

    .line 320
    :cond_0
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    .line 323
    :goto_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 324
    new-instance v7, Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lcom/innioasis/y1/database/video/VideoPlaylist;-><init>(JLjava/lang/String;J)V

    .line 325
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 329
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 330
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v6

    :catchall_0
    move-exception v2

    .line 329
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 330
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 331
    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public getPlaylistById(J)Lcom/innioasis/y1/database/video/VideoPlaylist;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "playlistId"
        }
    .end annotation

    const-string v0, "SELECT * FROM video_playlist WHERE playlist_id = ?"

    const/4 v1, 0x1

    .line 403
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 405
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 406
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 407
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "playlist_id"

    .line 409
    invoke-static {p1, p2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v2, "playlist_name"

    .line 410
    invoke-static {p1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "created_time"

    .line 411
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 413
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 415
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 417
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-eqz p2, :cond_0

    :goto_0
    move-object v8, v1

    goto :goto_1

    .line 420
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 423
    :goto_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 424
    new-instance v1, Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/innioasis/y1/database/video/VideoPlaylist;-><init>(JLjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 431
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception p2

    .line 430
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 431
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 432
    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public getPlaylistByName(Ljava/lang/String;)Lcom/innioasis/y1/database/video/VideoPlaylist;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    const-string v0, "SELECT * FROM video_playlist WHERE playlist_name = ?"

    const/4 v1, 0x1

    .line 438
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 441
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 445
    :goto_0
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 446
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "playlist_id"

    .line 448
    invoke-static {p1, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "playlist_name"

    .line 449
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "created_time"

    .line 450
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 452
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 454
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 456
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    move-object v9, v2

    goto :goto_2

    .line 459
    :cond_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 462
    :goto_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 463
    new-instance v2, Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/innioasis/y1/database/video/VideoPlaylist;-><init>(JLjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 470
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 469
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 470
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 471
    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public getPlaylistWithVideos(J)Lcom/innioasis/y1/database/video/PlaylistWithVideos;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "playlistId"
        }
    .end annotation

    const-string v0, "SELECT * FROM video_playlist WHERE playlist_id = ?"

    const/4 v1, 0x1

    .line 477
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 479
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 480
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 481
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 483
    :try_start_0
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    invoke-static {p1, v0, v1, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "playlist_id"

    .line 485
    invoke-static {p1, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "playlist_name"

    .line 486
    invoke-static {p1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "created_time"

    .line 487
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 488
    new-instance v4, Landroidx/collection/LongSparseArray;

    invoke-direct {v4}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 489
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 490
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 491
    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 493
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 494
    invoke-virtual {v4, v5, v6, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    .line 497
    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 498
    invoke-direct {p0, v4}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__fetchRelationshipvideoInfoAscomInnioasisY1DatabaseVideoVideoInfo(Landroidx/collection/LongSparseArray;)V

    .line 500
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 502
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 504
    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 506
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    move-object v8, p2

    goto :goto_2

    .line 509
    :cond_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 512
    :goto_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 513
    new-instance p2, Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-object v5, p2

    invoke-direct/range {v5 .. v10}, Lcom/innioasis/y1/database/video/VideoPlaylist;-><init>(JLjava/lang/String;J)V

    .line 518
    :cond_4
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 519
    invoke-virtual {v4, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_5

    .line 521
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 523
    :cond_5
    new-instance v2, Lcom/innioasis/y1/database/video/PlaylistWithVideos;

    invoke-direct {v2, p2, v1}, Lcom/innioasis/y1/database/video/PlaylistWithVideos;-><init>(Lcom/innioasis/y1/database/video/VideoPlaylist;Ljava/util/List;)V

    move-object p2, v2

    .line 527
    :cond_6
    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 531
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 534
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p2

    :catchall_0
    move-exception p2

    .line 530
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 531
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 532
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 534
    iget-object p2, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 535
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getPlaylistWithVideosByName(Ljava/lang/String;)Lcom/innioasis/y1/database/video/PlaylistWithVideos;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    const-string v0, "SELECT * FROM video_playlist WHERE playlist_name = ?"

    const/4 v1, 0x1

    .line 541
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 544
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 548
    :goto_0
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 549
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 551
    :try_start_0
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "playlist_id"

    .line 553
    invoke-static {p1, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "playlist_name"

    .line 554
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "created_time"

    .line 555
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 556
    new-instance v5, Landroidx/collection/LongSparseArray;

    invoke-direct {v5}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 557
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 558
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 559
    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_1

    .line 561
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 562
    invoke-virtual {v5, v6, v7, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v6, -0x1

    .line 565
    invoke-interface {p1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 566
    invoke-direct {p0, v5}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__fetchRelationshipvideoInfoAscomInnioasisY1DatabaseVideoVideoInfo(Landroidx/collection/LongSparseArray;)V

    .line 568
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 570
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 572
    :cond_3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 574
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    move-object v9, v2

    goto :goto_3

    .line 577
    :cond_4
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 580
    :goto_3
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 581
    new-instance v2, Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/innioasis/y1/database/video/VideoPlaylist;-><init>(JLjava/lang/String;J)V

    .line 586
    :cond_5
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 587
    invoke-virtual {v5, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_6

    .line 589
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 591
    :cond_6
    new-instance v3, Lcom/innioasis/y1/database/video/PlaylistWithVideos;

    invoke-direct {v3, v2, v1}, Lcom/innioasis/y1/database/video/PlaylistWithVideos;-><init>(Lcom/innioasis/y1/database/video/VideoPlaylist;Ljava/util/List;)V

    move-object v2, v3

    .line 595
    :cond_7
    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 599
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 602
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 598
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 599
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 600
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 602
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 603
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public insert(Lcom/innioasis/y1/database/video/VideoPlaylist;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "playlist",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$7;

    invoke-direct {v1, p0, p1}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$7;-><init>(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;Lcom/innioasis/y1/database/video/VideoPlaylist;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertSync(Lcom/innioasis/y1/database/video/VideoPlaylist;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "playlist"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 144
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__insertionAdapterOfVideoPlaylist:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 147
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 151
    throw p1
.end method

.method public insertVideoToPlaylist(Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "crossRef"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 157
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__insertionAdapterOfPlaylistVideoCrossRef:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 160
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 163
    throw p1
.end method

.method public removeVideoFromPlaylist(JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "videoId",
            "playlistId"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 220
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__preparedStmtOfRemoveVideoFromPlaylist:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 222
    invoke-interface {v0, v1, p3, p4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 p3, 0x2

    .line 224
    invoke-interface {v0, p3, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 225
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 227
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 228
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 231
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__preparedStmtOfRemoveVideoFromPlaylist:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 230
    iget-object p2, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 231
    iget-object p2, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__preparedStmtOfRemoveVideoFromPlaylist:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 232
    throw p1
.end method

.method public update(Lcom/innioasis/y1/database/video/VideoPlaylist;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "playlist"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 187
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__updateAdapterOfVideoPlaylist:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 190
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 193
    throw p1
.end method
