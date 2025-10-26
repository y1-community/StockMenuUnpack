.class public Lnl/siegmann/epublib/domain/SpineReference;
.super Lnl/siegmann/epublib/domain/ResourceReference;
.source "SpineReference.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6def3598319aa0e8L


# instance fields
.field private linear:Z


# direct methods
.method public constructor <init>(Lnl/siegmann/epublib/domain/Resource;)V
    .locals 1

    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, p1, v0}, Lnl/siegmann/epublib/domain/SpineReference;-><init>(Lnl/siegmann/epublib/domain/Resource;Z)V

    return-void
.end method

.method public constructor <init>(Lnl/siegmann/epublib/domain/Resource;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lnl/siegmann/epublib/domain/ResourceReference;-><init>(Lnl/siegmann/epublib/domain/Resource;)V

    .line 28
    iput-boolean p2, p0, Lnl/siegmann/epublib/domain/SpineReference;->linear:Z

    return-void
.end method


# virtual methods
.method public isLinear()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lnl/siegmann/epublib/domain/SpineReference;->linear:Z

    return v0
.end method

.method public setLinear(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lnl/siegmann/epublib/domain/SpineReference;->linear:Z

    return-void
.end method
