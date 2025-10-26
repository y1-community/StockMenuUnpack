.class final Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ThemeManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/theme/ThemeManager;->setBackground(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/theme/BitmapSizeValue;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $filename:Ljava/lang/String;

.field final synthetic $resId:I

.field final synthetic $this_setBackground:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$1;->$filename:Ljava/lang/String;

    iput-object p2, p0, Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$1;->$this_setBackground:Landroid/view/View;

    iput p3, p0, Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$1;->$resId:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 573
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$1;->invoke(Landroid/graphics/Bitmap;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p1, :cond_2

    .line 575
    iget-object p1, p0, Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$1;->$filename:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-static {v0, p1}, Lcom/innioasis/y1/theme/ThemeManager;->access$getColor(Lcom/innioasis/y1/theme/ThemeManager;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 577
    iget-object v0, p0, Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$1;->$this_setBackground:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 579
    :cond_1
    iget-object p1, p0, Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$1;->$this_setBackground:Landroid/view/View;

    iget v0, p0, Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$1;->$resId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 582
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$1;->$this_setBackground:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$1;->$this_setBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method
