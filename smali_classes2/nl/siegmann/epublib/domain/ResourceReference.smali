.class public Lnl/siegmann/epublib/domain/ResourceReference;
.super Ljava/lang/Object;
.source "ResourceReference.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x240a47f2dd95a9c8L


# instance fields
.field protected resource:Lnl/siegmann/epublib/domain/Resource;


# direct methods
.method public constructor <init>(Lnl/siegmann/epublib/domain/Resource;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lnl/siegmann/epublib/domain/ResourceReference;->resource:Lnl/siegmann/epublib/domain/Resource;

    return-void
.end method


# virtual methods
.method public getResource()Lnl/siegmann/epublib/domain/Resource;
    .locals 1

    .line 19
    iget-object v0, p0, Lnl/siegmann/epublib/domain/ResourceReference;->resource:Lnl/siegmann/epublib/domain/Resource;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lnl/siegmann/epublib/domain/ResourceReference;->resource:Lnl/siegmann/epublib/domain/Resource;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setResource(Lnl/siegmann/epublib/domain/Resource;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lnl/siegmann/epublib/domain/ResourceReference;->resource:Lnl/siegmann/epublib/domain/Resource;

    return-void
.end method
