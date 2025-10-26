.class public final Lcom/innioasis/music/adapter/SubmenuAdapter$Item;
.super Ljava/lang/Object;
.source "SubmenuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/music/adapter/SubmenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/innioasis/music/adapter/SubmenuAdapter$Item;",
        "",
        "string",
        "",
        "playlist",
        "Lcom/innioasis/y1/database/Playlist;",
        "(Ljava/lang/String;Lcom/innioasis/y1/database/Playlist;)V",
        "getPlaylist",
        "()Lcom/innioasis/y1/database/Playlist;",
        "setPlaylist",
        "(Lcom/innioasis/y1/database/Playlist;)V",
        "getString",
        "()Ljava/lang/String;",
        "setString",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
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
.field private playlist:Lcom/innioasis/y1/database/Playlist;

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/innioasis/y1/database/Playlist;)V
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->string:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->playlist:Lcom/innioasis/y1/database/Playlist;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/innioasis/y1/database/Playlist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 23
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/Playlist;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/music/adapter/SubmenuAdapter$Item;Ljava/lang/String;Lcom/innioasis/y1/database/Playlist;ILjava/lang/Object;)Lcom/innioasis/music/adapter/SubmenuAdapter$Item;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->string:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->playlist:Lcom/innioasis/y1/database/Playlist;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->copy(Ljava/lang/String;Lcom/innioasis/y1/database/Playlist;)Lcom/innioasis/music/adapter/SubmenuAdapter$Item;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->string:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/innioasis/y1/database/Playlist;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->playlist:Lcom/innioasis/y1/database/Playlist;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/innioasis/y1/database/Playlist;)Lcom/innioasis/music/adapter/SubmenuAdapter$Item;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;

    invoke-direct {v0, p1, p2}, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/Playlist;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;

    iget-object v1, p0, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->string:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->string:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->playlist:Lcom/innioasis/y1/database/Playlist;

    iget-object p1, p1, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->playlist:Lcom/innioasis/y1/database/Playlist;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPlaylist()Lcom/innioasis/y1/database/Playlist;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->playlist:Lcom/innioasis/y1/database/Playlist;

    return-object v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->playlist:Lcom/innioasis/y1/database/Playlist;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/innioasis/y1/database/Playlist;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setPlaylist(Lcom/innioasis/y1/database/Playlist;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->playlist:Lcom/innioasis/y1/database/Playlist;

    return-void
.end method

.method public final setString(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->string:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(string="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playlist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->playlist:Lcom/innioasis/y1/database/Playlist;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
