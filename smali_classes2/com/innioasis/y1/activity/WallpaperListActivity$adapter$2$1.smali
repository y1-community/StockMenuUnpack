.class public final Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;
.super Lcom/innioasis/y1/base/BaseBindingAdapter;
.source "WallpaperListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2;->invoke()Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter<",
        "Ljava/lang/String;",
        "Lcom/innioasis/y1/databinding/ItemSettingBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/y1/activity/WallpaperListActivity$adapter$2$1",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/WallpaperListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/WallpaperListActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/WallpaperListActivity;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 32
    check-cast p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;->init(Lcom/innioasis/y1/databinding/ItemSettingBinding;Ljava/lang/String;I)V

    return-void
.end method

.method public init(Lcom/innioasis/y1/databinding/ItemSettingBinding;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->title:Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->arrow:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v1, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->arrow:Landroid/widget/ImageView;

    const-string v2, "binding.arrow"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0e002d

    invoke-virtual {p2, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetRightArrow(Landroid/widget/ImageView;I)V

    .line 37
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->text:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p3, :cond_1

    .line 39
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->text:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemSettingBinding;->text:Landroid/widget/TextView;

    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getWallpaperBlur()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/WallpaperListActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/WallpaperListActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 41
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_1
    iget-object p2, p0, Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/WallpaperListActivity;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getMark()I

    move-result p2

    const-string v1, "binding.root"

    if-ne p2, p3, :cond_2

    .line 48
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p1}, Lcom/innioasis/y1/databinding/ItemSettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const p3, 0x7f08014a

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p3, v0}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 49
    iget-object p1, p0, Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/WallpaperListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/WallpaperListActivity;->access$updateRight(Lcom/innioasis/y1/activity/WallpaperListActivity;)V

    goto :goto_1

    .line 51
    :cond_2
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p1}, Lcom/innioasis/y1/databinding/ItemSettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1, v0, v0}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    :goto_1
    return-void
.end method
