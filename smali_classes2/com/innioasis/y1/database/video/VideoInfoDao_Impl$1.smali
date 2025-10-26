.class Lcom/innioasis/y1/database/video/VideoInfoDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "VideoInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/database/video/VideoInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/innioasis/y1/database/video/VideoInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1/database/video/VideoInfoDao_Impl;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/database/video/VideoInfoDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 47
    iput-object p1, p0, Lcom/innioasis/y1/database/video/VideoInfoDao_Impl$1;->this$0:Lcom/innioasis/y1/database/video/VideoInfoDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/innioasis/y1/database/video/VideoInfo;)V
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

    .line 55
    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/VideoInfo;->getVideo_id()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 56
    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/VideoInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 57
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/VideoInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 61
    :goto_0
    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 62
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x4

    .line 66
    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/VideoInfo;->getCreatedTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 67
    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/VideoInfo;->getPinyinName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 68
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/VideoInfo;->getPinyinName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x6

    .line 72
    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/VideoInfo;->getAddedTime()J

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

    .line 47
    check-cast p2, Lcom/innioasis/y1/database/video/VideoInfo;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/database/video/VideoInfoDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/innioasis/y1/database/video/VideoInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `video_info` (`video_id`,`file_name`,`file_path`,`created_time`,`pinyin_name`,`added_time`) VALUES (nullif(?, 0),?,?,?,?,?)"

    return-object v0
.end method
