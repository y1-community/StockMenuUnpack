.class public Lnl/siegmann/epublib/domain/GuideReference;
.super Lnl/siegmann/epublib/domain/TitledResourceReference;
.source "GuideReference.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static ACKNOWLEDGEMENTS:Ljava/lang/String; = "acknowledgements"

.field public static BIBLIOGRAPHY:Ljava/lang/String; = "bibliography"

.field public static COLOPHON:Ljava/lang/String; = "colophon"

.field public static COPYRIGHT_PAGE:Ljava/lang/String; = "copyright-page"

.field public static COVER:Ljava/lang/String; = "cover"

.field public static DEDICATION:Ljava/lang/String; = "dedication"

.field public static EPIGRAPH:Ljava/lang/String; = "epigraph"

.field public static FOREWORD:Ljava/lang/String; = "foreword"

.field public static GLOSSARY:Ljava/lang/String; = "glossary"

.field public static INDEX:Ljava/lang/String; = "index"

.field public static LOI:Ljava/lang/String; = "loi"

.field public static LOT:Ljava/lang/String; = "lot"

.field public static NOTES:Ljava/lang/String; = "notes"

.field public static PREFACE:Ljava/lang/String; = "preface"

.field public static TEXT:Ljava/lang/String; = "text"

.field public static TITLE_PAGE:Ljava/lang/String; = "title-page"

.field public static TOC:Ljava/lang/String; = "toc"

.field private static final serialVersionUID:J = -0x4634bc3a1299e1aL


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnl/siegmann/epublib/domain/Resource;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lnl/siegmann/epublib/domain/GuideReference;-><init>(Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lnl/siegmann/epublib/domain/TitledResourceReference;-><init>(Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3, v0}, Lnl/siegmann/epublib/domain/GuideReference;-><init>(Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p3, p4}, Lnl/siegmann/epublib/domain/TitledResourceReference;-><init>(Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {p2}, Lnl/siegmann/epublib/util/StringUtil;->isNotBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lnl/siegmann/epublib/domain/GuideReference;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lnl/siegmann/epublib/domain/GuideReference;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lnl/siegmann/epublib/domain/GuideReference;->type:Ljava/lang/String;

    return-void
.end method
