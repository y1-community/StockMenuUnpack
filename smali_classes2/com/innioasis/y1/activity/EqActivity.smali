.class public final Lcom/innioasis/y1/activity/EqActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "EqActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/EqActivity$Companion;,
        Lcom/innioasis/y1/activity/EqActivity$EqData;,
        Lcom/innioasis/y1/activity/EqActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityEqBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000K\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n*\u0001\u0008\u0018\u0000 %2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002%&B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0014\u001a\u00020\u0015H\u0017J\u0008\u0010\u0016\u001a\u00020\u0015H\u0017J\u0008\u0010\u0017\u001a\u00020\u0015H\u0017J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0012\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u0002H\u0016J\u0008\u0010\u001f\u001a\u00020\u0015H\u0016J\u0008\u0010 \u001a\u00020\u0015H\u0017J\u0008\u0010!\u001a\u00020\u0015H\u0014J\u0008\u0010\"\u001a\u00020\u0015H\u0015J\u0008\u0010#\u001a\u00020\u0015H\u0016J\u0008\u0010$\u001a\u00020\u0015H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/EqActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityEqBinding;",
        "()V",
        "canRecoveryMusic",
        "",
        "canRecoveryPlay",
        "listAdapter",
        "com/innioasis/y1/activity/EqActivity$listAdapter$2$1",
        "getListAdapter",
        "()Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;",
        "listAdapter$delegate",
        "Lkotlin/Lazy;",
        "playing",
        "Lcom/innioasis/y1/service/PlayerService$Playing;",
        "position",
        "",
        "song",
        "Lcom/innioasis/y1/database/Song;",
        "wasPlaying",
        "antiClockwise",
        "",
        "clockwise",
        "confirm",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "dispatchKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "getViewBinding",
        "initView",
        "longConfirm",
        "onDestroy",
        "onResume",
        "quit",
        "showThisEq",
        "Companion",
        "EqData",
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


# static fields
.field public static final Companion:Lcom/innioasis/y1/activity/EqActivity$Companion;

.field private static isEq:Z


# instance fields
.field private canRecoveryMusic:Z

.field private canRecoveryPlay:Z

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private playing:Lcom/innioasis/y1/service/PlayerService$Playing;

.field private position:I

.field private song:Lcom/innioasis/y1/database/Song;

