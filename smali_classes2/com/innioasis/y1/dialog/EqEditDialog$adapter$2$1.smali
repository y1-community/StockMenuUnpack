.class public final Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;
.super Lcom/innioasis/y1/base/BaseBindingAdapter;
.source "EqEditDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2;->invoke()Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter<",
        "Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;",
        "Lcom/innioasis/y1/databinding/ItemEqEditBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\n\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0005H\u0017R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014\u00a8\u0006\u001d"
    }
    d2 = {
        "com/innioasis/y1/dialog/EqEditDialog$adapter$2$1",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;",
        "Lcom/innioasis/y1/databinding/ItemEqEditBinding;",
        "index",
        "",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "isLeft",
        "",
        "()Z",
        "setLeft",
        "(Z)V",
        "max",
        "",
        "getMax",
        "()S",
        "setMax",
        "(S)V",
        "min",
        "getMin",
        "setMin",
        "init",
        "",
        "binding",
        "bean",
        "pos",
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
.field private index:I

.field private isLeft:Z

.field private max:S

.field private min:S

.field final synthetic this$0:Lcom/innioasis/y1/dialog/EqEditDialog;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/dialog/EqEditDialog;)V
    .locals 1

    iput-object p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    iput-boolean v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->isLeft:Z

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->index:I

    return v0
.end method

.method public final getMax()S
    .locals 1

    .line 48
    iget-short v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->max:S

    return v0
.end method

.method public final getMin()S
    .locals 1

    .line 49
    iget-short v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->min:S

    return v0
.end method

.method public bridge synthetic init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 47
    check-cast p1, Lcom/innioasis/y1/databinding/ItemEqEditBinding;

    check-cast p2, Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->init(Lcom/innioasis/y1/databinding/ItemEqEditBinding;Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;I)V

    return-void
.end method

.method public init(Lcom/innioasis/y1/databinding/ItemEqEditBinding;Lcom/innioasis/y1/dialog/EqEditDialog$EqEditData;I)V
    .locals 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object p2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBandLevel  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-static {v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->access$getEqualizer$p(Lcom/innioasis/y1/dialog/EqEditDialog;)Landroid/media/audiofx/Equalizer;

    move-result-object v1

    int-to-short v2, p3

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Equalizer;->getCenterFreq(S)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Hz  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-static {v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->access$getEqualizer$p(Lcom/innioasis/y1/dialog/EqEditDialog;)Landroid/media/audiofx/Equalizer;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lever"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 55
    invoke-virtual {p2, v0, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemEqEditBinding;->hz:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-static {v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->access$getEqualizer$p(Lcom/innioasis/y1/dialog/EqEditDialog;)Landroid/media/audiofx/Equalizer;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Equalizer;->getCenterFreq(S)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Hz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemEqEditBinding;->leftText:Landroid/widget/TextView;

    iget-short v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->min:S

    div-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemEqEditBinding;->rightText:Landroid/widget/TextView;

    iget-short v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->max:S

    div-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemEqEditBinding;->seekbar:Landroid/widget/SeekBar;

    iget-short v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->max:S

    iget-short v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->min:S

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 67
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemEqEditBinding;->seekbar:Landroid/widget/SeekBar;

    .line 68
    iget-short v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->min:S

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->this$0:Lcom/innioasis/y1/dialog/EqEditDialog;

    invoke-static {v1}, Lcom/innioasis/y1/dialog/EqEditDialog;->access$getEqualizer$p(Lcom/innioasis/y1/dialog/EqEditDialog;)Landroid/media/audiofx/Equalizer;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 67
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 71
    iget p2, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->index:I

    const/high16 v0, -0x1000000

    if-ne p2, p3, :cond_1

    .line 72
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemEqEditBinding;->seekbar:Landroid/widget/SeekBar;

    .line 73
    invoke-virtual {p0}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f080142

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 72
    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-boolean p2, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->isLeft:Z

    const-string p3, "#C21FFF"

    if-eqz p2, :cond_0

    .line 76
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemEqEditBinding;->leftText:Landroid/widget/TextView;

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemEqEditBinding;->rightText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemEqEditBinding;->leftText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemEqEditBinding;->rightText:Landroid/widget/TextView;

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemEqEditBinding;->leftText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemEqEditBinding;->rightText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemEqEditBinding;->seekbar:Landroid/widget/SeekBar;

    .line 87
    invoke-virtual {p0}, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f080141

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final isLeft()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->isLeft:Z

    return v0
.end method

.method public final setIndex(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->index:I

    return-void
.end method

.method public final setLeft(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->isLeft:Z

    return-void
.end method

.method public final setMax(S)V
    .locals 0

    .line 48
    iput-short p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->max:S

    return-void
.end method

.method public final setMin(S)V
    .locals 0

    .line 49
    iput-short p1, p0, Lcom/innioasis/y1/dialog/EqEditDialog$adapter$2$1;->min:S

    return-void
.end method
