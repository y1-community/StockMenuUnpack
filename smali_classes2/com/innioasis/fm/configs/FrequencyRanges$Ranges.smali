.class public final Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;
.super Ljava/lang/Object;
.source "FrequencyRanges.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/fm/configs/FrequencyRanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ranges"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J1\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;",
        "",
        "area",
        "",
        "name",
        "min",
        "",
        "max",
        "(Ljava/lang/String;Ljava/lang/String;FF)V",
        "getArea",
        "()Ljava/lang/String;",
        "getMax",
        "()F",
        "getMin",
        "getName",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final area:Ljava/lang/String;

.field private final max:F

.field private final min:F

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 1

    const-string v0, "area"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->area:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->name:Ljava/lang/String;

    .line 62
    iput p3, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->min:F

    .line 63
    iput p4, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->max:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;Ljava/lang/String;Ljava/lang/String;FFILjava/lang/Object;)Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->area:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->min:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->max:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->copy(Ljava/lang/String;Ljava/lang/String;FF)Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->area:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->min:F

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->max:F

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;FF)Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;
    .locals 1

    const-string v0, "area"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;

    iget-object v1, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->area:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->area:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->min:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->min:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->max:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p1, p1, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->max:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getArea()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->area:Ljava/lang/String;

    return-object v0
.end method

.method public final getMax()F
    .locals 1

    .line 63
    iget v0, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->max:F

    return v0
.end method

.method public final getMin()F
    .locals 1

    .line 62
    iget v0, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->min:F

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->area:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->min:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->max:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ranges(area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->area:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->max:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
