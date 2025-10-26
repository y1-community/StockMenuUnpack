.class final Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/SearchActivity$MyViewHolder;->bind(Lcom/innioasis/music/SearchActivity$Item;ZZ)V
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

.field final synthetic $item:Lcom/innioasis/music/SearchActivity$Item;

.field final synthetic this$0:Lcom/innioasis/music/SearchActivity;

.field final synthetic this$1:Lcom/innioasis/music/SearchActivity$MyViewHolder;


# direct methods
.method public static synthetic $r8$lambda$fT9u3h-QHB0guhPGqFrNUfkoduQ(Lcom/innioasis/music/SearchActivity$MyViewHolder;Lcom/innioasis/music/data/Album;Ljava/util/List;Lcom/innioasis/music/SearchActivity;Lcom/innioasis/music/SearchActivity$Item;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1;->invoke$lambda-0(Lcom/innioasis/music/SearchActivity$MyViewHolder;Lcom/innioasis/music/data/Album;Ljava/util/List;Lcom/innioasis/music/SearchActivity;Lcom/innioasis/music/SearchActivity$Item;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/music/data/Album;Lcom/innioasis/music/SearchActivity$Item;Lcom/innioasis/music/SearchActivity;Lcom/innioasis/music/SearchActivity$MyViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1;->$album:Lcom/innioasis/music/data/Album;

    iput-object p2, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1;->$item:Lcom/innioasis/music/SearchActivity$Item;

    iput-object p3, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1;->this$0:Lcom/innioasis/music/SearchActivity;

    iput-object p4, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1;->this$1:Lcom/innioasis/music/SearchActivity$MyViewHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/innioasis/music/SearchActivity$MyViewHolder;Lcom/innioasis/music/data/Album;Ljava/util/List;Lcom/innioasis/music/SearchActivity;Lcom/innioasis/music/SearchActivity$Item;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$album"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$songs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-static {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->access$getBinding(Lcom/innioasis/music/SearchActivity$MyViewHolder;)Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->title:Landroid/widget/TextView;

    sget-object v1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    sget-object v2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Album;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->processFileExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/innioasis/music/util/Other;->unNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    invoke-static {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->access$getBinding(Lcom/innioasis/music/SearchActivity$MyViewHolder;)Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->info:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const p2, 0x7f110131

    invoke-virtual {p3, p2}, Lcom/innioasis/music/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    invoke-static {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->access$getBinding(Lcom/innioasis/music/SearchActivity$MyViewHolder;)Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p4}, Lcom/innioasis/music/SearchActivity$Item;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {p3}, Lcom/innioasis/music/SearchActivity;->access$getDefaultBitmap(Lcom/innioasis/music/SearchActivity;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 13

    .line 409
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    iget-object v2, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1;->$album:Lcom/innioasis/music/data/Album;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByAlbumSync$default(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/music/data/Album;ILcom/innioasis/music/data/Genre;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 410
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1;->$item:Lcom/innioasis/music/SearchActivity$Item;

    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity$Item;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v10

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1;->$item:Lcom/innioasis/music/SearchActivity$Item;

    sget-object v1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/database/Song;

    invoke-virtual {v2}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/innioasis/music/util/Other;->getAlbumCover(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/music/SearchActivity$Item;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1;->this$0:Lcom/innioasis/music/SearchActivity;

    iget-object v8, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1;->this$1:Lcom/innioasis/music/SearchActivity$MyViewHolder;

    iget-object v9, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1;->$album:Lcom/innioasis/music/data/Album;

    iget-object v12, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1;->$item:Lcom/innioasis/music/SearchActivity$Item;

    new-instance v1, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1$$ExternalSyntheticLambda0;

    move-object v7, v1

    move-object v11, v0

    invoke-direct/range {v7 .. v12}, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/music/SearchActivity$MyViewHolder;Lcom/innioasis/music/data/Album;Ljava/util/List;Lcom/innioasis/music/SearchActivity;Lcom/innioasis/music/SearchActivity$Item;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/music/SearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
