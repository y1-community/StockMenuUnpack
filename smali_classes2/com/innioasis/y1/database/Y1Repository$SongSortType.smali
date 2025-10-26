.class public final enum Lcom/innioasis/y1/database/Y1Repository$SongSortType;
.super Ljava/lang/Enum;
.source "Y1Repository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/database/Y1Repository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SongSortType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/database/Y1Repository$SongSortType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/innioasis/y1/database/Y1Repository$SongSortType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000eB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/innioasis/y1/database/Y1Repository$SongSortType;",
        "",
        "type",
        "",
        "(Ljava/lang/String;II)V",
        "getType",
        "()I",
        "FileName_A_To_Z",
        "FileName_Z_To_A",
        "Time_Asc",
        "Time_Desc",
        "SongName_A_To_Z",
        "SongName_Z_To_A",
        "Album",
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
.field private static final synthetic $VALUES:[Lcom/innioasis/y1/database/Y1Repository$SongSortType;

.field public static final enum Album:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

.field public static final Companion:Lcom/innioasis/y1/database/Y1Repository$SongSortType$Companion;

.field public static final enum FileName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

.field public static final enum FileName_Z_To_A:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

.field public static final enum SongName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

.field public static final enum SongName_Z_To_A:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

.field public static final enum Time_Asc:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

.field public static final enum Time_Desc:Lcom/innioasis/y1/database/Y1Repository$SongSortType;


# instance fields
.field private final type:I


# direct methods
.method private static final synthetic $values()[Lcom/innioasis/y1/database/Y1Repository$SongSortType;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_Z_To_A:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Time_Asc:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Time_Desc:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->SongName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->SongName_Z_To_A:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Album:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1299
    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    const-string v1, "FileName_A_To_Z"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    const-string v1, "FileName_Z_To_A"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_Z_To_A:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    const-string v1, "Time_Asc"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Time_Asc:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    const-string v1, "Time_Desc"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Time_Desc:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    const-string v1, "SongName_A_To_Z"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->SongName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    const-string v1, "SongName_Z_To_A"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->SongName_Z_To_A:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    .line 1302
    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    const-string v1, "Album"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Album:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-static {}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->$values()[Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    move-result-object v0

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->$VALUES:[Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Companion:Lcom/innioasis/y1/database/Y1Repository$SongSortType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1298
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/innioasis/y1/database/Y1Repository$SongSortType;
    .locals 1

    const-class v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    return-object p0
.end method

.method public static values()[Lcom/innioasis/y1/database/Y1Repository$SongSortType;
    .locals 1

    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->$VALUES:[Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .line 1298
    iget v0, p0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->type:I

    return v0
.end method
