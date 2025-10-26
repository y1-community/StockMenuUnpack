.class public final Lcom/innioasis/y1_calendar/ui/CalendarActivity$updateCalendar$diffResult$1;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "CalendarActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_calendar/ui/CalendarActivity;->updateCalendar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0008\u001a\u00020\u0005H\u0016J\u0008\u0010\t\u001a\u00020\u0005H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/y1_calendar/ui/CalendarActivity$updateCalendar$diffResult$1",
        "Landroidx/recyclerview/widget/DiffUtil$Callback;",
        "areContentsTheSame",
        "",
        "oldItemPosition",
        "",
        "newItemPosition",
        "areItemsTheSame",
        "getNewListSize",
        "getOldListSize",
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
.field final synthetic $newItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $oldItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$updateCalendar$diffResult$1;->$oldItems:Ljava/util/List;

    iput-object p2, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$updateCalendar$diffResult$1;->$newItems:Ljava/util/List;

    .line 123
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$updateCalendar$diffResult$1;->$oldItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;

    .line 135
    iget-object v0, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$updateCalendar$diffResult$1;->$newItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;

    .line 137
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$updateCalendar$diffResult$1;->$oldItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;

    .line 129
    iget-object v0, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$updateCalendar$diffResult$1;->$newItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;

    .line 130
    invoke-virtual {p1}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getYear()I

    move-result v0

    invoke-virtual {p2}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getYear()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getMonth()I

    move-result v0

    invoke-virtual {p2}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getMonth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getDay()I

    move-result p1

    invoke-virtual {p2}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getDay()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$updateCalendar$diffResult$1;->$newItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$updateCalendar$diffResult$1;->$oldItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
