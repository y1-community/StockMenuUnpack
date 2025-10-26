.class public final Lcom/innioasis/y1_eBook/ui/main/MainActivity$adapter$2$1;
.super Lcom/innioasis/y1/base/BaseBindingAdapter;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/ui/main/MainActivity$adapter$2;->invoke()Lcom/innioasis/y1_eBook/ui/main/MainActivity$adapter$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter<",
        "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
        "Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0017\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/y1_eBook/ui/main/MainActivity$adapter$2$1",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
        "Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;",
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
.field final synthetic this$0:Lcom/innioasis/y1_eBook/ui/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/ui/main/MainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$adapter$2$1;->this$0:Lcom/innioasis/y1_eBook/ui/main/MainActivity;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 36
    check-cast p1, Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;

    check-cast p2, Lcom/innioasis/y1_eBook/data/database/entities/Book;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1_eBook/ui/main/MainActivity$adapter$2$1;->init(Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;Lcom/innioasis/y1_eBook/data/database/entities/Book;I)V

    return-void
.end method

.method public init(Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;Lcom/innioasis/y1_eBook/data/database/entities/Book;I)V
    .locals 7

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;->progress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->calculateProgress()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;->time:Landroid/widget/TextView;

    .line 42
    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->getLastReadTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object p2

    .line 41
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p2, p0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$adapter$2$1;->this$0:Lcom/innioasis/y1_eBook/ui/main/MainActivity;

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/ui/main/MainActivity;->getMark()I

    move-result p2

    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$adapter$2$1;->this$0:Lcom/innioasis/y1_eBook/ui/main/MainActivity;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/ui/main/MainActivity;->access$getFixedSum$p(Lcom/innioasis/y1_eBook/ui/main/MainActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    const-string v0, "binding.layout"

    const-string v1, "binding.time"

    const-string v2, "binding.progress"

    const-string v3, "binding.name"

    const/4 v4, 0x0

    if-ne p2, p3, :cond_0

    .line 45
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;->name:Landroid/widget/TextView;

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "#3CFFDE"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p2, p3, v5, v6}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 46
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;->progress:Landroid/widget/TextView;

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, p3, v2, v6}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 47
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;->time:Landroid/widget/TextView;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, p3, v1, v6}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 48
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;->ivArrow:Landroid/widget/ImageView;

    const-string v1, "binding.ivArrow"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0e002d

    invoke-virtual {p2, p3, v1}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetRightArrow(Landroid/widget/ImageView;I)V

    .line 50
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;->layout:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const p3, 0x7f080067

    invoke-virtual {p2, p1, p3, v6}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    goto :goto_0

    .line 54
    :cond_0
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;->name:Landroid/widget/TextView;

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-virtual {p2, p3, v3, v4}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 55
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;->progress:Landroid/widget/TextView;

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v3, v4}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 56
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;->time:Landroid/widget/TextView;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v3, v4}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 57
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;->ivArrow:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemBookLibraryBinding;->layout:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1, v4, v4}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    :goto_0
    return-void
.end method
