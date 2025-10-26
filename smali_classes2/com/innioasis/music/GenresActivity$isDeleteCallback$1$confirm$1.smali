.class final Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GenresActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->confirm()V
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
    value = "SMAP\nGenresActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GenresActivity.kt\ncom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,650:1\n1851#2,2:651\n*S KotlinDebug\n*F\n+ 1 GenresActivity.kt\ncom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$1\n*L\n260#1:651,2\n*E\n"
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
.field final synthetic this$0:Lcom/innioasis/music/GenresActivity;


# direct methods
.method public static synthetic $r8$lambda$KyzXJ4VfcyTizUAq1DZpm8atQ4s(Lcom/innioasis/music/GenresActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$1;->invoke$lambda-1(Lcom/innioasis/music/GenresActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/music/GenresActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/music/GenresActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-1(Lcom/innioasis/music/GenresActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hd"

    .line 267
    invoke-virtual {p0, v0}, Lcom/innioasis/music/GenresActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityGenresBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityGenresBinding;->lv:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getAdapter()Lcom/innioasis/music/adapter/GenreListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/adapter/GenreListAdapter;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 269
    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getAdapter()Lcom/innioasis/music/adapter/GenreListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/GenreListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/innioasis/music/GenresActivity;->showOrHideNone(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 257
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository;->startDeleteSongs()V

    .line 258
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/GenresActivity;->getAdapter()Lcom/innioasis/music/adapter/GenreListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/GenreListAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 259
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v2

    iget-object v3, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v3}, Lcom/innioasis/music/GenresActivity;->getAdapter()Lcom/innioasis/music/adapter/GenreListAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/innioasis/music/adapter/GenreListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/music/data/Genre;

    invoke-virtual {v2, v1}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByGenreSync(Lcom/innioasis/music/data/Genre;)Ljava/util/List;

    move-result-object v1

    .line 260
    check-cast v1, Ljava/lang/Iterable;

    .line 651
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/database/Song;

    .line 261
    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/innioasis/y1/database/Y1Repository;->deleteSong(Lcom/innioasis/y1/database/Song;)V

    goto :goto_0

    .line 264
    :cond_1
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository;->endDeleteSongs()V

    .line 265
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/GenresActivity;->getAdapter()Lcom/innioasis/music/adapter/GenreListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/GenreListAdapter;->removeItems()V

    .line 266
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/music/GenresActivity;

    new-instance v1, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$1$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/music/GenresActivity;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/music/GenresActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 271
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/GenresActivity;->getAdapter()Lcom/innioasis/music/adapter/GenreListAdapter;

    move-result-object v1

    check-cast v1, Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-static {v0, v1}, Lcom/innioasis/music/GenresActivity;->access$clear(Lcom/innioasis/music/GenresActivity;Lcom/innioasis/music/adapter/MyBaseAdapter;)V

    return-void
.end method
