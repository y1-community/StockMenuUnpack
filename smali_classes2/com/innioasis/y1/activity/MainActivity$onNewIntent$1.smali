.class final Lcom/innioasis/y1/activity/MainActivity$onNewIntent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/MainActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/MainActivity$onNewIntent$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity$onNewIntent$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/innioasis/y1/activity/MainActivity$onNewIntent$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    sget-object v1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/WallpaperUtils;->getDesktopBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/innioasis/y1/activity/MainActivity;->access$setDesktopBitmapCode$p(Lcom/innioasis/y1/activity/MainActivity;I)V

    .line 192
    iget-object v0, p0, Lcom/innioasis/y1/activity/MainActivity$onNewIntent$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/innioasis/y1/activity/MainActivity$onNewIntent$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/WallpaperUtils;->getDesktopBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
