.class public final Lcom/innioasis/fm/util/FMSharedPreferences;
.super Ljava/lang/Object;
.source "FMSharedPreferences.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001<B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u000803J\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u000803J\u000e\u00105\u001a\u0002062\u0006\u00107\u001a\u000208J\u0014\u00109\u001a\u0002062\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u000803J\u0014\u0010;\u001a\u0002062\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u000803R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\n\"\u0004\u0008\u000f\u0010\u000cR\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R$\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00048B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001a\u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008\u001c\u0010\u001dR$\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020!8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R$\u0010&\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u00088F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\'\u0010\n\"\u0004\u0008(\u0010\u000cR\u000e\u0010)\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R$\u0010*\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010\u0017\"\u0004\u0008,\u0010\u0019R$\u0010-\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00048B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008.\u0010\u0017\"\u0004\u0008/\u0010\u0019R\u000e\u00100\u001a\u000201X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
    }
    d2 = {
        "Lcom/innioasis/fm/util/FMSharedPreferences;",
        "",
        "()V",
        "Frequencies",
        "",
        "IsFirstUse",
        "LastTimeFrequency",
        "MaxFrequency",
        "",
        "getMaxFrequency",
        "()F",
        "setMaxFrequency",
        "(F)V",
        "MinFrequency",
        "getMinFrequency",
        "setMinFrequency",
        "Region",
        "SearchFrequencies",
        "editor",
        "Landroid/content/SharedPreferences$Editor;",
        "str",
        "frequencies",
        "getFrequencies",
        "()Ljava/lang/String;",
        "setFrequencies",
        "(Ljava/lang/String;)V",
        "gson",
        "Lcom/google/gson/Gson;",
        "getGson",
        "()Lcom/google/gson/Gson;",
        "gson$delegate",
        "Lkotlin/Lazy;",
        "i",
        "",
        "isFirstUse",
        "()Z",
        "setFirstUse",
        "(Z)V",
        "lastTimeFrequency",
        "getLastTimeFrequency",
        "setLastTimeFrequency",
        "parName",
        "region",
        "getRegion",
        "setRegion",
        "searchFrequencies",
        "getSearchFrequencies",
        "setSearchFrequencies",
        "settings",
        "Landroid/content/SharedPreferences;",
        "getCurrentRegionalFrequency",
        "",
        "getCurrentSearchFrequency",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
        "setCurrentRegionalFrequency",
        "list",
        "setCurrentSearchFrequency",
        "FrequencyAreaList",
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
.field private static final Frequencies:Ljava/lang/String; = "Frequencies"

.field public static final INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

.field private static final IsFirstUse:Ljava/lang/String; = "IsFirstUse"

.field private static final LastTimeFrequency:Ljava/lang/String; = "LastTimeFrequency"

.field private static MaxFrequency:F = 0.0f

.field private static MinFrequency:F = 0.0f

.field private static final Region:Ljava/lang/String; = "Region"

.field private static final SearchFrequencies:Ljava/lang/String; = "SearchFrequencies"

.field private static editor:Landroid/content/SharedPreferences$Editor; = null

.field private static final gson$delegate:Lkotlin/Lazy;

.field private static final parName:Ljava/lang/String; = "config"

.field private static settings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-direct {v0}, Lcom/innioasis/fm/util/FMSharedPreferences;-><init>()V

    sput-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    const/high16 v0, 0x42af0000    # 87.5f

    .line 23
    sput v0, Lcom/innioasis/fm/util/FMSharedPreferences;->MinFrequency:F

    const v0, 0x42d7cccd    # 107.9f

    .line 24
    sput v0, Lcom/innioasis/fm/util/FMSharedPreferences;->MaxFrequency:F

    .line 26
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences$gson$2;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences$gson$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->gson$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getFrequencies()Ljava/lang/String;
    .locals 4

    .line 61
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-string v1, "Frequencies"

    const-string/jumbo v2, "{AmericaList:[],AsiaList:[],AustraliaList:[],EuropeList:[],JapanList:[]}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5df2\u4fdd\u5b58\u7684\u9891\u6bb5    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getGson()Lcom/google/gson/Gson;
    .locals 1

    .line 26
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->gson$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method private final getSearchFrequencies()Ljava/lang/String;
    .locals 4

    .line 114
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-string v1, "SearchFrequencies"

    const-string/jumbo v2, "{AmericaList:[],AsiaList:[],AustraliaList:[],EuropeList:[],JapanList:[]}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5df2\u4fdd\u5b58\u7684\u9891\u6bb5    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final setFrequencies(Ljava/lang/String;)V
    .locals 4

    .line 69
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "Frequencies"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    sget-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private final setSearchFrequencies(Ljava/lang/String;)V
    .locals 4

    .line 122
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "SearchFrequencies"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    sget-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public final getCurrentRegionalFrequency()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-direct {p0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getFrequencies()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;

    .line 78
    invoke-virtual {p0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "Europe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->getEuropeList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    const-string v2, "America"

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->getAmericaList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    const-string v2, "Japan"

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->getJapanList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    const-string v2, "Asia"

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->getAsiaList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :sswitch_4
    const-string v2, "Australia"

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->getAustraliaList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 84
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 86
    :goto_1
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f53\u524d\u5730\u533a\u9891\u6bb5 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3f

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x50e356a0 -> :sswitch_4
        0x1f48ea -> :sswitch_3
        0x44093e6 -> :sswitch_2
        0x2e39f5ee -> :sswitch_1
        0x7c64a1c2 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getCurrentSearchFrequency()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-direct {p0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getSearchFrequencies()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;

    .line 130
    invoke-virtual {p0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "Europe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->getEuropeList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    const-string v2, "America"

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->getAmericaList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    const-string v2, "Japan"

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->getJapanList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    const-string v2, "Asia"

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->getAsiaList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :sswitch_4
    const-string v2, "Australia"

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->getAustraliaList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 136
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 138
    :goto_1
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f53\u524d\u5730\u533a\u9891\u6bb5 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3f

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x50e356a0 -> :sswitch_4
        0x1f48ea -> :sswitch_3
        0x44093e6 -> :sswitch_2
        0x2e39f5ee -> :sswitch_1
        0x7c64a1c2 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getLastTimeFrequency()F
    .locals 3

    .line 49
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/high16 v1, 0x42af0000    # 87.5f

    const-string v2, "LastTimeFrequency"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final getMaxFrequency()F
    .locals 1

    .line 24
    sget v0, Lcom/innioasis/fm/util/FMSharedPreferences;->MaxFrequency:F

    return v0
.end method

.method public final getMinFrequency()F
    .locals 1

    .line 23
    sget v0, Lcom/innioasis/fm/util/FMSharedPreferences;->MinFrequency:F

    return v0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 3

    .line 41
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-string v1, "Region"

    const-string v2, "America"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "context.getSharedPrefere\u2026me, Context.MODE_PRIVATE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->settings:Landroid/content/SharedPreferences;

    if-nez p1, :cond_0

    const-string p1, "settings"

    .line 30
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "settings.edit()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final isFirstUse()Z
    .locals 3

    .line 34
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    const-string v2, "IsFirstUse"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final setCurrentRegionalFrequency(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-direct {p0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getFrequencies()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;

    .line 95
    invoke-virtual {p0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "Europe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0, p1}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->setEuropeList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "America"

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v0, p1}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->setAmericaList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_2
    const-string v2, "Japan"

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v0, p1}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->setJapanList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_3
    const-string v2, "Asia"

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {v0, p1}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->setAsiaList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_4
    const-string v2, "Australia"

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {v0, p1}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->setAustraliaList(Ljava/util/List;)V

    .line 102
    :goto_0
    invoke-direct {p0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gson.toJson(areaList)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/innioasis/fm/util/FMSharedPreferences;->setFrequencies(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x50e356a0 -> :sswitch_4
        0x1f48ea -> :sswitch_3
        0x44093e6 -> :sswitch_2
        0x2e39f5ee -> :sswitch_1
        0x7c64a1c2 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setCurrentSearchFrequency(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-direct {p0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getSearchFrequencies()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;

    .line 148
    invoke-virtual {p0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "Europe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0, p1}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->setEuropeList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "America"

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v0, p1}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->setAmericaList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_2
    const-string v2, "Japan"

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {v0, p1}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->setJapanList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_3
    const-string v2, "Asia"

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 150
    :cond_3
    invoke-virtual {v0, p1}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->setAsiaList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_4
    const-string v2, "Australia"

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 151
    :cond_4
    invoke-virtual {v0, p1}, Lcom/innioasis/fm/util/FMSharedPreferences$FrequencyAreaList;->setAustraliaList(Ljava/util/List;)V

    .line 155
    :goto_0
    invoke-direct {p0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gson.toJson(areaList)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/innioasis/fm/util/FMSharedPreferences;->setSearchFrequencies(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x50e356a0 -> :sswitch_4
        0x1f48ea -> :sswitch_3
        0x44093e6 -> :sswitch_2
        0x2e39f5ee -> :sswitch_1
        0x7c64a1c2 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setFirstUse(Z)V
    .locals 4

    .line 36
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "IsFirstUse"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 37
    sget-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setLastTimeFrequency(F)V
    .locals 4

    .line 51
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "LastTimeFrequency"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 52
    sget-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setMaxFrequency(F)V
    .locals 0

    .line 24
    sput p1, Lcom/innioasis/fm/util/FMSharedPreferences;->MaxFrequency:F

    return-void
.end method

.method public final setMinFrequency(F)V
    .locals 0

    .line 23
    sput p1, Lcom/innioasis/fm/util/FMSharedPreferences;->MinFrequency:F

    return-void
.end method

.method public final setRegion(Ljava/lang/String;)V
    .locals 4

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "Region"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    sget-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
