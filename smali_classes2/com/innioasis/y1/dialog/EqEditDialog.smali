.class public final Lcom/innioasis/y1/dialog/EqEditDialog;
.super Landroid/app/Dialog;
.source "EqEditDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Y\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\t*\u0001\u000b\u0018\u00002\u00020\u0001:\u00014B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0015H\u0002J\u0010\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u0007H\u0002J\u0012\u0010 \u001a\u00020\u001c2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0014J\u0018\u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020&H\u0016J\u0018\u0010\'\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020&H\u0016J\u0008\u0010(\u001a\u00020\u001cH\u0014J\u0008\u0010)\u001a\u00020\u001cH\u0002J\u000e\u0010*\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020,J\u0008\u0010-\u001a\u00020\u001cH\u0002J\u0008\u0010.\u001a\u00020\u001cH\u0002J\u0008\u0010/\u001a\u00020\u001cH\u0007J\u0010\u00100\u001a\u00020\u001c2\u0006\u00101\u001a\u00020\u0015H\u0002J\u0010\u00102\u001a\u00020\u001c2\u0006\u00103\u001a\u00020\u0013H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lcom/innioasis/y1/dialog/EqEditDialog;",
        "Landroid/app/Dialog;",
        "activity",
        "Landroid/app/Activity;",
        "equalizer",
        "Landroid/media/audiofx/Equalizer;",
        "preset",
        "",
        "themeResId",
        "(Landroid/app/Activity;Landroid/media/audiofx/Equalizer;II)V",
        "adapter",
        "com/innioasis/y1/dialog/EqEditDialog$adapter$2$1",
        "getAdapter",
        "()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lcom/innioasis/y1/databinding/DialogEqEditBinding;",
        "ep",
        "Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;",
        "isFirst",
        "",
        "isSave",
        "longEnter",
        "longLeft",
        "longRight",
        "longTop",
        "adjustParameters",
        "",
        "isLeft",
        "nextOption",
        "num",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyDown",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onKeyUp",
        "onStop",
        "reset",
        "resetEQ",
        "string",
        "",
        "save",
        "setAdapterData",
        "showDialog",
        "switchReset",
        "isSel",
        "upDataEqPreset",
        "p",
        "EqEditData",
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
.field private final activity:Landroid/app/Activity;

.field private final adapter$delegate:Lkotlin/Lazy;

.field private binding:Lcom/innioasis/y1/databinding/DialogEqEditBinding;

.field private ep:Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

.field private equalizer:Landroid/media/audiofx/Equalizer;

.field private isFirst:Z

.field private isSave:Z

.field private longEnter:Z

.field private longLeft:Z

.field private longRight:Z

.field private longTop:Z

