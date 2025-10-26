.class public abstract Lcom/innioasis/y1_eBook/base/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        "VM:",
        "Lcom/innioasis/y1_eBook/base/BaseViewModel<",
        "TS;TI;>;S:",
        "Lcom/innioasis/y1_eBook/base/BaseState;",
        "I:",
        "Lcom/innioasis/y1_eBook/base/BaseIntent;",
        ">",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseFragment.kt\ncom/innioasis/y1_eBook/base/BaseFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,285:1\n1851#2,2:286\n*S KotlinDebug\n*F\n+ 1 BaseFragment.kt\ncom/innioasis/y1_eBook/base/BaseFragment\n*L\n260#1:286,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0014\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0004*\u0008\u0008\u0002\u0010\u0005*\u00020\u0007*\u0008\u0008\u0003\u0010\u0006*\u00020\u00082\u00020\t2\u00020\nB\u0005\u00a2\u0006\u0002\u0010\u000bJ\u0015\u00102\u001a\u0002032\u0006\u00104\u001a\u00028\u0002H&\u00a2\u0006\u0002\u00105J\u0016\u00106\u001a\u0002032\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020908H\u0016J\u0019\u0010:\u001a\u0002032\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u001c\u00a2\u0006\u0002\u0010<J\u0008\u0010=\u001a\u000203H&J\u0010\u0010>\u001a\u0002032\u0006\u0010?\u001a\u00020\u0013H\u0016J\u0008\u0010@\u001a\u00020 H\u0016J\u0012\u0010A\u001a\u0002032\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0016J&\u0010D\u001a\u0004\u0018\u00010%2\u0006\u0010E\u001a\u00020F2\u0008\u0010G\u001a\u0004\u0018\u00010H2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0017J\u0008\u0010I\u001a\u000203H\u0016J\u0008\u0010J\u001a\u000203H\u0016J\u001c\u0010K\u001a\u0002032\u0012\u00107\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020M0LH\u0016J\u0010\u0010N\u001a\u0002032\u0006\u00107\u001a\u00020OH\u0016J\u0013\u0010P\u001a\u0002032\u0006\u0010Q\u001a\u00028\u0003\u00a2\u0006\u0002\u0010RJ\u001f\u0010S\u001a\u00028\u00002\u0006\u0010E\u001a\u00020F2\u0008\u0010G\u001a\u0004\u0018\u00010HH&\u00a2\u0006\u0002\u0010TJ\u0012\u0010U\u001a\u0002032\n\u0010V\u001a\u0006\u0012\u0002\u0008\u00030WJ\"\u0010U\u001a\u0002032\n\u0010V\u001a\u0006\u0012\u0002\u0008\u00030W2\u0006\u0010X\u001a\u00020\u001a2\u0006\u0010Y\u001a\u00020ZJ\"\u0010U\u001a\u0002032\n\u0010V\u001a\u0006\u0012\u0002\u0008\u00030W2\u0006\u0010X\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u001aJ@\u0010U\u001a\u0002032\n\u0010V\u001a\u0006\u0012\u0002\u0008\u00030W2\"\u0010[\u001a\u001e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020Z0\\j\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020Z`]2\u0008\u0008\u0002\u0010^\u001a\u00020_J\u0012\u0010`\u001a\u0002032\n\u0010V\u001a\u0006\u0012\u0002\u0008\u00030WR*\u0010\u000c\u001a\u0012\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\rX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0019X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u001c0\u0019X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0019X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010!\u001a\u00020\u0013X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0015\"\u0004\u0008#\u0010\u0017R\"\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010$\u001a\u0004\u0018\u00010%@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008\'\u0010(R\u001c\u0010)\u001a\u00028\u0000X\u0086.\u00a2\u0006\u0010\n\u0002\u0010.\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u0012\u0010/\u001a\u00028\u0001X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101\u00a8\u0006a"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/base/BaseFragment;",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "VM",
        "Lcom/innioasis/y1_eBook/base/BaseViewModel;",
        "S",
        "I",
        "Lcom/innioasis/y1_eBook/base/BaseState;",
        "Lcom/innioasis/y1_eBook/base/BaseIntent;",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/view/View$OnClickListener;",
        "()V",
        "activity",
        "Lcom/innioasis/y1_eBook/base/BaseActivity;",
        "getActivity",
        "()Lcom/innioasis/y1_eBook/base/BaseActivity;",
        "setActivity",
        "(Lcom/innioasis/y1_eBook/base/BaseActivity;)V",
        "appContext",
        "Landroid/content/Context;",
        "getAppContext",
        "()Landroid/content/Context;",
        "setAppContext",
        "(Landroid/content/Context;)V",
        "launcherFile",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "launcherPermission",
        "",
        "launcherResult",
        "Landroid/content/Intent;",
        "mBackPressedCallback",
        "Landroidx/activity/OnBackPressedCallback;",
        "mContext",
        "getMContext",
        "setMContext",
        "value",
        "Landroid/view/View;",
        "rootView",
        "setRootView",
        "(Landroid/view/View;)V",
        "vb",
        "getVb",
        "()Landroidx/viewbinding/ViewBinding;",
        "setVb",
        "(Landroidx/viewbinding/ViewBinding;)V",
        "Landroidx/viewbinding/ViewBinding;",
        "vm",
        "getVm",
        "()Lcom/innioasis/y1_eBook/base/BaseViewModel;",
        "collect",
        "",
        "s",
        "(Lcom/innioasis/y1_eBook/base/BaseState;)V",
        "fileResult",
        "a",
        "",
        "Landroid/net/Uri;",
        "getPermission",
        "per",
        "([Ljava/lang/String;)V",
        "initView",
        "onAttach",
        "context",
        "onBackPressedCallBack",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroy",
        "onDestroyView",
        "permissionsResult",
        "",
        "",
        "result",
        "Landroidx/activity/result/ActivityResult;",
        "send",
        "i",
        "(Lcom/innioasis/y1_eBook/base/BaseIntent;)V",
        "setViewBinding",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;",
        "toActivity",
        "cls",
        "Ljava/lang/Class;",
        "key",
        "any",
        "",
        "map",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "requestCode",
        "",
        "toResultActivity",
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
.field public activity:Lcom/innioasis/y1_eBook/base/BaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/innioasis/y1_eBook/base/BaseActivity<",
            "****>;"
        }
    .end annotation
