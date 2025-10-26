.class public final Lcom/innioasis/y1/utils/EqSPUtils;
.super Ljava/lang/Object;
.source "EqSPUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010E\u001a\u00020F2\u0006\u0010\u0005\u001a\u00020$J\u000e\u0010G\u001a\u00020\u00042\u0006\u0010H\u001a\u00020IJ\u000e\u0010J\u001a\u00020F2\u0006\u0010K\u001a\u00020LJ\u000e\u0010M\u001a\u00020I2\u0006\u0010N\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R$\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR$\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R$\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R$\u0010*\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010\u0008\"\u0004\u0008,\u0010\nR$\u0010-\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008.\u0010\u0008\"\u0004\u0008/\u0010\nR$\u00100\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00081\u0010\u0008\"\u0004\u00082\u0010\nR$\u00103\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00084\u0010\u0008\"\u0004\u00085\u0010\nR$\u00106\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00087\u0010\u0008\"\u0004\u00088\u0010\nR$\u00109\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008:\u0010\u0008\"\u0004\u0008;\u0010\nR\u000e\u0010<\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R$\u0010=\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008>\u0010\u0008\"\u0004\u0008?\u0010\nR$\u0010@\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008A\u0010\u0008\"\u0004\u0008B\u0010\nR\u000e\u0010C\u001a\u00020DX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006O"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/EqSPUtils;",
        "",
        "()V",
        "Equalizer",
        "",
        "i",
        "classical",
        "getClassical",
        "()Ljava/lang/String;",
        "setClassical",
        "(Ljava/lang/String;)V",
        "dance",
        "getDance",
        "setDance",
        "editor",
        "Landroid/content/SharedPreferences$Editor;",
        "eq_preset_classical",
        "eq_preset_classical_data",
        "eq_preset_dance",
        "eq_preset_dance_data",
        "eq_preset_flat",
        "eq_preset_flat_data",
        "eq_preset_folk",
        "eq_preset_folk_data",
        "eq_preset_heavymetal",
        "eq_preset_heavymetal_data",
        "eq_preset_hiphop",
        "eq_preset_hiphop_data",
        "eq_preset_jazz",
        "eq_preset_jazz_data",
        "eq_preset_normal",
        "eq_preset_normal_data",
        "eq_preset_pop",
        "eq_preset_pop_data",
        "eq_preset_rock",
        "eq_preset_rock_data",
        "",
        "equalizerInt",
        "getEqualizerInt",
        "()I",
        "setEqualizerInt",
        "(I)V",
        "flat",
        "getFlat",
        "setFlat",
        "folk",
        "getFolk",
        "setFolk",
        "heavymetal",
        "getHeavymetal",
        "setHeavymetal",
        "hiphop",
        "getHiphop",
        "setHiphop",
        "jazz",
        "getJazz",
        "setJazz",
        "normal",
        "getNormal",
        "setNormal",
        "parName",
        "pop",
        "getPop",
        "setPop",
        "rock",
        "getRock",
        "setRock",
        "settings",
        "Landroid/content/SharedPreferences;",
        "del",
        "",
        "eqParameter2string",
        "ep",
        "Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;",
        "init",
        "context",
        "Landroid/content/Context;",
        "string2EqParameter",
        "string",
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
.field private static final Equalizer:Ljava/lang/String; = "equalizer"

.field public static final INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

.field private static editor:Landroid/content/SharedPreferences$Editor; = null

.field public static final eq_preset_classical:Ljava/lang/String; = "eq_preset_classical"

.field private static final eq_preset_classical_data:Ljava/lang/String; = "{hz60:800,hz230:600,hz910:0,hz3600:100,hz14000:200}"

.field public static final eq_preset_dance:Ljava/lang/String; = "eq_preset_dance"

.field private static final eq_preset_dance_data:Ljava/lang/String; = "{hz60:800,hz230:600,hz910:0,hz3600:100,hz14000:200}"

.field public static final eq_preset_flat:Ljava/lang/String; = "eq_preset_flat"

