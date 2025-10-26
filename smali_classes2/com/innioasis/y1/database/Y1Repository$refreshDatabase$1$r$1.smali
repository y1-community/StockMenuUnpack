.class final Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nY1Repository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Y1Repository.kt\ncom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1510:1\n37#2:1511\n36#2,3:1512\n*S KotlinDebug\n*F\n+ 1 Y1Repository.kt\ncom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1\n*L\n643#1:1511\n643#1:1512,3\n*E\n"
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
.field final synthetic $node:Ljava/io/File;

.field final synthetic $songsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $time:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic this$0:Lcom/innioasis/y1/database/Y1Repository;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/database/Y1Repository;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/database/Y1Repository;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    iput-object p2, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->$node:Ljava/io/File;

    iput-object p3, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->$songsCache:Ljava/util/List;

    iput-object p4, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->$time:Lkotlin/jvm/internal/Ref$LongRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 634
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-static {v0}, Lcom/innioasis/y1/database/Y1Repository;->access$getSongDao$p(Lcom/innioasis/y1/database/Y1Repository;)Lcom/innioasis/y1/database/SongDao;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->$node:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "node.path"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/innioasis/y1/database/SongDao;->getSongByPathSync(Ljava/lang/String;)Lcom/innioasis/y1/database/Song;

    move-result-object v0

    if-nez v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    iget-object v1, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->$node:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/database/Y1Repository;->fileToSong(Ljava/io/File;)Lcom/innioasis/y1/database/Song;

    move-result-object v0

    .line 636
    iget-object v1, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->$songsCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->$time:Lkotlin/jvm/internal/Ref$LongRef;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->$songsCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->$songsCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 639
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 640
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v4, "refreshDatabase"

    invoke-virtual {v3, v4}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    .line 641
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u751f\u6210100\u6761\u6570\u636e\u8017\u65f6\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->$time:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v6, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sub-long v6, v1, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v7}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 642
    iget-object v3, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->$songsCache:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-static {v0}, Lcom/innioasis/y1/database/Y1Repository;->access$getSongDao$p(Lcom/innioasis/y1/database/Y1Repository;)Lcom/innioasis/y1/database/SongDao;

    move-result-object v0

    iget-object v3, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->$songsCache:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    new-array v5, v6, [Lcom/innioasis/y1/database/Song;

    .line 1514
    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    check-cast v3, [Lcom/innioasis/y1/database/Song;

    array-length v5, v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/innioasis/y1/database/Song;

    invoke-interface {v0, v3}, Lcom/innioasis/y1/database/SongDao;->insert([Lcom/innioasis/y1/database/Song;)V

    .line 644
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Global;->getScanNewAddedCount()I

    move-result v3

    iget-object v5, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->$songsCache:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/innioasis/music/objects/Global;->setScanNewAddedCount(I)V

    .line 645
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v0, v4}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Global.scanNewAddedCount \u6570\u91cf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v5}, Lcom/innioasis/music/objects/Global;->getScanNewAddedCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;->$songsCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 648
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v0, v4}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u63d2\u5165100\u6761\u6570\u636e\u8017\u65f6\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
