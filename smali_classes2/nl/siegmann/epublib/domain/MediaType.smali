.class public Lnl/siegmann/epublib/domain/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x64b2d075bbc84964L


# instance fields
.field private defaultExtension:Ljava/lang/String;

.field private extensions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lnl/siegmann/epublib/domain/MediaType;->name:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lnl/siegmann/epublib/domain/MediaType;->defaultExtension:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lnl/siegmann/epublib/domain/MediaType;->extensions:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 67
    instance-of v0, p1, Lnl/siegmann/epublib/domain/MediaType;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 70
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/domain/MediaType;->name:Ljava/lang/String;

    check-cast p1, Lnl/siegmann/epublib/domain/MediaType;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/MediaType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lnl/siegmann/epublib/domain/MediaType;->defaultExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lnl/siegmann/epublib/domain/MediaType;->extensions:Ljava/util/Collection;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lnl/siegmann/epublib/domain/MediaType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 38
    iget-object v0, p0, Lnl/siegmann/epublib/domain/MediaType;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lnl/siegmann/epublib/domain/MediaType;->name:Ljava/lang/String;

    return-object v0
.end method
