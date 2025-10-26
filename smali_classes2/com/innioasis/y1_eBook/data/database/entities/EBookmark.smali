.class public final Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;
.super Ljava/lang/Object;
.source "EBookmark.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B9\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\nH\u00c6\u0003JE\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001J\t\u0010 \u001a\u00020\u0008H\u00d6\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006!"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;",
        "",
        "id",
        "",
        "bookId",
        "progress",
        "offset",
        "title",
        "",
        "createTime",
        "",
        "(IIIILjava/lang/String;J)V",
        "getBookId",
        "()I",
        "getCreateTime",
        "()J",
        "getId",
        "getOffset",
        "getProgress",
        "getTitle",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
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
.field private final bookId:I

.field private final createTime:J

.field private final id:I

.field private final offset:I

.field private final progress:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;J)V
    .locals 1

    const-string v0, "title"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->id:I

    .line 23
    iput p2, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->bookId:I

    .line 26
    iput p3, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->progress:I

    .line 29
    iput p4, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->offset:I

    .line 32
    iput-object p5, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->title:Ljava/lang/String;

    .line 34
    iput-wide p6, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->createTime:J

    return-void
.end method

.method public synthetic constructor <init>(IIIILjava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_1

    :cond_1
    move-wide v7, p6

    :goto_1
    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 19
    invoke-direct/range {v1 .. v8}, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;-><init>(IIIILjava/lang/String;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;IIIILjava/lang/String;JILjava/lang/Object;)Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->id:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget p2, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->bookId:I

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->progress:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->offset:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->title:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-wide p6, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->createTime:J

    :cond_5
    move-wide v3, p6

    move-object p2, p0

    move p3, p1

    move p4, p9

    move p5, v0

    move p6, v1

    move-object p7, v2

    move-wide p8, v3

    invoke-virtual/range {p2 .. p9}, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->copy(IIIILjava/lang/String;J)Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->id:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->bookId:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->progress:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->offset:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->createTime:J

    return-wide v0
.end method

.method public final copy(IIIILjava/lang/String;J)Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;
    .locals 9

    const-string v0, "title"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;-><init>(IIIILjava/lang/String;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;

    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->id:I

    iget v3, p1, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->bookId:I

    iget v3, p1, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->bookId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->progress:I

    iget v3, p1, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->progress:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->offset:I

    iget v3, p1, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->offset:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->createTime:J

    iget-wide v5, p1, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->createTime:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getBookId()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->bookId:I

    return v0
.end method

.method public final getCreateTime()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->createTime:J

    return-wide v0
.end method

.method public final getId()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->id:I

    return v0
.end method

.method public final getOffset()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->offset:I

    return v0
.end method

.method public final getProgress()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->progress:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->bookId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->progress:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->offset:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->createTime:J

    invoke-static {v1, v2}, Lcom/innioasis/y1/database/Bookmark$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EBookmark(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bookId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->bookId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
