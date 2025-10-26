.class public final Lcom/innioasis/y1/database/ProgressDao_Impl;
.super Ljava/lang/Object;
.source "ProgressDao_Impl.java"

# interfaces
.implements Lcom/innioasis/y1/database/ProgressDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfProgress:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/innioasis/y1/database/Progress;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfProgress:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/innioasis/y1/database/Progress;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfProgress:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/innioasis/y1/database/Progress;",
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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 30
    new-instance v0, Lcom/innioasis/y1/database/ProgressDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/ProgressDao_Impl$1;-><init>(Lcom/innioasis/y1/database/ProgressDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__insertionAdapterOfProgress:Landroidx/room/EntityInsertionAdapter;

    .line 48
    new-instance v0, Lcom/innioasis/y1/database/ProgressDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/ProgressDao_Impl$2;-><init>(Lcom/innioasis/y1/database/ProgressDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__deletionAdapterOfProgress:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 63
    new-instance v0, Lcom/innioasis/y1/database/ProgressDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/ProgressDao_Impl$3;-><init>(Lcom/innioasis/y1/database/ProgressDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__updateAdapterOfProgress:Landroidx/room/EntityDeletionOrUpdateAdapter;

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

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/innioasis/y1/database/Progress;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "progress"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 103
    iget-object v0, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__deletionAdapterOfProgress:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 106
    iget-object p1, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object p1, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 109
    throw p1
.end method

.method public findProgressBySongId(Ljava/lang/String;)Lcom/innioasis/y1/database/Progress;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "songId"
        }
    .end annotation

    const-string v0, "select * from progress where songId = (?)"

    const/4 v1, 0x1

    .line 127
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 130
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 134
    :goto_0
    iget-object p1, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 135
    iget-object p1, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "songId"

    .line 137
    invoke-static {p1, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "startTime"

    .line 138
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "endTime"

    .line 139
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "date"

    .line 140
    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 142
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 144
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    move-object v7, v2

    goto :goto_2

    .line 147
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 150
    :goto_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 152
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 154
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 155
    new-instance v2, Lcom/innioasis/y1/database/Progress;

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lcom/innioasis/y1/database/Progress;-><init>(Ljava/lang/String;JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 162
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 161
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 162
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 163
    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public varargs insert([Lcom/innioasis/y1/database/Progress;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "progress"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 91
    iget-object v0, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__insertionAdapterOfProgress:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 94
    iget-object p1, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object p1, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 97
    throw p1
.end method

.method public update(Lcom/innioasis/y1/database/Progress;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "progress"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 115
    iget-object v0, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__updateAdapterOfProgress:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 118
    iget-object p1, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object p1, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/innioasis/y1/database/ProgressDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 121
    throw p1
.end method
