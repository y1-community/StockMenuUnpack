.class public final Lcom/innioasis/y1_eBook/utils/EbookSpUtils;
.super Ljava/lang/Object;
.source "EbookSpUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEbookSpUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EbookSpUtils.kt\ncom/innioasis/y1_eBook/utils/EbookSpUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,76:1\n1#2:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/utils/EbookSpUtils;",
        "",
        "()V",
        "themeList",
        "",
        "Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;",
        "getThemeList",
        "()Ljava/util/List;",
        "getTheme",
        "saveTheme",
        "index",
        "",
        "Theme",
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
.field public static final INSTANCE:Lcom/innioasis/y1_eBook/utils/EbookSpUtils;

.field private static final themeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils;

    invoke-direct {v0}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils;-><init>()V

    sput-object v0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils;->INSTANCE:Lcom/innioasis/y1_eBook/utils/EbookSpUtils;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;

    .line 11
    new-instance v8, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;

    const-string v1, "#A7C0A7"

    .line 15
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    const-string v4, "#222222"

    const-string v6, "#A7C0A7"

    const v7, 0x7f0800c5

    move-object v1, v8

    .line 11
    invoke-direct/range {v1 .. v7}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;-><init>(IILjava/lang/String;ILjava/lang/String;I)V

    const/4 v1, 0x0

    aput-object v8, v0, v1

    .line 20
    new-instance v1, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;

    const-string v2, "#222222"

    .line 22
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const-string v3, "#ffffff"

    .line 24
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const/4 v10, 0x1

    const-string v12, "#222222"

    const-string v14, "#ffffff"

    const v15, 0x7f0800c7

    move-object v9, v1

    .line 20
    invoke-direct/range {v9 .. v15}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;-><init>(IILjava/lang/String;ILjava/lang/String;I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 29
    new-instance v1, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;

    .line 30
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v5, 0x2

    const/4 v6, -0x1

    const-string v7, "#ffffff"

    const-string v9, "#222222"

    const v10, 0x7f0800c9

    move-object v4, v1

    .line 29
    invoke-direct/range {v4 .. v10}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;-><init>(IILjava/lang/String;ILjava/lang/String;I)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 34
    new-instance v1, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;

    const-string v3, "#71540E"

    .line 36
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const-string v3, "#D5C9AC"

    .line 38
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v5, 0x3

    const-string v7, "#71540E"

    const-string v9, "#D5C9AC"

    const v10, 0x7f0800cb

    move-object v4, v1

    .line 34
    invoke-direct/range {v4 .. v10}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;-><init>(IILjava/lang/String;ILjava/lang/String;I)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 43
    new-instance v1, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;

    const-string v3, "#C3C3C3"

    .line 45
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 47
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v5, 0x4

    const-string v7, "#C3C3C3"

    const-string v9, "#222222"

    const v10, 0x7f0800cd

    move-object v4, v1

    .line 43
    invoke-direct/range {v4 .. v10}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;-><init>(IILjava/lang/String;ILjava/lang/String;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils;->themeList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTheme()Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;
    .locals 5

    .line 64
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getBookTheme()I

    move-result v0

    .line 65
    sget-object v1, Lcom/innioasis/y1_eBook/utils/EbookSpUtils;->themeList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;

    invoke-virtual {v4}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->getId()I

    move-result v4

    if-ne v4, v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    check-cast v2, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;

    if-nez v2, :cond_3

    sget-object v0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils;->themeList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;

    :cond_3
    return-object v2
.end method

.method public final getThemeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;",
            ">;"
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils;->themeList:Ljava/util/List;

    return-object v0
.end method

.method public final saveTheme(I)Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;
    .locals 2

    .line 69
    sget-object v0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils;->themeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;

    .line 70
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setBookTheme(I)V

    return-object p1
.end method
