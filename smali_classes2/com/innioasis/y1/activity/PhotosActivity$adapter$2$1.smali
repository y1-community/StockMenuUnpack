.class public final Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1;
.super Lcom/innioasis/y1/base/BaseBindingAdapter;
.source "PhotosActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/PhotosActivity$adapter$2;->invoke()Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter<",
        "Lcom/innioasis/y1/activity/PhotosActivity$Item;",
        "Lcom/innioasis/y1/databinding/ItemPhotosBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/y1/activity/PhotosActivity$adapter$2$1",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "Lcom/innioasis/y1/activity/PhotosActivity$Item;",
        "Lcom/innioasis/y1/databinding/ItemPhotosBinding;",
        "init",
        "",
        "binding",
        "bean",
        "pos",
        "",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/PhotosActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/PhotosActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 63
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 63
    check-cast p1, Lcom/innioasis/y1/databinding/ItemPhotosBinding;

    check-cast p2, Lcom/innioasis/y1/activity/PhotosActivity$Item;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1;->init(Lcom/innioasis/y1/databinding/ItemPhotosBinding;Lcom/innioasis/y1/activity/PhotosActivity$Item;I)V

    return-void
.end method

.method public init(Lcom/innioasis/y1/databinding/ItemPhotosBinding;Lcom/innioasis/y1/activity/PhotosActivity$Item;I)V
    .locals 4

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemPhotosBinding;->text:Landroid/widget/TextView;

    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->processFileExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, p3, :cond_0

    .line 68
    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemPhotosBinding;->card:Landroidx/cardview/widget/CardView;

    const-string v0, "#3CFFDE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 69
    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemPhotosBinding;->imgSel:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemPhotosBinding;->card:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 73
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getMultiSelectIndexes$p(Lcom/innioasis/y1/activity/PhotosActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 74
    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemPhotosBinding;->imgSel:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemPhotosBinding;->imgSel:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    :goto_0
    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemPhotosBinding;->img:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p2}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->isDirectory()Z

    move-result p3

    const/16 v0, 0x20

    if-eqz p3, :cond_2

    .line 83
    sget-object p3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u8f7d\u6587\u4ef6\u5939\u56fe\u6807 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemPhotosBinding;->img:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->hashCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p3, p2, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemPhotosBinding;->img:Landroid/widget/ImageView;

    const p2, 0x7f0800d4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 86
    :cond_2
    sget-object p3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u8f7d\u56fe\u7247\u5c01\u9762 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemPhotosBinding;->img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    .line 88
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p3

    const/16 v0, 0x50

    const/16 v1, 0x3c

    .line 89
    invoke-virtual {p3, v0, v1}, Lcom/bumptech/glide/RequestBuilder;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/RequestBuilder;

    const/16 v0, 0x14

    .line 90
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestBuilder;->encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/RequestBuilder;

    .line 92
    new-instance v0, Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1$init$1;

    invoke-direct {v0, p2, p1}, Lcom/innioasis/y1/activity/PhotosActivity$adapter$2$1$init$1;-><init>(Lcom/innioasis/y1/activity/PhotosActivity$Item;Lcom/innioasis/y1/databinding/ItemPhotosBinding;)V

    check-cast v0, Lcom/bumptech/glide/request/target/Target;

    .line 91
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :goto_1
    return-void
.end method
