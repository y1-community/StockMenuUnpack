.class final Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$4;
.super Lkotlin/jvm/internal/Lambda;
.source "GenresActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
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
.field final synthetic $playlistId:Ljava/util/UUID;

.field final synthetic this$0:Lcom/innioasis/music/GenresActivity;


# direct methods
.method public static synthetic $r8$lambda$Xqiee_1UkVnJcPFUcbJHux6nadQ(Lcom/innioasis/music/GenresActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$4;->invoke$lambda-0(Lcom/innioasis/music/GenresActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/music/GenresActivity;Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$4;->this$0:Lcom/innioasis/music/GenresActivity;

    iput-object p2, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$4;->$playlistId:Ljava/util/UUID;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/innioasis/music/GenresActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ha"

    .line 192
    invoke-virtual {p0, v0}, Lcom/innioasis/music/GenresActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity;->getAdapter2()Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MainAdapter;->notifyDataSetChanged()V

    const v0, 0x7f110024

    .line 194
    invoke-virtual {p0, v0}, Lcom/innioasis/music/GenresActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.added_successfully)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/music/GenresActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$4;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 9

    .line 186
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$4;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/GenresActivity;->getAdapter2()Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MainAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 187
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v3

    iget-object v2, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$4;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v2}, Lcom/innioasis/music/GenresActivity;->getAdapter2()Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/innioasis/music/adapter/MainAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$4;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-static {v1}, Lcom/innioasis/music/GenresActivity;->access$getNowGenre(Lcom/innioasis/music/GenresActivity;)Lcom/innioasis/music/data/Genre;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByArtistSync$default(Lcom/innioasis/y1/database/Y1Repository;Ljava/lang/String;ILcom/innioasis/music/data/Genre;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 188
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v2

    iget-object v3, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$4;->$playlistId:Ljava/util/UUID;

    invoke-virtual {v2, v1, v3}, Lcom/innioasis/y1/database/Y1Repository;->addToPlayList(Ljava/util/List;Ljava/util/UUID;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$4;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/GenresActivity;->getAdapter2()Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MainAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 191
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$4;->this$0:Lcom/innioasis/music/GenresActivity;

    new-instance v1, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$4$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/music/GenresActivity;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/music/GenresActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
