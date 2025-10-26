.class public final Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;
.super Ljava/lang/Object;
.source "EBookmarkDao_Impl.java"

# interfaces
.implements Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfEBookmark:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfEBookmark:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAllByBookId:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;


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

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 43
    new-instance v0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$1;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->__insertionAdapterOfEBookmark:Landroidx/room/EntityInsertionAdapter;

    .line 63
    new-instance v0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$2;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->__deletionAdapterOfEBookmark:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 74
    new-instance v0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$3;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    .line 81
    new-instance v0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$4;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->__preparedStmtOfDeleteAllByBookId:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->__insertionAdapterOfEBookmark:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->__deletionAdapterOfEBookmark:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$400(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->__preparedStmtOfDeleteAllByBookId:Landroidx/room/SharedSQLiteStatement;

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

    .line 271
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bookmark",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$6;

    invoke-direct {v1, p0, p1}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$6;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteAllByBookId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$8;

    invoke-direct {v1, p0, p1}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$8;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteById(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bookmarkId",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$7;

    invoke-direct {v1, p0, p1}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$7;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBookmarksByBookId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Ljava/util/List<",
            "Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM ebook_mark WHERE bookId = ? ORDER BY create_time DESC"

    const/4 v1, 0x1

    .line 170
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 172
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 173
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 174
    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$9;

    invoke-direct {v2, p0, v0}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$9;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBookmarksByBookIdAndTimeRange(IJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "bookId",
            "startTime",
            "endTime",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM ebook_mark WHERE bookId = ? AND create_time BETWEEN ? AND ? ORDER BY create_time DESC"

    const/4 v1, 0x3

    .line 220
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    const/4 p1, 0x1

    .line 222
    invoke-virtual {v0, p1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    const/4 p1, 0x2

    .line 224
    invoke-virtual {v0, p1, p2, p3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 226
    invoke-virtual {v0, v1, p4, p5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 227
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 228
    iget-object p2, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance p3, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$10;

    invoke-direct {p3, p0, v0}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$10;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 p4, 0x0

    invoke-static {p2, p4, p1, p3, p6}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bookmark",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$5;

    invoke-direct {v1, p0, p1}, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$5;-><init>(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
