.class public final Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;
.super Lcom/innioasis/y1/base/BaseBindingAdapter;
.source "SettingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/SettingActivity$adapter$2;->invoke()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter<",
        "Lcom/innioasis/y1/activity/SettingActivity$SettingItem;",
        "Lcom/innioasis/y1/databinding/ItemSettingBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/y1/activity/SettingActivity$adapter$2$1",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "Lcom/innioasis/y1/activity/SettingActivity$SettingItem;",
        "Lcom/innioasis/y1/databinding/ItemSettingBinding;",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/SettingActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 91
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 91
    check-cast p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;

    check-cast p2, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->init(Lcom/innioasis/y1/databinding/ItemSettingBinding;Lcom/innioasis/y1/activity/SettingActivity$SettingItem;I)V

    return-void
.end method

.method public init(Lcom/innioasis/y1/databinding/ItemSettingBinding;Lcom/innioasis/y1/activity/SettingActivity$SettingItem;I)V
    .locals 6

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->getHaveNext()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    :goto_0
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->text:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->getText()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v0

    const-string v3, "binding.text"

    const-string v4, "binding.root"

    const-string v5, "binding.title"

    if-ne v0, p3, :cond_1

    .line 104
    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->title:Landroid/widget/TextView;

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->makeItMarquee(Landroid/widget/TextView;)V

    .line 105
    sget-object p3, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p1}, Lcom/innioasis/y1/databinding/ItemSettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const v1, 0x7f08014c

    const/4 v2, 0x1

    invoke-virtual {p3, v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 106
    sget-object p3, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->title:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "#3CFFDE"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3, v0, v4, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 107
    sget-object p3, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->text:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 108
    sget-object p3, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->arrow:Landroid/widget/ImageView;

    const-string v0, "binding.arrow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e002d

    invoke-virtual {p3, p1, v0}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetRightArrow(Landroid/widget/ImageView;I)V

    .line 110
    iget-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/innioasis/y1/activity/SettingActivity;->access$refreshRight(Lcom/innioasis/y1/activity/SettingActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_1
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->title:Landroid/widget/TextView;

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->makeItNormal(Landroid/widget/TextView;)V

    .line 113
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p1}, Lcom/innioasis/y1/databinding/ItemSettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p2, p3, v2, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 115
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->title:Landroid/widget/TextView;

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 116
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->text:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1, v0, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    :goto_1
    return-void
.end method
