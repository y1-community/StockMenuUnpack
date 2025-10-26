.class Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$10;
.super Ljava/lang/Object;
.source "BookDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->getBookByPath(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
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

    .line 335
    iput-object p1, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$10;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;

    iput-object p2, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/innioasis/y1_eBook/data/database/entities/Book;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 338
    iget-object v0, v1, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$10;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->access$000(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 340
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "book_name"

    .line 341
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v5, "book_path"

    .line 342
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "book_last_read_time"

    .line 343
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "book_progress"

    .line 344
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "book_total_length"

    .line 345
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "book_offset"

    .line 346
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 348
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 350
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 352
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v13, v4

    goto :goto_0

    .line 355
    :cond_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 358
    :goto_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    move-object v14, v4

    goto :goto_2

    .line 361
    :cond_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 364
    :goto_2
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 366
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 368
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 370
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 371
    new-instance v4, Lcom/innioasis/y1_eBook/data/database/entities/Book;

    move-object v11, v4

    invoke-direct/range {v11 .. v19}, Lcom/innioasis/y1_eBook/data/database/entities/Book;-><init>(ILjava/lang/String;Ljava/lang/String;JIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 378
    iget-object v0, v1, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_0
    move-exception v0

    .line 377
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 378
    iget-object v2, v1, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 379
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$10;->call()Lcom/innioasis/y1_eBook/data/database/entities/Book;

    move-result-object v0

    return-object v0
.end method
