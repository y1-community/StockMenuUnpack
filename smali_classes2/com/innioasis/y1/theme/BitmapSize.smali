.class public final Lcom/innioasis/y1/theme/BitmapSize;
.super Ljava/lang/Object;
.source "BitmapSize.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/innioasis/y1/theme/BitmapSize;",
        "",
        "()V",
        "ITEM",
        "Lcom/innioasis/y1/theme/BitmapSizeValue;",
        "getITEM",
        "()Lcom/innioasis/y1/theme/BitmapSizeValue;",
        "MAIN_ICON",
        "getMAIN_ICON",
        "SETTING_ICON",
        "getSETTING_ICON",
        "SMALL_ICON",
        "getSMALL_ICON",
        "WALLPAPER",
        "getWALLPAPER",
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
.field public static final INSTANCE:Lcom/innioasis/y1/theme/BitmapSize;

.field private static final ITEM:Lcom/innioasis/y1/theme/BitmapSizeValue;

.field private static final MAIN_ICON:Lcom/innioasis/y1/theme/BitmapSizeValue;

.field private static final SETTING_ICON:Lcom/innioasis/y1/theme/BitmapSizeValue;

.field private static final SMALL_ICON:Lcom/innioasis/y1/theme/BitmapSizeValue;

.field private static final WALLPAPER:Lcom/innioasis/y1/theme/BitmapSizeValue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/innioasis/y1/theme/BitmapSize;

    invoke-direct {v0}, Lcom/innioasis/y1/theme/BitmapSize;-><init>()V

    sput-object v0, Lcom/innioasis/y1/theme/BitmapSize;->INSTANCE:Lcom/innioasis/y1/theme/BitmapSize;

    .line 10
    new-instance v0, Lcom/innioasis/y1/theme/BitmapSizeValue;

    const/16 v1, 0x280

    const/16 v2, 0x5b

    invoke-direct {v0, v1, v2}, Lcom/innioasis/y1/theme/BitmapSizeValue;-><init>(II)V

    sput-object v0, Lcom/innioasis/y1/theme/BitmapSize;->ITEM:Lcom/innioasis/y1/theme/BitmapSizeValue;

    .line 11
    new-instance v0, Lcom/innioasis/y1/theme/BitmapSizeValue;

    const/16 v1, 0xa6

    invoke-direct {v0, v1, v1}, Lcom/innioasis/y1/theme/BitmapSizeValue;-><init>(II)V

    sput-object v0, Lcom/innioasis/y1/theme/BitmapSize;->MAIN_ICON:Lcom/innioasis/y1/theme/BitmapSizeValue;

    .line 12
    new-instance v0, Lcom/innioasis/y1/theme/BitmapSizeValue;

    const/16 v1, 0x92

    invoke-direct {v0, v1, v1}, Lcom/innioasis/y1/theme/BitmapSizeValue;-><init>(II)V

    sput-object v0, Lcom/innioasis/y1/theme/BitmapSize;->SETTING_ICON:Lcom/innioasis/y1/theme/BitmapSizeValue;

    .line 13
    new-instance v0, Lcom/innioasis/y1/theme/BitmapSizeValue;

    const/16 v1, 0x140

    const/16 v2, 0xf0

    invoke-direct {v0, v1, v2}, Lcom/innioasis/y1/theme/BitmapSizeValue;-><init>(II)V

    sput-object v0, Lcom/innioasis/y1/theme/BitmapSize;->WALLPAPER:Lcom/innioasis/y1/theme/BitmapSizeValue;

    .line 14
    new-instance v0, Lcom/innioasis/y1/theme/BitmapSizeValue;

    const/16 v1, 0x40

    invoke-direct {v0, v1, v1}, Lcom/innioasis/y1/theme/BitmapSizeValue;-><init>(II)V

    sput-object v0, Lcom/innioasis/y1/theme/BitmapSize;->SMALL_ICON:Lcom/innioasis/y1/theme/BitmapSizeValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getITEM()Lcom/innioasis/y1/theme/BitmapSizeValue;
    .locals 1

    .line 10
    sget-object v0, Lcom/innioasis/y1/theme/BitmapSize;->ITEM:Lcom/innioasis/y1/theme/BitmapSizeValue;

    return-object v0
.end method

.method public final getMAIN_ICON()Lcom/innioasis/y1/theme/BitmapSizeValue;
    .locals 1

    .line 11
    sget-object v0, Lcom/innioasis/y1/theme/BitmapSize;->MAIN_ICON:Lcom/innioasis/y1/theme/BitmapSizeValue;

    return-object v0
.end method

.method public final getSETTING_ICON()Lcom/innioasis/y1/theme/BitmapSizeValue;
    .locals 1

    .line 12
    sget-object v0, Lcom/innioasis/y1/theme/BitmapSize;->SETTING_ICON:Lcom/innioasis/y1/theme/BitmapSizeValue;

    return-object v0
.end method

.method public final getSMALL_ICON()Lcom/innioasis/y1/theme/BitmapSizeValue;
    .locals 1

    .line 14
    sget-object v0, Lcom/innioasis/y1/theme/BitmapSize;->SMALL_ICON:Lcom/innioasis/y1/theme/BitmapSizeValue;

    return-object v0
.end method

.method public final getWALLPAPER()Lcom/innioasis/y1/theme/BitmapSizeValue;
    .locals 1

    .line 13
    sget-object v0, Lcom/innioasis/y1/theme/BitmapSize;->WALLPAPER:Lcom/innioasis/y1/theme/BitmapSizeValue;

    return-object v0
.end method
