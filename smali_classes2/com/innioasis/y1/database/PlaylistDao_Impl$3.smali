.class Lcom/innioasis/y1/database/PlaylistDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "PlaylistDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/database/PlaylistDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/innioasis/y1/database/Playlist;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1/database/PlaylistDao_Impl;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/database/PlaylistDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 71
    iput-object p1, p0, Lcom/innioasis/y1/database/PlaylistDao_Impl$3;->this$0:Lcom/innioasis/y1/database/PlaylistDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/innioasis/y1/database/Playlist;)V
    .locals 4
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

    .line 79
    invoke-virtual {p2}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 80
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p2}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Landroidx/room/util/UUIDUtil;->convertUUIDToByte(Ljava/util/UUID;)[B

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 84
    :goto_0
    invoke-virtual {p2}, Lcom/innioasis/y1/database/Playlist;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 85
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {p2}, Lcom/innioasis/y1/database/Playlist;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    .line 89
    invoke-virtual {p2}, Lcom/innioasis/y1/database/Playlist;->getData()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 90
    invoke-virtual {p2}, Lcom/innioasis/y1/database/Playlist;->isReverse()Z

    move-result v0

    const/4 v1, 0x4

    int-to-long v2, v0

    .line 91
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 92
    invoke-virtual {p2}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 93
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 95
    :cond_2
    invoke-virtual {p2}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object p2

    invoke-static {p2}, Landroidx/room/util/UUIDUtil;->convertUUIDToByte(Ljava/util/UUID;)[B

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_2
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

    .line 71
    check-cast p2, Lcom/innioasis/y1/database/Playlist;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/database/PlaylistDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/innioasis/y1/database/Playlist;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `Playlist` SET `playlistId` = ?,`name` = ?,`data` = ?,`isReverse` = ? WHERE `playlistId` = ?"

    return-object v0
.end method
