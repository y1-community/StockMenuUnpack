.class Lantlr/CSharpBlockFinishingInfo;
.super Ljava/lang/Object;
.source "CSharpBlockFinishingInfo.java"


# instance fields
.field generatedAnIf:Z

.field generatedSwitch:Z

.field needAnErrorClause:Z

.field postscript:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lantlr/CSharpBlockFinishingInfo;->postscript:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lantlr/CSharpBlockFinishingInfo;->generatedSwitch:Z

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lantlr/CSharpBlockFinishingInfo;->needAnErrorClause:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lantlr/CSharpBlockFinishingInfo;->postscript:Ljava/lang/String;

    .line 37
    iput-boolean p2, p0, Lantlr/CSharpBlockFinishingInfo;->generatedSwitch:Z

    .line 38
    iput-boolean p3, p0, Lantlr/CSharpBlockFinishingInfo;->generatedAnIf:Z

    .line 39
    iput-boolean p4, p0, Lantlr/CSharpBlockFinishingInfo;->needAnErrorClause:Z

    return-void
.end method
