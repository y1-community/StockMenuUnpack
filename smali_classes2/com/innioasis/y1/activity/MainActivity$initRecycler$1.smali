.class public final Lcom/innioasis/y1/activity/MainActivity$initRecycler$1;
.super Lcom/innioasis/y1/base/BaseBindingAdapter;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/MainActivity;->initRecycler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter<",
        "Ljava/lang/String;",
        "Lcom/innioasis/y1/databinding/ItemMainBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/y1/activity/MainActivity$initRecycler$1",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "",
        "Lcom/innioasis/y1/databinding/ItemMainBinding;",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/MainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/innioasis/y1/activity/MainActivity$initRecycler$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 415
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 415
    check-cast p1, Lcom/innioasis/y1/databinding/ItemMainBinding;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/activity/MainActivity$initRecycler$1;->init(Lcom/innioasis/y1/databinding/ItemMainBinding;Ljava/lang/String;I)V

    return-void
.end method

.method public init(Lcom/innioasis/y1/databinding/ItemMainBinding;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemMainBinding;->tvItem:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemMainBinding;->tvItem:Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :cond_0
    iget-object p2, p0, Lcom/innioasis/y1/activity/MainActivity$initRecycler$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/MainActivity;->getMark()I

    move-result p2

    const-string v0, "binding.layout"

    const-string v1, "binding.tvItem"

    if-ne p2, p3, :cond_1

    .line 422
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemMainBinding;->tvItem:Landroid/widget/TextView;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/innioasis/y1/activity/MainActivity$initRecycler$1;->makeItMarquee(Landroid/widget/TextView;)V

    .line 423
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemMainBinding;->layout:Landroid/widget/LinearLayout;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    const v0, 0x7f08014c

    const/4 v2, 0x1

    invoke-virtual {p2, p3, v0, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 424
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemMainBinding;->tvItem:Landroid/widget/TextView;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/innioasis/y1/activity/MainActivity$initRecycler$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06025c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 424
    invoke-virtual {p2, p3, v0, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 428
    sget-object p2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemMainBinding;->ivArrow:Landroid/widget/ImageView;

    .line 429
    sget-object p3, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e002d

    invoke-virtual {p3, p1, v0}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetRightArrow(Landroid/widget/ImageView;I)V

    const-string p3, "binding.ivArrow.apply {\n\u2026ow)\n                    }"

    .line 428
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/innioasis/music/util/Other;->showV(Landroid/view/View;)V

    goto :goto_0

    .line 432
    :cond_1
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemMainBinding;->tvItem:Landroid/widget/TextView;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/innioasis/y1/activity/MainActivity$initRecycler$1;->makeItNormal(Landroid/widget/TextView;)V

    .line 433
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemMainBinding;->layout:Landroid/widget/LinearLayout;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    const v0, 0x7f080144

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v0, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 434
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemMainBinding;->tvItem:Landroid/widget/TextView;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/innioasis/y1/activity/MainActivity$initRecycler$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06026b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 435
    sget-object p2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemMainBinding;->ivArrow:Landroid/widget/ImageView;

    const-string p3, "binding.ivArrow"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    :goto_0
    return-void
.end method
