.class public final Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;
.super Ljava/lang/Object;
.source "PlaylistVideoCrossRef.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;",
        "",
        "playlistId",
        "",
        "videoId",
        "orderIndex",
        "",
        "(JJI)V",
        "getOrderIndex",
        "()I",
        "getPlaylistId",
        "()J",
        "getVideoId",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final orderIndex:I

.field private final playlistId:J

.field private final videoId:J


# direct methods
.method public constructor <init>(JJI)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->playlistId:J

    .line 32
    iput-wide p3, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->videoId:J

    .line 35
    iput p5, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->orderIndex:I

    return-void
.end method

.method public synthetic constructor <init>(JJIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;-><init>(JJI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;JJIILjava/lang/Object;)Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->playlistId:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->videoId:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget p5, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->orderIndex:I

    :cond_2
    move v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->copy(JJI)Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->playlistId:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->videoId:J

    return-wide v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->orderIndex:I

    return v0
.end method

.method public final copy(JJI)Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;
    .locals 7

    new-instance v6, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;

    move-object v0, v6

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;-><init>(JJI)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;

    iget-wide v3, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->playlistId:J

    iget-wide v5, p1, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->playlistId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->videoId:J

    iget-wide v5, p1, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->videoId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->orderIndex:I

    iget p1, p1, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->orderIndex:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getOrderIndex()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->orderIndex:I

    return v0
.end method

.method public final getPlaylistId()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->playlistId:J

    return-wide v0
.end method

.method public final getVideoId()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->videoId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->playlistId:J

    invoke-static {v0, v1}, Lcom/innioasis/y1/database/Bookmark$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->videoId:J

    invoke-static {v1, v2}, Lcom/innioasis/y1/database/Bookmark$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->orderIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaylistVideoCrossRef(playlistId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->playlistId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->videoId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", orderIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;->orderIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
