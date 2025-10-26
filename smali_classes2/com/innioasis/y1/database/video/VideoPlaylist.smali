.class public final Lcom/innioasis/y1/database/video/VideoPlaylist;
.super Ljava/lang/Object;
.source "VideoPlaylist.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B!\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0005H\u00d6\u0001R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/innioasis/y1/database/video/VideoPlaylist;",
        "",
        "playlist_id",
        "",
        "playlistName",
        "",
        "createdTime",
        "(JLjava/lang/String;J)V",
        "getCreatedTime",
        "()J",
        "getPlaylistName",
        "()Ljava/lang/String;",
        "setPlaylistName",
        "(Ljava/lang/String;)V",
        "getPlaylist_id",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "app_frGeneralRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final createdTime:J

.field private playlistName:Ljava/lang/String;

.field private final playlist_id:J


# direct methods
.method public constructor <init>(JLjava/lang/String;J)V
    .locals 1

    const-string v0, "playlistName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->playlist_id:J

    .line 12
    iput-object p3, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->playlistName:Ljava/lang/String;

    .line 15
    iput-wide p4, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->createdTime:J

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_1

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    :cond_1
    move-wide v4, p4

    move-object v0, p0

    move-object v3, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/database/video/VideoPlaylist;-><init>(JLjava/lang/String;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/y1/database/video/VideoPlaylist;JLjava/lang/String;JILjava/lang/Object;)Lcom/innioasis/y1/database/video/VideoPlaylist;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->playlist_id:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->playlistName:Ljava/lang/String;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-wide p4, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->createdTime:J

    :cond_2
    move-wide v4, p4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/innioasis/y1/database/video/VideoPlaylist;->copy(JLjava/lang/String;J)Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->playlist_id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->playlistName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->createdTime:J

    return-wide v0
.end method

.method public final copy(JLjava/lang/String;J)Lcom/innioasis/y1/database/video/VideoPlaylist;
    .locals 7

    const-string v0, "playlistName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/innioasis/y1/database/video/VideoPlaylist;-><init>(JLjava/lang/String;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/y1/database/video/VideoPlaylist;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/y1/database/video/VideoPlaylist;

    iget-wide v3, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->playlist_id:J

    iget-wide v5, p1, Lcom/innioasis/y1/database/video/VideoPlaylist;->playlist_id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->playlistName:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/y1/database/video/VideoPlaylist;->playlistName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->createdTime:J

    iget-wide v5, p1, Lcom/innioasis/y1/database/video/VideoPlaylist;->createdTime:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCreatedTime()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->createdTime:J

    return-wide v0
.end method

.method public final getPlaylistName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->playlistName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaylist_id()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->playlist_id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->playlist_id:J

    invoke-static {v0, v1}, Lcom/innioasis/y1/database/Bookmark$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->playlistName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->createdTime:J

    invoke-static {v1, v2}, Lcom/innioasis/y1/database/Bookmark$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setPlaylistName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->playlistName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPlaylist(playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->playlist_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", playlistName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->playlistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/innioasis/y1/database/video/VideoPlaylist;->createdTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
