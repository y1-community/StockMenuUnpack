.class final Lcom/innioasis/music/GenresActivity$confirm$2$1;
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
.field final synthetic $it:Lcom/innioasis/music/data/Genre;

.field final synthetic this$0:Lcom/innioasis/music/GenresActivity;


# direct methods
.method public static synthetic $r8$lambda$sFJ-gSibj88RHdaaRT4DXAdjX2I(Lcom/innioasis/music/GenresActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/music/GenresActivity$confirm$2$1;->invoke$lambda-0(Lcom/innioasis/music/GenresActivity;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/music/data/Genre;Lcom/innioasis/music/GenresActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/GenresActivity$confirm$2$1;->$it:Lcom/innioasis/music/data/Genre;

    iput-object p2, p0, Lcom/innioasis/music/GenresActivity$confirm$2$1;->this$0:Lcom/innioasis/music/GenresActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/innioasis/music/GenresActivity;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$albums"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/innioasis/music/GenresActivity;->showOrHideNone(I)V

    const v0, 0x7f110122

    .line 458
    invoke-virtual {p0, v0}, Lcom/innioasis/music/GenresActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.music_all_albums)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/music/GenresActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getAdapter3_1()Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/innioasis/music/adapter/AlbumListAdapter;->setAlbums(Ljava/util/List;)V

    .line 460
    sget-object p1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityGenresBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityGenresBinding;->lv:Landroid/widget/ListView;

    const-string v1, "vb.lv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getAdapter3_1()Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object p0

    check-cast p0, Lcom/innioasis/music/adapter/MyBaseAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/innioasis/music/util/Other;->gotoAdapter(Landroid/widget/ListView;Lcom/innioasis/music/adapter/MyBaseAdapter;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 454
    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity$confirm$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 455
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$confirm$2$1;->$it:Lcom/innioasis/music/data/Genre;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/database/Y1Repository;->getAlbumsByGenreSync(Lcom/innioasis/music/data/Genre;)Ljava/util/List;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$confirm$2$1;->this$0:Lcom/innioasis/music/GenresActivity;

    new-instance v2, Lcom/innioasis/music/GenresActivity$confirm$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Lcom/innioasis/music/GenresActivity$confirm$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/music/GenresActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/innioasis/music/GenresActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
