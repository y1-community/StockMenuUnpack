.class final Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1$confirm$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AlbumsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1;->confirm()V
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
    value = "SMAP\nAlbumsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlbumsActivity.kt\ncom/innioasis/music/AlbumsActivity$isDeleteCallback$1$confirm$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,610:1\n1851#2,2:611\n*S KotlinDebug\n*F\n+ 1 AlbumsActivity.kt\ncom/innioasis/music/AlbumsActivity$isDeleteCallback$1$confirm$1\n*L\n232#1:611,2\n*E\n"
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
.field final synthetic this$0:Lcom/innioasis/music/AlbumsActivity;


# direct methods
.method public static synthetic $r8$lambda$D6mH8tJroIL1HcPByMIVJMhQtrY(Lcom/innioasis/music/AlbumsActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1$confirm$1;->invoke$lambda-1(Lcom/innioasis/music/AlbumsActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/music/AlbumsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-1(Lcom/innioasis/music/AlbumsActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hd"

    .line 240
    invoke-virtual {p0, v0}, Lcom/innioasis/music/AlbumsActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/innioasis/music/AlbumsActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityAlbumsBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityAlbumsBinding;->lv:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/innioasis/music/AlbumsActivity;->access$getAdapter(Lcom/innioasis/music/AlbumsActivity;)Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 242
    invoke-static {p0}, Lcom/innioasis/music/AlbumsActivity;->access$getAdapter(Lcom/innioasis/music/AlbumsActivity;)Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->notifyDataSetChanged()V

    .line 243
    invoke-static {p0}, Lcom/innioasis/music/AlbumsActivity;->access$getAdapter(Lcom/innioasis/music/AlbumsActivity;)Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/innioasis/music/AlbumsActivity;->showOrHideNone(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1$confirm$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 9

    .line 229
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository;->startDeleteSongs()V

    .line 230
    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-static {v0}, Lcom/innioasis/music/AlbumsActivity;->access$getAdapter(Lcom/innioasis/music/AlbumsActivity;)Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getSelectedIndexList()Ljava/util/List;

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

    .line 231
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v3

    iget-object v2, p0, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-static {v2}, Lcom/innioasis/music/AlbumsActivity;->access$getAdapter(Lcom/innioasis/music/AlbumsActivity;)Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/innioasis/music/data/Album;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByAlbumSync$default(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/music/data/Album;ILcom/innioasis/music/data/Genre;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 232
    check-cast v1, Ljava/lang/Iterable;

    .line 611
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/database/Song;

    .line 233
    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/innioasis/y1/database/Y1Repository;->deleteSong(Lcom/innioasis/y1/database/Song;)V

    goto :goto_0

    .line 236
    :cond_1
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository;->endDeleteSongs()V

    .line 237
    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-static {v0}, Lcom/innioasis/music/AlbumsActivity;->access$getAdapter(Lcom/innioasis/music/AlbumsActivity;)Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->removeItems()V

    .line 238
    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-static {v0}, Lcom/innioasis/music/AlbumsActivity;->access$getAdapter(Lcom/innioasis/music/AlbumsActivity;)Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 239
    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    new-instance v1, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1$confirm$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1$confirm$1$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/music/AlbumsActivity;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/music/AlbumsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
