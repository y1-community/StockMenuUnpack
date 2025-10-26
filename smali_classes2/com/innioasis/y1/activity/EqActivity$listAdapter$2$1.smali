.class public final Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;
.super Lcom/innioasis/y1/base/BaseBindingAdapter;
.source "EqActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/EqActivity$listAdapter$2;->invoke()Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter<",
        "Lcom/innioasis/y1/activity/EqActivity$EqData;",
        "Lcom/innioasis/y1/databinding/ItemEqBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0017\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/y1/activity/EqActivity$listAdapter$2$1",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "Lcom/innioasis/y1/activity/EqActivity$EqData;",
        "Lcom/innioasis/y1/databinding/ItemEqBinding;",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/EqActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/EqActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;->this$0:Lcom/innioasis/y1/activity/EqActivity;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 120
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 120
    check-cast p1, Lcom/innioasis/y1/databinding/ItemEqBinding;

    check-cast p2, Lcom/innioasis/y1/activity/EqActivity$EqData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;->init(Lcom/innioasis/y1/databinding/ItemEqBinding;Lcom/innioasis/y1/activity/EqActivity$EqData;I)V

    return-void
.end method

.method public init(Lcom/innioasis/y1/databinding/ItemEqBinding;Lcom/innioasis/y1/activity/EqActivity$EqData;I)V
    .locals 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemEqBinding;->text:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/EqActivity$EqData;->getStr()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p2, p0, Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;->this$0:Lcom/innioasis/y1/activity/EqActivity;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result p2

    const-string v0, "binding.text"

    const-string v1, "binding.root"

    if-ne p2, p3, :cond_0

    .line 126
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p1}, Lcom/innioasis/y1/databinding/ItemEqBinding;->getRoot()Landroid/widget/TextView;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    const v1, 0x7f08014a

    const/4 v2, 0x1

    invoke-virtual {p2, p3, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 127
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemEqBinding;->text:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "#3CFFDE"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p1, p3, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    goto :goto_0

    .line 129
    :cond_0
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p1}, Lcom/innioasis/y1/databinding/ItemEqBinding;->getRoot()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p2, v2, v1, v1}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 130
    sget-object p2, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {p2}, Lcom/innioasis/y1/utils/EqSPUtils;->getEqualizerInt()I

    move-result p2

    if-ne p2, p3, :cond_1

    .line 131
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemEqBinding;->text:Landroid/widget/TextView;

    const-string p2, "#ADFF2F"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 133
    :cond_1
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemEqBinding;->text:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3, v1}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    :goto_0
    return-void
.end method
