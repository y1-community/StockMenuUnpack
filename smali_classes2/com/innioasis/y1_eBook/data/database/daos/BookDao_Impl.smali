.class public final Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;
.super Ljava/lang/Object;
.source "BookDao_Impl.java"

# interfaces
.implements Lcom/innioasis/y1_eBook/data/database/daos/BookDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfBook:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfBook:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfBook:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 40
    new-instance v0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$1;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->__insertionAdapterOfBook:Landroidx/room/EntityInsertionAdapter;

    .line 65
    new-instance v0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$2;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->__deletionAdapterOfBook:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 76
    new-instance v0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$3;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->__updateAdapterOfBook:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->__insertionAdapterOfBook:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->__deletionAdapterOfBook:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->__updateAdapterOfBook:Landroidx/room/EntityDeletionOrUpdateAdapter;

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

    .line 385
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/innioasis/y1_eBook/data/database/entities/Book;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "book",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$5;

    invoke-direct {v1, p0, p1}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$5;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;Lcom/innioasis/y1_eBook/data/database/entities/Book;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllBooks(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM book ORDER BY book_last_read_time DESC"

    const/4 v1, 0x0

    .line 160
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 161
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v2

    .line 162
    iget-object v3, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v4, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$7;

    invoke-direct {v4, p0, v0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$7;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v3, v1, v2, v4, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBookById(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bookId",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM book WHERE id = ?"

    const/4 v1, 0x1

    .line 214
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 216
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 217
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 218
    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$8;

    invoke-direct {v2, p0, v0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$8;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBookByPath(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "path",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM book WHERE book_path = ?"

    const/4 v1, 0x1

    .line 327
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 330
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 334
    :goto_0
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 335
    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    new-instance v3, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$10;

    invoke-direct {v3, p0, v0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$10;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v1, v2, p1, v3, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBooksByProgress(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "minProgress",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM book WHERE book_progress > ?"

    const/4 v1, 0x1

    .line 271
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 273
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 274
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 275
    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$9;

    invoke-direct {v2, p0, v0}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$9;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/innioasis/y1_eBook/data/database/entities/Book;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "book",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$4;

    invoke-direct {v1, p0, p1}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$4;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;Lcom/innioasis/y1_eBook/data/database/entities/Book;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/innioasis/y1_eBook/data/database/entities/Book;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "book",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$6;

    invoke-direct {v1, p0, p1}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$6;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;Lcom/innioasis/y1_eBook/data/database/entities/Book;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
