.class public final enum Lnl/siegmann/epublib/domain/Date$Event;
.super Ljava/lang/Enum;
.source "Date.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/siegmann/epublib/domain/Date;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnl/siegmann/epublib/domain/Date$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnl/siegmann/epublib/domain/Date$Event;

.field public static final enum CREATION:Lnl/siegmann/epublib/domain/Date$Event;

.field public static final enum MODIFICATION:Lnl/siegmann/epublib/domain/Date$Event;

.field public static final enum PUBLICATION:Lnl/siegmann/epublib/domain/Date$Event;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lnl/siegmann/epublib/domain/Date$Event;

    const-string v1, "PUBLICATION"

    const/4 v2, 0x0

    const-string v3, "publication"

    invoke-direct {v0, v1, v2, v3}, Lnl/siegmann/epublib/domain/Date$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnl/siegmann/epublib/domain/Date$Event;->PUBLICATION:Lnl/siegmann/epublib/domain/Date$Event;

    .line 24
    new-instance v1, Lnl/siegmann/epublib/domain/Date$Event;

    const-string v3, "MODIFICATION"

    const/4 v4, 0x1

    const-string v5, "modification"

    invoke-direct {v1, v3, v4, v5}, Lnl/siegmann/epublib/domain/Date$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnl/siegmann/epublib/domain/Date$Event;->MODIFICATION:Lnl/siegmann/epublib/domain/Date$Event;

    .line 25
    new-instance v3, Lnl/siegmann/epublib/domain/Date$Event;

    const-string v5, "CREATION"

    const/4 v6, 0x2

    const-string v7, "creation"

    invoke-direct {v3, v5, v6, v7}, Lnl/siegmann/epublib/domain/Date$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lnl/siegmann/epublib/domain/Date$Event;->CREATION:Lnl/siegmann/epublib/domain/Date$Event;

    const/4 v5, 0x3

    new-array v5, v5, [Lnl/siegmann/epublib/domain/Date$Event;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 22
    sput-object v5, Lnl/siegmann/epublib/domain/Date$Event;->$VALUES:[Lnl/siegmann/epublib/domain/Date$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lnl/siegmann/epublib/domain/Date$Event;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Date$Event;
    .locals 5

    .line 34
    invoke-static {}, Lnl/siegmann/epublib/domain/Date$Event;->values()[Lnl/siegmann/epublib/domain/Date$Event;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 35
    iget-object v4, v3, Lnl/siegmann/epublib/domain/Date$Event;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Date$Event;
    .locals 1

    .line 22
    const-class v0, Lnl/siegmann/epublib/domain/Date$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnl/siegmann/epublib/domain/Date$Event;

    return-object p0
.end method

.method public static values()[Lnl/siegmann/epublib/domain/Date$Event;
    .locals 1

    .line 22
    sget-object v0, Lnl/siegmann/epublib/domain/Date$Event;->$VALUES:[Lnl/siegmann/epublib/domain/Date$Event;

    invoke-virtual {v0}, [Lnl/siegmann/epublib/domain/Date$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnl/siegmann/epublib/domain/Date$Event;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Date$Event;->value:Ljava/lang/String;

    return-object v0
.end method
