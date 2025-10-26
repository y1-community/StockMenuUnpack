.class public final Lcom/innioasis/y1/databinding/DialogSubmenuBinding;
.super Ljava/lang/Object;
.source "DialogSubmenuBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/ListView;

.field public final submenu:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Landroid/widget/ListView;Landroid/widget/ListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rootView",
            "submenu"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/innioasis/y1/databinding/DialogSubmenuBinding;->rootView:Landroid/widget/ListView;

    .line 24
    iput-object p2, p0, Lcom/innioasis/y1/databinding/DialogSubmenuBinding;->submenu:Landroid/widget/ListView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/innioasis/y1/databinding/DialogSubmenuBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 54
    check-cast p0, Landroid/widget/ListView;

    .line 56
    new-instance v0, Lcom/innioasis/y1/databinding/DialogSubmenuBinding;

    invoke-direct {v0, p0, p0}, Lcom/innioasis/y1/databinding/DialogSubmenuBinding;-><init>(Landroid/widget/ListView;Landroid/widget/ListView;)V

    return-object v0

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/DialogSubmenuBinding;
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

    .line 35
    invoke-static {p0, v0, v1}, Lcom/innioasis/y1/databinding/DialogSubmenuBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/innioasis/y1/databinding/DialogSubmenuBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/innioasis/y1/databinding/DialogSubmenuBinding;
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

    const v0, 0x7f0d0062

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/innioasis/y1/databinding/DialogSubmenuBinding;->bind(Landroid/view/View;)Lcom/innioasis/y1/databinding/DialogSubmenuBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/innioasis/y1/databinding/DialogSubmenuBinding;->getRoot()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ListView;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/innioasis/y1/databinding/DialogSubmenuBinding;->rootView:Landroid/widget/ListView;

    return-object v0
.end method
