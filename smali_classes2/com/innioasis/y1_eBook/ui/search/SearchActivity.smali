.class public final Lcom/innioasis/y1_eBook/ui/search/SearchActivity;
.super Lcom/innioasis/y1_eBook/base/BaseActivity;
.source "SearchActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/ui/search/SearchActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1_eBook/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityBookSearchBinding;",
        "Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;",
        "Lcom/innioasis/y1_eBook/ui/search/SearchState;",
        "Lcom/innioasis/y1_eBook/ui/search/SearchIntent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchActivity.kt\ncom/innioasis/y1_eBook/ui/search/SearchActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,163:1\n75#2,13:164\n*S KotlinDebug\n*F\n+ 1 SearchActivity.kt\ncom/innioasis/y1_eBook/ui/search/SearchActivity\n*L\n25#1:164,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000U\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0008\u0018\u00002\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0004H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 J\u0008\u0010!\u001a\u00020\u0017H\u0016J\u0018\u0010\"\u001a\u00020\u00172\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u001aH\u0002J\u0008\u0010&\u001a\u00020\u0002H\u0016R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0012\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000c\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/search/SearchActivity;",
        "Lcom/innioasis/y1_eBook/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityBookSearchBinding;",
        "Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;",
        "Lcom/innioasis/y1_eBook/ui/search/SearchState;",
        "Lcom/innioasis/y1_eBook/ui/search/SearchIntent;",
        "()V",
        "adapter",
        "com/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1",
        "getAdapter",
        "()Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "loadingDialog",
        "Lcom/innioasis/y1/utils/LoadingDialog;",
        "getLoadingDialog",
        "()Lcom/innioasis/y1/utils/LoadingDialog;",
        "loadingDialog$delegate",
        "vm",
        "getVm",
        "()Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;",
        "vm$delegate",
        "collect",
        "",
        "s",
        "direction",
        "",
        "d",
        "Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;",
        "formatFileSize",
        "",
        "size",
        "",
        "initView",
        "selItem",
        "binding",
        "Lcom/innioasis/y1/databinding/ItemBookSearchBinding;",
        "isSel",
        "setViewBinding",
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
.field private final adapter$delegate:Lkotlin/Lazy;

.field private final loadingDialog$delegate:Lkotlin/Lazy;

