.class public final Lcom/innioasis/y1/activity/LanguageActivity$initView$1;
.super Lcom/innioasis/y1/base/BaseBindingAdapter;
.source "LanguageActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/LanguageActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter<",
        "Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;",
        "Lcom/innioasis/y1/databinding/ItemMainBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/y1/activity/LanguageActivity$initView$1",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/LanguageActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/LanguageActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/innioasis/y1/activity/LanguageActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/LanguageActivity;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 52
    check-cast p1, Lcom/innioasis/y1/databinding/ItemMainBinding;

    check-cast p2, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/activity/LanguageActivity$initView$1;->init(Lcom/innioasis/y1/databinding/ItemMainBinding;Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;I)V

    return-void
.end method

.method public init(Lcom/innioasis/y1/databinding/ItemMainBinding;Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;I)V
    .locals 4

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemMainBinding;->tvItem:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;->getName()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object p2, p0, Lcom/innioasis/y1/activity/LanguageActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/LanguageActivity;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/LanguageActivity;->getMark()I

    move-result p2

    const-string v0, "binding.tvItem"

    const-string v1, "binding.layout"

    if-ne p2, p3, :cond_0

    .line 57
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemMainBinding;->layout:Landroid/widget/LinearLayout;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    const v1, 0x7f08014a

    const/4 v2, 0x1

    invoke-virtual {p2, p3, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 58
    sget-object p2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemMainBinding;->ivArrow:Landroid/widget/ImageView;

    .line 59
    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const-string v3, ""

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0e002d

    invoke-virtual {v1, p3, v3}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetRightArrow(Landroid/widget/ImageView;I)V

    const-string v1, "binding.ivArrow.apply {\n\u2026ow)\n                    }"

    .line 58
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p2, p3}, Lcom/innioasis/music/util/Other;->showV(Landroid/view/View;)V

    .line 61
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemMainBinding;->tvItem:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object p3, p0, Lcom/innioasis/y1/activity/LanguageActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/LanguageActivity;

    invoke-virtual {p3}, Lcom/innioasis/y1/activity/LanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f06025c

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 61
    invoke-virtual {p2, p1, p3, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    goto :goto_0

    .line 66
    :cond_0
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemMainBinding;->layout:Landroid/widget/LinearLayout;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    const v1, 0x7f080144

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 67
    sget-object p2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemMainBinding;->ivArrow:Landroid/widget/ImageView;

    const-string v1, "binding.ivArrow"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p2, p3}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 68
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemMainBinding;->tvItem:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/innioasis/y1/activity/LanguageActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/LanguageActivity;

    invoke-virtual {p3}, Lcom/innioasis/y1/activity/LanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f06026b

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p1, p3, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    :goto_0
    return-void
.end method
