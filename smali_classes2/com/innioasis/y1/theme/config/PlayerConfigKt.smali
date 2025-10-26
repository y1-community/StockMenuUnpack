.class public final Lcom/innioasis/y1/theme/config/PlayerConfigKt;
.super Ljava/lang/Object;
.source "PlayerConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a+\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "progressBarSetBackground",
        "",
        "progressBar",
        "Landroid/widget/ProgressBar;",
        "backgroundColor",
        "",
        "progressColor",
        "(Landroid/widget/ProgressBar;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "app_frGeneralRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final progressBarSetBackground(Landroid/widget/ProgressBar;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "progressBar"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 29
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 27
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x2

    .line 34
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 36
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 37
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 35
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method

.method public static synthetic progressBarSetBackground$default(Landroid/widget/ProgressBar;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x2

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 17
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/innioasis/y1/theme/config/PlayerConfigKt;->progressBarSetBackground(Landroid/widget/ProgressBar;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
