.class public final enum Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;
.super Ljava/lang/Enum;
.source "Y1Repository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/database/Y1Repository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortArtistsType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/database/Y1Repository$SortArtistsType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;",
        "",
        "type",
        "",
        "(Ljava/lang/String;II)V",
        "getType",
        "()I",
        "A_Z",
        "Z_A",
        "Companion",
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
.field private static final synthetic $VALUES:[Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

.field public static final enum A_Z:Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

.field public static final Companion:Lcom/innioasis/y1/database/Y1Repository$SortArtistsType$Companion;

.field public static final enum Z_A:Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;


# instance fields
.field private final type:I


# direct methods
.method private static final synthetic $values()[Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->Z_A:Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1316
    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    const-string v1, "A_Z"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    const-string v1, "Z_A"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->Z_A:Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    invoke-static {}, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->$values()[Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    move-result-object v0

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->$VALUES:[Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->Companion:Lcom/innioasis/y1/database/Y1Repository$SortArtistsType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1315
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;
    .locals 1

    const-class v0, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    return-object p0
.end method

.method public static values()[Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;
    .locals 1

    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->$VALUES:[Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .line 1315
    iget v0, p0, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->type:I

    return v0
.end method