.field private preset:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/media/audiofx/Equalizer;II)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "equalizer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->activity:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    .line 30
    iput p3, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->preset:I

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p2, p1}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    .line 46
    new-instance p1, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2;-><init>(Lcom/innioasis/y1/dialog/EqEditDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->adapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/media/audiofx/Equalizer;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const p4, 0x7f120118

    .line 27
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/innioasis/y1/dialog/EqEditDialog;-><init>(Landroid/app/Activity;Landroid/media/audiofx/Equalizer;II)V

    return-void
.end method

.method public static final synthetic access$getEp$p(Lcom/innioasis/y1/dialog/EqEditDialog;)Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->ep:Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    return-object p0
.end method

.method public static final synthetic access$getEqualizer$p(Lcom/innioasis/y1/dialog/EqEditDialog;)Landroid/media/audiofx/Equalizer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    return-object p0
.end method

.method public static final synthetic access$getPreset$p(Lcom/innioasis/y1/dialog/EqEditDialog;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->preset:I

    return p0
.end method

.method public static final synthetic access$setAdapterData(Lcom/innioasis/y1/dialog/EqEditDialog;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->setAdapterData()V

    return-void
.end method

.method public static final synthetic access$setSave$p(Lcom/innioasis/y1/dialog/EqEditDialog;Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->isSave:Z

    return-void
.end method

.method public static final synthetic access$upDataEqPreset(Lcom/innioasis/y1/dialog/EqEditDialog;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/innioasis/y1/dialog/EqEditDialog;->upDataEqPreset(Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    return-void
.end method

.method private final adjustParameters(Z)V
    .locals 6

    .line 292
    :try_start_0
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->setLeft(Z)V

    .line 294
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->getIndex()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const-string v2, "    "

    const-string v3, " \u4e3a "

    const-string v4, "\u8c03\u6574 "

    if-eqz p1, :cond_1

    .line 296
    :try_start_1
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->getMin()S

    move-result p1

    if-gt v0, p1, :cond_0

    return-void

    .line 297
    :cond_0
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->getIndex()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x64

    int-to-short v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    iget-object p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    .line 299
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->getIndex()I

    move-result v1

    int-to-short v1, v1

    .line 298
    invoke-virtual {p1, v1, v0}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    goto :goto_0

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->getMax()S

    move-result p1

    if-lt v0, p1, :cond_2

    return-void

    .line 303
    :cond_2
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->getIndex()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x64

    int-to-short v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    iget-object p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    .line 305
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->getIndex()I

    move-result v1

    int-to-short v1, v1

    .line 304
    invoke-virtual {p1, v1, v0}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 308
    :goto_0
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 310
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private final getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    return-object v0
.end method

.method private final nextOption(I)V
    .locals 2

    .line 318
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->getIndex()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->setIndex(I)V

    .line 321
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->getIndex()I

    move-result p1

    if-gez p1, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object p1

    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->setIndex(I)V

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->getIndex()I

    move-result p1

    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 327
    invoke-direct {p0, p1}, Lcom/innioasis/y1/dialog/EqEditDialog;->switchReset(Z)V

    goto :goto_0

    .line 330
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->getIndex()I

    move-result p1

    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-le p1, v0, :cond_2

    .line 331
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->setIndex(I)V

    .line 332
    invoke-direct {p0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->switchReset(Z)V

    goto :goto_0

    .line 336
    :cond_2
    invoke-direct {p0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->switchReset(Z)V

    .line 338
    :goto_0
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->notifyDataSetChanged()V

    return-void
.end method

.method private final reset()V
    .locals 7

    .line 438
    new-instance v6, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 439
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "activity.resources.getSt\u2026ng.dialog_eq_reset_title)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    new-instance v0, Lcom/innioasis/y1/dialog/EqEditDialog$reset$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/dialog/EqEditDialog$reset$1;-><init>(Lcom/innioasis/y1/dialog/EqEditDialog;)V

    move-object v3, v0

    check-cast v3, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    .line 438
    invoke-virtual/range {v0 .. v5}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle(Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZ)Landroid/app/Dialog;

    return-void
.end method

.method private final save()V
    .locals 9

    .line 347
    new-instance v6, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 348
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "activity.resources.getSt\u2026R.string.setting_eq_save)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    new-instance v0, Lcom/innioasis/y1/dialog/EqEditDialog$save$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/dialog/EqEditDialog$save$1;-><init>(Lcom/innioasis/y1/dialog/EqEditDialog;)V

    move-object v3, v0

    check-cast v3, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const-string v2, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, v6

    move v6, v7

    move-object v7, v8

    .line 347
    invoke-static/range {v0 .. v7}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method private final setAdapterData()V
    .locals 12

    .line 244
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->setList(Ljava/util/Collection;)V

    .line 245
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v2, v0, :cond_5

    .line 247
    :try_start_0
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v7

    .line 249
    new-instance v8, Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;

    .line 250
    iget-object v9, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    int-to-short v10, v2

    invoke-virtual {v9, v10}, Landroid/media/audiofx/Equalizer;->getCenterFreq(S)I

    move-result v9

    div-int/lit16 v9, v9, 0x3e8

    .line 251
    iget-object v11, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v11, v10}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v10

    .line 249
    invoke-direct {v8, v9, v10}, Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;-><init>(IS)V

    .line 247
    invoke-virtual {v7, v8}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->addData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v3

    new-instance v4, Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;

    const/16 v5, 0x36b0

    invoke-direct {v4, v5, v1}, Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;-><init>(IS)V

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->addData(Ljava/lang/Object;)V

    goto :goto_1

    .line 259
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v3

    new-instance v4, Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;

    const/16 v5, 0xe10

    invoke-direct {v4, v5, v1}, Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;-><init>(IS)V

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->addData(Ljava/lang/Object;)V

    goto :goto_1

    .line 258
    :cond_2
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v3

    new-instance v4, Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;

    const/16 v5, 0x38e

    invoke-direct {v4, v5, v1}, Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;-><init>(IS)V

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->addData(Ljava/lang/Object;)V

    goto :goto_1

    .line 257
    :cond_3
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v3

    new-instance v4, Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;

    const/16 v5, 0xe6

    invoke-direct {v4, v5, v1}, Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;-><init>(IS)V

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->addData(Ljava/lang/Object;)V

    goto :goto_1

    .line 256
    :cond_4
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v3

    new-instance v4, Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;

    const/16 v5, 0x3c

    invoke-direct {v4, v5, v1}, Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;-><init>(IS)V

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->addData(Ljava/lang/Object;)V

    .line 262
    :goto_1
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast v7, Ljava/lang/Throwable;

    invoke-virtual {v3, v7}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 266
    :cond_5
    :try_start_1
    new-instance v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    .line 267
    iget-object v2, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v2, v1}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v1

    .line 268
    iget-object v2, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v2, v6}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v2

    .line 269
    iget-object v6, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v6, v5}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v6

    .line 270
    iget-object v5, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v5, v4}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v7

    .line 271
    iget-object v4, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v4, v3}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v8

    move-object v3, v0

    move v4, v1

    move v5, v2

    .line 266
    invoke-direct/range {v3 .. v8}, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;-><init>(SSSSS)V

    iput-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->ep:Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 274
    new-instance v7, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;-><init>(SSSSS)V

    iput-object v7, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->ep:Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    .line 281
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private final switchReset(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 430
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\u9009\u4e2d\u91cd\u7f6e\u6309\u94ae"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    iget-object p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->binding:Lcom/innioasis/y1/databinding/DialogEqEditBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogEqEditBinding;->reset:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const v0, 0x7f080096

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 433
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->binding:Lcom/innioasis/y1/databinding/DialogEqEditBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogEqEditBinding;->reset:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const v0, 0x7f080095

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final upDataEqPreset(Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V
    .locals 1

    .line 391
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->eqParameter2string(Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)Ljava/lang/String;

    move-result-object p1

    .line 392
    iget v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->preset:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 402
    :pswitch_0
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setRock(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :pswitch_1
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setPop(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :pswitch_2
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setJazz(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :pswitch_3
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setHiphop(Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :pswitch_4
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setHeavymetal(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :pswitch_5
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setFolk(Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :pswitch_6
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setFlat(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :pswitch_7
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setDance(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :pswitch_8
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setClassical(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :pswitch_9
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setNormal(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 95
    iget-object p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/innioasis/y1/databinding/DialogEqEditBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/DialogEqEditBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->binding:Lcom/innioasis/y1/databinding/DialogEqEditBinding;

    .line 96
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/y1/databinding/DialogEqEditBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/dialog/EqEditDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 110
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-le p1, v1, :cond_4

    .line 111
    iput-boolean v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->longRight:Z

    goto :goto_1

    .line 115
    :cond_0
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 116
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-le p1, v1, :cond_4

    .line 117
    iput-boolean v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->longLeft:Z

    goto :goto_1

    .line 121
    :cond_1
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 122
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    const/4 p2, 0x3

    if-le p1, p2, :cond_4

    .line 123
    iput-boolean v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->longEnter:Z

    .line 124
    iget-object p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->activity:Landroid/app/Activity;

    instance-of p2, p1, Lcom/innioasis/y1/base/BaseActivity;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/innioasis/y1/base/BaseActivity;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity;->askShutdown()V

    goto :goto_1

    .line 132
    :cond_3
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 133
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-le p1, v1, :cond_4

    .line 134
    iput-boolean v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->longTop:Z

    :cond_4
    :goto_1
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longEnter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->longEnter:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "longRight "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->longRight:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 145
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_UP()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 146
    invoke-direct {p0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->adjustParameters(Z)V

    return v2

    .line 149
    :cond_0
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_DOWN()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 150
    invoke-direct {p0, v2}, Lcom/innioasis/y1/dialog/EqEditDialog;->adjustParameters(Z)V

    return v2

    .line 153
    :cond_1
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 154
    iget-boolean p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->isFirst:Z

    if-eqz p1, :cond_2

    .line 155
    iget-boolean p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->longEnter:Z

    if-nez p1, :cond_2

    .line 156
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->getIndex()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->reset()V

    .line 165
    :cond_2
    iput-boolean v2, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->longEnter:Z

    .line 166
    iput-boolean v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->isFirst:Z

    goto :goto_0

    .line 168
    :cond_3
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 169
    iget-boolean p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->longRight:Z

    if-nez p1, :cond_4

    .line 170
    iget-boolean p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->isFirst:Z

    if-eqz p1, :cond_4

    .line 171
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_4

    .line 172
    invoke-direct {p0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->nextOption(I)V

    .line 176
    :cond_4
    iput-boolean v2, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->longRight:Z

    .line 177
    iput-boolean v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->isFirst:Z

    goto :goto_0

    .line 180
    :cond_5
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 181
    iget-boolean p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->longLeft:Z

    if-nez p1, :cond_6

    .line 182
    iget-boolean p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->isFirst:Z

    if-eqz p1, :cond_6

    .line 183
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, -0x1

    .line 184
    invoke-direct {p0, p1}, Lcom/innioasis/y1/dialog/EqEditDialog;->nextOption(I)V

    .line 188
    :cond_6
    iput-boolean v2, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->longLeft:Z

    .line 189
    iput-boolean v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->isFirst:Z

    goto :goto_0

    .line 192
    :cond_7
    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result p2

    if-ne p1, p2, :cond_9

    .line 193
    iget-boolean p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->longTop:Z

    if-nez p1, :cond_8

    .line 194
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->save()V

    .line 196
    :cond_8
    iput-boolean v2, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->longTop:Z

    .line 197
    iput-boolean v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->isFirst:Z

    :cond_9
    :goto_0
    return v1
.end method

.method protected onStop()V
    .locals 10

    .line 408
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 410
    iget-boolean v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->isSave:Z

    if-nez v0, :cond_0

    .line 411
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "\u6ca1\u6709\u4fdd\u5b58  \u5f3a\u5236\u9000\u51fa \u4fdd\u5b58"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    new-instance v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    .line 413
    iget-object v2, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v2, v1}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v5

    .line 414
    iget-object v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v6

    .line 415
    iget-object v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v7

    .line 416
    iget-object v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v8

    .line 417
    iget-object v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v9

    move-object v4, v0

    .line 412
    invoke-direct/range {v4 .. v9}, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;-><init>(SSSSS)V

    .line 419
    invoke-direct {p0, v0}, Lcom/innioasis/y1/dialog/EqEditDialog;->upDataEqPreset(Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    .line 420
    sget-object v1, Lcom/innioasis/y1/utils/EqUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqUtils;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/utils/EqUtils;->saveMusicEqData(Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    :cond_0
    return-void
.end method

.method public final resetEQ(Ljava/lang/String;)V
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->string2EqParameter(Ljava/lang/String;)Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    move-result-object p1

    .line 471
    sget-object v0, Lcom/innioasis/y1/utils/EqUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqUtils;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/EqUtils;->saveMusicEqData(Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    return-void
.end method

.method public final showDialog()V
    .locals 4

    .line 206
    invoke-virtual {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->show()V

    .line 207
    iget-object v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->binding:Lcom/innioasis/y1/databinding/DialogEqEditBinding;

    if-eqz v0, :cond_0

    .line 208
    iget-object v1, v0, Lcom/innioasis/y1/databinding/DialogEqEditBinding;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11017e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v1, v0, Lcom/innioasis/y1/databinding/DialogEqEditBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 210
    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogEqEditBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 215
    :try_start_0
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v1}, Landroid/media/audiofx/Equalizer;->getBandLevelRange()[S

    move-result-object v1

    const/4 v2, 0x0

    aget-short v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->setMin(S)V

    .line 216
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog;->equalizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v1}, Landroid/media/audiofx/Equalizer;->getBandLevelRange()[S

    move-result-object v1

    const/4 v2, 0x1

    aget-short v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->setMax(S)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 218
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v1

    const/16 v2, -0x5dc

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->setMin(S)V

    .line 219
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getAdapter()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;

    move-result-object v1

    const/16 v2, 0x5dc

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->setMax(S)V

    .line 220
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    .line 225
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->setAdapterData()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 227
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    .line 232
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x12c

    .line 233
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 234
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 236
    :goto_2
    invoke-virtual {p0}, Lcom/innioasis/y1/dialog/EqEditDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_3
    return-void
.end method
