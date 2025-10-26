.class final Lcom/innioasis/y1/utils/ClockView$bg$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ClockView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/utils/ClockView;-><init>(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcom/innioasis/y1/utils/ClockView;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/utils/ClockView;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/utils/ClockView$bg$2;->this$0:Lcom/innioasis/y1/utils/ClockView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Bitmap;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/innioasis/y1/utils/ClockView$bg$2;->this$0:Lcom/innioasis/y1/utils/ClockView;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/ClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080063

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/ClockView$bg$2;->invoke()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
