.class public final Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1$init$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "PhotosActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1;->init(Lcom/innioasis/y1/databinding/ItemPhotosBinding;Lcom/innioasis/y1/activity/PhotosActivity$Item;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0010\u0010\u0008\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00020\u0002\u0018\u00010\tH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/y1/activity/PhotosActivity$adapter$2$1$init$1",
        "Lcom/bumptech/glide/request/target/SimpleTarget;",
        "Landroid/graphics/drawable/Drawable;",
        "path",
        "",
        "onResourceReady",
        "",
        "resource",
        "transition",
        "Lcom/bumptech/glide/request/transition/Transition;",
        "app_frGeneralRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $binding:Lcom/innioasis/y1/databinding/ItemPhotosBinding;

.field private final path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/PhotosActivity$Item;Lcom/innioasis/y1/databinding/ItemPhotosBinding;)V
    .locals 0

    iput-object p2, p0, Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1$init$1;->$binding:Lcom/innioasis/y1/databinding/ItemPhotosBinding;

    .line 92
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    .line 93
    invoke-virtual {p1}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1$init$1;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object p2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1$init$1;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1$init$1;->$binding:Lcom/innioasis/y1/databinding/ItemPhotosBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ItemPhotosBinding;->img:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    iget-object p2, p0, Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1$init$1;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1$init$1;->$binding:Lcom/innioasis/y1/databinding/ItemPhotosBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ItemPhotosBinding;->img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 100
    iget-object p2, p0, Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1$init$1;->$binding:Lcom/innioasis/y1/databinding/ItemPhotosBinding;

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ItemPhotosBinding;->img:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 92
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1$init$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
