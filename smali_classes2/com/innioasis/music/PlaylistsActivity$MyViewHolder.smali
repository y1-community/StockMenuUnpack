.class public final Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;
.super Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;
.source "PlaylistsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/music/PlaylistsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/music/adapter/rv/RVBaseViewHolder<",
        "Lcom/innioasis/y1/database/Playlist;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J \u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;",
        "Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;",
        "Lcom/innioasis/y1/database/Playlist;",
        "view",
        "Landroid/view/View;",
        "(Lcom/innioasis/music/PlaylistsActivity;Landroid/view/View;)V",
        "binding",
        "Lcom/innioasis/y1/databinding/ItemMainBinding;",
        "getBinding",
        "()Lcom/innioasis/y1/databinding/ItemMainBinding;",
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

.field final synthetic this$0:Lcom/innioasis/music/PlaylistsActivity;


# direct methods
.method public constructor <init>(Lcom/innioasis/music/PlaylistsActivity;Landroid/view/View;)V
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

    .line 417
    iput-object p1, p0, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    invoke-direct {p0, p2}, Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;-><init>(Landroid/view/View;)V

    .line 418
    new-instance p1, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder$binding$2;

    invoke-direct {p1, p0}, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder$binding$2;-><init>(Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->binding$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getBinding()Lcom/innioasis/y1/databinding/ItemMainBinding;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->binding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ItemMainBinding;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/innioasis/y1/database/Playlist;ZZ)V
    .locals 9

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemMainBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ItemMainBinding;->tvItem:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getName()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f06025c

    const v0, 0x7f08014a

    const-string v1, "binding.ivArrow"

    const-string v2, "binding.root"

    const/4 v3, 0x1

    const-string v4, "binding.tvItem"

    if-eqz p2, :cond_0

    .line 425
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemMainBinding;

    move-result-object v5

    invoke-virtual {v5}, Lcom/innioasis/y1/databinding/ItemMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    invoke-virtual {p2, v5, v0, v3}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 426
    sget-object p2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemMainBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/innioasis/y1/databinding/ItemMainBinding;->ivArrow:Landroid/widget/ImageView;

    .line 427
    sget-object v6, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const-string v7, ""

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f0e002d

    invoke-virtual {v6, v5, v7}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetRightArrow(Landroid/widget/ImageView;I)V

    const-string v6, "binding.ivArrow.apply {\n\u2026_arrow)\n                }"

    .line 426
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    invoke-virtual {p2, v5}, Lcom/innioasis/music/util/Other;->showV(Landroid/view/View;)V

    .line 429
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemMainBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ItemMainBinding;->tvItem:Landroid/widget/TextView;

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->makeItMarquee(Landroid/widget/TextView;)V

    .line 430
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemMainBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/innioasis/y1/databinding/ItemMainBinding;->tvItem:Landroid/widget/TextView;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    iget-object v6, p0, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    invoke-virtual {v6}, Lcom/innioasis/music/PlaylistsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 430
    invoke-virtual {p2, v5, v6, v3}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    goto :goto_0

    .line 435
    :cond_0
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemMainBinding;

    move-result-object v5

    invoke-virtual {v5}, Lcom/innioasis/y1/databinding/ItemMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    const v6, 0x7f080144

    const/4 v7, 0x0

    invoke-virtual {p2, v5, v6, v7}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 436
    sget-object p2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemMainBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/innioasis/y1/databinding/ItemMainBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    invoke-virtual {p2, v5}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 437
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemMainBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ItemMainBinding;->tvItem:Landroid/widget/TextView;

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->makeItNormal(Landroid/widget/TextView;)V

    .line 438
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemMainBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/innioasis/y1/databinding/ItemMainBinding;->tvItem:Landroid/widget/TextView;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    invoke-virtual {v6}, Lcom/innioasis/music/PlaylistsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f06026b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    :goto_0
    if-eqz p3, :cond_1

    .line 441
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemMainBinding;

    move-result-object p3

    invoke-virtual {p3}, Lcom/innioasis/y1/databinding/ItemMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p2, p3, v0, v3}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 442
    sget-object p2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemMainBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/innioasis/y1/databinding/ItemMainBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p2, p3}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 443
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->getBinding()Lcom/innioasis/y1/databinding/ItemMainBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/innioasis/y1/databinding/ItemMainBinding;->tvItem:Landroid/widget/TextView;

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/PlaylistsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 443
    invoke-virtual {p2, p3, p1, v3}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    :cond_1
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;ZZ)V
    .locals 0

    .line 417
    check-cast p1, Lcom/innioasis/y1/database/Playlist;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;->bind(Lcom/innioasis/y1/database/Playlist;ZZ)V

    return-void
.end method