.field private final vm$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 24
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/base/BaseActivity;-><init>()V

    .line 25
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 168
    new-instance v1, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 172
    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 174
    new-instance v4, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v4, v0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 176
    new-instance v5, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$special$$inlined$viewModels$default$3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 172
    invoke-direct {v2, v3, v4, v1, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/Lazy;

    .line 25
    iput-object v2, p0, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->vm$delegate:Lkotlin/Lazy;

    .line 27
    new-instance v0, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2;-><init>(Lcom/innioasis/y1_eBook/ui/search/SearchActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 138
    new-instance v0, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$loadingDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$loadingDialog$2;-><init>(Lcom/innioasis/y1_eBook/ui/search/SearchActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->loadingDialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$selItem(Lcom/innioasis/y1_eBook/ui/search/SearchActivity;Lcom/innioasis/y1/databinding/ItemBookSearchBinding;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->selItem(Lcom/innioasis/y1/databinding/ItemBookSearchBinding;Z)V

    return-void
.end method

.method private final getAdapter()Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;

    return-object v0
.end method

.method private final getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->loadingDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/utils/LoadingDialog;

    return-object v0
.end method

.method private final selItem(Lcom/innioasis/y1/databinding/ItemBookSearchBinding;Z)V
    .locals 4

    const-string v0, "binding.layout"

    const-string v1, "binding.name"

    if-eqz p2, :cond_0

    .line 156
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v2, p1, Lcom/innioasis/y1/databinding/ItemBookSearchBinding;->name:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "#3CFFDE"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v1, v3}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 157
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemBookSearchBinding;->layout:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const v0, 0x7f080067

    invoke-virtual {p2, p1, v0, v3}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    goto :goto_0

    .line 159
    :cond_0
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v2, p1, Lcom/innioasis/y1/databinding/ItemBookSearchBinding;->name:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v1, v3}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 160
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemBookSearchBinding;->layout:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1, v3, v3}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic collect(Lcom/innioasis/y1_eBook/base/BaseState;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/innioasis/y1_eBook/ui/search/SearchState;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->collect(Lcom/innioasis/y1_eBook/ui/search/SearchState;)V

    return-void
.end method

.method public collect(Lcom/innioasis/y1_eBook/ui/search/SearchState;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/search/SearchState$GetFileBookSuccess;

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getAdapter()Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;

    move-result-object v0

    check-cast p1, Lcom/innioasis/y1_eBook/ui/search/SearchState$GetFileBookSuccess;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/search/SearchState$GetFileBookSuccess;->getList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;->setList(Ljava/util/Collection;)V

    const/4 p1, 0x0

    .line 144
    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->setMark(I)V

    .line 145
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/LoadingDialog;->dismiss()V

    goto :goto_0

    .line 148
    :cond_0
    instance-of v0, p1, Lcom/innioasis/y1_eBook/ui/search/SearchState$SaveBookSuccess;

    if-eqz v0, :cond_1

    .line 149
    check-cast p1, Lcom/innioasis/y1_eBook/ui/search/SearchState$SaveBookSuccess;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/search/SearchState$SaveBookSuccess;->getTip()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->showToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z
    .locals 2

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getMark()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->setMark(I)V

    .line 127
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getMark()I

    move-result p1

    if-gez p1, :cond_1

    .line 128
    invoke-virtual {p0, v1}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->setMark(I)V

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getAdapter()Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;->notifyDataSetChanged()V

    .line 132
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBookSearchBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBookSearchBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getMark()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getMark()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->setMark(I)V

    .line 117
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getMark()I

    move-result p1

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getAdapter()Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 118
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getAdapter()Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->setMark(I)V

    .line 120
    :cond_3
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getAdapter()Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;->notifyDataSetChanged()V

    .line 122
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBookSearchBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBookSearchBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getMark()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getMark()I

    move-result p1

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getAdapter()Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_5

    return v1

    .line 93
    :cond_5
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getAdapter()Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getMark()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 94
    new-instance v0, Lcom/innioasis/y1_eBook/ui/search/SearchIntent$SaveBook;

    invoke-direct {v0, p1}, Lcom/innioasis/y1_eBook/ui/search/SearchIntent$SaveBook;-><init>(Ljava/io/File;)V

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    goto :goto_0

    .line 86
    :cond_6
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->finish()V

    :goto_0
    return v1
.end method

.method public final formatFileSize(J)Ljava/lang/String;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-string p1, "0 B"

    return-object p1

    :cond_0
    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    const/16 v2, 0x400

    int-to-double v2, v2

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v2, v0

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    long-to-double v6, p1

    const-string v8, "format(format, *args)"

    const/4 v9, 0x0

    const/4 v10, 0x1

    cmpg-double v11, v6, v0

    if-gez v11, :cond_1

    .line 58
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v0, v10, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v9

    invoke-static {v0, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%d B"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    cmpg-double p1, v6, v4

    if-gez p1, :cond_2

    .line 59
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array p1, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, p1, v9

    invoke-static {p1, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.2f KB"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    cmpg-double p1, v6, v2

    if-gez p1, :cond_3

    .line 60
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array p1, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, p1, v9

    invoke-static {p1, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.2f MB"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_3
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array p1, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, p1, v9

    invoke-static {p1, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.2f GB"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getVm()Lcom/innioasis/y1_eBook/base/BaseViewModel;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getVm()Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseViewModel;

    return-object v0
.end method

.method public getVm()Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->vm$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/ui/search/SearchViewModel;

    return-object v0
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f11005c

    .line 67
    invoke-static {v0}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookSearchBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookSearchBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getAdapter()Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookSearchBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookSearchBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 70
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookSearchBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookSearchBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 72
    sget-object v0, Lcom/innioasis/y1_eBook/ui/search/SearchIntent$GetFileBook;->INSTANCE:Lcom/innioasis/y1_eBook/ui/search/SearchIntent$GetFileBook;

    check-cast v0, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    .line 73
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/LoadingDialog;->show()V

    return-void
.end method

.method public bridge synthetic setViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->setViewBinding()Lcom/innioasis/y1/databinding/ActivityBookSearchBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public setViewBinding()Lcom/innioasis/y1/databinding/ActivityBookSearchBinding;
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityBookSearchBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityBookSearchBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
