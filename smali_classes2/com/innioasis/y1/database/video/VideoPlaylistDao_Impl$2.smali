.class Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$2;
.super Landroidx/room/EntityInsertionAdapter;
.source "VideoPlaylistDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 65
    iput-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$2;->this$0:Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;)V
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

    .line 73
    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->getPlaylistId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 74
    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->getVideoId()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 75
    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->getOrderIndex()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x3

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

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

    .line 65
    check-cast p2, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `playlist_video` (`playlist_id`,`video_id`,`order_index`) VALUES (?,?,?)"

    return-object v0
.end method