.field private static final eq_preset_flat_data:Ljava/lang/String; = "{hz60:300,hz230:300,hz910:-200,hz3600:100,hz14000:300}"

.field public static final eq_preset_folk:Ljava/lang/String; = "eq_preset_folk"

.field private static final eq_preset_folk_data:Ljava/lang/String; = "{hz60:-400,hz230:200,hz910:0,hz3600:0,hz14000:-600}"

.field public static final eq_preset_heavymetal:Ljava/lang/String; = "eq_preset_heavymetal"

.field private static final eq_preset_heavymetal_data:Ljava/lang/String; = "{hz60:-200,hz230:0,hz910:0,hz3600:200,hz14000:100}"

.field public static final eq_preset_hiphop:Ljava/lang/String; = "eq_preset_hiphop"

.field private static final eq_preset_hiphop_data:Ljava/lang/String; = "{hz60:-100,hz230:100,hz910:0,hz3600:0,hz14000:200}"

.field public static final eq_preset_jazz:Ljava/lang/String; = "eq_preset_jazz"

.field private static final eq_preset_jazz_data:Ljava/lang/String; = "{hz60:300,hz230:0,hz910:0,hz3600:100,hz14000:200}"

.field public static final eq_preset_normal:Ljava/lang/String; = "eq_preset_normal"

.field private static final eq_preset_normal_data:Ljava/lang/String; = "{hz60:0,hz230:0,hz910:0,hz3600:0,hz14000:0}"

.field public static final eq_preset_pop:Ljava/lang/String; = "eq_preset_pop"

.field private static final eq_preset_pop_data:Ljava/lang/String; = "{hz60:300,hz230:-200,hz910:-400,hz3600:0,hz14000:200}"

.field public static final eq_preset_rock:Ljava/lang/String; = "eq_preset_rock"

.field private static final eq_preset_rock_data:Ljava/lang/String; = "{hz60:-100,hz230:400,hz910:-200,hz3600:0,hz14000:400}"

.field private static final parName:Ljava/lang/String; = "config"

