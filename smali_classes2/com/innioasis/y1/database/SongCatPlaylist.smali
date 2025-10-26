.class public final Lcom/innioasis/y1/database/SongCatPlaylist;
.super Ljava/lang/Object;
.source "SongCatPlaylist.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B)\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/innioasis/y1/database/SongCatPlaylist;",
        "",
        "id",
        "Ljava/util/UUID;",
        "songId",
        "",
        "playlistId",
        "date",
        "",
        "(Ljava/util/UUID;Ljava/lang/String;Ljava/util/UUID;J)V",
        "getDate",
        "()J",
        "getId",
        "()Ljava/util/UUID;",
        "getPlaylistId",
        "getSongId",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field private final date:J

.field private final id:Ljava/util/UUID;

.field private final playlistId:Ljava/util/UUID;

.field private final songId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/util/UUID;J)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "songId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->id:Ljava/util/UUID;

    .line 13
    iput-object p2, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->songId:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->playlistId:Ljava/util/UUID;

    .line 15
    iput-wide p4, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->date:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/util/UUID;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    const-string p7, "randomUUID()"

    invoke-static {p1, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_1

    .line 15
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p4

    :cond_1
    move-wide v4, p4

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/database/SongCatPlaylist;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/util/UUID;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/y1/database/SongCatPlaylist;Ljava/util/UUID;Ljava/lang/String;Ljava/util/UUID;JILjava/lang/Object;)Lcom/innioasis/y1/database/SongCatPlaylist;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->id:Ljava/util/UUID;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->songId:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->playlistId:Ljava/util/UUID;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->date:J

    :cond_3
    move-wide v1, p4

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-wide p6, v1

    invoke-virtual/range {p2 .. p7}, Lcom/innioasis/y1/database/SongCatPlaylist;->copy(Ljava/util/UUID;Ljava/lang/String;Ljava/util/UUID;J)Lcom/innioasis/y1/database/SongCatPlaylist;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->playlistId:Ljava/util/UUID;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->date:J

    return-wide v0
.end method

.method public final copy(Ljava/util/UUID;Ljava/lang/String;Ljava/util/UUID;J)Lcom/innioasis/y1/database/SongCatPlaylist;
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "songId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/innioasis/y1/database/SongCatPlaylist;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/innioasis/y1/database/SongCatPlaylist;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/util/UUID;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/y1/database/SongCatPlaylist;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/y1/database/SongCatPlaylist;

    iget-object v1, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->id:Ljava/util/UUID;

    iget-object v3, p1, Lcom/innioasis/y1/database/SongCatPlaylist;->id:Ljava/util/UUID;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->songId:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/y1/database/SongCatPlaylist;->songId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->playlistId:Ljava/util/UUID;

    iget-object v3, p1, Lcom/innioasis/y1/database/SongCatPlaylist;->playlistId:Ljava/util/UUID;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->date:J

    iget-wide v5, p1, Lcom/innioasis/y1/database/SongCatPlaylist;->date:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDate()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->date:J

    return-wide v0
.end method

.method public final getId()Ljava/util/UUID;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public final getPlaylistId()Ljava/util/UUID;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->playlistId:Ljava/util/UUID;

    return-object v0
.end method

.method public final getSongId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->id:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->songId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->playlistId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->date:J

    invoke-static {v1, v2}, Lcom/innioasis/y1/database/Bookmark$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SongCatPlaylist(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->id:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", songId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->songId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playlistId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->playlistId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/innioasis/y1/database/SongCatPlaylist;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
