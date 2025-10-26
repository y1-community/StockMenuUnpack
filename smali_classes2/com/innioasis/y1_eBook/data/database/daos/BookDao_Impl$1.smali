.class Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "BookDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$1;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/innioasis/y1_eBook/data/database/entities/Book;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 48
    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 49
    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 50
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 54
    :goto_0
    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 55
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x4

    .line 59
    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getLastReadTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 60
    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getProgress()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x6

    .line 61
    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getTotalLength()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    .line 62
    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getOffset()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 40
    check-cast p2, Lcom/innioasis/y1_eBook/data/database/entities/Book;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1_eBook/data/database/daos/BookDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/innioasis/y1_eBook/data/database/entities/Book;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `book` (`id`,`book_name`,`book_path`,`book_last_read_time`,`book_progress`,`book_total_length`,`book_offset`) VALUES (nullif(?, 0),?,?,?,?,?,?)"

    return-object v0
.end method
