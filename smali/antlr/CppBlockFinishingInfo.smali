.class Lantlr/CppBlockFinishingInfo;
.super Ljava/lang/Object;
.source "CppBlockFinishingInfo.java"


# instance fields
.field generatedAnIf:Z

.field generatedSwitch:Z

.field needAnErrorClause:Z

.field postscript:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lantlr/CppBlockFinishingInfo;->postscript:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lantlr/CppBlockFinishingInfo;->generatedSwitch:Z

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lantlr/CppBlockFinishingInfo;->needAnErrorClause:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lantlr/CppBlockFinishingInfo;->postscript:Ljava/lang/String;

    .line 31
    iput-boolean p2, p0, Lantlr/CppBlockFinishingInfo;->generatedSwitch:Z

    .line 32
    iput-boolean p3, p0, Lantlr/CppBlockFinishingInfo;->generatedAnIf:Z

    .line 33
    iput-boolean p4, p0, Lantlr/CppBlockFinishingInfo;->needAnErrorClause:Z

    return-void
.end method
