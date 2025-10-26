.class public final Lcom/innioasis/y1/utils/SpeedUtil;
.super Ljava/lang/Object;
.source "SpeedUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/SpeedUtil;",
        "",
        "()V",
        "debounceCount",
        "",
        "firstClockwiseTime",
        "",
        "lastClockwiseTime",
        "runMultipleTimes",
        "",
        "block",
        "Lkotlin/Function0;",
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
.field private debounceCount:I

.field private firstClockwiseTime:J

.field private lastClockwiseTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/innioasis/y1/utils/SpeedUtil;->debounceCount:I

    return-void
.end method


# virtual methods
.method public final runMultipleTimes(Lkotlin/jvm/functions/Function0;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 24
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v3, "speed"

    invoke-virtual {v2, v3}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u95f4\u9694 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/innioasis/y1/utils/SpeedUtil;->lastClockwiseTime:J

    sub-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v6}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-wide v6, p0, Lcom/innioasis/y1/utils/SpeedUtil;->lastClockwiseTime:J

    sub-long v8, v0, v6

    const-wide/16 v10, 0x1f4

    cmp-long v2, v8, v10

    if-lez v2, :cond_0

    .line 26
    iput-wide v0, p0, Lcom/innioasis/y1/utils/SpeedUtil;->firstClockwiseTime:J

    goto :goto_0

    :cond_0
    sub-long v6, v0, v6

    const-wide/16 v8, 0xc8

    cmp-long v2, v6, v8

    if-lez v2, :cond_1

    .line 27
    iget v2, p0, Lcom/innioasis/y1/utils/SpeedUtil;->debounceCount:I

    if-lez v2, :cond_1

    .line 28
    iput-wide v0, p0, Lcom/innioasis/y1/utils/SpeedUtil;->firstClockwiseTime:J

    const/4 v2, 0x1

    .line 29
    iput v2, p0, Lcom/innioasis/y1/utils/SpeedUtil;->debounceCount:I

    goto :goto_0

    .line 30
    :cond_1
    iget v2, p0, Lcom/innioasis/y1/utils/SpeedUtil;->debounceCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/innioasis/y1/utils/SpeedUtil;->debounceCount:I

    .line 31
    :goto_0
    iget-wide v6, p0, Lcom/innioasis/y1/utils/SpeedUtil;->firstClockwiseTime:J

    sub-long v6, v0, v6

    const/16 v2, 0x3e8

    int-to-long v8, v2

    div-long/2addr v6, v8

    long-to-int v2, v6

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v2

    .line 32
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v4, v3}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    if-ge v5, v2, :cond_2

    .line 34
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 36
    :cond_2
    iput-wide v0, p0, Lcom/innioasis/y1/utils/SpeedUtil;->lastClockwiseTime:J

    return-void
.end method
