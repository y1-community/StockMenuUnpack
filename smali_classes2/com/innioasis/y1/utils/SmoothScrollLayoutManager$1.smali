.class Lcom/innioasis/y1/utils/SmoothScrollLayoutManager$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SmoothScrollLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/utils/SmoothScrollLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1/utils/SmoothScrollLayoutManager;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/utils/SmoothScrollLayoutManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/innioasis/y1/utils/SmoothScrollLayoutManager$1;->this$0:Lcom/innioasis/y1/utils/SmoothScrollLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayMetrics"
        }
    .end annotation

    .line 29
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr v0, p1

    return v0
.end method
