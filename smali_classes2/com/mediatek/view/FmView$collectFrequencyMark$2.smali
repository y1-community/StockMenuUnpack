.class final Lcom/mediatek/view/FmView$collectFrequencyMark$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FmView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/view/FmView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Bitmap;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic this$0:Lcom/mediatek/view/FmView;


# direct methods
.method constructor <init>(Lcom/mediatek/view/FmView;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/view/FmView$collectFrequencyMark$2;->this$0:Lcom/mediatek/view/FmView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Bitmap;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/mediatek/view/FmView$collectFrequencyMark$2;->this$0:Lcom/mediatek/view/FmView;

    invoke-virtual {v0}, Lcom/mediatek/view/FmView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mediatek/fm/R$drawable;->icon_fm_collect_mark:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/mediatek/view/FmView$collectFrequencyMark$2;->invoke()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
