.class public final Lcom/innioasis/y1/databinding/DialogBookThemeBinding;
.super Ljava/lang/Object;
.source "DialogBookThemeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final itemThemeImg0:Landroid/widget/ImageView;

.field public final itemThemeImg1:Landroid/widget/ImageView;

.field public final itemThemeImg2:Landroid/widget/ImageView;

.field public final itemThemeImg3:Landroid/widget/ImageView;

.field public final itemThemeImg4:Landroid/widget/ImageView;

.field public final layout:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "itemThemeImg0",
            "itemThemeImg1",
            "itemThemeImg2",
            "itemThemeImg3",
            "itemThemeImg4",
            "layout"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->rootView:Landroid/widget/LinearLayout;

    .line 45
    iput-object p2, p0, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->itemThemeImg0:Landroid/widget/ImageView;

    .line 46
    iput-object p3, p0, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->itemThemeImg1:Landroid/widget/ImageView;

    .line 47
    iput-object p4, p0, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->itemThemeImg2:Landroid/widget/ImageView;

    .line 48
    iput-object p5, p0, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->itemThemeImg3:Landroid/widget/ImageView;

    .line 49
    iput-object p6, p0, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->itemThemeImg4:Landroid/widget/ImageView;

    .line 50
    iput-object p7, p0, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->layout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/innioasis/y1/databinding/DialogBookThemeBinding;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    const v0, 0x7f0a0157

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0158

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0159

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a015a

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a015b

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 110
    move-object v9, p0

    check-cast v9, Landroid/widget/LinearLayout;

    .line 112
    new-instance p0, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v9}, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    return-object p0

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/DialogBookThemeBinding;
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

    .line 61
    invoke-static {p0, v0, v1}, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/innioasis/y1/databinding/DialogBookThemeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/innioasis/y1/databinding/DialogBookThemeBinding;
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

    const v0, 0x7f0d005d

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->bind(Landroid/view/View;)Lcom/innioasis/y1/databinding/DialogBookThemeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