.field private wasPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/y1/activity/EqActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1/activity/EqActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1/activity/EqActivity;->Companion:Lcom/innioasis/y1/activity/EqActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    .line 113
    sget-object v0, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    iput-object v0, p0, Lcom/innioasis/y1/activity/EqActivity;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    .line 119
    new-instance v0, Lcom/innioasis/y1/activity/EqActivity$listAdapter$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/EqActivity$listAdapter$2;-><init>(Lcom/innioasis/y1/activity/EqActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/EqActivity;->listAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getPosition$p(Lcom/innioasis/y1/activity/EqActivity;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/innioasis/y1/activity/EqActivity;->position:I

    return p0
.end method

.method public static final synthetic access$isEq$cp()Z
    .locals 1

    .line 48
    sget-boolean v0, Lcom/innioasis/y1/activity/EqActivity;->isEq:Z

    return v0
.end method

.method public static final synthetic access$setEq$cp(Z)V
    .locals 0

    .line 48
    sput-boolean p0, Lcom/innioasis/y1/activity/EqActivity;->isEq:Z

    return-void
.end method

.method public static final getEqList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/EqActivity$EqData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/innioasis/y1/activity/EqActivity;->Companion:Lcom/innioasis/y1/activity/EqActivity$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/EqActivity$Companion;->getEqList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getListAdapter()Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/innioasis/y1/activity/EqActivity;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;

    return-object v0
.end method

.method private final showThisEq()V
    .locals 5

    .line 312
    sget-object v0, Lcom/innioasis/y1/activity/EqActivity;->Companion:Lcom/innioasis/y1/activity/EqActivity$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/EqActivity$Companion;->getEqList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    if-ge v2, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 313
    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityEqBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityEqBinding;->image:Landroid/widget/ImageView;

    const-string v3, "vb.image"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/EqActivity$Companion;->getEqList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/activity/EqActivity$EqData;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/EqActivity$EqData;->getIcon()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityEqBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityEqBinding;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/EqActivity$Companion;->getEqList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/EqActivity$EqData;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/EqActivity$EqData;->getStr()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/EqActivity;->setMark(I)V

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/EqActivity;->showThisEq()V

    .line 245
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityEqBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityEqBinding;->recyclerList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 246
    invoke-direct {p0}, Lcom/innioasis/y1/activity/EqActivity;->getListAdapter()Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;->notifyDataSetChanged()V

    return-void
.end method

.method public clockwise()V
    .locals 2

    .line 231
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/EqActivity;->setMark(I)V

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/EqActivity;->showThisEq()V

    .line 235
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityEqBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityEqBinding;->recyclerList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 236
    invoke-direct {p0}, Lcom/innioasis/y1/activity/EqActivity;->getListAdapter()Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;->notifyDataSetChanged()V

    return-void
.end method

.method public confirm()V
    .locals 3

    .line 255
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6eEQ  \u9884\u8bbe\u503c  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    sget-object v0, Lcom/innioasis/y1/utils/EqUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqUtils;

    sget-object v1, Lcom/innioasis/y1/activity/EqActivity;->Companion:Lcom/innioasis/y1/activity/EqActivity$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/EqActivity$Companion;->getEqList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/EqActivity$EqData;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/EqActivity$EqData;->getEqParameter()Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/EqUtils;->saveMusicEqData(Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    .line 257
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/EqSPUtils;->setEqualizerInt(I)V

    .line 258
    invoke-direct {p0}, Lcom/innioasis/y1/activity/EqActivity;->getListAdapter()Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;->notifyDataSetChanged()V

    const/4 v0, -0x1

    .line 259
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/EqActivity;->setResult(I)V

    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    sget-object v0, Lcom/innioasis/y1/activity/EqActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 290
    sput-boolean p1, Lcom/innioasis/y1/activity/EqActivity;->isEq:Z

    .line 291
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->finish()V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 302
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 303
    :goto_0
    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_PLAY()I

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_2

    return v2

    .line 304
    :cond_2
    :goto_1
    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result v1

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_4

    return v2

    .line 305
    :cond_4
    :goto_2
    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result v1

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_6

    return v2

    .line 308
    :cond_6
    :goto_3
    invoke-super {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityEqBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityEqBinding;
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityEqBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityEqBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 9

    const v0, 0x7f110142

    .line 145
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/EqActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.page_equalizer)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/EqActivity;->setStateBarLeftText(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 146
    sput-boolean v0, Lcom/innioasis/y1/activity/EqActivity;->isEq:Z

    .line 148
    sget-object v1, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/EqSPUtils;->getEqualizerInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/EqActivity;->setMark(I)V

    .line 149
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/EqActivity;->setMark(I)V

    .line 152
    :cond_0
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v1

    sget-object v3, Lcom/innioasis/y1/activity/EqActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/16 v3, 0x14

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v1, v0, :cond_4

    if-eq v1, v5, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    goto/16 :goto_0

    .line 174
    :cond_1
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getPlayingMusic()Lcom/innioasis/y1/database/Song;

    move-result-object v1

    .line 175
    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/innioasis/y1/service/PlayerService;->isUseIjk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v6, "\u8bb0\u5f55\u97f3\u4e50\u7684ijk\u6682\u505c"

    invoke-virtual {v1, v6, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v1

    iput-boolean v1, p0, Lcom/innioasis/y1/activity/EqActivity;->wasPlaying:Z

    .line 178
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v3, 0x15

    invoke-static {v1, v3, v2, v5, v4}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    goto :goto_0

    .line 180
    :cond_2
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    iput-boolean v1, p0, Lcom/innioasis/y1/activity/EqActivity;->wasPlaying:Z

    goto :goto_0

    .line 164
    :cond_3
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 165
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "\u8bb0\u5f55\u6709\u58f0\u8bfb\u7269\u6682\u505c"

    invoke-virtual {v1, v7, v6}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iput-boolean v0, p0, Lcom/innioasis/y1/activity/EqActivity;->wasPlaying:Z

    .line 167
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v3, v2, v5, v4}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    goto :goto_0

    .line 155
    :cond_4
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getFmService()Lcom/innioasis/fm/FmRadioService;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/fm/FmRadioService;->isPowerUp()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 156
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "\u8bb0\u5f55Fm\u6682\u505c"

    invoke-virtual {v1, v7, v6}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iput-boolean v0, p0, Lcom/innioasis/y1/activity/EqActivity;->wasPlaying:Z

    .line 158
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v3, v2, v5, v4}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    .line 187
    :cond_5
    :goto_0
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v1

    iput-object v1, p0, Lcom/innioasis/y1/activity/EqActivity;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    .line 188
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    invoke-virtual {v1, v3}, Lcom/innioasis/y1/service/PlayerService;->setPlaying(Lcom/innioasis/y1/service/PlayerService$Playing;)V

    .line 193
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_6

    .line 194
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "\u97f3\u4e50\u6ca1\u6709\u64ad\u653e"

    invoke-virtual {v1, v3, v2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/innioasis/y1/activity/EqActivity;->position:I

    .line 199
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getPlayingMusic()Lcom/innioasis/y1/database/Song;

    move-result-object v1

    iput-object v1, p0, Lcom/innioasis/y1/activity/EqActivity;->song:Lcom/innioasis/y1/database/Song;

    .line 201
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f100000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    const-string v2, "resources.openRawResourceFd(R.raw.eqtest)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    :try_start_0
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 204
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v3

    .line 205
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    .line 204
    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 207
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 208
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 209
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 210
    iput-boolean v0, p0, Lcom/innioasis/y1/activity/EqActivity;->canRecoveryMusic:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 212
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    .line 213
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 217
    :cond_6
    :goto_1
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 219
    invoke-direct {p0}, Lcom/innioasis/y1/activity/EqActivity;->getListAdapter()Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;

    move-result-object v0

    sget-object v1, Lcom/innioasis/y1/activity/EqActivity;->Companion:Lcom/innioasis/y1/activity/EqActivity$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/EqActivity$Companion;->getEqList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;->setList(Ljava/util/Collection;)V

    .line 220
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityEqBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityEqBinding;->recyclerList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/EqActivity;->getListAdapter()Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 221
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityEqBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityEqBinding;->recyclerList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 222
    invoke-direct {p0}, Lcom/innioasis/y1/activity/EqActivity;->showThisEq()V

    return-void
.end method

.method public longConfirm()V
    .locals 11

    const/4 v0, 0x0

    .line 271
    :try_start_0
    sget-object v1, Lcom/innioasis/y1/utils/EqUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqUtils;

    sget-object v2, Lcom/innioasis/y1/activity/EqActivity;->Companion:Lcom/innioasis/y1/activity/EqActivity$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/EqActivity$Companion;->getEqList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/activity/EqActivity$EqData;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/EqActivity$EqData;->getEqParameter()Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/innioasis/y1/utils/EqUtils;->saveMusicEqData(Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    .line 272
    sget-object v1, Lcom/innioasis/y1/utils/EqUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqUtils;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/EqActivity$Companion;->getEqList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/activity/EqActivity$EqData;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/EqActivity$EqData;->getEqParameter()Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/utils/EqUtils;->saveMusicEqData(Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    .line 273
    sget-object v1, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/utils/EqSPUtils;->setEqualizerInt(I)V

    .line 274
    invoke-direct {p0}, Lcom/innioasis/y1/activity/EqActivity;->getListAdapter()Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;->notifyDataSetChanged()V

    const/4 v1, -0x1

    .line 275
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/EqActivity;->setResult(I)V

    .line 276
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v2, "EqEditDialog\u4f20\u5165 equalizer2 "

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    new-instance v1, Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget-object v2, Lcom/innioasis/y1/utils/EqUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqUtils;

    invoke-virtual {v2}, Lcom/innioasis/y1/utils/EqUtils;->getEqualizer2()Landroid/media/audiofx/Equalizer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/EqActivity;->getMark()I

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/innioasis/y1/dialog/EqEditDialog;-><init>(Landroid/app/Activity;Landroid/media/audiofx/Equalizer;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->showDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-string v2, "Error"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 12

    .line 319
    invoke-super {p0}, Lcom/innioasis/y1/base/BaseActivity;->onDestroy()V

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 322
    :try_start_0
    sput-boolean v3, Lcom/innioasis/y1/activity/EqActivity;->isEq:Z

    .line 323
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u9000\u51faEQ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/innioasis/y1/activity/EqActivity;->wasPlaying:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/innioasis/y1/activity/EqActivity;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    invoke-virtual {v4, v5}, Lcom/innioasis/y1/service/PlayerService;->setPlaying(Lcom/innioasis/y1/service/PlayerService$Playing;)V

    .line 325
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playing:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v6}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wasPlaying: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/innioasis/y1/activity/EqActivity;->wasPlaying:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v4

    sget-object v5, Lcom/innioasis/y1/activity/EqActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x0

    if-eq v4, v2, :cond_2

    if-eq v4, v1, :cond_2

    if-eq v4, v0, :cond_0

    .line 369
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    goto/16 :goto_0

    .line 336
    :cond_0
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/innioasis/y1/service/PlayerService;->getPlayingMusic()Lcom/innioasis/y1/database/Song;

    move-result-object v4

    .line 337
    sget-object v6, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v6}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/innioasis/y1/service/PlayerService;->isUseIjk(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 339
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    .line 341
    iget-boolean v4, p0, Lcom/innioasis/y1/activity/EqActivity;->wasPlaying:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, v3, v2, v5}, Lcom/innioasis/y1/service/PlayerService;->play$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    goto/16 :goto_0

    .line 343
    :cond_1
    iget-boolean v6, p0, Lcom/innioasis/y1/activity/EqActivity;->wasPlaying:Z

    if-nez v6, :cond_3

    .line 345
    sget-object v6, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v6}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V

    .line 346
    sget-object v6, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v6}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v4}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 347
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lcom/innioasis/y1/service/PlayerService;->setPlayerIsPrepared(Z)V

    .line 348
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Lcom/innioasis/y1/service/PlayerService;->muteOrNoMuteMusic(Z)V

    .line 349
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 351
    sget-object v4, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v4, Lcom/innioasis/y1/activity/EqActivity$onDestroy$1;

    invoke-direct {v4, p0, v5}, Lcom/innioasis/y1/activity/EqActivity$onDestroy$1;-><init>(Lcom/innioasis/y1/activity/EqActivity;Lkotlin/coroutines/Continuation;)V

    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 330
    :cond_2
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    .line 332
    iget-boolean v4, p0, Lcom/innioasis/y1/activity/EqActivity;->wasPlaying:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, v3, v2, v5}, Lcom/innioasis/y1/service/PlayerService;->play$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    .line 373
    :cond_3
    :goto_0
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    .line 375
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v4, v3}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    .line 376
    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v3

    sget-object v4, Lcom/innioasis/y1/activity/EqActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-eq v3, v2, :cond_7

    if-eq v3, v1, :cond_6

    if-eq v3, v0, :cond_4

    goto :goto_1

    .line 379
    :cond_4
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/innioasis/y1/activity/EqActivity;->song:Lcom/innioasis/y1/database/Song;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/service/PlayerService;->isUseIjk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 381
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_1

    .line 383
    :cond_5
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_1

    .line 386
    :cond_6
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_1

    .line 377
    :cond_7
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 264
    invoke-super {p0}, Lcom/innioasis/y1/base/BaseActivity;->onResume()V

    .line 265
    invoke-direct {p0}, Lcom/innioasis/y1/activity/EqActivity;->getListAdapter()Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/EqActivity$listAdapter$2$1;->notifyDataSetChanged()V

    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method