.field private static settings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-direct {v0}, Lcom/innioasis/y1/utils/EqSPUtils;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final del(I)V
    .locals 3

    .line 161
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5220\u9664 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "{hz60:800,hz230:600,hz910:0,hz3600:100,hz14000:200}"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string/jumbo p1, "{hz60:-100,hz230:400,hz910:-200,hz3600:0,hz14000:400}"

    .line 172
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setRock(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo p1, "{hz60:300,hz230:-200,hz910:-400,hz3600:0,hz14000:200}"

    .line 171
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setPop(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo p1, "{hz60:300,hz230:0,hz910:0,hz3600:100,hz14000:200}"

    .line 170
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setJazz(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo p1, "{hz60:-100,hz230:100,hz910:0,hz3600:0,hz14000:200}"

    .line 169
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setHiphop(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string/jumbo p1, "{hz60:-200,hz230:0,hz910:0,hz3600:200,hz14000:100}"

    .line 168
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setHeavymetal(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string/jumbo p1, "{hz60:-400,hz230:200,hz910:0,hz3600:0,hz14000:-600}"

    .line 167
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setFolk(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string/jumbo p1, "{hz60:300,hz230:300,hz910:-200,hz3600:100,hz14000:300}"

    .line 166
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setFlat(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/utils/EqSPUtils;->setDance(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/utils/EqSPUtils;->setClassical(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    const-string/jumbo p1, "{hz60:0,hz230:0,hz910:0,hz3600:0,hz14000:0}"

    .line 163
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/utils/EqSPUtils;->setNormal(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

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

.method public final eqParameter2string(Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)Ljava/lang/String;
    .locals 3

    const-string v0, "ep"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 155
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 156
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SP \u4fdd\u5b58EQ  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "string"

    .line 157
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getClassical()Ljava/lang/String;
    .locals 3

    .line 62
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-string v1, "eq_preset_classical"

    const-string/jumbo v2, "{hz60:800,hz230:600,hz910:0,hz3600:100,hz14000:200}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getDance()Ljava/lang/String;
    .locals 3

    .line 71
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-string v1, "eq_preset_dance"

    const-string/jumbo v2, "{hz60:300,hz230:300,hz910:-200,hz3600:100,hz14000:300}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getEqualizerInt()I
    .locals 3

    .line 42
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "equalizer"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getFlat()Ljava/lang/String;
    .locals 3

    .line 81
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-string v1, "eq_preset_flat"

    const-string/jumbo v2, "{hz60:0,hz230:100,hz910:100,hz3600:100,hz14000:0}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getFolk()Ljava/lang/String;
    .locals 3

    .line 90
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-string v1, "eq_preset_folk"

    const-string/jumbo v2, "{hz60:-400,hz230:200,hz910:0,hz3600:0,hz14000:-600}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getHeavymetal()Ljava/lang/String;
    .locals 3

    .line 100
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-string v1, "eq_preset_heavymetal"

    const-string/jumbo v2, "{hz60:-200,hz230:0,hz910:0,hz3600:200,hz14000:100}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getHiphop()Ljava/lang/String;
    .locals 3

    .line 110
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-string v1, "eq_preset_hiphop"

    const-string/jumbo v2, "{hz60:-100,hz230:100,hz910:0,hz3600:0,hz14000:200}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getJazz()Ljava/lang/String;
    .locals 3

    .line 120
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-string v1, "eq_preset_jazz"

    const-string/jumbo v2, "{hz60:300,hz230:0,hz910:0,hz3600:100,hz14000:200}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getNormal()Ljava/lang/String;
    .locals 3

    .line 54
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-string v1, "eq_preset_normal"

    const-string/jumbo v2, "{hz60:0,hz230:0,hz910:0,hz3600:0,hz14000:0}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getPop()Ljava/lang/String;
    .locals 3

    .line 129
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-string v1, "eq_preset_pop"

    const-string/jumbo v2, "{hz60:300,hz230:-200,hz910:-400,hz3600:0,hz14000:200}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getRock()Ljava/lang/String;
    .locals 3

    .line 139
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-string v1, "eq_preset_rock"

    const-string/jumbo v2, "{hz60:-100,hz230:400,hz910:-200,hz3600:0,hz14000:400}"

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

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "context.getSharedPrefere\u2026me, Context.MODE_PRIVATE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/innioasis/y1/utils/EqSPUtils;->settings:Landroid/content/SharedPreferences;

    if-nez p1, :cond_0

    const-string p1, "settings"

    .line 50
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "settings.edit()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final setClassical(Ljava/lang/String;)V
    .locals 4

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "eq_preset_classical"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    sget-object p1, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setDance(Ljava/lang/String;)V
    .locals 4

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "eq_preset_dance"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    sget-object p1, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setEqualizerInt(I)V
    .locals 4

    .line 44
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "equalizer"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 45
    sget-object p1, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setFlat(Ljava/lang/String;)V
    .locals 4

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "eq_preset_flat"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    sget-object p1, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setFolk(Ljava/lang/String;)V
    .locals 4

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "eq_preset_folk"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    sget-object p1, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setHeavymetal(Ljava/lang/String;)V
    .locals 4

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "eq_preset_heavymetal"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    sget-object p1, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setHiphop(Ljava/lang/String;)V
    .locals 4

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "eq_preset_hiphop"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    sget-object p1, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setJazz(Ljava/lang/String;)V
    .locals 4

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "eq_preset_jazz"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    sget-object p1, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setNormal(Ljava/lang/String;)V
    .locals 4

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "eq_preset_normal"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    sget-object p1, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setPop(Ljava/lang/String;)V
    .locals 4

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "eq_preset_pop"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    sget-object p1, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setRock(Ljava/lang/String;)V
    .locals 4

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "eq_preset_rock"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    sget-object p1, Lcom/innioasis/y1/utils/EqSPUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final string2EqParameter(Ljava/lang/String;)Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Gson().fromJson(string, \u2026.EqParameter::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    return-object p1
.end method
