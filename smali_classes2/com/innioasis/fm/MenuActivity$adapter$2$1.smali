.class public final Lcom/innioasis/fm/MenuActivity$adapter$2$1;
.super Lcom/innioasis/y1/base/BaseBindingAdapter;
.source "MenuActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/fm/MenuActivity$adapter$2;->invoke()Lcom/innioasis/fm/MenuActivity$adapter$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter<",
        "Ljava/lang/String;",
        "Lcom/innioasis/y1/databinding/ItemFmMenuBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0017\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/fm/MenuActivity$adapter$2$1",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "",
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

    iput-object p1, p0, Lcom/innioasis/fm/MenuActivity$adapter$2$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 106
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 106
    check-cast p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/fm/MenuActivity$adapter$2$1;->init(Lcom/innioasis/y1/databinding/ItemFmMenuBinding;Ljava/lang/String;I)V

    return-void
.end method

.method public init(Lcom/innioasis/y1/databinding/ItemFmMenuBinding;Ljava/lang/String;I)V
    .locals 9

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->tvItem:Landroid/widget/TextView;

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/innioasis/fm/MenuActivity$adapter$2$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {v0}, Lcom/innioasis/fm/MenuActivity;->getMark()I

    move-result v0

    const v1, 0x7f1100a8

    const-string v2, "binding.layout"

    const-string v3, "binding.text"

    const-string v4, "binding.tvItem"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-ne v0, p3, :cond_2

    .line 111
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v8, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->layout:Landroid/widget/LinearLayout;

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/View;

    const v2, 0x7f080067

    invoke-virtual {v0, v8, v2, v5}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 112
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v2, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->tvItem:Landroid/widget/TextView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "#3CFFDE"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v2, v8, v5}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    if-le p3, v5, :cond_0

    .line 114
    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {p3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    sget-object p3, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->ivArrow:Landroid/widget/ImageView;

    const-string v2, "binding.ivArrow"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0e002d

    invoke-virtual {p3, v0, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetRightArrow(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p3, p0, Lcom/innioasis/fm/MenuActivity$adapter$2$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {p3}, Lcom/innioasis/fm/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 117
    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    sget-object p3, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->text:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v0, v2, v5}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    sget-object p3, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->tvItem:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, -0x1

    invoke-virtual {p3, v0, v4, v6}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 125
    sget-object p3, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->text:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v0, v4, v6}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 126
    sget-object p3, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->layout:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p3, v0, v6, v6}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 128
    :goto_0
    iget-object p3, p0, Lcom/innioasis/fm/MenuActivity$adapter$2$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {p3}, Lcom/innioasis/fm/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 129
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->text:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/innioasis/fm/MenuActivity$adapter$2$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-static {p2}, Lcom/innioasis/fm/MenuActivity;->access$isRecord$p(Lcom/innioasis/fm/MenuActivity;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 131
    iget-object p2, p0, Lcom/innioasis/fm/MenuActivity$adapter$2$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {p2}, Lcom/innioasis/fm/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f11013d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_1

    .line 133
    :cond_3
    iget-object p2, p0, Lcom/innioasis/fm/MenuActivity$adapter$2$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {p2}, Lcom/innioasis/fm/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1100b3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 130
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 135
    :cond_4
    iget-object p3, p0, Lcom/innioasis/fm/MenuActivity$adapter$2$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {p3}, Lcom/innioasis/fm/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f110098

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 136
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->text:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/innioasis/fm/MenuActivity$adapter$2$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-static {p3}, Lcom/innioasis/fm/MenuActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/MenuActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p3

    invoke-virtual {p3}, Lcom/innioasis/fm/FmRadioService;->isSpeakerUsed()Z

    move-result p3

    const v0, 0x7f11009e

    if-nez p3, :cond_5

    .line 139
    iget-object p3, p0, Lcom/innioasis/fm/MenuActivity$adapter$2$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {p3}, Lcom/innioasis/fm/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    goto :goto_2

    .line 141
    :cond_5
    iget-object p3, p0, Lcom/innioasis/fm/MenuActivity$adapter$2$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {p3}, Lcom/innioasis/fm/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f11009f

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    .line 138
    :goto_2
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    sget-object p2, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {p2}, Lcom/innioasis/y1/utils/Static;->getBluetoothValue()Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v5, :cond_8

    .line 144
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->text:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/innioasis/fm/MenuActivity$adapter$2$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {p2}, Lcom/innioasis/fm/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 146
    :cond_7
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemFmMenuBinding;->text:Landroid/widget/TextView;

    const-string p2, ""

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_3
    return-void
.end method
