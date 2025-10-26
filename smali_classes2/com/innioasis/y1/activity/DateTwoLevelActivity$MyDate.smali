.class public final Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;
.super Ljava/lang/Object;
.source "DateTwoLevelActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/activity/DateTwoLevelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyDate"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0008\"\u0004\u0008\u000e\u0010\n\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;",
        "",
        "y",
        "",
        "m",
        "d",
        "(III)V",
        "getD",
        "()I",
        "setD",
        "(I)V",
        "getM",
        "setM",
        "getY",
        "setY",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
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
.field private d:I

.field private m:I

.field private y:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->y:I

    .line 38
    iput p2, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->m:I

    .line 39
    iput p3, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->d:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;IIIILjava/lang/Object;)Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->y:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->m:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->d:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->copy(III)Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->y:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->m:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->d:I

    return v0
.end method

.method public final copy(III)Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;
    .locals 1

    new-instance v0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;

    invoke-direct {v0, p1, p2, p3}, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;-><init>(III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;

    iget v1, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->y:I

    iget v3, p1, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->y:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->m:I

    iget v3, p1, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->m:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->d:I

    iget p1, p1, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->d:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getD()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->d:I

    return v0
.end method

.method public final getM()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->m:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->y:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->y:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setD(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->d:I

    return-void
.end method

.method public final setM(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->m:I

    return-void
.end method

.method public final setY(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->y:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyDate(y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1/activity/DateTwoLevelActivity$MyDate;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
