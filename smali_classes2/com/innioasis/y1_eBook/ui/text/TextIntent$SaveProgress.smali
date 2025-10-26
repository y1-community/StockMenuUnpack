.class public final Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;
.super Lcom/innioasis/y1_eBook/ui/text/TextIntent;
.source "TextIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1_eBook/ui/text/TextIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SaveProgress"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;",
        "Lcom/innioasis/y1_eBook/ui/text/TextIntent;",
        "i",
        "",
        "offset",
        "(II)V",
        "getI",
        "()I",
        "getOffset",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
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
.field private final i:I

.field private final offset:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lcom/innioasis/y1_eBook/ui/text/TextIntent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->i:I

    iput p2, p0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->offset:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;IIILjava/lang/Object;)Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->i:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->offset:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->copy(II)Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->i:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->offset:I

    return v0
.end method

.method public final copy(II)Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;
    .locals 1

    new-instance v0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;

    invoke-direct {v0, p1, p2}, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;

    iget v1, p0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->i:I

    iget v3, p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->i:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->offset:I

    iget p1, p1, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->offset:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getI()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->i:I

    return v0
.end method

.method public final getOffset()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->offset:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->i:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaveProgress(i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
