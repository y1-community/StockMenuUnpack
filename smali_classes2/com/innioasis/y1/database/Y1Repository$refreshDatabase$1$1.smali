.class final Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$1;
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
    value = "SMAP\nY1Repository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Y1Repository.kt\ncom/innioasis/y1/database/Y1Repository$refreshDatabase$1$1\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1510:1\n37#2:1511\n36#2,3:1512\n*S KotlinDebug\n*F\n+ 1 Y1Repository.kt\ncom/innioasis/y1/database/Y1Repository$refreshDatabase$1$1\n*L\n692#1:1511\n692#1:1512,3\n*E\n"
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
.field final synthetic $songsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/innioasis/y1/database/Y1Repository;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/database/Y1Repository;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/database/Y1Repository;",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    iput-object p2, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$1;->$songsCache:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 691
    invoke-virtual {p0}, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 692
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-static {v0}, Lcom/innioasis/y1/database/Y1Repository;->access$getSongDao$p(Lcom/innioasis/y1/database/Y1Repository;)Lcom/innioasis/y1/database/SongDao;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$1;->$songsCache:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/innioasis/y1/database/Song;

    .line 1514
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    check-cast v1, [Lcom/innioasis/y1/database/Song;

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/innioasis/y1/database/Song;

    invoke-interface {v0, v1}, Lcom/innioasis/y1/database/SongDao;->insert([Lcom/innioasis/y1/database/Song;)V

    .line 693
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Global;->getScanNewAddedCount()I

    move-result v1

    iget-object v3, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$1;->$songsCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/innioasis/music/objects/Global;->setScanNewAddedCount(I)V

    .line 694
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "refreshDatabase"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Global.scanNewAddedCount \u6570\u91cf"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v3}, Lcom/innioasis/music/objects/Global;->getScanNewAddedCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$1;->$songsCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
