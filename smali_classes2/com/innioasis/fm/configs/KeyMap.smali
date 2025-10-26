.class public final Lcom/innioasis/fm/configs/KeyMap;
.super Ljava/lang/Object;
.source "KeyMap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0017\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/innioasis/fm/configs/KeyMap;",
        "",
        "()V",
        "KEY_DOWN",
        "",
        "getKEY_DOWN",
        "()I",
        "setKEY_DOWN",
        "(I)V",
        "KEY_ENTER",
        "getKEY_ENTER",
        "setKEY_ENTER",
        "KEY_LEFT",
        "getKEY_LEFT",
        "setKEY_LEFT",
        "KEY_MENU",
        "getKEY_MENU",
        "setKEY_MENU",
        "KEY_PLAY",
        "getKEY_PLAY",
        "setKEY_PLAY",
        "KEY_RIGHT",
        "getKEY_RIGHT",
        "setKEY_RIGHT",
        "KEY_UP",
        "getKEY_UP",
        "setKEY_UP",
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
.field public static final INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

.field private static KEY_DOWN:I

.field private static KEY_ENTER:I

.field private static KEY_LEFT:I

.field private static KEY_MENU:I

.field private static KEY_PLAY:I

.field private static KEY_RIGHT:I

.field private static KEY_UP:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/innioasis/fm/configs/KeyMap;

    invoke-direct {v0}, Lcom/innioasis/fm/configs/KeyMap;-><init>()V

    sput-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    .line 7
    sget-object v0, Lcom/innioasis/y1/utils/BuildFlavorUtil;->INSTANCE:Lcom/innioasis/y1/utils/BuildFlavorUtil;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/BuildFlavorUtil;->isRockBox()Z

    move-result v0

    const/16 v1, 0x15

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    :goto_0
    sput v0, Lcom/innioasis/fm/configs/KeyMap;->KEY_UP:I

    .line 8
    sget-object v0, Lcom/innioasis/y1/utils/BuildFlavorUtil;->INSTANCE:Lcom/innioasis/y1/utils/BuildFlavorUtil;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/BuildFlavorUtil;->isRockBox()Z

    move-result v0

    const/16 v2, 0x16

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    goto :goto_1

    :cond_1
    const/16 v0, 0x16

    :goto_1
    sput v0, Lcom/innioasis/fm/configs/KeyMap;->KEY_DOWN:I

    .line 9
    sget-object v0, Lcom/innioasis/y1/utils/BuildFlavorUtil;->INSTANCE:Lcom/innioasis/y1/utils/BuildFlavorUtil;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/BuildFlavorUtil;->isRockBox()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x58

    :goto_2
    sput v1, Lcom/innioasis/fm/configs/KeyMap;->KEY_LEFT:I

    .line 10
    sget-object v0, Lcom/innioasis/y1/utils/BuildFlavorUtil;->INSTANCE:Lcom/innioasis/y1/utils/BuildFlavorUtil;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/BuildFlavorUtil;->isRockBox()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/16 v2, 0x57

    :goto_3
    sput v2, Lcom/innioasis/fm/configs/KeyMap;->KEY_RIGHT:I

    const/4 v0, 0x4

    .line 11
    sput v0, Lcom/innioasis/fm/configs/KeyMap;->KEY_MENU:I

    const/16 v0, 0x55

    .line 12
    sput v0, Lcom/innioasis/fm/configs/KeyMap;->KEY_PLAY:I

    const/16 v0, 0x42

    .line 13
    sput v0, Lcom/innioasis/fm/configs/KeyMap;->KEY_ENTER:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKEY_DOWN()I
    .locals 1

    .line 8
    sget v0, Lcom/innioasis/fm/configs/KeyMap;->KEY_DOWN:I

    return v0
.end method

.method public final getKEY_ENTER()I
    .locals 1

    .line 13
    sget v0, Lcom/innioasis/fm/configs/KeyMap;->KEY_ENTER:I

    return v0
.end method

.method public final getKEY_LEFT()I
    .locals 1

    .line 9
    sget v0, Lcom/innioasis/fm/configs/KeyMap;->KEY_LEFT:I

    return v0
.end method

.method public final getKEY_MENU()I
    .locals 1

    .line 11
    sget v0, Lcom/innioasis/fm/configs/KeyMap;->KEY_MENU:I

    return v0
.end method

.method public final getKEY_PLAY()I
    .locals 1

    .line 12
    sget v0, Lcom/innioasis/fm/configs/KeyMap;->KEY_PLAY:I

    return v0
.end method

.method public final getKEY_RIGHT()I
    .locals 1

    .line 10
    sget v0, Lcom/innioasis/fm/configs/KeyMap;->KEY_RIGHT:I

    return v0
.end method

.method public final getKEY_UP()I
    .locals 1

    .line 7
    sget v0, Lcom/innioasis/fm/configs/KeyMap;->KEY_UP:I

    return v0
.end method

.method public final setKEY_DOWN(I)V
    .locals 0

    .line 8
    sput p1, Lcom/innioasis/fm/configs/KeyMap;->KEY_DOWN:I

    return-void
.end method

.method public final setKEY_ENTER(I)V
    .locals 0

    .line 13
    sput p1, Lcom/innioasis/fm/configs/KeyMap;->KEY_ENTER:I

    return-void
.end method

.method public final setKEY_LEFT(I)V
    .locals 0

    .line 9
    sput p1, Lcom/innioasis/fm/configs/KeyMap;->KEY_LEFT:I

    return-void
.end method

.method public final setKEY_MENU(I)V
    .locals 0

    .line 11
    sput p1, Lcom/innioasis/fm/configs/KeyMap;->KEY_MENU:I

    return-void
.end method

.method public final setKEY_PLAY(I)V
    .locals 0

    .line 12
    sput p1, Lcom/innioasis/fm/configs/KeyMap;->KEY_PLAY:I

    return-void
.end method

.method public final setKEY_RIGHT(I)V
    .locals 0

    .line 10
    sput p1, Lcom/innioasis/fm/configs/KeyMap;->KEY_RIGHT:I

    return-void
.end method

.method public final setKEY_UP(I)V
    .locals 0

    .line 7
    sput p1, Lcom/innioasis/fm/configs/KeyMap;->KEY_UP:I

    return-void
.end method
