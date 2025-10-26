.class public final Lcom/innioasis/fm/MenuActivity$rangesAdapter$2$1;
.super Lcom/innioasis/y1/base/BaseBindingAdapter;
.source "MenuActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/fm/MenuActivity$rangesAdapter$2;->invoke()Lcom/innioasis/fm/MenuActivity$rangesAdapter$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter<",
        "Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;",
        "Lcom/innioasis/y1/databinding/ItemFmMenuBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0017\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/fm/MenuActivity$rangesAdapter$2$1",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;",
        "Lcom/innioasis/y1/databinding/ItemFmMenuBinding;",
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
.field final synthetic this$0:Lcom/innioasis/fm/MenuActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/fm/MenuActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/innioasis/fm/MenuActivity$rangesAdapter$2$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 57
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 57
    check-cast p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;

    check-cast p2, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/fm/MenuActivity$rangesAdapter$2$1;->init(Lcom/innioasis/y1/databinding/ItemFmMenuBinding;Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;I)V

    return-void
.end method

.method public init(Lcom/innioasis/y1/databinding/ItemFmMenuBinding;Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;I)V
    .locals 4

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->getArea()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v1}, Lcom/innioasis/fm/util/FMSharedPreferences;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->tvItem:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x28

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/innioasis/fm/MenuActivity$rangesAdapter$2$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    const v2, 0x7f1100a2

    invoke-virtual {p2, v2}, Lcom/innioasis/fm/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->tvItem:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->getName()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :goto_0
    iget-object p2, p0, Lcom/innioasis/fm/MenuActivity$rangesAdapter$2$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {p2}, Lcom/innioasis/fm/MenuActivity;->getMark()I

    move-result p2

    const-string v0, "binding.layout"

    const-string v1, "binding.tvItem"

    const/4 v2, 0x0

    if-ne p2, p3, :cond_1

    .line 66
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->tvItem:Landroid/widget/TextView;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "#3CFFDE"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {p2, p3, v1, v3}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 67
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->ivArrow:Landroid/widget/ImageView;

    const-string v1, "binding.ivArrow"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0e002d

    invoke-virtual {p2, p3, v1}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetRightArrow(Landroid/widget/ImageView;I)V

    .line 69
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->layout:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const p3, 0x7f080067

    invoke-virtual {p2, p1, p3, v3}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    goto :goto_1

    .line 71
    :cond_1
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->tvItem:Landroid/widget/TextView;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {p2, p3, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 72
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->ivArrow:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->layout:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1, v2, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    :goto_1
    return-void
.end method
