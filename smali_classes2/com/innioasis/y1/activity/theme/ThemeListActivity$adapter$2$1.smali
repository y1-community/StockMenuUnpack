.class public final Lcom/innioasis/y1/activity/theme/ThemeListActivity$adapter$2$1;
.super Lcom/innioasis/y1/base/BaseBindingAdapter;
.source "ThemeListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/theme/ThemeListActivity$adapter$2;->invoke()Lcom/innioasis/y1/activity/theme/ThemeListActivity$adapter$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter<",
        "Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;",
        "Lcom/innioasis/y1/databinding/ItemThemeBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/y1/activity/theme/ThemeListActivity$adapter$2$1",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;",
        "Lcom/innioasis/y1/databinding/ItemThemeBinding;",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 72
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 72
    check-cast p1, Lcom/innioasis/y1/databinding/ItemThemeBinding;

    check-cast p2, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$adapter$2$1;->init(Lcom/innioasis/y1/databinding/ItemThemeBinding;Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;I)V

    return-void
.end method

.method public init(Lcom/innioasis/y1/databinding/ItemThemeBinding;Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;I)V
    .locals 4

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemThemeBinding;->text:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getMark()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p3, :cond_0

    .line 77
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemThemeBinding;->imgSel:Landroidx/cardview/widget/CardView;

    const-string v2, "#FF36C6FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemThemeBinding;->imgSel:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 82
    :goto_0
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemThemeBinding;->imgMSelect:Landroid/widget/ImageView;

    .line 83
    iget-object v2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$isMultiSelect$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 82
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$isMultiSelect$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemThemeBinding;->imgMSelect:Landroid/widget/ImageView;

    .line 86
    iget-object v2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getMultiSelectIndexes$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const p3, 0x7f08013a

    goto :goto_2

    :cond_2
    const p3, 0x7f080139

    .line 85
    :goto_2
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    :cond_3
    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemThemeBinding;->img:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->getPicturePath()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    const/16 v0, 0x20

    if-eqz p3, :cond_5

    .line 94
    invoke-virtual {p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const v3, 0x7f1101b3

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 95
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemThemeBinding;->img:Landroid/widget/ImageView;

    const p2, 0x7f080138

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 98
    :cond_4
    sget-object p3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u8f7d\u9ed8\u8ba4\u56fe\u6807 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemThemeBinding;->img:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->hashCode()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p3, p2, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemThemeBinding;->img:Landroid/widget/ImageView;

    const p2, 0x7f080137

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 102
    :cond_5
    sget-object p3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u8f7d\u4e3b\u9898\u56fe\u6807 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemThemeBinding;->img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$adapter$2$1;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->getPicturePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p3

    const/16 v0, 0x50

    const/16 v1, 0x3c

    .line 105
    invoke-virtual {p3, v0, v1}, Lcom/bumptech/glide/RequestBuilder;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/RequestBuilder;

    const/16 v0, 0x14

    .line 106
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestBuilder;->encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/RequestBuilder;

    .line 108
    new-instance v0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$adapter$2$1$init$1;

    invoke-direct {v0, p2, p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$adapter$2$1$init$1;-><init>(Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;Lcom/innioasis/y1/databinding/ItemThemeBinding;)V

    check-cast v0, Lcom/bumptech/glide/request/target/Target;

    .line 107
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :goto_3
    return-void
.end method
