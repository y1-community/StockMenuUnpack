.class public final Lcom/innioasis/fm/configs/FrequencyRanges;
.super Ljava/lang/Object;
.source "FrequencyRanges.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFrequencyRanges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrequencyRanges.kt\ncom/innioasis/fm/configs/FrequencyRanges\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,65:1\n1851#2,2:66\n1851#2,2:68\n*S KotlinDebug\n*F\n+ 1 FrequencyRanges.kt\ncom/innioasis/fm/configs/FrequencyRanges\n*L\n36#1:66,2\n50#1:68,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010R \u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/innioasis/fm/configs/FrequencyRanges;",
        "",
        "()V",
        "rangesList",
        "",
        "Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;",
        "getRangesList",
        "()Ljava/util/List;",
        "setRangesList",
        "(Ljava/util/List;)V",
        "getMaxFrequencyRange",
        "",
        "getMinFrequencyRange",
        "initRanges",
        "",
        "context",
        "Landroid/content/Context;",
        "Ranges",
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
.field public static final INSTANCE:Lcom/innioasis/fm/configs/FrequencyRanges;

.field public static rangesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/fm/configs/FrequencyRanges;

    invoke-direct {v0}, Lcom/innioasis/fm/configs/FrequencyRanges;-><init>()V

    sput-object v0, Lcom/innioasis/fm/configs/FrequencyRanges;->INSTANCE:Lcom/innioasis/fm/configs/FrequencyRanges;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMaxFrequencyRange()F
    .locals 5

    .line 36
    invoke-virtual {p0}, Lcom/innioasis/fm/configs/FrequencyRanges;->getRangesList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 66
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v1, 0x42d80000    # 108.0f

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;

    .line 37
    invoke-virtual {v2}, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->getArea()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v4}, Lcom/innioasis/fm/util/FMSharedPreferences;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-virtual {v2}, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->getMax()F

    move-result v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final getMinFrequencyRange()F
    .locals 5

    .line 50
    invoke-virtual {p0}, Lcom/innioasis/fm/configs/FrequencyRanges;->getRangesList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 68
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v1, 0x42af0000    # 87.5f

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;

    .line 51
    invoke-virtual {v2}, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->getArea()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v4}, Lcom/innioasis/fm/util/FMSharedPreferences;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-virtual {v2}, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;->getMin()F

    move-result v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final getRangesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;",
            ">;"
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/innioasis/fm/configs/FrequencyRanges;->rangesList:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "rangesList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final initRanges(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;

    .line 13
    new-instance v1, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1100a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.resources.getStr\u2026string.fm_ranges_america)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "America"

    const/high16 v4, 0x42af0000    # 87.5f

    const v5, 0x42d7cccd    # 107.9f

    .line 13
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 19
    new-instance v1, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1100a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.resources.getStr\u2026(R.string.fm_ranges_asia)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Asia"

    const/high16 v5, 0x42ae0000    # 87.0f

    const/high16 v6, 0x42d80000    # 108.0f

    invoke-direct {v1, v3, v2, v5, v6}, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 20
    new-instance v1, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1100a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.resources.getStr\u2026ring.fm_ranges_australia)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Australia"

    .line 20
    invoke-direct {v1, v3, v2, v4, v6}, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 26
    new-instance v1, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1100a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.resources.getStr\u2026.string.fm_ranges_europe)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Europe"

    invoke-direct {v1, v3, v2, v4, v6}, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 27
    new-instance v1, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f1100a7

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "context.resources.getStr\u2026R.string.fm_ranges_japan)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Japan"

    const/high16 v3, 0x42980000    # 76.0f

    const/high16 v4, 0x42be0000    # 95.0f

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 p1, 0x4

    aput-object v1, v0, p1

    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/innioasis/fm/configs/FrequencyRanges;->setRangesList(Ljava/util/List;)V

    return-void
.end method

.method public final setRangesList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/innioasis/fm/configs/FrequencyRanges$Ranges;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sput-object p1, Lcom/innioasis/fm/configs/FrequencyRanges;->rangesList:Ljava/util/List;

    return-void
.end method
