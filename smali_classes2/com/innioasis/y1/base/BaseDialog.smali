.class public abstract Lcom/innioasis/y1/base/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0005H&J\u0010\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0005H&J\u0010\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0005H&R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/innioasis/y1/base/BaseDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "themeResId",
        "",
        "(Landroid/content/Context;I)V",
        "downRepeatCount",
        "onBack",
        "Lkotlin/Function0;",
        "",
        "getOnBack",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnBack",
        "(Lkotlin/jvm/functions/Function0;)V",
        "wasDown",
        "",
        "dispatchKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "longDown",
        "keyCode",
        "repeatCount",
        "longDownFinish",
        "shortUp",
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
.field private downRepeatCount:I

.field private onBack:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private wasDown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 26
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    iget p1, p0, Lcom/innioasis/y1/base/BaseDialog;->downRepeatCount:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/innioasis/y1/base/BaseDialog;->wasDown:Z

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/base/BaseDialog;->shortUp(I)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/base/BaseDialog;->longDownFinish(I)V

    .line 41
    :goto_0
    iput v2, p0, Lcom/innioasis/y1/base/BaseDialog;->downRepeatCount:I

    .line 42
    iput-boolean v2, p0, Lcom/innioasis/y1/base/BaseDialog;->wasDown:Z

    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    iput p1, p0, Lcom/innioasis/y1/base/BaseDialog;->downRepeatCount:I

    .line 30
    iput-boolean v3, p0, Lcom/innioasis/y1/base/BaseDialog;->wasDown:Z

    .line 32
    invoke-virtual {p0, v1, p1}, Lcom/innioasis/y1/base/BaseDialog;->longDown(II)V

    :goto_1
    return v3
.end method

.method public final getOnBack()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseDialog;->onBack:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public abstract longDown(II)V
.end method

.method public abstract longDownFinish(I)V
.end method

.method public final setOnBack(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/innioasis/y1/base/BaseDialog;->onBack:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public abstract shortUp(I)V
.end method
