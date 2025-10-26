.class Lantlr/JavaBlockFinishingInfo;
.super Ljava/lang/Object;
.source "JavaBlockFinishingInfo.java"


# instance fields
.field generatedAnIf:Z

.field generatedSwitch:Z

.field needAnErrorClause:Z

.field postscript:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lantlr/JavaBlockFinishingInfo;->postscript:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lantlr/JavaBlockFinishingInfo;->generatedSwitch:Z

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lantlr/JavaBlockFinishingInfo;->needAnErrorClause:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lantlr/JavaBlockFinishingInfo;->postscript:Ljava/lang/String;

    .line 30
    iput-boolean p2, p0, Lantlr/JavaBlockFinishingInfo;->generatedSwitch:Z

    .line 31
    iput-boolean p3, p0, Lantlr/JavaBlockFinishingInfo;->generatedAnIf:Z

    .line 32
    iput-boolean p4, p0, Lantlr/JavaBlockFinishingInfo;->needAnErrorClause:Z

    return-void
.end method
