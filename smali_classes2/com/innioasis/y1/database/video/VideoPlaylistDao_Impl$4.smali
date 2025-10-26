.class Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$4;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/innioasis/y1/database/video/VideoPlaylist;",
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

    .line 89
    iput-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$4;->this$0:Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/innioasis/y1/database/video/VideoPlaylist;)V
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

    .line 97
    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/VideoPlaylist;->getPlaylist_id()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 98
    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/VideoPlaylist;->getPlaylistName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 99
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/VideoPlaylist;->getPlaylistName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x3

    .line 103
    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/VideoPlaylist;->getCreatedTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 104
    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/VideoPlaylist;->getPlaylist_id()J

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

    .line 89
    check-cast p2, Lcom/innioasis/y1/database/video/VideoPlaylist;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$4;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/innioasis/y1/database/video/VideoPlaylist;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `video_playlist` SET `playlist_id` = ?,`playlist_name` = ?,`created_time` = ? WHERE `playlist_id` = ?"

    return-object v0
.end method
