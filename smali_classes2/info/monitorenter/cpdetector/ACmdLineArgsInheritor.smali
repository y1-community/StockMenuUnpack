.class public abstract Linfo/monitorenter/cpdetector/ACmdLineArgsInheritor;
.super Ljava/lang/Object;
.source "ACmdLineArgsInheritor.java"


# instance fields
.field private cmdLineOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljargs/gnu/CmdLineParser$Option;",
            ">;"
        }
    .end annotation
.end field

.field private cmdLineParser:Ljargs/gnu/CmdLineParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/monitorenter/cpdetector/ACmdLineArgsInheritor;->cmdLineOptions:Ljava/util/Map;

    .line 74
    new-instance v0, Ljargs/gnu/CmdLineParser;

    invoke-direct {v0}, Ljargs/gnu/CmdLineParser;-><init>()V

    iput-object v0, p0, Linfo/monitorenter/cpdetector/ACmdLineArgsInheritor;->cmdLineParser:Ljargs/gnu/CmdLineParser;

    return-void
.end method


# virtual methods
.method protected final addCmdLineOption(Ljava/lang/String;Ljargs/gnu/CmdLineParser$Option;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 90
    iget-object v0, p0, Linfo/monitorenter/cpdetector/ACmdLineArgsInheritor;->cmdLineOptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Linfo/monitorenter/cpdetector/ACmdLineArgsInheritor;->cmdLineOptions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object p1, p0, Linfo/monitorenter/cpdetector/ACmdLineArgsInheritor;->cmdLineParser:Ljargs/gnu/CmdLineParser;

    invoke-virtual {p1, p2}, Ljargs/gnu/CmdLineParser;->addOption(Ljargs/gnu/CmdLineParser$Option;)Ljargs/gnu/CmdLineParser$Option;

    return-void

    .line 91
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ambiguity: Option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already added."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Specify a valid Option of a type within jargs.gnu.CmdLineParser.Option instead of null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final getParsedCmdLineOption(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Linfo/monitorenter/cpdetector/ACmdLineArgsInheritor;->cmdLineOptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Linfo/monitorenter/cpdetector/ACmdLineArgsInheritor;->cmdLineParser:Ljargs/gnu/CmdLineParser;

    check-cast v0, Ljargs/gnu/CmdLineParser$Option;

    invoke-virtual {p1, v0}, Ljargs/gnu/CmdLineParser;->getOptionValue(Ljargs/gnu/CmdLineParser$Option;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Option with key: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" has not been set in constructor."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseArgs([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Linfo/monitorenter/cpdetector/ACmdLineArgsInheritor;->cmdLineParser:Ljargs/gnu/CmdLineParser;

    invoke-virtual {v0, p1}, Ljargs/gnu/CmdLineParser;->parse([Ljava/lang/String;)V

    return-void
.end method

.method protected abstract usage()V
.end method
