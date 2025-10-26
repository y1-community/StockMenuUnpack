.class public abstract Lantlr/FileLineFormatter;
.super Ljava/lang/Object;
.source "FileLineFormatter.java"


# static fields
.field private static formatter:Lantlr/FileLineFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lantlr/DefaultFileLineFormatter;

    invoke-direct {v0}, Lantlr/DefaultFileLineFormatter;-><init>()V

    sput-object v0, Lantlr/FileLineFormatter;->formatter:Lantlr/FileLineFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormatter()Lantlr/FileLineFormatter;
    .locals 1

    .line 15
    sget-object v0, Lantlr/FileLineFormatter;->formatter:Lantlr/FileLineFormatter;

    return-object v0
.end method

.method public static setFormatter(Lantlr/FileLineFormatter;)V
    .locals 0

    .line 19
    sput-object p0, Lantlr/FileLineFormatter;->formatter:Lantlr/FileLineFormatter;

    return-void
.end method


# virtual methods
.method public abstract getFormatString(Ljava/lang/String;II)Ljava/lang/String;
.end method
