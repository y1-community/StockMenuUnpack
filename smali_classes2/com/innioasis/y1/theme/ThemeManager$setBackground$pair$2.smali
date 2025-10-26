.class final Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ThemeManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/theme/ThemeManager;->setBackground(Landroid/widget/ImageView;ILjava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/theme/BitmapSizeValue;)V
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
.field final synthetic $resId:I

.field final synthetic $this_setBackground:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$2;->$this_setBackground:Landroid/widget/ImageView;

    iput p2, p0, Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$2;->$resId:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 600
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$2;->invoke(Landroid/graphics/Bitmap;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 602
    iget-object v0, p0, Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$2;->$this_setBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 604
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$2;->$this_setBackground:Landroid/widget/ImageView;

    iget v0, p0, Lcom/innioasis/y1/theme/ThemeManager$setBackground$pair$2;->$resId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
