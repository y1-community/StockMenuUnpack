.class final Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$bind$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchVideoActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->bind(Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;ZZ)V
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
.field final synthetic $item:Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;

.field final synthetic $song:Lcom/innioasis/y1/database/video/VideoInfo;

.field final synthetic this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

.field final synthetic this$1:Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;


# direct methods
.method public static synthetic $r8$lambda$lzIYqcKpD9jNR7cebfQHDnxkOW4(Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$bind$2$1;->invoke$lambda-0(Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/activity/video/SearchVideoActivity;Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$bind$2$1;->$item:Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;

    iput-object p2, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$bind$2$1;->$song:Lcom/innioasis/y1/database/video/VideoInfo;

    iput-object p3, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$bind$2$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    iput-object p4, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$bind$2$1;->this$1:Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    invoke-static {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->access$getBinding(Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;)Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$bind$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$bind$2$1;->$item:Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$bind$2$1;->$item:Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;

    sget-object v1, Lcom/innioasis/y1/activity/video/VideoUtils;->INSTANCE:Lcom/innioasis/y1/activity/video/VideoUtils;

    iget-object v2, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$bind$2$1;->$song:Lcom/innioasis/y1/database/video/VideoInfo;

    invoke-virtual {v2}, Lcom/innioasis/y1/database/video/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/activity/video/VideoUtils;->getVideoCover(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$bind$2$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$bind$2$1;->this$1:Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;

    iget-object v2, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$bind$2$1;->$item:Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;

    new-instance v3, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$bind$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$bind$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;)V

    invoke-virtual {v0, v3}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
