.class Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$7;
.super Ljava/lang/Object;
.source "VideoPlaylistDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->insert(Lcom/innioasis/y1/database/video/VideoPlaylist;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.field final synthetic this$0:Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;

.field final synthetic val$playlist:Lcom/innioasis/y1/database/video/VideoPlaylist;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;Lcom/innioasis/y1/database/video/VideoPlaylist;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$playlist"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$7;->this$0:Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;

    iput-object p2, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$7;->val$playlist:Lcom/innioasis/y1/database/video/VideoPlaylist;

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

    .line 129
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$7;->this$0:Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;

    invoke-static {v0}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->access$000(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$7;->this$0:Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;

    invoke-static {v0}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->access$100(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;)Landroidx/room/EntityInsertionAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$7;->val$playlist:Lcom/innioasis/y1/database/video/VideoPlaylist;

    invoke-virtual {v0, v1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 132
    iget-object v2, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$7;->this$0:Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;

    invoke-static {v2}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->access$000(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 133
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$7;->this$0:Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;

    invoke-static {v1}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->access$000(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$7;->this$0:Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;

    invoke-static {v1}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;->access$000(Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 136
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/innioasis/y1/database/video/VideoPlaylistDao_Impl$7;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
