.class final Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GenreListAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/adapter/GenreListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
.field final synthetic $genre:Lcom/innioasis/music/data/Genre;

.field final synthetic $info:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/innioasis/music/adapter/GenreListAdapter;


# direct methods
.method public static synthetic $r8$lambda$cd-byQ7ldAxel6vTT-7-5BbGmDg(Landroid/widget/TextView;Lcom/innioasis/music/data/Genre;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;->invoke$lambda-0(Landroid/widget/TextView;Lcom/innioasis/music/data/Genre;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/music/data/Genre;Lcom/innioasis/music/adapter/GenreListAdapter;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;->$genre:Lcom/innioasis/music/data/Genre;

    iput-object p2, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;->this$0:Lcom/innioasis/music/adapter/GenreListAdapter;

    iput-object p3, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;->$info:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Landroid/widget/TextView;Lcom/innioasis/music/data/Genre;)V
    .locals 1

    const-string v0, "$genre"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/innioasis/music/data/Genre;->getInfo()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 30
    iget-object v0, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;->$genre:Lcom/innioasis/music/data/Genre;

    invoke-virtual {v0}, Lcom/innioasis/music/data/Genre;->getInfo()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;->$genre:Lcom/innioasis/music/data/Genre;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/database/Y1Repository;->getArtistsByGenreSync(Lcom/innioasis/music/data/Genre;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 32
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    iget-object v2, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;->$genre:Lcom/innioasis/music/data/Genre;

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/database/Y1Repository;->getAlbumsByGenreSync(Lcom/innioasis/music/data/Genre;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-le v0, v2, :cond_0

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;->this$0:Lcom/innioasis/music/adapter/GenreListAdapter;

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/GenreListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f1100bb

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;->this$0:Lcom/innioasis/music/adapter/GenreListAdapter;

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/GenreListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f1100ba

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-le v1, v2, :cond_1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;->this$0:Lcom/innioasis/music/adapter/GenreListAdapter;

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/GenreListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1100b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 36
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;->this$0:Lcom/innioasis/music/adapter/GenreListAdapter;

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/GenreListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1100b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_1
    iget-object v1, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;->$genre:Lcom/innioasis/music/data/Genre;

    invoke-virtual {v1, v0}, Lcom/innioasis/music/data/Genre;->setInfo(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;->this$0:Lcom/innioasis/music/adapter/GenreListAdapter;

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/GenreListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    .line 39
    iget-object v1, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;->$info:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1;->$genre:Lcom/innioasis/music/data/Genre;

    new-instance v3, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Lcom/innioasis/music/adapter/GenreListAdapter$getView$1$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;Lcom/innioasis/music/data/Genre;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
