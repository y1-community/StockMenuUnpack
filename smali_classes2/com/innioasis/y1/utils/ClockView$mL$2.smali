.class final Lcom/innioasis/y1/utils/ClockView$mL$2;
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Float;"
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

    iput-object p1, p0, Lcom/innioasis/y1/utils/ClockView$mL$2;->this$0:Lcom/innioasis/y1/utils/ClockView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/innioasis/y1/utils/ClockView$mL$2;->this$0:Lcom/innioasis/y1/utils/ClockView;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/ClockView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x4

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/4 v1, 0x5

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 27
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/ClockView$mL$2;->invoke()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
