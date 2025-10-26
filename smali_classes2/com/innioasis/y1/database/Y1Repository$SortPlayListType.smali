.class public final enum Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;
.super Ljava/lang/Enum;
.source "Y1Repository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/database/Y1Repository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortPlayListType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/database/Y1Repository$SortPlayListType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;",
        "",
        "type",
        "",
        "(Ljava/lang/String;II)V",
        "getType",
        "()I",
        "None",
        "A_Z",
        "Z_A",
        "CreateTime_Asc",
        "CreateTime_Desc",
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
.field private static final synthetic $VALUES:[Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

.field public static final enum A_Z:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

.field public static final Companion:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType$Companion;

.field public static final enum CreateTime_Asc:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

.field public static final enum CreateTime_Desc:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

.field public static final enum None:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

.field public static final enum Z_A:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;


# instance fields
.field private final type:I


# direct methods
.method private static final synthetic $values()[Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->None:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->Z_A:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->CreateTime_Asc:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->CreateTime_Desc:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1345
    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->None:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    const-string v1, "A_Z"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    const-string v1, "Z_A"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->Z_A:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    const-string v1, "CreateTime_Asc"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->CreateTime_Asc:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    const-string v1, "CreateTime_Desc"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->CreateTime_Desc:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    invoke-static {}, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->$values()[Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    move-result-object v0

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->$VALUES:[Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->Companion:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1344
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;
    .locals 1

    const-class v0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    return-object p0
.end method

.method public static values()[Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;
    .locals 1

    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->$VALUES:[Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .line 1344
    iget v0, p0, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->type:I

    return v0
.end method
