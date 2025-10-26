.class public final Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;
.super Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder;
.source "SearchVideoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/activity/video/SearchVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder<",
        "Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J \u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0017R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;",
        "Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder;",
        "Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;",
        "view",
        "Landroid/view/View;",
        "(Lcom/innioasis/y1/activity/video/SearchVideoActivity;Landroid/view/View;)V",
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

.field final synthetic this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;


# direct methods
.method public constructor <init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;Landroid/view/View;)V
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

    .line 290
    iput-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-direct {p0, p2}, Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder;-><init>(Landroid/view/View;)V

    .line 291
    new-instance p1, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$binding$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$binding$2;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->binding$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;)Lcom/innioasis/y1/databinding/ItemSearchResultBinding;
    .locals 0

    .line 290
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->binding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;ZZ)V
    .locals 12

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    const v1, 0x7f08014a

    const-string v2, "binding.ivArrow"

    const-string v3, "binding.info"

    const-string v4, "itemView"

    const v5, 0x7f06025c

    const-string v6, "binding.title"

    const/4 v7, 0x1

    if-eqz p2, :cond_0

    .line 298
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v8, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->itemView:Landroid/view/View;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v8, v1, v7}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 299
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->title:Landroid/widget/TextView;

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->makeItMarquee(Landroid/widget/TextView;)V

    .line 300
    sget-object p2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object v8

    iget-object v8, v8, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->ivArrow:Landroid/widget/ImageView;

    .line 301
    sget-object v9, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v10, 0x7f0e002d

    invoke-virtual {v9, v8, v10}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetRightArrow(Landroid/widget/ImageView;I)V

    const-string v9, "binding.ivArrow.apply {\n\u2026_arrow)\n                }"

    .line 300
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/View;

    invoke-virtual {p2, v8}, Lcom/innioasis/music/util/Other;->showV(Landroid/view/View;)V

    .line 303
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object v8

    iget-object v8, v8, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->title:Landroid/widget/TextView;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object v9, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {v9}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 303
    invoke-virtual {p2, v8, v9, v7}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 307
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object v8

    iget-object v8, v8, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->info:Landroid/widget/TextView;

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {v9}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {p2, v8, v9, v7}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    goto :goto_0

    .line 309
    :cond_0
    sget-object p2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object v8

    iget-object v8, v8, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/View;

    invoke-virtual {p2, v8}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 310
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v8, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->itemView:Landroid/view/View;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v9, 0x7f080144

    const/4 v10, 0x0

    invoke-virtual {p2, v8, v9, v10}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 311
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->title:Landroid/widget/TextView;

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->makeItNormal(Landroid/widget/TextView;)V

    .line 312
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object v8

    iget-object v8, v8, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->title:Landroid/widget/TextView;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {v9}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f06026b

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {p2, v8, v9, v10}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 313
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object v8

    iget-object v8, v8, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->info:Landroid/widget/TextView;

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {v9}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {p2, v8, v9, v10}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    :goto_0
    if-eqz p3, :cond_1

    .line 316
    sget-object p2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p2, p3}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 317
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->itemView:Landroid/view/View;

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v1, v7}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 318
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->title:Landroid/widget/TextView;

    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 318
    invoke-virtual {p2, p3, v1, v7}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 322
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->info:Landroid/widget/TextView;

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, p3, v1, v7}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 325
    :cond_1
    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->getVideoInfo()Lcom/innioasis/y1/database/video/VideoInfo;

    move-result-object p2

    iget-object p3, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    .line 326
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->title:Landroid/widget/TextView;

    sget-object v2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    sget-object v3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p2}, Lcom/innioasis/y1/database/video/VideoInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->processFileExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/innioasis/music/util/Other;->unNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemSearchResultBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ItemSearchResultBinding;->info:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 328
    new-instance v0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$bind$2$1;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder$bind$2$1;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/activity/video/SearchVideoActivity;Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;ZZ)V
    .locals 0

    .line 290
    check-cast p1, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;->bind(Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;ZZ)V

    return-void
.end method
