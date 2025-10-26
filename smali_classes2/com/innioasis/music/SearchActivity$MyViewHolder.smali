.class public final Lcom/innioasis/music/SearchActivity$MyViewHolder;
.super Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;
.source "SearchActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/music/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/music/adapter/rv/RVBaseViewHolder<",
        "Lcom/innioasis/music/SearchActivity$Item;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J \u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0017R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/innioasis/music/SearchActivity$MyViewHolder;",
        "Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;",
        "Lcom/innioasis/music/SearchActivity$Item;",
        "view",
        "Landroid/view/View;",
        "(Lcom/innioasis/music/SearchActivity;Landroid/view/View;)V",
        "binding",
        "Lcom/innioasis/y1/databinding/ItemSearchResultBinding;",
        "getBinding",
        "()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;",
        "binding$delegate",
        "Lkotlin/Lazy;",
        "bind",
        "",
        "item",
        "isSelected",
        "",
        "isMultiSelect",
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
.field private final binding$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/innioasis/music/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/innioasis/music/SearchActivity;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-direct {p0, p2}, Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;-><init>(Landroid/view/View;)V

    .line 363
    new-instance p1, Lcom/innioasis/music/SearchActivity$MyViewHolder$binding$2;

    invoke-direct {p1, p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder$binding$2;-><init>(Lcom/innioasis/music/SearchActivity$MyViewHolder;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder;->binding$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/innioasis/music/SearchActivity$MyViewHolder;)Lcom/innioasis/y1/databinding/ItemSearchResultBinding;
    .locals 0

    .line 362
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder;->binding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/innioasis/music/SearchActivity$Item;ZZ)V
    .locals 11

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f08014a

    const-string v1, "binding.ivArrow"

    const-string v2, "binding.info"

    const-string v3, "itemView"

    const v4, 0x7f06025c

    const-string v5, "binding.title"

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    .line 370
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v7, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder;->itemView:Landroid/view/View;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v7, v0, v6}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 371
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->title:Landroid/widget/TextView;

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->makeItMarquee(Landroid/widget/TextView;)V

    .line 372
    sget-object p2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object v7

    iget-object v7, v7, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->ivArrow:Landroid/widget/ImageView;

    .line 373
    sget-object v8, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const-string v9, ""

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v9, 0x7f0e002d

    invoke-virtual {v8, v7, v9}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetRightArrow(Landroid/widget/ImageView;I)V

    const-string v8, "binding.ivArrow.apply {\n\u2026_arrow)\n                }"

    .line 372
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    invoke-virtual {p2, v7}, Lcom/innioasis/music/util/Other;->showV(Landroid/view/View;)V

    .line 375
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object v7

    iget-object v7, v7, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->title:Landroid/widget/TextView;

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {v8}, Lcom/innioasis/music/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {p2, v7, v8, v6}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 376
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object v7

    iget-object v7, v7, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->info:Landroid/widget/TextView;

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {v8}, Lcom/innioasis/music/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {p2, v7, v8, v6}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    goto :goto_0

    .line 379
    :cond_0
    sget-object p2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object v7

    iget-object v7, v7, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    invoke-virtual {p2, v7}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 380
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v7, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder;->itemView:Landroid/view/View;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v8, 0x7f080144

    const/4 v9, 0x0

    invoke-virtual {p2, v7, v8, v9}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 381
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->title:Landroid/widget/TextView;

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->makeItNormal(Landroid/widget/TextView;)V

    .line 382
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object v7

    iget-object v7, v7, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->title:Landroid/widget/TextView;

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {v8}, Lcom/innioasis/music/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f06026b

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {p2, v7, v8, v9}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 383
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object v7

    iget-object v7, v7, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->info:Landroid/widget/TextView;

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {v8}, Lcom/innioasis/music/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {p2, v7, v8, v9}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    :goto_0
    if-eqz p3, :cond_1

    .line 386
    sget-object p2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p2, p3}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 387
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder;->itemView:Landroid/view/View;

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0, v6}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 388
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->title:Landroid/widget/TextView;

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0, v6}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 389
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->info:Landroid/widget/TextView;

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0, v6}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 392
    :cond_1
    invoke-virtual {p1}, Lcom/innioasis/music/SearchActivity$Item;->getType()I

    move-result p2

    if-eq p2, v6, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    goto :goto_1

    .line 407
    :cond_2
    invoke-virtual {p1}, Lcom/innioasis/music/SearchActivity$Item;->getAlbum()Lcom/innioasis/music/data/Album;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p3, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder;->this$0:Lcom/innioasis/music/SearchActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 408
    new-instance v5, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1;

    invoke-direct {v5, p2, p1, p3, p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$3$1;-><init>(Lcom/innioasis/music/data/Album;Lcom/innioasis/music/SearchActivity$Item;Lcom/innioasis/music/SearchActivity;Lcom/innioasis/music/SearchActivity$MyViewHolder;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    goto :goto_1

    .line 394
    :cond_3
    invoke-virtual {p1}, Lcom/innioasis/music/SearchActivity$Item;->getSong()Lcom/innioasis/y1/database/Song;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p3, p0, Lcom/innioasis/music/SearchActivity$MyViewHolder;->this$0:Lcom/innioasis/music/SearchActivity;

    .line 395
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->title:Landroid/widget/TextView;

    sget-object v1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    sget-object v2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p2}, Lcom/innioasis/y1/database/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->processFileExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/innioasis/music/util/Other;->unNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->info:Landroid/widget/TextView;

    sget-object v1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p2}, Lcom/innioasis/y1/database/Song;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/innioasis/music/util/Other;->unNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 397
    new-instance v0, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$2$1;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/innioasis/music/SearchActivity$MyViewHolder$bind$2$1;-><init>(Lcom/innioasis/music/SearchActivity$Item;Lcom/innioasis/y1/database/Song;Lcom/innioasis/music/SearchActivity;Lcom/innioasis/music/SearchActivity$MyViewHolder;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;ZZ)V
    .locals 0

    .line 362
    check-cast p1, Lcom/innioasis/music/SearchActivity$Item;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/music/SearchActivity$MyViewHolder;->bind(Lcom/innioasis/music/SearchActivity$Item;ZZ)V

    return-void
.end method
