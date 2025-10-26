.class public final Lcom/innioasis/y1/database/Bookmark;
.super Ljava/lang/Object;
.source "Bookmark.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\tH\u00c6\u0003J;\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u0006\u0010 \u001a\u00020\u0003J\t\u0010!\u001a\u00020\"H\u00d6\u0001J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\"\u0004\u0008\u0010\u0010\u000eR\u0016\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000c\"\u0004\u0008\u0016\u0010\u000e\u00a8\u0006$"
    }
    d2 = {
        "Lcom/innioasis/y1/database/Bookmark;",
        "",
        "songId",
        "",
        "startTime",
        "",
        "endTime",
        "date",
        "id",
        "Ljava/util/UUID;",
        "(Ljava/lang/String;JJJLjava/util/UUID;)V",
        "getDate",
        "()J",
        "setDate",
        "(J)V",
        "getEndTime",
        "setEndTime",
        "getId",
        "()Ljava/util/UUID;",
        "getSongId",
        "()Ljava/lang/String;",
        "getStartTime",
        "setStartTime",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "getRate",
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
.field private date:J

.field private endTime:J

.field private final id:Ljava/util/UUID;

.field private final songId:Ljava/lang/String;

.field private startTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJLjava/util/UUID;)V
    .locals 1

    const-string v0, "songId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/innioasis/y1/database/Bookmark;->songId:Ljava/lang/String;

    .line 10
    iput-wide p2, p0, Lcom/innioasis/y1/database/Bookmark;->startTime:J

    .line 11
    iput-wide p4, p0, Lcom/innioasis/y1/database/Bookmark;->endTime:J

    .line 12
    iput-wide p6, p0, Lcom/innioasis/y1/database/Bookmark;->date:J

    .line 13
    iput-object p8, p0, Lcom/innioasis/y1/database/Bookmark;->id:Ljava/util/UUID;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JJJLjava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    move-wide v8, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v8, p6

    :goto_0
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_1

    .line 14
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "randomUUID()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 8
    invoke-direct/range {v2 .. v10}, Lcom/innioasis/y1/database/Bookmark;-><init>(Ljava/lang/String;JJJLjava/util/UUID;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/y1/database/Bookmark;Ljava/lang/String;JJJLjava/util/UUID;ILjava/lang/Object;)Lcom/innioasis/y1/database/Bookmark;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/innioasis/y1/database/Bookmark;->songId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lcom/innioasis/y1/database/Bookmark;->startTime:J

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/innioasis/y1/database/Bookmark;->endTime:J

    goto :goto_2

    :cond_2
    move-wide v4, p4

    :goto_2
    and-int/lit8 v6, p9, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/innioasis/y1/database/Bookmark;->date:J

    goto :goto_3

    :cond_3
    move-wide v6, p6

    :goto_3
    and-int/lit8 v8, p9, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/innioasis/y1/database/Bookmark;->id:Ljava/util/UUID;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p8

    :goto_4
    move-object p1, v1

    move-wide p2, v2

    move-wide p4, v4

    move-wide p6, v6

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/innioasis/y1/database/Bookmark;->copy(Ljava/lang/String;JJJLjava/util/UUID;)Lcom/innioasis/y1/database/Bookmark;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/database/Bookmark;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/innioasis/y1/database/Bookmark;->startTime:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/innioasis/y1/database/Bookmark;->endTime:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/innioasis/y1/database/Bookmark;->date:J

    return-wide v0
.end method

.method public final component5()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/database/Bookmark;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JJJLjava/util/UUID;)Lcom/innioasis/y1/database/Bookmark;
    .locals 10

    const-string v0, "songId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/innioasis/y1/database/Bookmark;

    move-object v1, v0

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/innioasis/y1/database/Bookmark;-><init>(Ljava/lang/String;JJJLjava/util/UUID;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/y1/database/Bookmark;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/y1/database/Bookmark;

    iget-object v1, p0, Lcom/innioasis/y1/database/Bookmark;->songId:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/y1/database/Bookmark;->songId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/innioasis/y1/database/Bookmark;->startTime:J

    iget-wide v5, p1, Lcom/innioasis/y1/database/Bookmark;->startTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/innioasis/y1/database/Bookmark;->endTime:J

    iget-wide v5, p1, Lcom/innioasis/y1/database/Bookmark;->endTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/innioasis/y1/database/Bookmark;->date:J

    iget-wide v5, p1, Lcom/innioasis/y1/database/Bookmark;->date:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/innioasis/y1/database/Bookmark;->id:Ljava/util/UUID;

    iget-object p1, p1, Lcom/innioasis/y1/database/Bookmark;->id:Ljava/util/UUID;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDate()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/innioasis/y1/database/Bookmark;->date:J

    return-wide v0
.end method

.method public final getEndTime()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/innioasis/y1/database/Bookmark;->endTime:J

    return-wide v0
.end method

.method public final getId()Ljava/util/UUID;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/innioasis/y1/database/Bookmark;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public final getRate()Ljava/lang/String;
    .locals 3

    .line 17
    iget-wide v0, p0, Lcom/innioasis/y1/database/Bookmark;->startTime:J

    long-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    iget-wide v1, p0, Lcom/innioasis/y1/database/Bookmark;->endTime:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const-string v0, "1%"

    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getSongId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/innioasis/y1/database/Bookmark;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/innioasis/y1/database/Bookmark;->startTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/innioasis/y1/database/Bookmark;->songId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/innioasis/y1/database/Bookmark;->startTime:J

    invoke-static {v1, v2}, Lcom/innioasis/y1/database/Bookmark$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/innioasis/y1/database/Bookmark;->endTime:J

    invoke-static {v1, v2}, Lcom/innioasis/y1/database/Bookmark$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/innioasis/y1/database/Bookmark;->date:J

    invoke-static {v1, v2}, Lcom/innioasis/y1/database/Bookmark$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1/database/Bookmark;->id:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setDate(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/innioasis/y1/database/Bookmark;->date:J

    return-void
.end method

.method public final setEndTime(J)V
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/innioasis/y1/database/Bookmark;->endTime:J

    return-void
.end method

.method public final setStartTime(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/innioasis/y1/database/Bookmark;->startTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bookmark(songId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/database/Bookmark;->songId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/innioasis/y1/database/Bookmark;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/innioasis/y1/database/Bookmark;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/innioasis/y1/database/Bookmark;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/database/Bookmark;->id:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
