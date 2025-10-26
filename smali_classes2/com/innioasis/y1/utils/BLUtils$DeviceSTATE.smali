.class public final enum Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;
.super Ljava/lang/Enum;
.source "BLUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/utils/BLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceSTATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;",
        "",
        "(Ljava/lang/String;I)V",
        "BOND_SUCCESS",
        "BOND_ING",
        "BOND_FAIL",
        "SEARCHS_ING",
        "SEARCHS_START",
        "SEARCHS_END",
        "SEARCHS",
        "CONNECT_ING",
        "CONNECT_SUCCESS",
        "CONNECT_FAIL",
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
.field private static final synthetic $VALUES:[Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

.field public static final enum BOND_FAIL:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

.field public static final enum BOND_ING:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

.field public static final enum BOND_SUCCESS:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

.field public static final enum CONNECT_FAIL:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

.field public static final enum CONNECT_ING:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

.field public static final enum CONNECT_SUCCESS:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

.field public static final enum SEARCHS:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

.field public static final enum SEARCHS_END:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

.field public static final enum SEARCHS_ING:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

.field public static final enum SEARCHS_START:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;


# direct methods
.method private static final synthetic $values()[Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->BOND_SUCCESS:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->BOND_ING:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->BOND_FAIL:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->SEARCHS_ING:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->SEARCHS_START:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->SEARCHS_END:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->SEARCHS:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->CONNECT_ING:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->CONNECT_SUCCESS:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->CONNECT_FAIL:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 514
    new-instance v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const-string v1, "BOND_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->BOND_SUCCESS:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    new-instance v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const-string v1, "BOND_ING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->BOND_ING:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    new-instance v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const-string v1, "BOND_FAIL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->BOND_FAIL:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    .line 517
    new-instance v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const-string v1, "SEARCHS_ING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->SEARCHS_ING:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    new-instance v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const-string v1, "SEARCHS_START"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->SEARCHS_START:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    new-instance v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const-string v1, "SEARCHS_END"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->SEARCHS_END:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    new-instance v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const-string v1, "SEARCHS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->SEARCHS:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    .line 521
    new-instance v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const-string v1, "CONNECT_ING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->CONNECT_ING:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    new-instance v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const-string v1, "CONNECT_SUCCESS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->CONNECT_SUCCESS:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    new-instance v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    const-string v1, "CONNECT_FAIL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->CONNECT_FAIL:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    invoke-static {}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->$values()[Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    move-result-object v0

    sput-object v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->$VALUES:[Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 511
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;
    .locals 1

    const-class v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    return-object p0
.end method

.method public static values()[Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;
    .locals 1

    sget-object v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->$VALUES:[Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    return-object v0
.end method
