.class final Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$2$1;
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
.field final synthetic $item:Lcom/innioasis/music/SearchActivity$Item;

.field final synthetic $song:Lcom/innioasis/y1/database/Song;

.field final synthetic this$0:Lcom/innioasis/music/SearchActivity;

.field final synthetic this$1:Lcom/innioasis/music/SearchActivity$MyViewHolder;


# direct methods
.method public static synthetic $r8$lambda$CCrbpir23GQZ-zBHLLyCIf2QcVE(Lcom/innioasis/music/SearchActivity$MyViewHolder;Lcom/innioasis/music/SearchActivity$Item;Lcom/innioasis/music/SearchActivity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$2$1;->invoke$lambda-0(Lcom/innioasis/music/SearchActivity$MyViewHolder;Lcom/innioasis/music/SearchActivity$Item;Lcom/innioasis/music/SearchActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/music/SearchActivity$Item;Lcom/innioasis/y1/database/Song;Lcom/innioasis/music/SearchActivity;Lcom/innioasis/music/SearchActivity$MyViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$2$1;->$item:Lcom/innioasis/music/SearchActivity$Item;

    iput-object p2, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$2$1;->$song:Lcom/innioasis/y1/database/Song;

    iput-object p3, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$2$1;->this$0:Lcom/innioasis/music/SearchActivity;

    iput-object p4, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$2$1;->this$1:Lcom/innioasis/music/SearchActivity$MyViewHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/innioasis/music/SearchActivity$MyViewHolder;Lcom/innioasis/music/SearchActivity$Item;Lcom/innioasis/music/SearchActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-static {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->access$getBinding(Lcom/innioasis/music/SearchActivity$MyViewHolder;)Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/innioasis/music/SearchActivity$Item;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/innioasis/music/SearchActivity;->access$getDefaultBitmap(Lcom/innioasis/music/SearchActivity;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$2$1;->$item:Lcom/innioasis/music/SearchActivity$Item;

    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity$Item;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$2$1;->$item:Lcom/innioasis/music/SearchActivity$Item;

    sget-object v1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    iget-object v2, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$2$1;->$song:Lcom/innioasis/y1/database/Song;

    invoke-virtual {v2}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/innioasis/music/util/Other;->getAlbumCover(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/music/SearchActivity$Item;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$2$1;->this$0:Lcom/innioasis/music/SearchActivity;

    iget-object v1, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$2$1;->this$1:Lcom/innioasis/music/SearchActivity$MyViewHolder;

    iget-object v2, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$2$1;->$item:Lcom/innioasis/music/SearchActivity$Item;

    new-instance v3, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2, v0}, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/music/SearchActivity$MyViewHolder;Lcom/innioasis/music/SearchActivity$Item;Lcom/innioasis/music/SearchActivity;)V

    invoke-virtual {v0, v3}, Lcom/innioasis/music/SearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
