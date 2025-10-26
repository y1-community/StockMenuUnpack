.class final Lcom/innioasis/music/GenresActivity$confirm$3;
.super Lkotlin/jvm/internal/Lambda;
.source "GenresActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/GenresActivity;->confirm()V
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
.field final synthetic $artist:Ljava/lang/String;

.field final synthetic this$0:Lcom/innioasis/music/GenresActivity;


# direct methods
.method public static synthetic $r8$lambda$WIaQI0OBdkLg2_UiYY-PlZgPogA(Lcom/innioasis/music/GenresActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/music/GenresActivity$confirm$3;->invoke$lambda-0(Lcom/innioasis/music/GenresActivity;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/music/GenresActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/GenresActivity$confirm$3;->this$0:Lcom/innioasis/music/GenresActivity;

    iput-object p2, p0, Lcom/innioasis/music/GenresActivity$confirm$3;->$artist:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/innioasis/music/GenresActivity;Ljava/lang/String;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$artist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getSongList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/innioasis/music/GenresActivity;->showOrHideNone(I)V

    .line 472
    invoke-virtual {p0, p1}, Lcom/innioasis/music/GenresActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityGenresBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityGenresBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getAdapter3_2()Lcom/innioasis/music/adapter/SongListAdapter2;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->bind(Lcom/innioasis/music/adapter/MyBaseAdapter;)V

    .line 474
    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityGenresBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityGenresBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {p1}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->show()V

    .line 475
    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getAdapter3_2()Lcom/innioasis/music/adapter/SongListAdapter2;

    move-result-object p1

    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getSongList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/innioasis/music/adapter/SongListAdapter2;->setItems(Ljava/util/List;)V

    .line 476
    sget-object p1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityGenresBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityGenresBinding;->lv:Landroid/widget/ListView;

    const-string v1, "vb.lv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getAdapter3_2()Lcom/innioasis/music/adapter/SongListAdapter2;

    move-result-object p0

    check-cast p0, Lcom/innioasis/music/adapter/MyBaseAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/innioasis/music/util/Other;->gotoAdapter(Landroid/widget/ListView;Lcom/innioasis/music/adapter/MyBaseAdapter;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 468
    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity$confirm$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 469
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$confirm$3;->this$0:Lcom/innioasis/music/GenresActivity;

    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v2

    iget-object v3, p0, Lcom/innioasis/music/GenresActivity$confirm$3;->$artist:Ljava/lang/String;

    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$confirm$3;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-static {v1}, Lcom/innioasis/music/GenresActivity;->access$getNowGenre(Lcom/innioasis/music/GenresActivity;)Lcom/innioasis/music/data/Genre;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByArtistSync$default(Lcom/innioasis/y1/database/Y1Repository;Ljava/lang/String;ILcom/innioasis/music/data/Genre;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/music/GenresActivity;->setSongList(Ljava/util/List;)V

    .line 470
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$confirm$3;->this$0:Lcom/innioasis/music/GenresActivity;

    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$confirm$3;->$artist:Ljava/lang/String;

    new-instance v2, Lcom/innioasis/music/GenresActivity$confirm$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/innioasis/music/GenresActivity$confirm$3$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/music/GenresActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/innioasis/music/GenresActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
