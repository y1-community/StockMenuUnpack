.class public final Lcom/innioasis/y1/database/video/VideoInfo;
.super Ljava/lang/Object;
.source "VideoInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B9\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003JG\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\u0008\u0010!\u001a\u00020\u0005H\u0016R\u001e\u0010\t\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000c\u00a8\u0006\""
    }
    d2 = {
        "Lcom/innioasis/y1/database/video/VideoInfo;",
        "",
        "video_id",
        "",
        "fileName",
        "",
        "filePath",
        "createdTime",
        "pinyinName",
        "addedTime",
        "(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V",
        "getAddedTime",
        "()J",
        "setAddedTime",
        "(J)V",
        "getCreatedTime",
        "getFileName",
        "()Ljava/lang/String;",
        "getFilePath",
        "getPinyinName",
        "getVideo_id",
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
.field private addedTime:J

.field private final createdTime:J

.field private final fileName:Ljava/lang/String;

.field private final filePath:Ljava/lang/String;

.field private final pinyinName:Ljava/lang/String;

.field private final video_id:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 1

    const-string v0, "fileName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/innioasis/y1/database/video/VideoInfo;->video_id:J

    .line 16
    iput-object p3, p0, Lcom/innioasis/y1/database/video/VideoInfo;->fileName:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/innioasis/y1/database/video/VideoInfo;->filePath:Ljava/lang/String;

    .line 22
    iput-wide p5, p0, Lcom/innioasis/y1/database/video/VideoInfo;->createdTime:J

    .line 25
    iput-object p7, p0, Lcom/innioasis/y1/database/video/VideoInfo;->pinyinName:Ljava/lang/String;

    .line 28
    iput-wide p8, p0, Lcom/innioasis/y1/database/video/VideoInfo;->addedTime:J

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    and-int/lit8 v0, p10, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v3, v0

    goto :goto_0

    :cond_0
    move-wide v3, p1

    :goto_0
    move-object v2, p0

    move-object v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    .line 12
    invoke-direct/range {v2 .. v11}, Lcom/innioasis/y1/database/video/VideoInfo;-><init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/y1/database/video/VideoInfo;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JILjava/lang/Object;)Lcom/innioasis/y1/database/video/VideoInfo;
    .locals 10

    move-object v0, p0

    and-int/lit8 v1, p10, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/innioasis/y1/database/video/VideoInfo;->video_id:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p10, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/innioasis/y1/database/video/VideoInfo;->fileName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p10, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/innioasis/y1/database/video/VideoInfo;->filePath:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p10, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/innioasis/y1/database/video/VideoInfo;->createdTime:J

    goto :goto_3

    :cond_3
    move-wide v5, p5

    :goto_3
    and-int/lit8 v7, p10, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/innioasis/y1/database/video/VideoInfo;->pinyinName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p7

    :goto_4
    and-int/lit8 v8, p10, 0x20

    if-eqz v8, :cond_5

    iget-wide v8, v0, Lcom/innioasis/y1/database/video/VideoInfo;->addedTime:J

    goto :goto_5

    :cond_5
    move-wide/from16 v8, p8

    :goto_5
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move-wide p5, v5

    move-object/from16 p7, v7

    move-wide/from16 p8, v8

    invoke-virtual/range {p0 .. p9}, Lcom/innioasis/y1/database/video/VideoInfo;->copy(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lcom/innioasis/y1/database/video/VideoInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/innioasis/y1/database/video/VideoInfo;->video_id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/innioasis/y1/database/video/VideoInfo;->createdTime:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoInfo;->pinyinName:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/innioasis/y1/database/video/VideoInfo;->addedTime:J

    return-wide v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lcom/innioasis/y1/database/video/VideoInfo;
    .locals 11

    const-string v0, "fileName"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/innioasis/y1/database/video/VideoInfo;

    move-object v1, v0

    move-wide v2, p1

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/innioasis/y1/database/video/VideoInfo;-><init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/y1/database/video/VideoInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/y1/database/video/VideoInfo;

    iget-wide v3, p0, Lcom/innioasis/y1/database/video/VideoInfo;->video_id:J

    iget-wide v5, p1, Lcom/innioasis/y1/database/video/VideoInfo;->video_id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoInfo;->fileName:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/y1/database/video/VideoInfo;->fileName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoInfo;->filePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/y1/database/video/VideoInfo;->filePath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/innioasis/y1/database/video/VideoInfo;->createdTime:J

    iget-wide v5, p1, Lcom/innioasis/y1/database/video/VideoInfo;->createdTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoInfo;->pinyinName:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/y1/database/video/VideoInfo;->pinyinName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/innioasis/y1/database/video/VideoInfo;->addedTime:J

    iget-wide v5, p1, Lcom/innioasis/y1/database/video/VideoInfo;->addedTime:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAddedTime()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/innioasis/y1/database/video/VideoInfo;->addedTime:J

    return-wide v0
.end method

.method public final getCreatedTime()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/innioasis/y1/database/video/VideoInfo;->createdTime:J

    return-wide v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getPinyinName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/innioasis/y1/database/video/VideoInfo;->pinyinName:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideo_id()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/innioasis/y1/database/video/VideoInfo;->video_id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/innioasis/y1/database/video/VideoInfo;->video_id:J

    invoke-static {v0, v1}, Lcom/innioasis/y1/database/Bookmark$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/innioasis/y1/database/video/VideoInfo;->createdTime:J

    invoke-static {v1, v2}, Lcom/innioasis/y1/database/Bookmark$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoInfo;->pinyinName:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/innioasis/y1/database/video/VideoInfo;->addedTime:J

    invoke-static {v1, v2}, Lcom/innioasis/y1/database/Bookmark$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAddedTime(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/innioasis/y1/database/video/VideoInfo;->addedTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoInfo(video_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/innioasis/y1/database/video/VideoInfo;->video_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', filePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', createdTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/innioasis/y1/database/video/VideoInfo;->createdTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pinyinName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/database/video/VideoInfo;->pinyinName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/innioasis/y1/database/video/VideoInfo;->addedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
