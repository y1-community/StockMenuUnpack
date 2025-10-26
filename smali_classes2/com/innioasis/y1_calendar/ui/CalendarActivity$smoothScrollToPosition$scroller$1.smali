.class public final Lcom/innioasis/y1_calendar/ui/CalendarActivity$smoothScrollToPosition$scroller$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "CalendarActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_calendar/ui/CalendarActivity;->smoothScrollToPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0014\u00a8\u0006\u0004"
    }
    d2 = {
        "com/innioasis/y1_calendar/ui/CalendarActivity$smoothScrollToPosition$scroller$1",
        "Landroidx/recyclerview/widget/LinearSmoothScroller;",
        "getVerticalSnapPreference",
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


# direct methods
.method constructor <init>(Lcom/innioasis/y1_calendar/ui/CalendarActivity;)V
    .locals 0

    .line 261
    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getVerticalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
