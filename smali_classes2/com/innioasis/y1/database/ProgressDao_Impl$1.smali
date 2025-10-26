.class Lcom/innioasis/y1/database/ProgressDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "ProgressDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/database/ProgressDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/innioasis/y1/database/Progress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1/database/ProgressDao_Impl;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/database/ProgressDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 30
    iput-object p1, p0, Lcom/innioasis/y1/database/ProgressDao_Impl$1;->this$0:Lcom/innioasis/y1/database/ProgressDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/innioasis/y1/database/Progress;)V
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

    .line 38
    invoke-virtual {p2}, Lcom/innioasis/y1/database/Progress;->getSongId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 39
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p2}, Lcom/innioasis/y1/database/Progress;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 43
    invoke-virtual {p2}, Lcom/innioasis/y1/database/Progress;->getStartTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x3

    .line 44
    invoke-virtual {p2}, Lcom/innioasis/y1/database/Progress;->getEndTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 45
    invoke-virtual {p2}, Lcom/innioasis/y1/database/Progress;->getDate()J

    move-result-wide v1

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

    .line 30
    check-cast p2, Lcom/innioasis/y1/database/Progress;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/database/ProgressDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/innioasis/y1/database/Progress;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `Progress` (`songId`,`startTime`,`endTime`,`date`) VALUES (?,?,?,?)"

    return-object v0
.end method
