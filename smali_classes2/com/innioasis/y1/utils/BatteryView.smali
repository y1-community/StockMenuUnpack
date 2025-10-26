.class public final Lcom/innioasis/y1/utils/BatteryView;
.super Landroid/view/View;
.source "BatteryView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B#\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J\u0010\u0010&\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J\u0010\u0010\'\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J\u0012\u0010(\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0014R$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R&\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t8\u0006@FX\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0018X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0018X\u0082D\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u001d\u0010\u001eR\u000e\u0010!\u001a\u00020\u0018X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/BatteryView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "value",
        "",
        "batteryCharge",
        "getBatteryCharge",
        "()Z",
        "setBatteryCharge",
        "(Z)V",
        "batteryElectricity",
        "getBatteryElectricity",
        "()I",
        "setBatteryElectricity",
        "(I)V",
        "batteryPadding",
        "",
        "batteryTopHeight",
        "batteryTopWidth",
        "paint",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "paint$delegate",
        "Lkotlin/Lazy;",
        "strokeWidth",
        "drawElectricity",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawShell",
        "drawTop",
        "onDraw",
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
.field private batteryCharge:Z

.field private batteryElectricity:I

.field private final batteryPadding:F

.field private final batteryTopHeight:F

.field private final batteryTopWidth:F

.field private final paint$delegate:Lkotlin/Lazy;

.field private final strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 17
    iput p1, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryTopHeight:F

    .line 18
    iput p1, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryTopWidth:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 19
    iput p1, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryPadding:F

    const/high16 p1, 0x40400000    # 3.0f

    .line 20
    iput p1, p0, Lcom/innioasis/y1/utils/BatteryView;->strokeWidth:F

    const/4 p1, 0x1

    .line 23
    iput p1, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryElectricity:I

    .line 44
    new-instance p1, Lcom/innioasis/y1/utils/BatteryView$paint$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/BatteryView$paint$2;-><init>(Lcom/innioasis/y1/utils/BatteryView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/BatteryView;->paint$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 17
    iput p1, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryTopHeight:F

    .line 18
    iput p1, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryTopWidth:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 19
    iput p1, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryPadding:F

    const/high16 p1, 0x40400000    # 3.0f

    .line 20
    iput p1, p0, Lcom/innioasis/y1/utils/BatteryView;->strokeWidth:F

    const/4 p1, 0x1

    .line 23
    iput p1, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryElectricity:I

    .line 44
    new-instance p1, Lcom/innioasis/y1/utils/BatteryView$paint$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/BatteryView$paint$2;-><init>(Lcom/innioasis/y1/utils/BatteryView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/BatteryView;->paint$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 17
    iput p1, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryTopHeight:F

    .line 18
    iput p1, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryTopWidth:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 19
    iput p1, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryPadding:F

    const/high16 p1, 0x40400000    # 3.0f

    .line 20
    iput p1, p0, Lcom/innioasis/y1/utils/BatteryView;->strokeWidth:F

    const/4 p1, 0x1

    .line 23
    iput p1, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryElectricity:I

    .line 44
    new-instance p1, Lcom/innioasis/y1/utils/BatteryView$paint$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/BatteryView$paint$2;-><init>(Lcom/innioasis/y1/utils/BatteryView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/BatteryView;->paint$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getStrokeWidth$p(Lcom/innioasis/y1/utils/BatteryView;)F
    .locals 0

    .line 15
    iget p0, p0, Lcom/innioasis/y1/utils/BatteryView;->strokeWidth:F

    return p0
.end method

.method private final drawElectricity(Landroid/graphics/Canvas;)V
    .locals 6

    .line 73
    invoke-direct {p0}, Lcom/innioasis/y1/utils/BatteryView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    .line 76
    iget v1, p0, Lcom/innioasis/y1/utils/BatteryView;->strokeWidth:F

    iget v2, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryPadding:F

    add-float v3, v1, v2

    add-float/2addr v1, v2

    .line 78
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/BatteryView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryTopHeight:F

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/innioasis/y1/utils/BatteryView;->strokeWidth:F

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryPadding:F

    sub-float/2addr v2, v4

    const/16 v4, 0x64

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget v4, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryElectricity:I

    int-to-float v4, v4

    mul-float v2, v2, v4

    .line 79
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/BatteryView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/innioasis/y1/utils/BatteryView;->strokeWidth:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryPadding:F

    sub-float/2addr v4, v5

    .line 75
    invoke-direct {v0, v3, v1, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 80
    invoke-direct {p0}, Lcom/innioasis/y1/utils/BatteryView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawShell(Landroid/graphics/Canvas;)V
    .locals 4

    .line 86
    invoke-direct {p0}, Lcom/innioasis/y1/utils/BatteryView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    .line 91
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/BatteryView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryTopHeight:F

    sub-float/2addr v1, v2

    .line 92
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/BatteryView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 88
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 93
    invoke-direct {p0}, Lcom/innioasis/y1/utils/BatteryView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 87
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawTop(Landroid/graphics/Canvas;)V
    .locals 7

    .line 98
    invoke-direct {p0}, Lcom/innioasis/y1/utils/BatteryView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    new-instance v0, Landroid/graphics/RectF;

    .line 101
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/BatteryView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryTopHeight:F

    sub-float/2addr v1, v2

    .line 102
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/BatteryView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryTopWidth:F

    sub-float/2addr v2, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 103
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/BatteryView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 104
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/BatteryView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryTopWidth:F

    add-float/2addr v5, v6

    div-float/2addr v5, v3

    .line 100
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 105
    invoke-direct {p0}, Lcom/innioasis/y1/utils/BatteryView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/innioasis/y1/utils/BatteryView;->paint$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public final getBatteryCharge()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryCharge:Z

    return v0
.end method

.method public final getBatteryElectricity()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryElectricity:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lcom/innioasis/y1/utils/BatteryView;->drawShell(Landroid/graphics/Canvas;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/innioasis/y1/utils/BatteryView;->drawTop(Landroid/graphics/Canvas;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/innioasis/y1/utils/BatteryView;->drawElectricity(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final setBatteryCharge(Z)V
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryCharge:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 38
    :cond_0
    iput-boolean p1, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryCharge:Z

    return-void
.end method

.method public final setBatteryElectricity(I)V
    .locals 3

    .line 27
    iget v0, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryElectricity:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt v1, p1, :cond_1

    const/16 v2, 0x65

    if-ge p1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 29
    iput p1, p0, Lcom/innioasis/y1/utils/BatteryView;->batteryElectricity:I

    .line 30
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/BatteryView;->invalidate()V

    :cond_2
    return-void
.end method
