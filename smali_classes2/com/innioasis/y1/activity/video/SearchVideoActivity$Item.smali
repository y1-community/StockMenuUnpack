.class public final Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;
.super Ljava/lang/Object;
.source "SearchVideoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/activity/video/SearchVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001f\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;",
        "",
        "videoInfo",
        "Lcom/innioasis/y1/database/video/VideoInfo;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "(Lcom/innioasis/y1/database/video/VideoInfo;Landroid/graphics/Bitmap;)V",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "getVideoInfo",
        "()Lcom/innioasis/y1/database/video/VideoInfo;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private bitmap:Landroid/graphics/Bitmap;

.field private final videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;


# direct methods
.method public constructor <init>(Lcom/innioasis/y1/database/video/VideoInfo;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "videoInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;

    .line 286
    iput-object p2, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/innioasis/y1/database/video/VideoInfo;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 284
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;-><init>(Lcom/innioasis/y1/database/video/VideoInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;Lcom/innioasis/y1/database/video/VideoInfo;Landroid/graphics/Bitmap;ILjava/lang/Object;)Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->copy(Lcom/innioasis/y1/database/video/VideoInfo;Landroid/graphics/Bitmap;)Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/innioasis/y1/database/video/VideoInfo;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;

    return-object v0
.end method

.method public final component2()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final copy(Lcom/innioasis/y1/database/video/VideoInfo;Landroid/graphics/Bitmap;)Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;
    .locals 1

    const-string v0, "videoInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;

    invoke-direct {v0, p1, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;-><init>(Lcom/innioasis/y1/database/video/VideoInfo;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;

    iget-object v3, p1, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getVideoInfo()Lcom/innioasis/y1/database/video/VideoInfo;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/video/VideoInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(videoInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
