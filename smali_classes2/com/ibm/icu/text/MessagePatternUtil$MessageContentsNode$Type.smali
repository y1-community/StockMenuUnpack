.class public final enum Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;
.super Ljava/lang/Enum;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

.field public static final enum ARG:Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

.field public static final enum REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

.field public static final enum TEXT:Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 136
    new-instance v0, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;->TEXT:Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    .line 142
    new-instance v1, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    const-string v3, "ARG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;->ARG:Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    .line 148
    new-instance v3, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    const-string v5, "REPLACE_NUMBER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 131
    sput-object v5, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;->$VALUES:[Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;
    .locals 1

    .line 131
    const-class v0, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;
    .locals 1

    .line 131
    sget-object v0, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;->$VALUES:[Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    return-object v0
.end method
