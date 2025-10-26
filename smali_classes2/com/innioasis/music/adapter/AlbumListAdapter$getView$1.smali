.class final Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AlbumListAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/adapter/AlbumListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
.field final synthetic $album:Lcom/innioasis/music/data/Album;

.field final synthetic $albumName:Landroid/widget/TextView;

.field final synthetic $artistName:Landroid/widget/TextView;

.field final synthetic $cover:Landroid/widget/ImageView;

.field final synthetic $position:I

.field final synthetic this$0:Lcom/innioasis/music/adapter/AlbumListAdapter;


# direct methods
.method public static synthetic $r8$lambda$9GzQc4gG21iRuZsIfIvLmGtB5Dk(Landroid/widget/ImageView;Lcom/innioasis/music/data/Album;Lcom/innioasis/music/adapter/AlbumListAdapter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->invoke$lambda-1(Landroid/widget/ImageView;Lcom/innioasis/music/data/Album;Lcom/innioasis/music/adapter/AlbumListAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dSJILne8h40QpV53AOPJugRXvKc(Landroid/widget/TextView;Lcom/innioasis/music/data/Album;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->invoke$lambda-0(Landroid/widget/TextView;Lcom/innioasis/music/data/Album;Landroid/widget/TextView;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/music/data/Album;Lcom/innioasis/music/adapter/AlbumListAdapter;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$album:Lcom/innioasis/music/data/Album;

    iput-object p2, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->this$0:Lcom/innioasis/music/adapter/AlbumListAdapter;

    iput p3, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$position:I

    iput-object p4, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$artistName:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$albumName:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$cover:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Landroid/widget/TextView;Lcom/innioasis/music/data/Album;Landroid/widget/TextView;)V
    .locals 2

    const-string v0, "$album"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Album;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/music/util/Other;->unNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    sget-object p0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Album;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->processFileExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/innioasis/music/util/Other;->unNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final invoke$lambda-1(Landroid/widget/ImageView;Lcom/innioasis/music/data/Album;Lcom/innioasis/music/adapter/AlbumListAdapter;)V
    .locals 1

    const-string v0, "$album"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/innioasis/music/data/Album;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/innioasis/music/adapter/AlbumListAdapter;->access$getDefaultBitmap(Lcom/innioasis/music/adapter/AlbumListAdapter;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 43
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    iget-object v2, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$album:Lcom/innioasis/music/data/Album;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByAlbumSync$default(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/music/data/Album;ILcom/innioasis/music/data/Genre;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 44
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/database/Song;

    .line 46
    iget-object v1, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->this$0:Lcom/innioasis/music/adapter/AlbumListAdapter;

    invoke-virtual {v1}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    .line 47
    iget-object v2, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$album:Lcom/innioasis/music/data/Album;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/innioasis/music/data/Album;->setArtist(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$album:Lcom/innioasis/music/data/Album;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/innioasis/music/data/Album;->setCoverFlag(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$artistName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$album:Lcom/innioasis/music/data/Album;

    iget-object v3, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$albumName:Landroid/widget/TextView;

    new-instance v4, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v2, v3}, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda1;-><init>(Landroid/widget/TextView;Lcom/innioasis/music/data/Album;Landroid/widget/TextView;)V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 53
    iget-object v0, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$album:Lcom/innioasis/music/data/Album;

    invoke-virtual {v0}, Lcom/innioasis/music/data/Album;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$album:Lcom/innioasis/music/data/Album;

    sget-object v2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    iget-object v3, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$album:Lcom/innioasis/music/data/Album;

    invoke-virtual {v3}, Lcom/innioasis/music/data/Album;->getCoverFlag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/innioasis/music/util/Other;->getAlbumCover(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/innioasis/music/data/Album;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$cover:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$album:Lcom/innioasis/music/data/Album;

    iget-object v3, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->this$0:Lcom/innioasis/music/adapter/AlbumListAdapter;

    new-instance v4, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v2, v3}, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImageView;Lcom/innioasis/music/data/Album;Lcom/innioasis/music/adapter/AlbumListAdapter;)V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 60
    :cond_1
    iget v0, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$position:I

    iget-object v1, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->this$0:Lcom/innioasis/music/adapter/AlbumListAdapter;

    invoke-static {v1}, Lcom/innioasis/music/adapter/AlbumListAdapter;->access$getTemp$p(Lcom/innioasis/music/adapter/AlbumListAdapter;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 61
    iget v1, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->$position:I

    iget-object v2, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->this$0:Lcom/innioasis/music/adapter/AlbumListAdapter;

    invoke-static {v2}, Lcom/innioasis/music/adapter/AlbumListAdapter;->access$getTemp$p(Lcom/innioasis/music/adapter/AlbumListAdapter;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 62
    iget-object v3, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->this$0:Lcom/innioasis/music/adapter/AlbumListAdapter;

    invoke-virtual {v3}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getMList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/innioasis/music/data/Album;

    invoke-virtual {v3}, Lcom/innioasis/music/data/Album;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 63
    iget-object v3, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->this$0:Lcom/innioasis/music/adapter/AlbumListAdapter;

    invoke-virtual {v3}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getMList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/data/Album;

    invoke-virtual {v0, v2}, Lcom/innioasis/music/data/Album;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->this$0:Lcom/innioasis/music/adapter/AlbumListAdapter;

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getMList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->this$0:Lcom/innioasis/music/adapter/AlbumListAdapter;

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getMList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/data/Album;

    invoke-virtual {v0}, Lcom/innioasis/music/data/Album;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;->this$0:Lcom/innioasis/music/adapter/AlbumListAdapter;

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getMList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/data/Album;

    invoke-virtual {v0, v2}, Lcom/innioasis/music/data/Album;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    return-void
.end method