.end field

.field public appContext:Landroid/content/Context;

.field private launcherFile:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private launcherPermission:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private launcherResult:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field public mContext:Landroid/content/Context;

.field private rootView:Landroid/view/View;

.field public vb:Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVB;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7HkiC953RNdGpU03HQsgTeVK2C8(Lcom/innioasis/y1_eBook/base/BaseFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseFragment;->onCreateView$lambda-2(Lcom/innioasis/y1_eBook/base/BaseFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MxQW7JkdZXsMlS3k4sjFNNJH_lQ(Lcom/innioasis/y1_eBook/base/BaseFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseFragment;->onCreateView$lambda-0(Lcom/innioasis/y1_eBook/base/BaseFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c0N0jNnZEvo8QGYDZSungI7q9JE(Lcom/innioasis/y1_eBook/base/BaseFragment;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseFragment;->onCreateView$lambda-1(Lcom/innioasis/y1_eBook/base/BaseFragment;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private static final onCreateView$lambda-0(Lcom/innioasis/y1_eBook/base/BaseFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 88
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseFragment;->result(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method private static final onCreateView$lambda-1(Lcom/innioasis/y1_eBook/base/BaseFragment;Ljava/util/Map;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 93
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseFragment;->permissionsResult(Ljava/util/Map;)V

    return-void
.end method

.method private static final onCreateView$lambda-2(Lcom/innioasis/y1_eBook/base/BaseFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 97
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseFragment;->fileResult(Ljava/util/List;)V

    return-void
.end method

.method private final setRootView(Landroid/view/View;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->rootView:Landroid/view/View;

    return-void
.end method

.method public static synthetic toActivity$default(Lcom/innioasis/y1_eBook/base/BaseFragment;Ljava/lang/Class;Ljava/util/HashMap;IILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/16 p3, 0x12

    .line 233
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1_eBook/base/BaseFragment;->toActivity(Ljava/lang/Class;Ljava/util/HashMap;I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toActivity"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract collect(Lcom/innioasis/y1_eBook/base/BaseState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public fileResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getActivity()Lcom/innioasis/y1_eBook/base/BaseActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/innioasis/y1_eBook/base/BaseActivity<",
            "****>;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->activity:Lcom/innioasis/y1_eBook/base/BaseActivity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "activity"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAppContext()Landroid/content/Context;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "appContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMContext()Landroid/content/Context;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPermission([Ljava/lang/String;)V
    .locals 1

    const-string v0, "per"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->launcherPermission:Landroidx/activity/result/ActivityResultLauncher;

    if-nez v0, :cond_0

    const-string v0, "launcherPermission"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final getVb()Landroidx/viewbinding/ViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->vb:Landroidx/viewbinding/ViewBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "vb"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getVm()Lcom/innioasis/y1_eBook/base/BaseViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVM;"
        }
    .end annotation
.end method

.method public abstract initView()V
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onBackPressedCallBack()Landroidx/activity/OnBackPressedCallback;
    .locals 1

    .line 72
    new-instance v0, Lcom/innioasis/y1_eBook/base/BaseFragment$onBackPressedCallBack$1;

    invoke-direct {v0}, Lcom/innioasis/y1_eBook/base/BaseFragment$onBackPressedCallBack$1;-><init>()V

    check-cast v0, Landroidx/activity/OnBackPressedCallback;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate  to  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object p3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateView  to  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    new-instance p3, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p3}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast p3, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v0, Lcom/innioasis/y1_eBook/base/BaseFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/base/BaseFragment$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1_eBook/base/BaseFragment;)V

    invoke-virtual {p0, p3, v0}, Lcom/innioasis/y1_eBook/base/BaseFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p3

    const-string v0, "registerForActivityResul\u2026 result(it)\n            }"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p3, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->launcherResult:Landroidx/activity/result/ActivityResultLauncher;

    .line 92
    new-instance p3, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {p3}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    check-cast p3, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v0, Lcom/innioasis/y1_eBook/base/BaseFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/base/BaseFragment$$ExternalSyntheticLambda2;-><init>(Lcom/innioasis/y1_eBook/base/BaseFragment;)V

    invoke-virtual {p0, p3, v0}, Lcom/innioasis/y1_eBook/base/BaseFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p3

    const-string v0, "registerForActivityResul\u2026sResult(it)\n            }"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p3, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->launcherPermission:Landroidx/activity/result/ActivityResultLauncher;

    .line 96
    new-instance p3, Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents;

    invoke-direct {p3}, Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents;-><init>()V

    check-cast p3, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v0, Lcom/innioasis/y1_eBook/base/BaseFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1_eBook/base/BaseFragment$$ExternalSyntheticLambda1;-><init>(Lcom/innioasis/y1_eBook/base/BaseFragment;)V

    invoke-virtual {p0, p3, v0}, Lcom/innioasis/y1_eBook/base/BaseFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p3

    const-string v0, "registerForActivityResul\u2026 fileResult(it)\n        }"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->launcherFile:Landroidx/activity/result/ActivityResultLauncher;

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1_eBook/base/BaseFragment;->setViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseFragment;->setVb(Landroidx/viewbinding/ViewBinding;)V

    .line 104
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/base/BaseFragment;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseFragment;->setRootView(Landroid/view/View;)V

    .line 105
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseFragment;->setMContext(Landroid/content/Context;)V

    .line 106
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.innioasis.y1_eBook.base.BaseActivity<*, *, *, *>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/innioasis/y1_eBook/base/BaseActivity;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseFragment;->setActivity(Lcom/innioasis/y1_eBook/base/BaseActivity;)V

    .line 107
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/base/BaseFragment;->initView()V

    .line 109
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4;-><init>(Lcom/innioasis/y1_eBook/base/BaseFragment;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 116
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/base/BaseFragment;->onBackPressedCallBack()Landroidx/activity/OnBackPressedCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->mBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 118
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/base/BaseFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    .line 119
    iget-object p3, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->mBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    if-nez p3, :cond_0

    const-string p3, "mBackPressedCallback"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 118
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;)V

    .line 121
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/base/BaseFragment;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->mBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    if-nez v0, :cond_0

    const-string v0, "mBackPressedCallback"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->remove()V

    .line 141
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 142
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy  to  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 133
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 134
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroyView  to  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->cancel()V

    return-void
.end method

.method public permissionsResult(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public result(Landroidx/activity/result/ActivityResult;)V
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/innioasis/y1_eBook/base/BaseFragment$send$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v2}, Lcom/innioasis/y1_eBook/base/BaseFragment$send$1;-><init>(Lcom/innioasis/y1_eBook/base/BaseIntent;Lcom/innioasis/y1_eBook/base/BaseFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setActivity(Lcom/innioasis/y1_eBook/base/BaseActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1_eBook/base/BaseActivity<",
            "****>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->activity:Lcom/innioasis/y1_eBook/base/BaseActivity;

    return-void
.end method

.method public final setAppContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->appContext:Landroid/content/Context;

    return-void
.end method

.method public final setMContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final setVb(Landroidx/viewbinding/ViewBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVB;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->vb:Landroidx/viewbinding/ViewBinding;

    return-void
.end method

.method public abstract setViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            ")TVB;"
        }
    .end annotation
.end method

.method public final toActivity(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "cls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/base/BaseFragment;->getActivity()Lcom/innioasis/y1_eBook/base/BaseActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1_eBook/base/BaseFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final toActivity(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "cls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "any"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/base/BaseFragment;->getMContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    instance-of p1, p3, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 177
    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 180
    :cond_0
    instance-of p1, p3, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 181
    check-cast p3, Ljava/lang/Boolean;

    check-cast p3, Ljava/io/Serializable;

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 184
    :cond_1
    instance-of p1, p3, Ljava/lang/Float;

    if-eqz p1, :cond_2

    .line 185
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_1

    .line 188
    :cond_2
    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 189
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 192
    :cond_3
    instance-of p1, p3, Ljava/lang/Long;

    if-eqz p1, :cond_4

    .line 193
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1

    .line 196
    :cond_4
    instance-of p1, p3, Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    .line 197
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 200
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 201
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_6
    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 208
    :cond_7
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    :goto_1
    invoke-virtual {p0, v0}, Lcom/innioasis/y1_eBook/base/BaseFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final toActivity(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "cls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->launcherResult:Landroidx/activity/result/ActivityResultLauncher;

    if-nez v0, :cond_0

    const-string v0, "launcherResult"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/base/BaseFragment;->getActivity()Lcom/innioasis/y1_eBook/base/BaseActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final toActivity(Ljava/lang/Class;Ljava/util/HashMap;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "cls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/base/BaseFragment;->getMContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 236
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 237
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 238
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 241
    :cond_1
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 242
    check-cast v2, Ljava/lang/Boolean;

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 245
    :cond_2
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_3

    .line 246
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_0

    .line 249
    :cond_3
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 250
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 253
    :cond_4
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_5

    .line 254
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 257
    :cond_5
    instance-of v3, v2, Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    .line 258
    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 259
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 260
    check-cast v2, Ljava/lang/Iterable;

    .line 286
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 261
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 262
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 265
    :cond_7
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_8
    if-eqz v2, :cond_0

    .line 271
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_9
    const/16 p1, 0x12

    if-ne p3, p1, :cond_a

    .line 278
    invoke-virtual {p0, v0}, Lcom/innioasis/y1_eBook/base/BaseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 280
    :cond_a
    iget-object p1, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->launcherResult:Landroidx/activity/result/ActivityResultLauncher;

    if-nez p1, :cond_b

    const-string p1, "launcherResult"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_b
    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final toResultActivity(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "cls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/innioasis/y1_eBook/base/BaseFragment;->launcherResult:Landroidx/activity/result/ActivityResultLauncher;

    if-nez v0, :cond_0

    const-string v0, "launcherResult"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/base/BaseFragment;->getActivity()Lcom/innioasis/y1_eBook/base/BaseActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method
