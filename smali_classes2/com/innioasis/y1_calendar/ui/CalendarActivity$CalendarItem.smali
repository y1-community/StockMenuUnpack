.class public final Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;
.super Ljava/lang/Object;
.source "CalendarActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1_calendar/ui/CalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalendarItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;",
        "",
        "year",
        "",
        "month",
        "day",
        "(III)V",
        "getDay",
        "()I",
        "getMonth",
        "getYear",
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
.field private final day:I

.field private final month:I

.field private final year:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->year:I

    iput p2, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->month:I

    iput p3, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->day:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;IIIILjava/lang/Object;)Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->year:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->month:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->day:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->copy(III)Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->year:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->month:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->day:I

    return v0
.end method

.method public final copy(III)Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;
    .locals 1

    new-instance v0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;-><init>(III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;

    iget v1, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->year:I

    iget v3, p1, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->year:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->month:I

    iget v3, p1, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->month:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->day:I

    iget p1, p1, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->day:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDay()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->day:I

    return v0
.end method

.method public final getMonth()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->month:I

    return v0
.end method

.method public final getYear()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->year:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->month:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->day:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CalendarItem(year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
