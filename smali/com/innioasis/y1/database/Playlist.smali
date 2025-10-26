.class public final Lcom/innioasis/y1/database/Playlist;
.super Ljava/lang/Object;
.source "PlayList.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\tH\u00c6\u0003J1\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\t2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\t\u0010!\u001a\u00020\u0005H\u00d6\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\""
    }
    d2 = {
        "Lcom/innioasis/y1/database/Playlist;",
        "",
        "playlistId",
        "Ljava/util/UUID;",
        "name",
        "",
        "data",
        "",
        "isReverse",
        "",
        "(Ljava/util/UUID;Ljava/lang/String;JZ)V",
        "getData",
        "()J",
        "setData",
        "(J)V",
        "()Z",
        "setReverse",
        "(Z)V",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "getPlaylistId",
        "()Ljava/util/UUID;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
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
.field private data:J

.field private isReverse:Z

.field private name:Ljava/lang/String;

.field private final playlistId:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/innioasis/y1/database/Playlist;-><init>(Ljava/util/UUID;Ljava/lang/String;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;JZ)V
    .locals 1

    const-string v0, "playlistId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/innioasis/y1/database/Playlist;->playlistId:Ljava/util/UUID;

    .line 11
    iput-object p2, p0, Lcom/innioasis/y1/database/Playlist;->name:Ljava/lang/String;

    .line 12
    iput-wide p3, p0, Lcom/innioasis/y1/database/Playlist;->data:J

    .line 13
    iput-boolean p5, p0, Lcom/innioasis/y1/database/Playlist;->isReverse:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/UUID;Ljava/lang/String;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    const-string p7, "randomUUID()"

    invoke-static {p1, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const-string p2, ""

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    .line 12
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p3

    :cond_2
    move-wide v3, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    move v5, p5

    :goto_0
    move-object v0, p0

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/database/Playlist;-><init>(Ljava/util/UUID;Ljava/lang/String;JZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/y1/database/Playlist;Ljava/util/UUID;Ljava/lang/String;JZILjava/lang/Object;)Lcom/innioasis/y1/database/Playlist;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/innioasis/y1/database/Playlist;->playlistId:Ljava/util/UUID;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/innioasis/y1/database/Playlist;->name:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lcom/innioasis/y1/database/Playlist;->data:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p5, p0, Lcom/innioasis/y1/database/Playlist;->isReverse:Z

    :cond_3
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-wide p5, v0

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/innioasis/y1/database/Playlist;->copy(Ljava/util/UUID;Ljava/lang/String;JZ)Lcom/innioasis/y1/database/Playlist;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/database/Playlist;->playlistId:Ljava/util/UUID;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/database/Playlist;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/innioasis/y1/database/Playlist;->data:J

    return-wide v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/innioasis/y1/database/Playlist;->isReverse:Z

    return v0
.end method

.method public final copy(Ljava/util/UUID;Ljava/lang/String;JZ)Lcom/innioasis/y1/database/Playlist;
    .locals 7

    const-string v0, "playlistId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/innioasis/y1/database/Playlist;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/innioasis/y1/database/Playlist;-><init>(Ljava/util/UUID;Ljava/lang/String;JZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/y1/database/Playlist;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/y1/database/Playlist;

    iget-object v1, p0, Lcom/innioasis/y1/database/Playlist;->playlistId:Ljava/util/UUID;

    iget-object v3, p1, Lcom/innioasis/y1/database/Playlist;->playlistId:Ljava/util/UUID;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/innioasis/y1/database/Playlist;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/y1/database/Playlist;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/innioasis/y1/database/Playlist;->data:J

    iget-wide v5, p1, Lcom/innioasis/y1/database/Playlist;->data:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/innioasis/y1/database/Playlist;->isReverse:Z

    iget-boolean p1, p1, Lcom/innioasis/y1/database/Playlist;->isReverse:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getData()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/innioasis/y1/database/Playlist;->data:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/innioasis/y1/database/Playlist;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaylistId()Ljava/util/UUID;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/innioasis/y1/database/Playlist;->playlistId:Ljava/util/UUID;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/innioasis/y1/database/Playlist;->playlistId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1/database/Playlist;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/innioasis/y1/database/Playlist;->data:J

    invoke-static {v1, v2}, Lcom/innioasis/y1/database/Bookmark$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/innioasis/y1/database/Playlist;->isReverse:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isReverse()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/innioasis/y1/database/Playlist;->isReverse:Z

    return v0
.end method

.method public final setData(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/innioasis/y1/database/Playlist;->data:J

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/innioasis/y1/database/Playlist;->name:Ljava/lang/String;

    return-void
.end method

.method public final setReverse(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/innioasis/y1/database/Playlist;->isReverse:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Playlist(playlistId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/database/Playlist;->playlistId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/database/Playlist;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/innioasis/y1/database/Playlist;->data:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isReverse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/innioasis/y1/database/Playlist;->isReverse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
