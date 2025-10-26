.class Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$10;
.super Ljava/lang/Object;
.source "EBookmarkDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->getBookmarksByBookIdAndTimeRange(IJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$10;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;

    iput-object p2, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$10;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 231
    iget-object v0, v1, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$10;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->access$000(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 233
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "bookId"

    .line 234
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v5, "progress"

    .line 235
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "offset"

    .line 236
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    .line 237
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "create_time"

    .line 238
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 239
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 243
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 245
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 247
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 249
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 251
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object/from16 v16, v4

    goto :goto_1

    .line 254
    :cond_0
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    .line 257
    :goto_1
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 258
    new-instance v10, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;

    move-object v11, v10

    invoke-direct/range {v11 .. v18}, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;-><init>(IIIILjava/lang/String;J)V

    .line 259
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 263
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 264
    iget-object v0, v1, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v9

    :catchall_0
    move-exception v0

    .line 263
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 264
    iget-object v2, v1, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 265
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
