.class final Lcom/innioasis/music/GenresActivity$refreshAllAlbumsAndArtistsActivity$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GenresActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/GenresActivity;->refreshAllAlbumsAndArtistsActivity()V
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
.field final synthetic $position:I

.field final synthetic $temp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/innioasis/music/GenresActivity;


# direct methods
.method public static synthetic $r8$lambda$yFE8s24NGxuAQ1qqLS7thkziVVY(Lcom/innioasis/music/GenresActivity;ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/innioasis/music/GenresActivity$refreshAllAlbumsAndArtistsActivity$1;->invoke$lambda-0(Lcom/innioasis/music/GenresActivity;ILjava/util/List;)V

    return-void
.end method

.method constructor <init>(ILcom/innioasis/music/GenresActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/innioasis/music/GenresActivity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/innioasis/music/GenresActivity$refreshAllAlbumsAndArtistsActivity$1;->$position:I

    iput-object p2, p0, Lcom/innioasis/music/GenresActivity$refreshAllAlbumsAndArtistsActivity$1;->this$0:Lcom/innioasis/music/GenresActivity;

    iput-object p3, p0, Lcom/innioasis/music/GenresActivity$refreshAllAlbumsAndArtistsActivity$1;->$temp:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/innioasis/music/GenresActivity;ILjava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$temp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getAdapter()Lcom/innioasis/music/adapter/GenreListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/innioasis/music/adapter/GenreListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/innioasis/music/data/Genre;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/innioasis/music/GenresActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getAdapter2()Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/innioasis/music/adapter/MainAdapter;->setItems(Ljava/util/List;)V

    .line 646
    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getAdapter2()Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/innioasis/music/adapter/MainAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 638
    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity$refreshAllAlbumsAndArtistsActivity$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 639
    iget v0, p0, Lcom/innioasis/music/GenresActivity$refreshAllAlbumsAndArtistsActivity$1;->$position:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$refreshAllAlbumsAndArtistsActivity$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v1}, Lcom/innioasis/music/GenresActivity;->getAdapter()Lcom/innioasis/music/adapter/GenreListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/adapter/GenreListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 640
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$refreshAllAlbumsAndArtistsActivity$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v1}, Lcom/innioasis/music/GenresActivity;->getAdapter()Lcom/innioasis/music/adapter/GenreListAdapter;

    move-result-object v1

    iget v2, p0, Lcom/innioasis/music/GenresActivity$refreshAllAlbumsAndArtistsActivity$1;->$position:I

    invoke-virtual {v1, v2}, Lcom/innioasis/music/adapter/GenreListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/music/data/Genre;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/database/Y1Repository;->getArtistsByGenreSync(Lcom/innioasis/music/data/Genre;)Ljava/util/List;

    move-result-object v0

    .line 641
    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$refreshAllAlbumsAndArtistsActivity$1;->$temp:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$refreshAllAlbumsAndArtistsActivity$1;->this$0:Lcom/innioasis/music/GenresActivity;

    iget v1, p0, Lcom/innioasis/music/GenresActivity$refreshAllAlbumsAndArtistsActivity$1;->$position:I

    iget-object v2, p0, Lcom/innioasis/music/GenresActivity$refreshAllAlbumsAndArtistsActivity$1;->$temp:Ljava/util/List;

    new-instance v3, Lcom/innioasis/music/GenresActivity$refreshAllAlbumsAndArtistsActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1, v2}, Lcom/innioasis/music/GenresActivity$refreshAllAlbumsAndArtistsActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/music/GenresActivity;ILjava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/innioasis/music/GenresActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
