.class Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$7;
.super Ljava/lang/Object;
.source "BookDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->getAllBooks(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
        ">;>;"
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

    .line 162
    iput-object p1, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$7;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;

    iput-object p2, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

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

    .line 162
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$7;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 165
    iget-object v0, v1, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$7;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->access$000(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 167
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "book_name"

    .line 168
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v5, "book_path"

    .line 169
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "book_last_read_time"

    .line 170
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "book_progress"

    .line 171
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "book_total_length"

    .line 172
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "book_offset"

    .line 173
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 174
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 178
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 180
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v14, v4

    goto :goto_1

    .line 183
    :cond_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v14, v11

    .line 186
    :goto_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v15, v4

    goto :goto_2

    .line 189
    :cond_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v15, v11

    .line 192
    :goto_2
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 194
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 196
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 198
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 199
    new-instance v11, Lcom/innioasis/y1_eBook/data/database/entities/Book;

    move-object v12, v11

    invoke-direct/range {v12 .. v20}, Lcom/innioasis/y1_eBook/data/database/entities/Book;-><init>(ILjava/lang/String;Ljava/lang/String;JIII)V

    .line 200
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 204
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 205
    iget-object v0, v1, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v10

    :catchall_0
    move-exception v0

    .line 204
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 205
    iget-object v2, v1, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 206
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
