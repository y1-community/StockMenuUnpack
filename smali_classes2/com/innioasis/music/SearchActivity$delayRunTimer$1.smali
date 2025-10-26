.class public final Lcom/innioasis/music/SearchActivity$delayRunTimer$1;
.super Landroid/os/CountDownTimer;
.source "SearchActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/SearchActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchActivity.kt\ncom/innioasis/music/SearchActivity$delayRunTimer$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,519:1\n1851#2,2:520\n1851#2,2:522\n*S KotlinDebug\n*F\n+ 1 SearchActivity.kt\ncom/innioasis/music/SearchActivity$delayRunTimer$1\n*L\n104#1:520,2\n113#1:522,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "com/innioasis/music/SearchActivity$delayRunTimer$1",
        "Landroid/os/CountDownTimer;",
        "searchKey",
        "",
        "getSearchKey",
        "()Ljava/lang/String;",
        "setSearchKey",
        "(Ljava/lang/String;)V",
        "onFinish",
        "",
        "onTick",
        "millisUntilFinished",
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
.field private searchKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/innioasis/music/SearchActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/SearchActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$delayRunTimer$1;->this$0:Lcom/innioasis/music/SearchActivity;

    const-wide/16 v0, 0x3e8

    .line 96
    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const-string p1, ""

    .line 125
    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$delayRunTimer$1;->searchKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getSearchKey()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$delayRunTimer$1;->searchKey:Ljava/lang/String;

    return-object v0
.end method

.method public onFinish()V
    .locals 10

    .line 100
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "searchTag"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u6267\u884c\u641c\u7d22 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/innioasis/music/SearchActivity$delayRunTimer$1;->searchKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 102
    iget-object v1, p0, Lcom/innioasis/music/SearchActivity$delayRunTimer$1;->searchKey:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_2

    .line 103
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    iget-object v2, p0, Lcom/innioasis/music/SearchActivity$delayRunTimer$1;->searchKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/database/Y1Repository;->getAlbumsByKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 104
    check-cast v1, Ljava/lang/Iterable;

    .line 520
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/innioasis/music/data/Album;

    .line 106
    new-instance v2, Lcom/innioasis/music/SearchActivity$Item;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/16 v8, 0x9

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/innioasis/music/SearchActivity$Item;-><init>(Lcom/innioasis/y1/database/Song;Lcom/innioasis/music/data/Album;ILandroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_1
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    iget-object v2, p0, Lcom/innioasis/music/SearchActivity$delayRunTimer$1;->searchKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 113
    check-cast v1, Ljava/lang/Iterable;

    .line 522
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/innioasis/y1/database/Song;

    .line 115
    new-instance v2, Lcom/innioasis/music/SearchActivity$Item;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/innioasis/music/SearchActivity$Item;-><init>(Lcom/innioasis/y1/database/Song;Lcom/innioasis/music/data/Album;ILandroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/innioasis/music/SearchActivity$delayRunTimer$1;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-static {v1}, Lcom/innioasis/music/SearchActivity;->access$getAdapter(Lcom/innioasis/music/SearchActivity;)Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->setItemList(Ljava/util/List;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method

.method public final setSearchKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$delayRunTimer$1;->searchKey:Ljava/lang/String;

    return-void
.end method
