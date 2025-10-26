.class public final Lcom/innioasis/y1/database/BookmarkDao_Impl;
.super Ljava/lang/Object;
.source "BookmarkDao_Impl.java"

# interfaces
.implements Lcom/innioasis/y1/database/BookmarkDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfBookmark:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/innioasis/y1/database/Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfBookmark:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/innioasis/y1/database/Bookmark;",
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/innioasis/y1/database/BookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 31
    new-instance v0, Lcom/innioasis/y1/database/BookmarkDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/BookmarkDao_Impl$1;-><init>(Lcom/innioasis/y1/database/BookmarkDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/BookmarkDao_Impl;->__insertionAdapterOfBookmark:Landroidx/room/EntityInsertionAdapter;

    .line 54
    new-instance v0, Lcom/innioasis/y1/database/BookmarkDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/BookmarkDao_Impl$2;-><init>(Lcom/innioasis/y1/database/BookmarkDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/BookmarkDao_Impl;->__deletionAdapterOfBookmark:Landroidx/room/EntityDeletionOrUpdateAdapter;

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

    .line 139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/innioasis/y1/database/Bookmark;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bookmark"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/innioasis/y1/database/BookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 86
    iget-object v0, p0, Lcom/innioasis/y1/database/BookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/BookmarkDao_Impl;->__deletionAdapterOfBookmark:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 89
    iget-object p1, p0, Lcom/innioasis/y1/database/BookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object p1, p0, Lcom/innioasis/y1/database/BookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/innioasis/y1/database/BookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 92
    throw p1
.end method

.method public getBookmarksSync()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Bookmark;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "select * from bookmark order by date desc"

    const/4 v2, 0x0

    .line 98
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 99
    iget-object v0, v1, Lcom/innioasis/y1/database/BookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 100
    iget-object v0, v1, Lcom/innioasis/y1/database/BookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "songId"

    .line 102
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "startTime"

    .line 103
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "endTime"

    .line 104
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "date"

    .line 105
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "id"

    .line 106
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 107
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 111
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v12, v4

    goto :goto_1

    .line 114
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v12, v10

    .line 117
    :goto_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 119
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 121
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 123
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object/from16 v19, v4

    goto :goto_2

    .line 126
    :cond_1
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    invoke-static {v10}, Landroidx/room/util/UUIDUtil;->convertByteToUUID([B)Ljava/util/UUID;

    move-result-object v10

    move-object/from16 v19, v10

    .line 128
    :goto_2
    new-instance v10, Lcom/innioasis/y1/database/Bookmark;

    move-object v11, v10

    invoke-direct/range {v11 .. v19}, Lcom/innioasis/y1/database/Bookmark;-><init>(Ljava/lang/String;JJJLjava/util/UUID;)V

    .line 129
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 134
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v9

    :catchall_0
    move-exception v0

    .line 133
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 134
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 135
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public varargs insert([Lcom/innioasis/y1/database/Bookmark;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bookmark"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/innioasis/y1/database/BookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 74
    iget-object v0, p0, Lcom/innioasis/y1/database/BookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/BookmarkDao_Impl;->__insertionAdapterOfBookmark:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 77
    iget-object p1, p0, Lcom/innioasis/y1/database/BookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object p1, p0, Lcom/innioasis/y1/database/BookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/innioasis/y1/database/BookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 80
    throw p1
.end method
