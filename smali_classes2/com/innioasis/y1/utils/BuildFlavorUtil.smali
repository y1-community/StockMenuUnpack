.class public final Lcom/innioasis/y1/utils/BuildFlavorUtil;
.super Ljava/lang/Object;
.source "BuildFlavorUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuildFlavorUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildFlavorUtil.kt\ncom/innioasis/y1/utils/BuildFlavorUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,29:1\n1722#2,3:30\n*S KotlinDebug\n*F\n+ 1 BuildFlavorUtil.kt\ncom/innioasis/y1/utils/BuildFlavorUtil\n*L\n18#1:30,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u0008\u001a\u00020\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/BuildFlavorUtil;",
        "",
        "()V",
        "defaultLanguage",
        "",
        "isRockBox",
        "",
        "isShowEbook",
        "isV4",
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
.field public static final INSTANCE:Lcom/innioasis/y1/utils/BuildFlavorUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/y1/utils/BuildFlavorUtil;

    invoke-direct {v0}, Lcom/innioasis/y1/utils/BuildFlavorUtil;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/BuildFlavorUtil;->INSTANCE:Lcom/innioasis/y1/utils/BuildFlavorUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final defaultLanguage()I
    .locals 6

    const-string v0, "en"

    .line 22
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "en"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 23
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "es"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "de"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x7

    goto :goto_0

    .line 25
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x6

    goto :goto_0

    .line 26
    :cond_3
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "ru"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v4, 0x4

    :goto_0
    return v4

    .line 27
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u4f60\u662f\u4e0d\u662f\u5fd8\u4e86\u5565"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isRockBox()Z
    .locals 1

    .line 12
    const/4 v0, 0x1

    return v0
.end method

.method public final isShowEbook()Z
    .locals 1

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public final isV4()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method
