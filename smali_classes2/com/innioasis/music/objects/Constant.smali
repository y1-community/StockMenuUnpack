.class public final Lcom/innioasis/music/objects/Constant;
.super Ljava/lang/Object;
.source "Constant.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0012\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R \u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R \u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000bR \u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\t\"\u0004\u0008\u0012\u0010\u000bR\u0011\u0010\u0013\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/innioasis/music/objects/Constant;",
        "",
        "()V",
        "AUDIOBOOK_PATH",
        "",
        "LOG_FILE_PATH",
        "MainList",
        "",
        "getMainList",
        "()Ljava/util/List;",
        "setMainList",
        "(Ljava/util/List;)V",
        "ROOT_PATH",
        "SubMenuList",
        "getSubMenuList",
        "setSubMenuList",
        "SubMenuList2",
        "getSubMenuList2",
        "setSubMenuList2",
        "SystemVersion",
        "getSystemVersion",
        "()Ljava/lang/String;",
        "THEMES_PATH",
        "UNKNOWN",
        "Video_PATH",
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
.field public static final AUDIOBOOK_PATH:Ljava/lang/String; = "/storage/sdcard0/Audiobooks"

.field public static final INSTANCE:Lcom/innioasis/music/objects/Constant;

.field public static final LOG_FILE_PATH:Ljava/lang/String; = "/storage/sdcard0/tombstones"

.field private static MainList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROOT_PATH:Ljava/lang/String; = "/storage/sdcard0"

.field private static SubMenuList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SubMenuList2:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final THEMES_PATH:Ljava/lang/String; = "/storage/sdcard0/Themes"

.field public static final UNKNOWN:Ljava/lang/String; = "\uffe6\uffe6\uffe6\uffe6<unknown>"

.field public static final Video_PATH:Ljava/lang/String; = "/storage/sdcard0/Videos"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/music/objects/Constant;

    invoke-direct {v0}, Lcom/innioasis/music/objects/Constant;-><init>()V

    sput-object v0, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/innioasis/music/objects/Constant;->MainList:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/innioasis/music/objects/Constant;->SubMenuList:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/innioasis/music/objects/Constant;->SubMenuList2:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMainList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/innioasis/music/objects/Constant;->MainList:Ljava/util/List;

    return-object v0
.end method

.method public final getSubMenuList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/innioasis/music/objects/Constant;->SubMenuList:Ljava/util/List;

    return-object v0
.end method

.method public final getSubMenuList2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    sget-object v0, Lcom/innioasis/music/objects/Constant;->SubMenuList2:Ljava/util/List;

    return-object v0
.end method

.method public final getSystemVersion()Ljava/lang/String;
    .locals 3

    .line 24
    :try_start_0
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v1, "{\n                //\u83b7\u53d6\u8f6f\u4ef6\u2026versionName\n            }"

    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final setMainList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sput-object p1, Lcom/innioasis/music/objects/Constant;->MainList:Ljava/util/List;

    return-void
.end method

.method public final setSubMenuList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sput-object p1, Lcom/innioasis/music/objects/Constant;->SubMenuList:Ljava/util/List;

    return-void
.end method

.method public final setSubMenuList2(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sput-object p1, Lcom/innioasis/music/objects/Constant;->SubMenuList2:Ljava/util/List;

    return-void
.end method
