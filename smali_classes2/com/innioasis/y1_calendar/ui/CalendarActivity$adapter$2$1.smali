.class public final Lcom/innioasis/y1_calendar/ui/CalendarActivity$adapter$2$1;
.super Lcom/innioasis/y1/base/BaseBindingAdapter;
.source "CalendarActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_calendar/ui/CalendarActivity$adapter$2;->invoke()Lcom/innioasis/y1_calendar/ui/CalendarActivity$adapter$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter<",
        "Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;",
        "Lcom/innioasis/y1/databinding/ItemCalendarBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/y1_calendar/ui/CalendarActivity$adapter$2$1",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;",
        "Lcom/innioasis/y1/databinding/ItemCalendarBinding;",
        "init",
        "",
        "binding",
        "bean",
        "pos",
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
.field final synthetic this$0:Lcom/innioasis/y1_calendar/ui/CalendarActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_calendar/ui/CalendarActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$adapter$2$1;->this$0:Lcom/innioasis/y1_calendar/ui/CalendarActivity;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/innioasis/y1/databinding/ItemCalendarBinding;

    check-cast p2, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$adapter$2$1;->init(Lcom/innioasis/y1/databinding/ItemCalendarBinding;Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;I)V

    return-void
.end method

.method public init(Lcom/innioasis/y1/databinding/ItemCalendarBinding;Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;I)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemCalendarBinding;->text:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getDay()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p2}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$adapter$2$1;->this$0:Lcom/innioasis/y1_calendar/ui/CalendarActivity;

    invoke-static {v1}, Lcom/innioasis/y1_calendar/ui/CalendarActivity;->access$getNowCalendar$p(Lcom/innioasis/y1_calendar/ui/CalendarActivity;)Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getYear()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getMonth()I

    move-result v0

    iget-object v1, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$adapter$2$1;->this$0:Lcom/innioasis/y1_calendar/ui/CalendarActivity;

    invoke-static {v1}, Lcom/innioasis/y1_calendar/ui/CalendarActivity;->access$getNowCalendar$p(Lcom/innioasis/y1_calendar/ui/CalendarActivity;)Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getMonth()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 32
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemCalendarBinding;->text:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 34
    :cond_1
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemCalendarBinding;->text:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    :goto_1
    invoke-virtual {p2}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$adapter$2$1;->this$0:Lcom/innioasis/y1_calendar/ui/CalendarActivity;

    invoke-static {v1}, Lcom/innioasis/y1_calendar/ui/CalendarActivity;->access$getNowCalendar$p(Lcom/innioasis/y1_calendar/ui/CalendarActivity;)Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getYear()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getMonth()I

    move-result v0

    iget-object v1, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$adapter$2$1;->this$0:Lcom/innioasis/y1_calendar/ui/CalendarActivity;

    invoke-static {v1}, Lcom/innioasis/y1_calendar/ui/CalendarActivity;->access$getNowCalendar$p(Lcom/innioasis/y1_calendar/ui/CalendarActivity;)Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getMonth()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getDay()I

    move-result p2

    iget-object v0, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$adapter$2$1;->this$0:Lcom/innioasis/y1_calendar/ui/CalendarActivity;

    invoke-static {v0}, Lcom/innioasis/y1_calendar/ui/CalendarActivity;->access$getNowCalendar$p(Lcom/innioasis/y1_calendar/ui/CalendarActivity;)Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1_calendar/ui/CalendarActivity$CalendarItem;->getDay()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 39
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemCalendarBinding;->text:Landroid/widget/TextView;

    const p2, 0x7f080062

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 40
    iget-object p1, p0, Lcom/innioasis/y1_calendar/ui/CalendarActivity$adapter$2$1;->this$0:Lcom/innioasis/y1_calendar/ui/CalendarActivity;

    invoke-static {p1, p3}, Lcom/innioasis/y1_calendar/ui/CalendarActivity;->access$setPosition$p(Lcom/innioasis/y1_calendar/ui/CalendarActivity;I)V

    goto :goto_2

    .line 42
    :cond_2
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemCalendarBinding;->text:Landroid/widget/TextView;

    const p2, 0x7f080061

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method
