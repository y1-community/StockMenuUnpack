.class public final Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;
.super Ljava/lang/Object;
.source "BrvahQuickViewLoadMoreBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final loadMoreLoadCompleteView:Landroid/widget/FrameLayout;

.field public final loadMoreLoadEndView:Landroid/widget/FrameLayout;

.field public final loadMoreLoadFailView:Landroid/widget/FrameLayout;

.field public final loadMoreLoadingView:Landroid/widget/LinearLayout;

.field public final loadingProgress:Landroid/widget/ProgressBar;

.field public final loadingText:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvPrompt:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "loadMoreLoadCompleteView",
            "loadMoreLoadEndView",
            "loadMoreLoadFailView",
            "loadMoreLoadingView",
            "loadingProgress",
            "loadingText",
            "tvPrompt"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;->rootView:Landroid/widget/FrameLayout;

    .line 50
    iput-object p2, p0, Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;->loadMoreLoadCompleteView:Landroid/widget/FrameLayout;

    .line 51
    iput-object p3, p0, Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;->loadMoreLoadEndView:Landroid/widget/FrameLayout;

    .line 52
    iput-object p4, p0, Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;->loadMoreLoadFailView:Landroid/widget/FrameLayout;

    .line 53
    iput-object p5, p0, Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;->loadMoreLoadingView:Landroid/widget/LinearLayout;

    .line 54
    iput-object p6, p0, Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;->loadingProgress:Landroid/widget/ProgressBar;

    .line 55
    iput-object p7, p0, Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;->loadingText:Landroid/widget/TextView;

    .line 56
    iput-object p8, p0, Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;->tvPrompt:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 86
    sget v0, Lcom/chad/library/R$id;->load_more_load_complete_view:I

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 92
    sget v0, Lcom/chad/library/R$id;->load_more_load_end_view:I

    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 98
    sget v0, Lcom/chad/library/R$id;->load_more_load_fail_view:I

    .line 99
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    .line 104
    sget v0, Lcom/chad/library/R$id;->load_more_loading_view:I

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 110
    sget v0, Lcom/chad/library/R$id;->loading_progress:I

    .line 111
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ProgressBar;

    if-eqz v8, :cond_0

    .line 116
    sget v0, Lcom/chad/library/R$id;->loading_text:I

    .line 117
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 122
    sget v0, Lcom/chad/library/R$id;->tv_prompt:I

    .line 123
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 128
    new-instance v0, Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-static {p0, v0, v1}, Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent",
            "attachToParent"
        }
    .end annotation

    .line 73
    sget v0, Lcom/chad/library/R$layout;->brvah_quick_view_load_more:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;->bind(Landroid/view/View;)Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/chad/library/databinding/BrvahQuickViewLoadMoreBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
