.class public final Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;
.super Ljava/lang/Object;
.source "EpubChapterInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChapterInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J1\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;",
        "",
        "title",
        "",
        "href",
        "depth",
        "",
        "position",
        "(Ljava/lang/String;Ljava/lang/String;II)V",
        "getDepth",
        "()I",
        "getHref",
        "()Ljava/lang/String;",
        "getPosition",
        "getTitle",
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
.field private final depth:I

.field private final href:Ljava/lang/String;

.field private final position:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "href"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->title:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->href:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->depth:I

    .line 20
    iput p4, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->position:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->title:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->href:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->depth:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->position:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->copy(Ljava/lang/String;Ljava/lang/String;II)Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->href:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->depth:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->position:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;II)Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "href"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;

    iget-object v1, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->href:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->href:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->depth:I

    iget v3, p1, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->depth:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->position:I

    iget p1, p1, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->position:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDepth()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->depth:I

    return v0
.end method

.method public final getHref()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->href:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->position:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->href:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->depth:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->position:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChapterInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", href="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->depth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
