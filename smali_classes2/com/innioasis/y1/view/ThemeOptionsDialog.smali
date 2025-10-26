.class public final Lcom/innioasis/y1/view/ThemeOptionsDialog;
.super Landroid/app/Dialog;
.source "ThemeOptionsDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000S\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0019\u0018\u00002\u00020\u0001:\u0001&BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0002\u0010\u000fJ\u0012\u0010\u001e\u001a\u00020\u000e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0014J\u0018\u0010!\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020$H\u0016J\u0018\u0010%\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020$H\u0016R\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0015\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/innioasis/y1/view/ThemeOptionsDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "subs",
        "",
        "Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;",
        "isFull",
        "",
        "isFromLongPress",
        "themeResId",
        "",
        "select",
        "Lkotlin/Function1;",
        "",
        "(Landroid/content/Context;Ljava/util/List;ZZILkotlin/jvm/functions/Function1;)V",
        "binding",
        "Lcom/innioasis/y1/databinding/DialogPhotosBinding;",
        "getBinding",
        "()Lcom/innioasis/y1/databinding/DialogPhotosBinding;",
        "binding$delegate",
        "Lkotlin/Lazy;",
        "isLong",
        "nowPosition",
        "subAdapter",
        "com/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1",
        "getSubAdapter",
        "()Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;",
        "subAdapter$delegate",
        "temp",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyDown",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onKeyUp",
        "SubItem",
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
.field private final binding$delegate:Lkotlin/Lazy;

.field private final isFromLongPress:Z

.field private final isFull:Z

.field private isLong:Z

.field private nowPosition:I

.field private final select:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final subAdapter$delegate:Lkotlin/Lazy;

.field private final subs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;",
            ">;"
        }
    .end annotation
.end field

.field private temp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZZILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;",
            ">;ZZI",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "select"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    iput-object p2, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->subs:Ljava/util/List;

    .line 32
    iput-boolean p3, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->isFull:Z

    .line 33
    iput-boolean p4, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->isFromLongPress:Z

    .line 35
    iput-object p6, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->select:Lkotlin/jvm/functions/Function1;

    .line 40
    new-instance p2, Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2;

    invoke-direct {p2, p0, p1}, Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2;-><init>(Lcom/innioasis/y1/view/ThemeOptionsDialog;Landroid/content/Context;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->subAdapter$delegate:Lkotlin/Lazy;

    .line 60
    new-instance p1, Lcom/innioasis/y1/view/ThemeOptionsDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/view/ThemeOptionsDialog$binding$2;-><init>(Lcom/innioasis/y1/view/ThemeOptionsDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->binding$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->temp:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;ZZILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p4, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const p5, 0x7f120119

    const v5, 0x7f120119

    goto :goto_1

    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p6

    .line 29
    invoke-direct/range {v0 .. v6}, Lcom/innioasis/y1/view/ThemeOptionsDialog;-><init>(Landroid/content/Context;Ljava/util/List;ZZILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getNowPosition$p(Lcom/innioasis/y1/view/ThemeOptionsDialog;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->nowPosition:I

    return p0
.end method

.method public static final synthetic access$isFull$p(Lcom/innioasis/y1/view/ThemeOptionsDialog;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->isFull:Z

    return p0
.end method

.method private final getBinding()Lcom/innioasis/y1/databinding/DialogPhotosBinding;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->binding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/DialogPhotosBinding;

    return-object v0
.end method

.method private final getSubAdapter()Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->subAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 65
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-direct {p0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogPhotosBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/databinding/DialogPhotosBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->setContentView(Landroid/view/View;)V

    .line 67
    invoke-direct {p0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogPhotosBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogPhotosBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->getSubAdapter()Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 68
    invoke-direct {p0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogPhotosBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogPhotosBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->subs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 69
    invoke-direct {p0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->getSubAdapter()Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;

    move-result-object p1

    iget-object v0, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->subs:Ljava/util/List;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableList<com.innioasis.y1.view.ThemeOptionsDialog.SubItem>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;->setData$com_github_CymChad_brvah(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->setCancelable(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 72
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 73
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x50

    .line 74
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->isLong:Z

    return p2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-boolean p2, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->temp:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->isFromLongPress:Z

    if-eqz p2, :cond_0

    .line 80
    iput-boolean v0, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->temp:Z

    return v1

    .line 83
    :cond_0
    iget-boolean p2, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->isLong:Z

    if-eqz p2, :cond_1

    return v1

    .line 85
    :cond_1
    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 86
    iget-object p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->select:Lkotlin/jvm/functions/Function1;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->dismiss()V

    goto/16 :goto_4

    .line 89
    :cond_2
    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 90
    iget-object p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->select:Lkotlin/jvm/functions/Function1;

    iget p2, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->nowPosition:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 92
    :cond_3
    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_UP()I

    move-result p2

    if-ne p1, p2, :cond_4

    :goto_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result p2

    if-ne p1, p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    :goto_1
    const/4 v2, 0x2

    if-eqz p2, :cond_9

    .line 93
    iget p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->nowPosition:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->nowPosition:I

    if-gez p1, :cond_6

    .line 94
    iput v0, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->nowPosition:I

    .line 95
    :cond_6
    iget-boolean p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->isFull:Z

    if-eqz p1, :cond_8

    .line 96
    iget p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->nowPosition:I

    if-eq p1, v1, :cond_7

    if-ne p1, v2, :cond_8

    .line 97
    :cond_7
    iput v0, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->nowPosition:I

    .line 100
    :cond_8
    invoke-direct {p0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->getSubAdapter()Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;->notifyDataSetChanged()V

    goto :goto_4

    .line 102
    :cond_9
    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_DOWN()I

    move-result p2

    if-ne p1, p2, :cond_a

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result p2

    if-ne p1, p2, :cond_b

    goto :goto_2

    :cond_b
    :goto_3
    if-eqz v0, :cond_f

    .line 103
    iget p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->nowPosition:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->nowPosition:I

    .line 104
    iget-object p2, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->subs:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_c

    iget-object p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->subs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->nowPosition:I

    .line 105
    :cond_c
    iget-boolean p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->isFull:Z

    if-eqz p1, :cond_e

    .line 106
    iget p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->nowPosition:I

    if-eq p1, v1, :cond_d

    if-ne p1, v2, :cond_e

    :cond_d
    const/4 p1, 0x3

    .line 107
    iput p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog;->nowPosition:I

    .line 110
    :cond_e
    invoke-direct {p0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->getSubAdapter()Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;->notifyDataSetChanged()V

    :cond_f
    :goto_4
    return v1
.end method
