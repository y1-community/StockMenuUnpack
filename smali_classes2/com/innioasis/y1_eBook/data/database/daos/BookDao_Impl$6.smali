.class Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$6;
.super Ljava/lang/Object;
.source "BookDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->update(Lcom/innioasis/y1_eBook/data/database/entities/Book;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;

.field final synthetic val$book:Lcom/innioasis/y1_eBook/data/database/entities/Book;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;Lcom/innioasis/y1_eBook/data/database/entities/Book;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$book"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$6;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;

    iput-object p2, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$6;->val$book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$6;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->access$000(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$6;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->access$300(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$6;->val$book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

    invoke-virtual {v0, v1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 148
    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$6;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;

    invoke-static {v1}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->access$000(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$6;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;

    invoke-static {v1}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->access$000(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$6;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;

    invoke-static {v1}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->access$000(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 152
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$6;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
