.class public final Lcom/innioasis/y1/databinding/ActivityBookMainBinding;
.super Ljava/lang/Object;
.source "ActivityBookMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bookLibrary:Landroid/widget/TextView;

.field public final continueReading:Lcom/innioasis/y1/databinding/ItemBookMainBinding;

.field public final localFiles:Lcom/innioasis/y1/databinding/ItemBookMainBinding;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/innioasis/y1/databinding/ItemBookMainBinding;Lcom/innioasis/y1/databinding/ItemBookMainBinding;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "bookLibrary",
            "continueReading",
            "localFiles",
            "recyclerView"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/innioasis/y1/databinding/ActivityBookMainBinding;->rootView:Landroid/widget/LinearLayout;

    .line 39
    iput-object p2, p0, Lcom/innioasis/y1/databinding/ActivityBookMainBinding;->bookLibrary:Landroid/widget/TextView;

    .line 40
    iput-object p3, p0, Lcom/innioasis/y1/databinding/ActivityBookMainBinding;->continueReading:Lcom/innioasis/y1/databinding/ItemBookMainBinding;

    .line 41
    iput-object p4, p0, Lcom/innioasis/y1/databinding/ActivityBookMainBinding;->localFiles:Lcom/innioasis/y1/databinding/ItemBookMainBinding;

    .line 42
    iput-object p5, p0, Lcom/innioasis/y1/databinding/ActivityBookMainBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/innioasis/y1/databinding/ActivityBookMainBinding;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    const v0, 0x7f0a006c

    .line 73
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a00b4

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-static {v1}, Lcom/innioasis/y1/databinding/ItemBookMainBinding;->bind(Landroid/view/View;)Lcom/innioasis/y1/databinding/ItemBookMainBinding;

    move-result-object v5

    const v0, 0x7f0a0182

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    invoke-static {v1}, Lcom/innioasis/y1/databinding/ItemBookMainBinding;->bind(Landroid/view/View;)Lcom/innioasis/y1/databinding/ItemBookMainBinding;

    move-result-object v6

    const v0, 0x7f0a0205

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_0

    .line 98
    new-instance v0, Lcom/innioasis/y1/databinding/ActivityBookMainBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/innioasis/y1/databinding/ActivityBookMainBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/innioasis/y1/databinding/ItemBookMainBinding;Lcom/innioasis/y1/databinding/ItemBookMainBinding;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityBookMainBinding;
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

    .line 53
    invoke-static {p0, v0, v1}, Lcom/innioasis/y1/databinding/ActivityBookMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/innioasis/y1/databinding/ActivityBookMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/innioasis/y1/databinding/ActivityBookMainBinding;
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

    const v0, 0x7f0d0023

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/innioasis/y1/databinding/ActivityBookMainBinding;->bind(Landroid/view/View;)Lcom/innioasis/y1/databinding/ActivityBookMainBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/innioasis/y1/databinding/ActivityBookMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/innioasis/y1/databinding/ActivityBookMainBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
