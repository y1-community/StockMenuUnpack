.class Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$5;
.super Ljava/lang/Object;
.source "EBookmarkDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->insert(Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;

.field final synthetic val$bookmark:Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$bookmark"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$5;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;

    iput-object p2, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$5;->val$bookmark:Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$5;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->access$000(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$5;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->access$100(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;)Landroidx/room/EntityInsertionAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$5;->val$bookmark:Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;

    invoke-virtual {v0, v1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 98
    iget-object v2, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$5;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;

    invoke-static {v2}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->access$000(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$5;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;

    invoke-static {v1}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->access$000(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$5;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;

    invoke-static {v1}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->access$000(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 102
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$5;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
