.class public final Lcom/innioasis/music/SearchActivity$Item;
.super Ljava/lang/Object;
.source "SearchActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/music/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\tH\u00c6\u0003J7\u0010\u0019\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lcom/innioasis/music/SearchActivity$Item;",
        "",
        "song",
        "Lcom/innioasis/y1/database/Song;",
        "album",
        "Lcom/innioasis/music/data/Album;",
        "type",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "(Lcom/innioasis/y1/database/Song;Lcom/innioasis/music/data/Album;ILandroid/graphics/Bitmap;)V",
        "getAlbum",
        "()Lcom/innioasis/music/data/Album;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "getSong",
        "()Lcom/innioasis/y1/database/Song;",
        "getType",
        "()I",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field private final album:Lcom/innioasis/music/data/Album;

.field private bitmap:Landroid/graphics/Bitmap;

.field private final song:Lcom/innioasis/y1/database/Song;

.field private final type:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/innioasis/music/SearchActivity$Item;-><init>(Lcom/innioasis/y1/database/Song;Lcom/innioasis/music/data/Album;ILandroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/innioasis/y1/database/Song;Lcom/innioasis/music/data/Album;ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$Item;->song:Lcom/innioasis/y1/database/Song;

    .line 355
    iput-object p2, p0, Lcom/innioasis/music/SearchActivity$Item;->album:Lcom/innioasis/music/data/Album;

    .line 356
    iput p3, p0, Lcom/innioasis/music/SearchActivity$Item;->type:I

    .line 357
    iput-object p4, p0, Lcom/innioasis/music/SearchActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/innioasis/y1/database/Song;Lcom/innioasis/music/data/Album;ILandroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x1

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 353
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/innioasis/music/SearchActivity$Item;-><init>(Lcom/innioasis/y1/database/Song;Lcom/innioasis/music/data/Album;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/music/SearchActivity$Item;Lcom/innioasis/y1/database/Song;Lcom/innioasis/music/data/Album;ILandroid/graphics/Bitmap;ILjava/lang/Object;)Lcom/innioasis/music/SearchActivity$Item;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/innioasis/music/SearchActivity$Item;->song:Lcom/innioasis/y1/database/Song;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/innioasis/music/SearchActivity$Item;->album:Lcom/innioasis/music/data/Album;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/innioasis/music/SearchActivity$Item;->type:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/innioasis/music/SearchActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/innioasis/music/SearchActivity$Item;->copy(Lcom/innioasis/y1/database/Song;Lcom/innioasis/music/data/Album;ILandroid/graphics/Bitmap;)Lcom/innioasis/music/SearchActivity$Item;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/innioasis/y1/database/Song;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$Item;->song:Lcom/innioasis/y1/database/Song;

    return-object v0
.end method

.method public final component2()Lcom/innioasis/music/data/Album;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$Item;->album:Lcom/innioasis/music/data/Album;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/innioasis/music/SearchActivity$Item;->type:I

    return v0
.end method

.method public final component4()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final copy(Lcom/innioasis/y1/database/Song;Lcom/innioasis/music/data/Album;ILandroid/graphics/Bitmap;)Lcom/innioasis/music/SearchActivity$Item;
    .locals 1

    new-instance v0, Lcom/innioasis/music/SearchActivity$Item;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/innioasis/music/SearchActivity$Item;-><init>(Lcom/innioasis/y1/database/Song;Lcom/innioasis/music/data/Album;ILandroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/music/SearchActivity$Item;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/music/SearchActivity$Item;

    iget-object v1, p0, Lcom/innioasis/music/SearchActivity$Item;->song:Lcom/innioasis/y1/database/Song;

    iget-object v3, p1, Lcom/innioasis/music/SearchActivity$Item;->song:Lcom/innioasis/y1/database/Song;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/innioasis/music/SearchActivity$Item;->album:Lcom/innioasis/music/data/Album;

    iget-object v3, p1, Lcom/innioasis/music/SearchActivity$Item;->album:Lcom/innioasis/music/data/Album;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/innioasis/music/SearchActivity$Item;->type:I

    iget v3, p1, Lcom/innioasis/music/SearchActivity$Item;->type:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/innioasis/music/SearchActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/innioasis/music/SearchActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAlbum()Lcom/innioasis/music/data/Album;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$Item;->album:Lcom/innioasis/music/data/Album;

    return-object v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getSong()Lcom/innioasis/y1/database/Song;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$Item;->song:Lcom/innioasis/y1/database/Song;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/innioasis/music/SearchActivity$Item;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$Item;->song:Lcom/innioasis/y1/database/Song;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/innioasis/music/SearchActivity$Item;->album:Lcom/innioasis/music/data/Album;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/innioasis/music/data/Album;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/innioasis/music/SearchActivity$Item;->type:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/innioasis/music/SearchActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(song="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/music/SearchActivity$Item;->song:Lcom/innioasis/y1/database/Song;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/music/SearchActivity$Item;->album:Lcom/innioasis/music/data/Album;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/music/SearchActivity$Item;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/music/SearchActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
