.class final Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Y1Repository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $addTime:J

.field final synthetic $node:Ljava/io/File;

.field final synthetic this$0:Lcom/innioasis/y1/database/Y1Repository;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/database/Y1Repository;Ljava/io/File;J)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$2;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    iput-object p2, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$2;->$node:Ljava/io/File;

    iput-wide p3, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$2;->$addTime:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 658
    invoke-virtual {p0}, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 15

    .line 660
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$2;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-static {v0}, Lcom/innioasis/y1/database/Y1Repository;->access$getVideoDao$p(Lcom/innioasis/y1/database/Y1Repository;)Lcom/innioasis/y1/database/video/VideoInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$2;->$node:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "node.absolutePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/innioasis/y1/database/video/VideoInfoDao;->getVideoByPathSync(Ljava/lang/String;)Lcom/innioasis/y1/database/video/VideoInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$2;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-static {v0}, Lcom/innioasis/y1/database/Y1Repository;->access$getVideoDao$p(Lcom/innioasis/y1/database/Y1Repository;)Lcom/innioasis/y1/database/video/VideoInfoDao;

    move-result-object v0

    .line 665
    new-instance v1, Lcom/innioasis/y1/database/video/VideoInfo;

    const-wide/16 v4, 0x0

    .line 666
    iget-object v3, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$2;->$node:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v3, "node.name"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    iget-object v3, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$2;->$node:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    iget-object v2, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$2;->$node:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 669
    invoke-static {}, Lcom/innioasis/y1/utils/HanziToPinyin;->getInstance()Lcom/innioasis/y1/utils/HanziToPinyin;

    move-result-object v2

    .line 670
    iget-object v3, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$2;->$node:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/utils/HanziToPinyin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 671
    iget-wide v11, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$2;->$addTime:J

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v3, v1

    .line 665
    invoke-direct/range {v3 .. v14}, Lcom/innioasis/y1/database/video/VideoInfo;-><init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 664
    invoke-interface {v0, v1}, Lcom/innioasis/y1/database/video/VideoInfoDao;->insertSync(Lcom/innioasis/y1/database/video/VideoInfo;)J

    goto :goto_0

    .line 676
    :cond_0
    iget-wide v1, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$2;->$addTime:J

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/database/video/VideoInfo;->setAddedTime(J)V

    .line 677
    iget-object v1, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$2;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-static {v1}, Lcom/innioasis/y1/database/Y1Repository;->access$getVideoDao$p(Lcom/innioasis/y1/database/Y1Repository;)Lcom/innioasis/y1/database/video/VideoInfoDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/innioasis/y1/database/video/VideoInfoDao;->updateSync(Lcom/innioasis/y1/database/video/VideoInfo;)V

    :goto_0
    return-void
.end method
